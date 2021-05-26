SELECT cohorts.name as cohort, teacher.name as teacher
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts_id = cohort.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;