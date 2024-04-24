CREATE TABLE SALESMANQ5 (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(255),
    commission DECIMAL(5, 2)
);

CREATE TABLE CUSTOMERQ5 (
    customer_id INT PRIMARY KEY,
    cust_name VARCHAR(255),
    city VARCHAR(255),
    grade INT,
    salesman_id INT,
    FOREIGN KEY (salesman_id) REFERENCES SALESMANQ5(salesman_id)
);

CREATE TABLE ORDERSQ5 (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10, 2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERQ5(customer_id),
    FOREIGN KEY (salesman_id) REFERENCES SALESMANQ5(salesman_id)
);
