#!/bin/bash

# this script will download csv data from google spredsheet

# download csv from google sheets
curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=0&single=true&output=csv" > data/categories.csv
echo "categories.csv downloaded"

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=118291356&single=true&output=csv" > data/sources.csv
echo "sources.csv downloaded"

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=1281477829&single=true&output=csv" > data/lists.csv
echo "lists.csv downloaded"

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=736498994&single=true&output=csv" > data/parties.csv
echo "parties.csv downloaded"

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=2049414648&single=true&output=csv" > data/coalitions.csv
echo "coalitions.csv downloaded"

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=92043075&single=true&output=csv" > data/leaders.csv
echo "leaders.csv downloaded"

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=1842162450&single=true&output=csv" > data/endorsements.csv
echo "endorsements.csv downloaded"

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=2021671775&single=true&output=csv" > data/relic.csv
echo "relic.csv downloaded"

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=1851423091&single=true&output=csv" > data/wide.csv
echo "wide.csv downloaded"

curl -kL "https://docs.google.com/spreadsheets/d/e/2PACX-1vRY42hEclKzUGEN3YfhZ_v_x2EiVC-kxjtiLBJR_Gm2zmLqftenCTQqK7lwnEat1CyhBbec2r0czvsb/pub?gid=905787669&single=true&output=csv" > data/press.csv
echo "press.csv downloaded"
