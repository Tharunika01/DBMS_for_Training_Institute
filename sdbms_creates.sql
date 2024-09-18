SHOW DATABASES;
USE student_dbms;
CREATE TABLE students (
	studentID INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    gender CHAR(20),
    city VARCHAR(100),
    phone VARCHAR(20),
    email_id VARCHAR(50)
);
CREATE TABLE courses (
	courseID INT PRIMARY KEY,
    course_name VARCHAR(100),
    departmentID INT,
    duration VARCHAR(10),
    fees DECIMAL(10,2)
);
CREATE TABLE trainers (
	trainerID INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    doh DATE,
    gender CHAR(20),
    city VARCHAR(100),
    phone VARCHAR(20),
    email_id VARCHAR(50)
);
CREATE TABLE departments (
    departmentID INT PRIMARY KEY,
    department_name VARCHAR(100)
);
CREATE TABLE enrollments (
    enrollmentID INT PRIMARY KEY,
    studentID INT,
    courseID INT,
    enrollmentDate DATE,
    grade CHAR(1),
    FOREIGN KEY (studentID) REFERENCES students(studentID),
    FOREIGN KEY (courseID) REFERENCES courses(courseID)
);

INSERT INTO students VALUES
(001, "Ashok", "Kumaran", '2000-01-01',  "Male", "Chennai", "9275828376", "ashok23@gmail.com"),
(002, "Brindha", "Shankar", '2001-11-24', "Female", "Salem", "833017428", "brindha241@gmail.com"),
(003, "Gowtham", "Manohar", '2000-05-29', "Male", "Chennai", "9344681626", "gowtham29@gmail.com"),
(004, "Gowtham", "Nair", '2001-04-23', "Male", "Coimbatore", "8330518369", "gowtham2341@gmail.com"),
(005, "Jessica", "Smith", '2000-03-18', "Female", "Chennai", "7391275022", "jesismith00@gmail.com"),
(006, "Kishore", "Sivakumar", '2002-02-01', "Male", "Trichy", "9330117584", "kishore122@gmail.com"),
(007, "Nisha", "Vijayakumar", '2001-06-22', "Female", "Selam", "8719462711", "nishavijay01@gmail.com"),
(008, "Roshan", "Viswanath", '2001-06-30', "Male", "Madurai", "9948271573", "roshan30@gmail.com"), 
(009, "Shiva", "Subramaniam", '2001-12-18', "Male", "Coimbatore", "8937519366", "shivasub1812@gmail.com"),
(010, "Yasmin", "Mohammed Ali", '2001-08-12', "Female", "Chennai", "9328518055", "yasmin1208@gmail.com");
INSERT INTO courses VALUES
(101, "Full Stack Developer", 100, "6 Months", 45000.00),
(102, "FrontEnd Developer", 100, "3 Months", 30000.00),
(103, "BackEnd Developer", 100, "3 Months", 30000.00),
(104, "DataBase Developer", 100, "3 Months", 30000.00),
(201, "Web Designer", 200, "4 Months", 35000.00),
(301, "Software Tester", 300, "4 Months", 40000.00),
(401, "Data Analyst", 400, "5 Months", 45000.00),
(501, "AWS Course", 500, "3 Months", 35000.00),
(502, "CCNA Course", 500, "3 Months", 35000.00);
INSERT INTO trainers VALUES 
(1001, "Agnes", "Stephen", '2020-06-01',  "Female", "Chennai", "9932758123", "agnes95@gmail.com"),
(1002, "Chandhru", "Ravikumar", '2022-05-24', "Male", "Chennai", "9935716302", "chandhru22@gmail.com"),
(1003, "Jagdesh", "Kumaran", '2023-05-01', "Male", "Trichy", "7201673591", "jagdeshkumaran97@gmail.com"),
(1004, "Kavya", "Gunashekaran", '2021-11-05', "Female", "Coimbatore", "8367140944", "kavya1996@gmail.com"),
(1005, "Sathiesh", "Viswanathan", '2023-03-30', "Male", "Chennai", "9822471931", "sathiesh92@gmail.com");
INSERT INTO departments VALUES
(100, "Full Stack Development"),
(200, "Software Designing"),
(300, "Software Testing"),
(400, "Data Science"),
(500, "Networking");
INSERT INTO enrollments VALUES
(2321, 001, 101, '2023-12-23', 'A'),
(2407, 002, 101, '2024-01-18', 'C'),
(2311, 003, 301, '2023-12-02', 'A'),
(2445, 004, 401, '2024-02-19', 'B'),
(2317, 005, 102, '2023-12-04', 'D'),
(2478, 006, 101, '2024-05-20', 'C'),
(2420, 007, 401, '2024-01-29', 'B'),
(2430, 008, 102, '2024-03-09', 'B'),
(2305, 009, 502, '2023-11-13', 'C'),
(2446, 010, 301, '2024-04-22', 'A');