#2 To find the list of customers who appointed a salesman for their jobs who gets a commission from the company more than 12%:
SELECT c.cust_name AS customer_name
FROM CUSTOMERQ6 c
INNER JOIN SALESMANQ6 s ON c.salesman_id = s.salesman_id
WHERE s.commission > 0.12;
