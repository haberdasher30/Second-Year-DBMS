#8 Create a view for salespeople who belong to the city of New York:
CREATE VIEW SalespeopleInNewYork AS
SELECT salesman_id, name, city, commission
FROM SALESMANQ6
WHERE city = 'New York';

select * from SalespeopleInNewYork
