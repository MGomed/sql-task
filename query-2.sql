-- Запрос на получение списка работников нанятых за последние 30 дней
SELECT e.name,
    e.last_name,
    e.hire_date
FROM employees AS e
WHERE CURRENT_DATE - e.hire_date < 30;