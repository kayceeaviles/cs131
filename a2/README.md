What this command does:

This command will easily extract a column of interest from a CSV file.
It will display the contents in the specific column onto the terminal or
to an output.

Why it is useful:

You do not have to manually type the commands to extract a specific column
It can save some time since it is automatic

How you can use this command:

Replace csvfile with your csvfile of interest. 
Replace columnnumber with the column number you are looking to extract.

./extractacolumn.sh csvfile columnnumber

Example:

./extractacolumn.sh 2019-01-h1.csv 5 > testscript.txt

head -n 10 testscript.txt 
trip_distance
1.5
2.6
0.0
0.0
0.0
0.0
0.0
1.3
3.7
