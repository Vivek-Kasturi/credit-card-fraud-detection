-- High-risk frauds
SELECT DISTINCT fraud_label FROM creditcarddetails;

--finding how many values in the table are with label as fraud
SELECT COUNT(*) FROM creditcarddetails WHERE fraud_label = 'fraud';

--finding minimum, maximum and average of the table values
SELECT 
  MIN(risk_score) AS min_score,
  MAX(risk_score) AS max_score,
  ROUND(AVG(risk_score)::NUMERIC, 2) AS avg_score
FROM creditcarddetails
WHERE fraud_label = 'fraud';

--finding number of values in table with a score above 120
SELECT * FROM creditcarddetails
WHERE fraud_label = 'fraud' AND risk_score > 120;

--top 10 riskiest frauds
SELECT * FROM creditcarddetails
WHERE fraud_label = 'fraud'
ORDER BY risk_score DESC
LIMIT 10;

--fraud with risk score above 80
SELECT * FROM creditcarddetails
WHERE fraud_label = 'fraud' AND risk_score > 80
ORDER BY risk_score DESC;

--risk score bands
SELECT 
  CASE 
    WHEN risk_score >= 100 THEN 'Very High'
    WHEN risk_score >= 70 THEN 'High'
    WHEN risk_score >= 40 THEN 'Moderate'
    ELSE 'Low'
  END AS risk_band,
  COUNT(*) AS fraud_count
FROM creditcarddetails
WHERE fraud_label = 'fraud'
GROUP BY risk_band
ORDER BY fraud_count DESC;

-- Fraud rate by region
SELECT region, 
       COUNT(*) FILTER (WHERE fraud_label = 'fraud') * 100.0 / COUNT(*) AS fraud_rate
FROM creditcarddetails
GROUP BY region
ORDER BY fraud_rate DESC;

-- High anomaly scores
SELECT * FROM creditcarddetails
WHERE anamoly_score > 75
ORDER BY anamoly_score DESC
LIMIT 10;

-- Fraud pattern by hour of day
SELECT hour_of_day, COUNT(*) AS total, 
       COUNT(*) FILTER (WHERE fraud_label = 'fraud') AS frauds
FROM creditcarddetails
GROUP BY hour_of_day
ORDER BY hour_of_day;