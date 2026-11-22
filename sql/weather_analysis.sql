-- 1. Загальна статистика за місяць
SELECT
    ROUND(AVG(tavg)::numeric, 2) AS "Середня температура",
    MIN(tmin) AS "Мінімальна температура",
    MAX(tmax) AS "Максимальна температура",
    ROUND(SUM(prcp)::numeric, 2) AS "Загальна кількість опадів",
    ROUND(AVG(wspd)::numeric, 2) AS "Середня швидкість вітру",
    ROUND(AVG(pres)::numeric, 2) AS "Середній атмосферний тиск"
FROM weather_data;

-- 2. Температура за днями
SELECT
    date::date AS "Дата",
    ROUND(AVG(tavg)::numeric, 2) AS "Середня температура",
    MIN(tmin) AS "Мінімальна температура",
    MAX(tmax) AS "Максимальна температура"
FROM weather_data
GROUP BY date::date
ORDER BY date::date;

-- 3. Опади за днями
SELECT
    date::date AS "Дата",
    ROUND(SUM(prcp)::numeric, 2) AS "Опади"
FROM weather_data
GROUP BY date::date
ORDER BY date::date;
