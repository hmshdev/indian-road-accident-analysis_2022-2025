-- Top states
SELECT state,
       COUNT(*) AS accidents,
       SUM(casualties) AS casualties,
       ROUND(AVG(risk_score)::numeric, 2) AS avg_risk
FROM accidents
GROUP BY state
ORDER BY accidents DESC;

-- Top cities
SELECT city, state,
       COUNT(*) AS accidents,
       SUM(casualties) AS casualties
FROM accidents
GROUP BY city, state
ORDER BY accidents DESC;

-- High-risk cities (min 20 accidents)
SELECT city, state,
       ROUND(AVG(risk_score)::numeric, 2) AS avg_risk,
       COUNT(*) AS accidents
FROM accidents
GROUP BY city, state
HAVING COUNT(*) >= 20
ORDER BY avg_risk DESC;

-- Festival impact
SELECT is_festival,
       COUNT(*) AS accidents,
       ROUND(AVG(risk_score)::numeric, 2) AS avg_risk,
       SUM(casualties) AS casualties
FROM accidents
GROUP BY is_festival;