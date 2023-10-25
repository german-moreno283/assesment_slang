SELECT month1, sal_date_count, sql_date_count, opportunity_date_count, close_date_count FROM
(
SELECT strftime('%m', sal_date) AS month1, COUNT(*) AS sal_date_count
FROM Challenge
GROUP BY strftime('%m', sal_date)) AS t1
JOIN  
(
SELECT strftime('%m', sql_date) AS month2, COUNT(*) AS sql_date_count
FROM Challenge
GROUP BY strftime('%m', sql_date))
AS t2 
JOIN
(
SELECT strftime('%m', opportunity_date) AS month3, COUNT(*) AS opportunity_date_count
FROM Challenge
GROUP BY strftime('%m', opportunity_date))
AS t3
JOIN
(
SELECT strftime('%m', close_date) AS month4, COUNT(*) AS close_date_count
FROM Challenge
GROUP BY strftime('%m', close_date))
AS t4
WHERE t1.month1 = t2.month2 AND t1.month1 = t3.month3 AND t1.month1 = t4.month4
;


