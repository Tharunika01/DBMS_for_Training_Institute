ALTER TABLE trainers ADD departmentID INT;
UPDATE trainers SET departmentID=100 WHERE trainerID=1001;
UPDATE trainers SET departmentID=100 WHERE trainerID=1002;
UPDATE trainers SET departmentID=400 WHERE trainerID=1003;
UPDATE trainers SET departmentID=300 WHERE trainerID=1004;
UPDATE trainers SET departmentID=500 WHERE trainerID=1005;

SELECT course_name, fees FROM courses;

SELECT DISTINCT city FROM students;

SELECT * FROM students WHERE city="Chennai";

SELECT course_name FROM courses WHERE departmentID=100;

SELECT courseID, course_name FROM courses WHERE duration="3 Months" AND fees=30000.00;

SELECT studentID, courseID, grade FROM enrollments ORDER BY grade ASC;

SELECT COUNT(studentID) FROM enrollments WHERE grade='A';

UPDATE enrollments SET grade='B' WHERE studentID=9;

SELECT studentID, first_name, last_name FROM students WHERE first_name LIKE 'Gowtham';

/*Students Enrolled in a Specific Course*/
SELECT students.first_name, students.last_name
FROM students
JOIN enrollments ON students.studentID = enrollments.studentID
WHERE enrollments.courseID = 101;