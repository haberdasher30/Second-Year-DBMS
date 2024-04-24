CREATE TABLE SALESMANQ6 (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    commission DECIMAL(5,2)
);

CREATE TABLE CUSTOMERQ6 (
    customer_id INT PRIMARY KEY,
    cust_name VARCHAR(50),
    city VARCHAR(50),
    grade INT,
    salesman_id INT,
    FOREIGN KEY (salesman_id) REFERENCES SALESMANQ6(salesman_id)
);

CREATE TABLE ORDERSQ6 (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10,2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERQ6(customer_id),
    FOREIGN KEY (salesman_id) REFERENCES SALESMANQ6(salesman_id)
);

CREATE TABLE COURSEQ6 (
  course_id VARCHAR(10) PRIMARY KEY,
  title VARCHAR(50),
  dept_name VARCHAR(50),
  credits INT
);

create table CourseQ6(
course_id varchar(9),
    title varchar(18),
    dept_name varchar(18),
    credits int
);


create table PrereqQ6(
course_id varchar(9),
    prereq_id varchar(9)
);

-- Insert statements for SALESMANQ6 table
INSERT INTO SALESMANQ6 (salesman_id, name, city, commission) VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5003, 'Lauson Hen', 'San Jose', 0.12),
(5007, 'Paul Adam', 'Rome', 0.13);

-- Insert statements for CUSTOMERQ6 table
INSERT INTO CUSTOMERQ6 (customer_id, cust_name, city, grade, salesman_id) VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3001, 'Brad Guzan', 'London', NULL, 5005), -- Assuming grade is optional
(3004, 'Fabian Johns', 'Paris', 300, 5006),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3009, 'Geoff Camero', 'Berlin', 100, 5003),
(3008, 'Julian Green', 'London', 300, 5002),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007);

-- Insert statements for ORDERSQ6 table
INSERT INTO ORDERSQ6 (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007),
(70013, 3045.6, '2012-04-25', 3002, 5001);




insert into CourseQ6(course_id,title,dept_name,credits) values
('BIO-301', 'Genetics', 'Biology', 4),
    ('CS-190', 'Game Design', 'Comp Sci', 4),
    ('CS-351', 'Robotics', 'Comp Sci', 3);

insert into PrereqQ6(course_id,prereq_id) values
('BIO-301', 'BIO-101'),
    ('CS-190', 'CS-101'),
    ('CS-347', 'CS-101');





