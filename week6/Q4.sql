#4 To make a join on the tables salesman, customer, and orders where each table's columns appear once and only relational rows come:
SELECT c.customer_id, c.cust_name, c.city AS customer_city,
       s.salesman_id, s.name AS salesman_name, s.city AS salesman_city,
       o.ord_no, o.purch_amt, o.ord_date
FROM CUSTOMERQ6 c
INNER JOIN SALESMANQ6 s ON c.salesman_id = s.salesman_id
INNER JOIN ORDERSQ6 o ON c.customer_id = o.customer_id AND c.salesman_id = o.salesman_id;
