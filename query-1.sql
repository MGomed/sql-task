-- Запрос на получение работников у которых нет почты \
-- или почта не в корпоративном домене (домен dualbootpartners.com)
SELECT e.name,
    e.last_name
FROM employees AS e
WHERE email IS NULL
    OR email NOT LIKE '%@dualbootpartners.com';