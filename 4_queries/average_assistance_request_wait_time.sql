SELECT avg(started_at - created_at) as average_request_time
FROM assistance_requests
JOIN students ON students.id = student.id 
ORDER BY average_request_time
LIMIT 1;SELECT avg(started_at-created_at) as average_wait_time
FROM assistance_requests;
