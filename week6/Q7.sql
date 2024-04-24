#7 Create a view for all salespersons returning salesperson ID, name, and city:

CREATE VIEW AllSalespersons AS
SELECT salesman_id, name, city
FROM SALESMANQ6;

select * from AllSalespersons