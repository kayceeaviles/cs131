#!/bin/bash

DELIMITER=","


if [ $# -lt 2 ]; then
	echo "Usage: $0 <csv_file> <column numbers (comma-separated)> [-d <delim>]"
	exit 1
fi

CSV_FILE=$1
COLUMN_NUMBERS=$2
shift 2 

if [[ $# -ge 4 && "$3" == "-d" ]]; then
	if [[ -n "$4"&& ${#4} -eq 1 ]]; then
	DELIMITER="$4"
else
	echo "Error: Delimiter must be a single character."
	exit 1
	fi

fi


if [ ! -f "$CSV_FILE" ]; then
	echo "Error: '$CSV_FILE' does not exist."
	exit 1
fi

cut -d"$DELIMITER" -f"$COLUMN_NUMBERS" "$CSV_FILE"
