-- Overall KPIs
SELECT
    COUNT(*)                                    AS total_accidents,
    SUM(casualties)                             AS total_casualties,
    ROUND(AVG(risk_score)::numeric, 2)          AS avg_risk_score,
    ROUND(AVG(casualties)::numeric, 2)          AS avg_casualties,
    SUM(CASE WHEN is_fatal THEN 1 ELSE 0 END)   AS fatal_accidents
FROM accidents;

-- Severity distribution
SELECT accident_severity,
       COUNT(*) AS cnt,
       ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS pct
FROM accidents
GROUP BY accident_severity
ORDER BY cnt DESC;

-- Weekend vs Weekday
SELECT is_weekend,
       COUNT(*) AS accidents,
       ROUND(AVG(risk_score)::numeric, 2) AS avg_risk,
       SUM(casualties) AS casualties
FROM accidents
GROUP BY is_weekend;

-- Peak vs Non-Peak
SELECT is_peak_hour,
       COUNT(*) AS accidents,
       ROUND(AVG(casualties)::numeric, 2) AS avg_casualties
FROM accidents
GROUP BY is_peak_hour;