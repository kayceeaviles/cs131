#!/bin/bash


# gets date and time the shell script is executed
date_time=$(date "+%F-%T")

dataset="2019-01-h1.csv"

# creates a csv file for each vendor of interest
for vendor in 1.0 2.0 4.0; do
	output_file="${date_time}-${vendor}.csv"
	
	# gets all entries for each vendor 
	sed -n "/^${vendor},/p" "$dataset" > "$output_file"
	
	# avoids pushing large files
	echo "$output_file" >> .gitignore
done

# creates ws4.txt with wc results
for vendor in 1.0 2.0 4.0; do
	output_file="${date_time}-${vendor}.csv"
	wc_result=$(wc "$output_file")
	echo "$wc_result" >> ws4.txt
done

# appends contents of .gitignore to ws4.txt
echo "Contents of .gitignore:" >> ws4.txt
cat .gitignore >> ws4.txt

