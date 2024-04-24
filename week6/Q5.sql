#5 To make a list in ascending order for the customer who works either through a salesman or by own:
SELECT cust_name
FROM CUSTOMERQ6
WHERE salesman_id IS NOT NULL
UNION
SELECT cust_name
FROM CUSTOMERQ6
WHERE salesman_id IS NULL
ORDER BY cust_name ASC;
