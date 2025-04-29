#!/bin/bash


DELIMITER=""


if [ $# -lt 2 ]; then
	echo "Usage: $0 <csv_file> <column numbers (comma-separated)> [-d <delim>]"
	exit 1
fi

CSV_FILE=$1
COLUMN_NUMBERS=$2
shift 2 


if [ ! -f "$CSV_FILE" ]; then
	echo "Error: '$CSV_FILE' does not exist."
	exit 1
fi

DELIMITERS=(, ";" "|" "\t")

for d in "${DELIMITERS[@]}"; do

	if head -n 1 "$CSV_FILE" | grep -q "$d"; then
		DELIMITER="$d"
		break
	fi
done

if [ -z "$DELIMITER" ]; then
	echo "Error: No valid delimiter in '$CSV_FILE'."
	exit 1
fi


cut -d"$DELIMITER" -f"$COLUMN_NUMBERS" "$CSV_FILE"
