# loading libraries
library(here)
library(dplyr)
library(tidyr)
library(readr)
library(jsonlite)

# function for modifying colnames
reverse_string <- function(x) {
    paste0("item_", trimws(paste(sub('.*_', '', x), sub('_.*', '', x), sep = '.')))
}

# importing data
df <- read_csv(here("data/wide.csv"))
relic <- read_csv(here("data/relic.csv"))
src <- read_csv(here("data/sources.csv"))
dsp <- read_csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=1068258295&single=true&output=csv")
lst <- read_csv(here("data/lists.csv"))
ldr <- read_csv(here("data/leaders.csv"))
pgp <- read_csv(here("data/pagella_politica.csv"))

# update list.csv with the lists to display
lst %>%
    left_join(., dsp, by = "list") %>%
    filter(display == TRUE) %>%
    select(id, list, slug, symbol_name, symbol_url) %>%
    write_csv(., here("data/lists.csv"), na ="")
print("lists.csv updated")

dsp <- dsp %>%
    select(-list)

# update leaders.csv with the leaders to display
ldr %>%
    left_join(., dsp, by = "list_id") %>%
    filter(display == TRUE) %>%
    select(id, name, surname, list, list_id, profile_pic, wikipedia_url) %>%
    write_csv(., here("data/leaders.csv"), na ="")
print("leaders.csv updated")

# update sources.csv with the sources to display
src %>%
    left_join(., dsp, by = "list_id") %>%
    filter(display == TRUE) %>%
    select(id, title, slug, type, url, list, list_id) %>%
    write_csv(., here("data/sources.csv"), na ="")
print("sources.csv updated")

# update pagella_politica.csv with the data to display
pgp %>%
    left_join(., dsp, by = "list_id") %>%
    filter(display != FALSE | is.na(list_id)) %>%
    select(id, url, type, subject, list, subject_id, list_id) %>%
    write_csv(., here("data/pagella_politica.csv"), na ="")

# removing useless columns from src
src <- src %>%
    rename(source = title,
        source_slug = slug) %>%
    left_join(., dsp, by = "list_id") %>%
    filter(display == TRUE) %>%
    select(source, source_slug, list, list_id)

rlc <- relic %>%
    select(-subject_id)

# reshaping
long <- df %>%
    rename_with(reverse_string, 5:ncol(df)) %>% #secondo argomento debole, ma per ora funziona
    select(-info) %>%
    pivot_longer(cols = starts_with("item"),
          names_to = c(".value", "field"), names_sep = "_") %>%
    separate(field, into = c("type", "list"), sep = "\\.") %>%
    spread(type, item) %>%
    select(-list) %>%
    left_join(rlc, ., by = "subject") %>%
    left_join(., src, by = "source", ) %>%
    filter(endorsement != "NA",list_id != "NA") %>%
    mutate(id = row_number()) %>%
    select(id, category, category_id, subject, subject_slug, subject_id, source, source_slug, list, list_id, endorsement, description)

# exporting csv
write_csv(long, here("data/items.csv"), na ="")
print("Reshaping completed! items.csv created.")

# generating glossary.csv
df %>%
    select(subject_id, subject, subject_slug, info) %>%
    rename(id = subject_id, url = info) %>%
    write_csv(., here("data/glossary.csv"), na ="")
print("glossary.csv created")

# delete temp file
file.remove(here("data/wide.csv"))
print("wide.csv deleted")

# generating json

files <- list.files(path="data/", pattern="*.csv", full.names=TRUE, recursive=FALSE)

lapply(files, function(x) {
    read_csv(x) %>%
    toJSON() %>%
    write(., gsub(".csv", ".json", x))
})
print("csv2json completed")