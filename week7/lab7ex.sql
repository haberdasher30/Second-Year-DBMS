CREATE VIEW AgentBooking AS
SELECT 
  r3.agentName,
  r1.holidayCode,
  r1.cost,
  r4.quantityBooked,
  r2.airportName,
  r4.batchno,
  r1.cost * r4.quantityBooked AS totalcost
FROM r4
LEFT JOIN r3 ON r4.agentNo = r3.agentno
LEFT JOIN r1 ON r4.holidayCode = r1.holidayCode
LEFT JOIN r2  ON r4.airportCode = r2.airportCode;

select distinct * from AgentBooking;

CREATE VIEW StudentCourses AS
SELECT CourseID, StudentID FROM COURSESTUDENT;

CREATE VIEW CourseBooks AS
SELECT CourseID, RefBook FROM COURSEBOOK;

select * from CourseBooks;
select * from StudentCourses;
