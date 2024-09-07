-- Запрос на получение минимальной и максимальной зп по каждому департаменту
SELECT d.name AS dep_name,
    MIN(e.salary) AS min_salary,
    MAX(e.salary) AS max_salary
FROM employees AS e
    JOIN departments AS d ON d.id = e.department_id
GROUP BY d.name;