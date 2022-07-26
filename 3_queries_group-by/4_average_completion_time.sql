-- get currently enrolled students' average assignment completion time 
-- select the students  name and average time from assignment submissions
-- order the results from greatest duration to least greatest duration 
-- a student will have a null end date if they are currently enrolled 

SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
GROUP BY student
ORDER BY average_assignment_duration DESC;
