#6 To make a Cartesian product between salesman and customer:

SELECT s.salesman_id, s.name AS salesman_name, s.city AS salesman_city,
       c.customer_id, c.cust_name AS customer_name, c.city AS customer_city
FROM SALESMANQ6 s
CROSS JOIN CUSTOMERQ6 c;

