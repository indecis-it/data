# indecis.it data
[![Frictionless](https://github.com/indecis-it/data/actions/workflows/main.yml/badge.svg)](https://repository.frictionlessdata.io/report?user=indecis-it&repo=data&flow=update) [![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/) <a href="https://www.datibenecomune.it/"><img src="https://img.shields.io/badge/%F0%9F%99%8F-%23datiBeneComune-%23cc3232"/></a> 

This dataset was created during the italian election campaign of 2022. [indecis.it](https://www.indecis.it) website fetches and display these data in order to highlight differences in electoral programs.

Data are downloaded from this [Google Sheet](https://docs.google.com/spreadsheets/d/13YKVLtayxu0m2keOi1KHsLJqoshc9P279RLJ_sdhnAk/edit#gid=734919268) and are available thanks to [these wonderful people](https://github.com/indecis-it/indecis.it#il-team).

## Repository structure
```
root
├── 📂 data
│   ├── 📄 categories.csv
│   ├── 📄 categories.json
│   ├── 📄 file.csv
│   └── 📄 file.json
├── 📂 script
│   └── 📄 download.sh
├── 📄 datapackage.yaml
├── 📄 README.md
└── 📄 LICENSE
```

## Data dictionary and metadata

Every file in `data` folder is described according to [frictionless data standards](https://frictionlessdata.io/standards/) in the [`datapackage.yaml`](https://github.com/indecis-it/data/blob/main/datapackage.yaml)

### [📄 categories.csv](https://github.com/indecis-it/data/blob/main/data/categories.csv)

- Path: `data/`
- URL: https://raw.githubusercontent.com/indecis-it/data/main/data/categories.csv
- Delimiter: `,`
- Encoding: `UTF-8`

field | type | description | example
-- | -- | -- | --
id | integer | Category ID | 1
slug | string | Category slug | economic-affairs
name | string | Italian name of the category | Affari economici
description | string | Italian description of the category | Lorem ipsum

### [📄 sources.csv](https://github.com/indecis-it/data/blob/main/data/sources.csv)

- Path: `data/`
- URL: https://raw.githubusercontent.com/indecis-it/data/main/data/sources.csv
- Delimiter: `,`
- Encoding: `UTF-8`

field | type | description | example
-- | -- | -- | --
id | integer | Source ID | 1
title | string | Source title | Programma elettorale PD
slug | string | Source slug | programma-elettorale-pd
type | string | Source type | programma
url | URL | Source URL | https://www.indecis.it
list | string | Electoral list name | Partito Democratico
list_id | integer | Electoral list ID | 1

### [📄 lists.csv](https://github.com/indecis-it/data/blob/main/data/lists.csv)

- Path: `data/`
- URL: https://raw.githubusercontent.com/indecis-it/data/main/data/lists.csv
- Delimiter: `,`
- Encoding: `UTF-8`

field | type | description | example
-- | -- | -- | --
id | integer | Electoral list ID | 1
list | string | Electoral list name | Partito Democratico
slug | string | Electoral list slug | programma-elettorale-pd
symbol_name | string | Symbol filename | pd.jpg
symbol_url | URL | Symbol URL | https://raw.githubusercontent.com/indecis-it/indecis.it/main/public/symbols/pd.jpg

### [📄 parties.csv](https://github.com/indecis-it/data/blob/main/data/parties.csv)

- Path: `data/`
- URL: https://raw.githubusercontent.com/indecis-it/data/main/data/parties.csv
- Delimiter: `,`
- Encoding: `UTF-8`

field | type | description | example
-- | -- | -- | --
id | integer | Party ID | 1
party | string | Party name | Partito Democratico
list_id | integer | Electoral list ID | 5
list | string | Electoral list name | Partito Democratico
coalition_id | integer | Coalition ID | 1
coalition | string | Coalition name | Centro-sinistra

### [📄 coalitions.csv](https://github.com/indecis-it/data/blob/main/data/coalitions.csv)

- Path: `data/`
- URL: https://raw.githubusercontent.com/indecis-it/data/main/data/coalitions.csv
- Delimiter: `,`
- Encoding: `UTF-8`

field | type | description | example
-- | -- | -- | --
id | integer | Coalition ID | 1
coalition | string | Coalition name | Centro-sinistra

### [📄 leaders.csv](https://github.com/indecis-it/data/blob/main/data/leaders.csv)

- Path: `data/`
- URL: https://raw.githubusercontent.com/indecis-it/data/main/data/leaders.csv
- Delimiter: `,`
- Encoding: `UTF-8`

field | type | description | example
-- | -- | -- | --
id | integer | Leader ID | 1
name | string | Leader name | Giorgia
surname | string | Leader surname | Meloni
list | string | Electoral list name | Fratelli d'Italia
list_id | string | Electoral list ID | 1
profile_pic | URL | Profile image URL | https://www.indecis.it
wikipedia_url | URL | Wikipedia page URL | https://www.indecis.it

### [📄 items.csv](https://github.com/indecis-it/data/blob/main/data/items.csv)

- Path: `data/`
- URL: https://raw.githubusercontent.com/indecis-it/data/main/data/items.csv
- Delimiter: `,`
- Encoding: `UTF-8`

field | type | description | example
-- | -- | -- | --
id | integer | Item ID | 3
category | string | Category name in Italian | Social protection
category_id | integer | Category ID | 10
subject | string | Subject name | Alloggi popolari
subject_slug | string | Subject slug | alloggi-popolari
subject_id | string | Subject ID |  
source | string | Source title | Programma elettorale AVS
source_slug | string | Source slug | programma-elettorale-avs
list | string | Electoral list name | Alleanza Verdi e Sinistra
list_id | integer | Electoral list ID | 6
endorsement | string | Endorsement referred to the subject. See endorsements file for more information | green
description | string | Description of the position taken by the list | Lorem ipsum

### [📄 glossary.csv](https://github.com/indecis-it/data/blob/main/data/glossary.csv)

- Path: `data/`
- URL: https://raw.githubusercontent.com/indecis-it/data/main/data/glossary.csv
- Delimiter: `,`
- Encoding: `UTF-8`

field | type | description | example
-- | -- | -- | --
id | integer | Subject ID | 1
subject | string | Subject name | Alloggi popolari
subject_slug | string | Subject slug | alloggi-popolari
url | URL | URL of an external reference | https://www.indecis.it

### [📄 endorsements.csv](https://github.com/indecis-it/data/blob/main/data/endorsements.csv)

- Path: `data/`
- URL: https://raw.githubusercontent.com/indecis-it/data/main/data/endorsements.csv
- Delimiter: `,`
- Encoding: `UTF-8`

field | type | description | example
-- | -- | -- | --
id | integer | Endorsement ID | 1
description | string | Description of endorsement types | Lorem ipsum
icon | string | Color of the icon to display | green
color_code | string | HEX code | #50CEBB

## How to access data
If you wanna use indecis.it data in your works, you can follow these easy instructions. First of all you have to locate the raw URL of the file you are interested in

### Google Sheets
```
=IMPORTDATA("https://raw.githubusercontent.com/indecis-it/data/main/data/categories.csv")
```

### R
```r
categories <- read.csv("https://raw.githubusercontent.com/indecis-it/data/main/data/categories.csv")
sources <- read.csv("https://raw.githubusercontent.com/indecis-it/data/main/data/sources.csv")
lists <- read.csv("https://raw.githubusercontent.com/indecis-it/data/main/data/lists.csv")
parties <- read.csv("https://raw.githubusercontent.com/indecis-it/data/main/data/parties.csv")
coalitions <- read.csv("https://raw.githubusercontent.com/indecis-it/data/main/data/coalitions.csv")
leaders <- read.csv("https://raw.githubusercontent.com/indecis-it/data/main/data/leaders.csv")
items <- read.csv("https://raw.githubusercontent.com/indecis-it/data/main/data/items.csv")
glossary <- read.csv("https://raw.githubusercontent.com/indecis-it/data/main/data/glossary.csv")
endorsements <- read.csv("https://raw.githubusercontent.com/indecis-it/data/main/data/endorsements.csv")
```

### MATLAB
```matlab
categories = readtable("https://raw.githubusercontent.com/indecis-it/data/main/data/categories.csv")
sources = readtable("https://raw.githubusercontent.com/indecis-it/data/main/data/sources.csv")
lists = readtable("https://raw.githubusercontent.com/indecis-it/data/main/data/lists.csv")
parties = readtable("https://raw.githubusercontent.com/indecis-it/data/main/data/parties.csv")
coalitions = readtable("https://raw.githubusercontent.com/indecis-it/data/main/data/coalitions.csv")
leaders = readtable("https://raw.githubusercontent.com/indecis-it/data/main/data/leaders.csv")
items = readtable("https://raw.githubusercontent.com/indecis-it/data/main/data/items.csv")
glossary = readtable("https://raw.githubusercontent.com/indecis-it/data/main/data/glossary.csv")
endorsements = readtable("https://raw.githubusercontent.com/indecis-it/data/main/data/endorsements.csv")
```

## License
<a href="https://creativecommons.org/licenses/by/4.0/"><img src="https://mirrors.creativecommons.org/presskit/buttons/88x31/png/by.png" width="150"/></a>
