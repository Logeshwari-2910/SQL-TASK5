use companydb;
-- Get employee names along with the names of clients they work with
SELECT e.first_name, e.last_name, c.client_name
FROM employee e
INNER JOIN works_with ww ON e.emp_id = ww.emp_id
INNER JOIN client c ON ww.client_id = c.client_id;

-- List all employees and their clients, if any
SELECT e.first_name, e.last_name, c.client_name
FROM employee e
LEFT JOIN works_with ww ON e.emp_id = ww.emp_id
LEFT JOIN client c ON ww.client_id = c.client_id;

-- List all clients and the employees working with them, if any
SELECT e.first_name, e.last_name, c.client_name
FROM works_with ww
RIGHT JOIN employee e ON ww.emp_id = e.emp_id
RIGHT JOIN client c ON ww.client_id = c.client_id;

-- Show all employees and clients, even if there is no matching record
SELECT e.first_name, e.last_name, c.client_name
FROM employee e
LEFT JOIN works_with ww ON e.emp_id = ww.emp_id
LEFT JOIN client c ON ww.client_id = c.client_id

UNION

SELECT e.first_name, e.last_name, c.client_name
FROM client c
LEFT JOIN works_with ww ON c.client_id = ww.client_id
LEFT JOIN employee e ON ww.emp_id = e.emp_id;
