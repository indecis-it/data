#!/bin/bash

# this script will download csv ../data from google spredsheet and will convert them to json

# download csv from google sheets
curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=0&single=true&output=csv" > ../data/categories.csv
echo "categories.csv downloaded"

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=118291356&single=true&output=csv" > ../data/sources.csv
echo "sources.csv downloaded"

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=1281477829&single=true&output=csv" > ../data/lists.csv
echo "lists.csv downloaded"

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=736498994&single=true&output=csv" > ../data/parties.csv
echo "parties.csv downloaded"

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=2049414648&single=true&output=csv" > ../data/coalitions.csv
echo "coalitions.csv downloaded"

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=2007202269&single=true&output=csv" > ../data/items.csv
echo "items.csv downloaded"

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=55590782&single=true&output=csv" > ../data/glossary.csv
echo "glossary.csv downloaded"

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=1842162450&single=true&output=csv" > ../data/endorsements.csv
echo "endorsements.csv downloaded"



# convert csv2json
mlr --icsv --ojson --jlistwrap --jvstack cat ../data/categories.csv > ../data/categories.json
echo "categories.csv converted to json"

mlr --icsv --ojson --jlistwrap --jvstack cat ../data/sources.csv > ../data/sources.json
echo "sources.csv converted to json"

mlr --icsv --ojson --jlistwrap --jvstack cat ../data/lists.csv > ../data/lists.json
echo "lists.csv converted to json"

mlr --icsv --ojson --jlistwrap --jvstack cat ../data/parties.csv > ../data/parties.json
echo "parties.csv converted to json"

mlr --icsv --ojson --jlistwrap --jvstack cat ../data/coalitions.csv > ../data/coalitions.json
echo "coalitions.csv converted to json"

mlr --icsv --ojson --jlistwrap --jvstack cat ../data/items.csv > ../data/items.json
echo "items.csv converted to json"

mlr --icsv --ojson --jlistwrap --jvstack cat ../data/endorsements.csv > ../data/endorsements.json
echo "glossary.csv converted to json"

mlr --icsv --ojson --jlistwrap --jvstack cat ../data/glossary.csv > ../data/glossary.json
echo "endorsements.csv converted to json"

# da migliorare con loop