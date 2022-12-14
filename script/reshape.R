# loading libraries
library(here)
library(dplyr)
library(tidyr)
library(readr)
# library(jsonlite)

# function for modifying colnames
reverse_string <- function(x) {
    paste0("item_", trimws(paste(sub('.*_', '', x), sub('_.*', '', x), sep = '.')))
}

# importing data
df <- read_csv(here("data/wide.csv"))
relic <- read_csv(here("data/relic.csv"))
src <- read_csv(here("data/sources.csv"))

# removing useless columns
src <- src %>%
    rename(source = title,
        source_slug = slug) %>%
    select(source, source_slug, list, list_id)

rlc <- relic %>%
    select(-subject_id)

# reshaping
long <- df %>%
    rename_with(reverse_string, 8:ncol(df)) %>% #secondo argomento debole, ma per ora funziona
    select(-info_url, -info, -info_title, -subject_description) %>%
    pivot_longer(cols = starts_with("item"),
          names_to = c(".value", "field"), names_sep = "_") %>%
    separate(field, into = c("type", "list"), sep = "\\.") %>%
    spread(type, item) %>%
    select(-list) %>%
    left_join(rlc, ., by = "subject") %>%
    left_join(., src, by = "source", ) %>%
    filter(endorsement != "NA") %>%
    mutate(id = row_number()) %>%
    select(id, category, category_id, subject, subject_slug, subject_id, source, source_slug, list, list_id, endorsement, description)

# exporting csv
# write.csv(long, here("data/items.csv"), na = "", fileEncoding = "UTF-8")
write_csv(long, here("data/items.csv"), na = "")
print("Reshaping completed! items.csv created.")

# generating glossary.csv
df %>%
    select(subject_id, subject, subject_slug, info_url, info, info_title, subject_description) %>%
    rename(
        id = subject_id,
        url = info_url,
        source = info,
        title = info_title,
        slug = subject_slug,
        description = subject_description) %>%
    write_csv(., here("data/glossary.csv"), na = "")

print("glossary.csv created")

# delete temp file
file.remove(here("data/wide.csv"))
print("wide.csv deleted")

# generating json
# files <- list.files(path="data/", pattern="*.csv", full.names=TRUE, recursive=FALSE)
# 
# lapply(files, function(x) {
#     read.csv(x, fileEncoding = "UTF-8") %>%
#     toJSON(., encoding = "UTF-8") %>%
#     write(., gsub(".csv", ".json", x))
# })
# print("csv2json completed")
