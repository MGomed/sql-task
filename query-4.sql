-- Запрос на получение количества работников в каждом регионе
SELECT r.name AS region,
    COUNT(e.id) AS empl_count
FROM employees AS e
    JOIN departments AS d ON d.id = e.department_id
    JOIN locations AS l ON l.id = d.location_id
    JOIN regions AS r ON r.id = l.region_id
GROUP BY r.name;