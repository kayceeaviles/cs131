BEGIN {
	FS=","
	highest_score = 0
	lowest_score = 1000 
	top_student
	lowest_student
}
	
{
	# skips header

	if (NR == 1) {
		next
	}
	
	# finding total score for each student

	total_score = 0
	for (i = 3; i <= NF; i++) {
	# gets total from each class
		total_score += $i;
	}
	
	# finding average grade for student

	avg_grade = total_score/3
	# assigning total and avg for each student with their name as the key in the array
		student_total[$2] = total_score
		student_avg[$2] = avg_grade
	
	# determining status

	if (avg_grade >= 70) {

		student_status[$2] = "Pass"
	} 

	else {
		student_status[$2] = "Fail"
	}
	
	# determining the highest scoring student 

	if (total_score > highest_score) {
		highest_score = total_score
		top_student = $2
	} 
	
	# determining the lowest scoring student

	if (total_score < lowest_score) {
		lowest_score = total_score
		lowest_student = $2
	}
}

END {
	print "Name Total_Score Average_Score Status"
	for (name in student_total) {
		print name, student_total[name], student_avg[name], student_status[name]
	}

	print "\nTop scoring student is " top_student, "with a total score of " highest_score
	print "\nLowest scoring student is " lowest_student, "with a total score of " lowest_score
}
