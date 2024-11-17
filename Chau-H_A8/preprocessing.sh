#!/bin/bash


file=$1
output=$2

#prints all the lines with missing values
awk -F, 'NF < 16 {print "Line ", NR, ": ", $0}' "$file"

#removes row if any field is missing
awk -F, '{
	missing = "false"
	for (i = 1; i <= 16; i++) {
		if ($i == "") {
			missing = "true"
			break
		}
	}
	if (missing == "false") {
		print $0
	}
}' "$file" > "$output"

#removes any duplicate rows
sort -t, -k1 "$output" | uniq > temp.csv && mv temp.csv "$output"

#identifying outliers and removing outliers from price column in cleaned file and saving them to a separate .csv file
threshold=$(awk -F, '{sum += $10; count++} END {if (count > 0) print (sum / count) * 2; else print 0}' "$output")

awk -F, -v t="$threshold" '$10 > t {print "Line ", NR, ": ", $0}' "$output" > outliers.csv
awk -F, -v t="$threshold" '$10 <= t {print $0}' "$output" > temp.csv && mv temp.csv "$output"



