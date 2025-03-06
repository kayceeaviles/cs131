**What this command does:**

This command will easily extract columns of interest from a CSV file.

It will display the column contents onto the terminal or to an output.


**Why this command is useful:**

This command is designed to be concise and straightfoward, with minimal input.
It reduces command clutter, making the command easier to read. 
It can save time and reduce potential syntax errors.

**How you can use this command:**

Replace csvfile with your csvfile of interest. 
Replace columnnumbers with the column number(s) you are looking to extract.

./ecol.sh csvfile columnnumbers


This script assumes the delimeter is ",".
If the delimeter is "," you do not have to specify it in the command.

If the delimeter is anything different, add -d "delimeter"


**Example:**

./ecol.sh 2019-01-h1.csv 2,5 > testscript.txt

head -n 10 testscript.txt 
tpep_pickup_datetime,trip_distance
"2019-01-01 00:46:40.000000",1.5
"2019-01-01 00:59:47.000000",2.6
"2018-12-21 13:48:30.000000",0.0
"2018-11-28 15:52:25.000000",0.0
"2018-11-28 15:56:57.000000",0.0
"2018-11-28 16:25:49.000000",0.0
"2018-11-28 16:29:37.000000",0.0
"2019-01-01 00:21:28.000000",1.3
"2019-01-01 00:32:01.000000",3.7 
