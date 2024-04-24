#1.	Write a query to find salesmen with all information who lives in the city where any of the customers lives.
SELECT *
FROM SALESMANQ5 s
WHERE s.city IN (SELECT city FROM CUSTOMERQ5);
#2.	Write a query to display all the orders that had amounts that were greater than at least one of the orders on September 10th 2012.
SELECT o.*
FROM ORDERSQ5 o
WHERE o.purch_amt > ANY (SELECT purch_amt FROM ORDERSQ5 WHERE ord_date = '2012-09-10');
#3.	Write a query to display all orders with an amount smaller than any amount for a customer in London.
SELECT o.*
FROM ORDERSQ5 o
WHERE o.purch_amt < ANY (SELECT purch_amt FROM CUSTOMERQ5 c, ORDERSQ5 oc
                          WHERE c.city = 'London' AND c.customer_id = oc.customer_id);
#4.	Write a query to display only those customers whose grade are, in fact, higher than every customer in New York.
SELECT c.*
FROM CUSTOMERQ5 c
WHERE c.grade > ALL (SELECT grade FROM CUSTOMERQ5 WHERE city = 'New York');
#5.	Write a query to get all the information for those customers whose grade is not as the grade of customer who belongs to the city London.
SELECT c.*
FROM CUSTOMERQ5 c
WHERE c.grade <> ANY (SELECT grade FROM CUSTOMERQ5 WHERE city = 'London');
#6.	Write a query to display all the orders from the orders table issued by the salesman 'Paul Adam'.
SELECT o.*
FROM ORDERSQ5 o
INNER JOIN SALESMANQ5 s ON o.salesman_id = s.salesman_id
WHERE s.name = 'Paul Adam';
#7.	Write a query to display all the orders for the salesman who belongs to the city London.
SELECT o.*
FROM ORDERSQ5 o
INNER JOIN SALESMANQ5 s ON o.salesman_id = s.salesman_id
WHERE s.city = 'London';
#8.	Write a query to display all the orders which values are greater than the average order value for 10th October 2012.
SELECT o.*
FROM ORDERSQ5 o
WHERE o.purch_amt > (SELECT AVG(purch_amt) FROM ORDERSQ5 WHERE ord_date = '2012-10-10');
#9.	Write a query to display the commission of all the salesmen servicing customers in Paris.
SELECT s.commission
FROM SALESMANQ5 s
INNER JOIN CUSTOMERQ5 c ON s.salesman_id = c.salesman_id
WHERE c.city = 'Paris';
#10.	Write a query to display all customers with orders on October 5, 2012.
SELECT c.*
FROM CUSTOMERQ5 c
INNER JOIN ORDERSQ5 o ON c.customer_id = o.customer_id
WHERE o.ord_date = '2012-10-05';


