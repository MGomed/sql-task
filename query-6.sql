-- Запрос на получение списка сотрудников
-- с зарплатой выше средней по всей компании
SELECT e.name,
    e.last_name,
    e.salary
FROM employees AS e
WHERE e.salary > (
        SELECT AVG(salary)
        FROM employees
    );