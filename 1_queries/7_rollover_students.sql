SELECT students.name, cohorts.name, cohorts.start_date as cohorts_start_date, students.start_date as students_start_date
FROM students 
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY cohorts_start_date;