#9 Create a view that counts the number of customers in each grade:
CREATE VIEW CustomerCountByGrade AS
SELECT grade, COUNT(*) AS number
FROM CUSTOMERQ6
GROUP BY grade;

select * from CustomerCountByGrade
