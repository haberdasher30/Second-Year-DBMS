-- Create tables
CREATE TABLE r1 (
    holidaycode VARCHAR(4) PRIMARY KEY,
    cost DECIMAL(10, 2)
);

CREATE TABLE r2 (
    airportcode INT PRIMARY KEY,
    airportname VARCHAR(255)
);

CREATE TABLE r3 (
    agentno INT PRIMARY KEY,
    agentname VARCHAR(255)
);

CREATE TABLE r4 (
    batchno INT,
    agentno INT,
    holidaycode VARCHAR(4),
    airportcode INT,
    quantitybooked INT,
    PRIMARY KEY (batchno, agentno, holidaycode, airportcode),
    FOREIGN KEY (holidaycode) REFERENCES r1(holidaycode),
    FOREIGN KEY (airportcode) REFERENCES r2(airportcode),
    FOREIGN KEY (agentno) REFERENCES r3(agentno)
);

-- Populate tables
INSERT INTO r1 (holidaycode, cost) VALUES
('B563', 363),
('B248', 248),
('B428', 322),
('C930', 568),
('A270', 972),
('B728', 248),
('A430', 279);

INSERT INTO r2 (airportcode, airportname) VALUES
(1, 'Luton'),
(12, 'Edinburgh'),
(11, 'Glasgow'),
(14, 'Newcastle');

INSERT INTO r3 (agentno, agentname) VALUES
(76, 'Bairns travel'),
(142, 'Active Holidays');

INSERT INTO r4 (batchno, agentno, holidaycode, airportcode, quantitybooked) VALUES
(1, 76, 'B563', 1, 10),
(1, 76, 'B248', 12, 20),
(1, 76, 'B428', 11, 18),
(2, 142, 'B563', 1, 15),
(2, 142, 'C930', 14, 2),
(2, 142, 'A270', 14, 1),
(2, 142, 'B728', 12, 5),
(3, 76, 'C930', 1, 11),
(3, 76, 'A430', 11, 15);

-- Create tables
CREATE TABLE COURSESTUDENT (
    CourseID INT,
    StudentID INT,
    PRIMARY KEY (CourseID, StudentID)
);

CREATE TABLE COURSEBOOK (
    CourseID INT,
    RefBook VARCHAR(255),
    PRIMARY KEY (CourseID, RefBook)
);

-- COURSESTUDENT table
INSERT INTO COURSESTUDENT (CourseID, StudentID) VALUES
(1, 201),
(1, 202),
(1, 203),
(2, 204),
(2, 205),
(3, 206),
(3, 207),
(3, 208);

-- COURSEBOOK table
INSERT INTO COURSEBOOK (CourseID, RefBook) VALUES
(1, 'Mathematics Textbook'),
(1, 'Physics Workbook'),
(2, 'Chemistry Guide'),
(2, 'Biology Encyclopedia'),
(3, 'History Atlas'),
(3, 'Geography Manual'),
(3, 'Literature Anthology');