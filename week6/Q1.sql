#1 To know which salesman are working for which customer:
SELECT c.cust_name AS customer_name, s.name AS salesman_name
FROM CUSTOMERQ6 c
INNER JOIN SALESMANQ6 s ON c.salesman_id = s.salesman_id;
