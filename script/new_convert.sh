#!/bin/bash

# remove temp file
rm data/wide.csv
echo "wide.csv deleted"

# this script will convert every csv file in data folder to json

# convert csv2json
for file in data/*.csv
do
    mlr --icsv --ojson --jlistwrap --jvstack cat $file > data/$(basename -s .csv $file).json
    echo "$file converted to json"
done