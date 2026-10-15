-- Hourly trend
SELECT hour,
       COUNT(*) AS accidents,
       ROUND(AVG(risk_score)::numeric, 2) AS avg_risk
FROM accidents
GROUP BY hour
ORDER BY hour;

-- Day of week
SELECT day_of_week,
       COUNT(*) AS accidents,
       ROUND(AVG(risk_score)::numeric, 2) AS avg_risk
FROM accidents
GROUP BY day_of_week
ORDER BY accidents DESC;

-- Monthly
SELECT month, month_name, COUNT(*) AS accidents
FROM accidents
GROUP BY month, month_name
ORDER BY month;