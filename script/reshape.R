# loading libraries
library(here)
library(dplyr)
library(tidyr)
library(readr)

# function for modifying colnames
reverse_string <- function(x) {
    paste0("item_", trimws(paste(sub('.*_', '', x), sub('_.*', '', x), sep = '.')))
}

# importing data
df <- read_csv(here("data/tests/wide.csv"))
relic <- read_csv(here("data/tests/relic.csv"))
src <- read_csv(here("data/sources.csv"))

# removing useless columns
src <- src %>%
    rename(list_id = id,
        source = title,
        source_slug = slug) %>%
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
    mutate(id = row_number()) %>%
    select(id, category, category_id, subject, subject_slug, subject_id, source, source_slug, list, list_id, endorsement, description)

# exporting csv
write_csv(long, here("data/tests/items.csv"))
write_csv(long, here("data/new_items.csv"))

# generating infos.csv
infos <- df %>%
    select(subject_id, subject, subject_slug, info)

write_csv(infos, here("data/tests/glossary.csv"))
write_csv(infos, here("data/new_glossary.csv"))