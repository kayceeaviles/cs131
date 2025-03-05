#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Usage $0 <csv_file> <column_number>"
	exit 1
fi

CSV_FILE=$1
COLUMN_NUMBER=$2

if [ ! -f "$CSV_FILE" ]; then
	echo "Error: '$CSV_FILE' does not exist."
	exit 1
fi

cut -d',' -f"$COLUMN_NUMBER" "$CSV_FILE"
