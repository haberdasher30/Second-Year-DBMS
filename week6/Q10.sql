#10 statement for the following: create a view to <count the number of unique customers>, compute the <average purchase amount> and the <total purchase amount> of customer orders by each date (date wise in ascending order).
CREATE VIEW CustomerOrderSummary AS
SELECT ord_date,
       COUNT(DISTINCT customer_id) AS count,
       AVG(purch_amt) AS avg,
       SUM(purch_amt) AS sum
FROM ORDERSQ6
GROUP BY ord_date
ORDER BY ord_date ASC;

select * from CustomerOrderSummary