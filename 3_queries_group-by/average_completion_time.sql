SELECT students.name AS student, avg(assignment_submissions.duration*) AS avg_submission_time
FROM assignment_submissions
JOIN assignment_submissions ON students_id = student_id
WHERE end_date IS NULL
GROUP BY student 
ORDER BY avg_submission_time DESC;