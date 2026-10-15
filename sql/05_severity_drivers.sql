-- Weather
SELECT weather,
       COUNT(*) AS accidents,
       ROUND(AVG(risk_score)::numeric, 2) AS avg_risk
FROM accidents
GROUP BY weather
ORDER BY accidents DESC;

-- Visibility
SELECT visibility,
       COUNT(*) AS accidents,
       ROUND(AVG(risk_score)::numeric, 2) AS avg_risk
FROM accidents
GROUP BY visibility
ORDER BY accidents DESC;

-- Road type
SELECT road_type,
       COUNT(*) AS accidents,
       ROUND(AVG(casualties)::numeric, 2) AS avg_casualties
FROM accidents
GROUP BY road_type
ORDER BY accidents DESC;

-- Cause
SELECT cause,
       COUNT(*) AS accidents,
       SUM(casualties) AS total_casualties,
       ROUND(AVG(risk_score)::numeric, 2) AS avg_risk
FROM accidents
GROUP BY cause
ORDER BY accidents DESC;

-- Traffic density x Severity
SELECT traffic_density, accident_severity, COUNT(*) AS cnt
FROM accidents
GROUP BY traffic_density, accident_severity
ORDER BY traffic_density, cnt DESC;