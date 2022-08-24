# loading libraries
library(here)
library(dplyr)
library(tidyr)
library(readr)

# importing data
df <- read_csv(here("data/tests/wide.csv"))
relic <- read_csv(here("data/tests/relic.csv"))

# reshaping
long <- df %>%
    rename(item_source.pd = pd_source, 
           item_source.avs = avs_source, 
           item_description.pd = pd_description, 
           item_description.avs = avs_description, 
           item_endorsement.pd = pd_endorsement, 
           item_endorsement.avs = avs_endorsement) %>%
    pivot_longer(cols = starts_with("item"), 
          names_to = c(".value", "field"), names_sep = "_") %>%
    separate(field, into = c("type", "list"), sep = "\\.") %>%
    spread(type, item) %>%
    left_join(relic, ., by = "subject")

# exporting csv
write_csv(long, here("data/tests/items.csv"))
