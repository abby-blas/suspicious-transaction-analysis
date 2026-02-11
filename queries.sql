SELECT
    Class,
    COUNT(*) AS count
FROM transactions
GROUP BY Class;

SELECT
    Class,
    AVG(Amount) AS avg_amount
FROM transactions
GROUP BY Class;

SELECT
    COUNT(*) AS high_value_txns
FROM transactions
WHERE Amount > 500;

SELECT
    Class,
    COUNT(*) AS count
FROM transactions
WHERE Amount > 500
GROUP BY Class;

SELECT
    CASE
        WHEN Amount < 50 THEN 'Under $50'
        WHEN Amount < 200 THEN '$50–$200'
        WHEN Amount < 500 THEN '$200–$500'
        ELSE '$500+'
    END AS amount_bucket,
    COUNT(*) AS total_transactions,
    SUM(Class) AS fraud_count,
    ROUND(100.0 * SUM(Class) / COUNT(*), 2) AS fraud_rate_pct
FROM transactions
GROUP BY amount_bucket
ORDER BY fraud_rate_pct DESC;
