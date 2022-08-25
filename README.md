# indecis.it data
[![Frictionless](https://github.com/indecis-it/data/actions/workflows/frictionless.yaml/badge.svg)](https://repository.frictionlessdata.io/report?user=indecis-it&repo=data&flow=frictionless) [![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/) <a href="https://www.datibenecomune.it/"><img src="https://img.shields.io/badge/%F0%9F%99%8F-%23datiBeneComune-%23cc3232"/></a> 

## ⚠️ WIP
- link allo sheet https://docs.google.com/spreadsheets/d/13YKVLtayxu0m2keOi1KHsLJqoshc9P279RLJ_sdhnAk/edit#gid=734919268
- link al sito http://indecis.it/

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

## Data dictionary

### [📄 categories.csv](https://raw.githubusercontent.com/indecis-it/data/main/data/categories.csv)

- Path: `data/`
- URL: https://raw.githubusercontent.com/indecis-it/data/main/data/categories.csv
- Delimiter: `,`
- Encoding: `UTF-8`

field | type | description | example
-- | -- | -- | --
id | integer | Category ID | 1
slug | string | Category slug | economic-affairs
source | string | Source of the classification | EUROSTAT
name_en | string | English name of the category | Economic affairs
description_en | string | English description of the category | Lorem ipsum
name_it | string | Italian name of the category | Affari economici
description_it | string | Italian description of the category | Lorem ipsum

### [📄 sources.csv](https://raw.githubusercontent.com/indecis-it/data/main/data/sources.csv)

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

### [📄 lists.csv](https://raw.githubusercontent.com/indecis-it/data/main/data/lists.csv)

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

### [📄 parties.csv](https://raw.githubusercontent.com/indecis-it/data/main/data/parties.csv)

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

### [📄 coalitions.csv](https://raw.githubusercontent.com/indecis-it/data/main/data/coalitions.csv)

- Path: `data/`
- URL: https://raw.githubusercontent.com/indecis-it/data/main/data/coalitions.csv
- Delimiter: `,`
- Encoding: `UTF-8`

field | type | description | example
-- | -- | -- | --
id | integer | Coalition ID | 1
coalition | string | Coalition name | Centro-sinistra

### [📄 items.csv](https://raw.githubusercontent.com/indecis-it/data/main/data/items.csv)

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

### [📄 glossary.csv](https://raw.githubusercontent.com/indecis-it/data/main/data/glossary.csv)

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

### [📄 endorsements.csv](https://raw.githubusercontent.com/indecis-it/data/main/data/endorsements.csv)

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


## License
<a href="https://creativecommons.org/licenses/by/4.0/"><img src="https://mirrors.creativecommons.org/presskit/buttons/88x31/png/by.png" width="150"/></a>
