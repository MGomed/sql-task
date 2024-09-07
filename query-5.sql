-- Запрос на получение списка сотрудников,
-- у которых фамилия длиннее 10 символов
SELECT e.name,
    e.last_name
FROM employees AS e
WHERE LENGTH(e.last_name) > 10;