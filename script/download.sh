#!/bin/bash

# this script will download csv ../data from google spredsheet and will convert them to json

# download csv from google sheets
curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=0&single=true&output=csv" > ../data/categories.csv
curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=118291356&single=true&output=csv" > ../data/sources.csv
curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=1281477829&single=true&output=csv" > ../data/lists.csv
curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=736498994&single=true&output=csv" > ../data/parties.csv
curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=2049414648&single=true&output=csv" > ../data/coalitions.csv
curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=2007202269&single=true&output=csv" > ../data/items.csv
curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=55590782&single=true&output=csv" > ../data/glossary.csv
curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=1842162450&single=true&output=csv" > ../data/endorsements.csv

# convert csv2json
mlr --icsv --ojson --jlistwrap --jvstack cat ../data/categories.csv > ../data/categories.json
mlr --icsv --ojson --jlistwrap --jvstack cat ../data/sources.csv > ../data/sources.json
mlr --icsv --ojson --jlistwrap --jvstack cat ../data/lists.csv > ../data/lists.json
mlr --icsv --ojson --jlistwrap --jvstack cat ../data/parties.csv > ../data/parties.json
mlr --icsv --ojson --jlistwrap --jvstack cat ../data/coalitions.csv > ../data/coalitions.json
mlr --icsv --ojson --jlistwrap --jvstack cat ../data/items.csv > ../data/items.json
mlr --icsv --ojson --jlistwrap --jvstack cat ../data/glossary.csv > ../data/glossary.json
mlr --icsv --ojson --jlistwrap --jvstack cat ../data/endorsements.csv > ../data/endorsements.json