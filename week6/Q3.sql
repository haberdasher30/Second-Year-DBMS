#3 To find the list of customers who appointed a salesman for their jobs who does not live in the same city where their customer lives, and gets a commission above 12%:
SELECT c.cust_name AS customer_name
FROM CUSTOMERQ6 c
INNER JOIN SALESMANQ6 s ON c.salesman_id = s.salesman_id
WHERE s.city <> c.city AND s.commission > 0.12;
