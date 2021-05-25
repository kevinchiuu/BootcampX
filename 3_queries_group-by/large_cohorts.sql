SELECT cohorts.name as cohort_name, count(students*) AS student_count
FROM cohorts
JOIN students ON cohorts.id = cohort.id
GROUP BY cohort_name
HAVING count(*) >= 18
ORDER BY student_count;