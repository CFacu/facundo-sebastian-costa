#1.Create a database named 'high-school' and model it

#Create database
CREATE DATABASE IF NOT EXISTS high_school;

#Use database
USE high_school;

CREATE TABLE IF NOT EXISTS students(
	registration_number INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    birth DATE,
    PRIMARY KEY(registration_number)
);

CREATE TABLE IF NOT EXISTS teachers(
	id_teacher INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    birth DATE,
    PRIMARY KEY(id_teacher)
);

CREATE TABLE IF NOT EXISTS courses(
	id_course INT NOT NULL AUTO_INCREMENT,
    course_name VARCHAR(30) NOT NULL,
    id_teacher INT,
    PRIMARY KEY(id_course),
    FOREIGN KEY(id_teacher) REFERENCES teachers(id_teacher)
);

CREATE TABLE IF NOT EXISTS schedule_time(
	id_course INT NOT NULL,
    weekday VARCHAR(20),
    hours TIME,
    CONSTRAINT FOREIGN KEY(id_course) REFERENCES courses(id_course)
);

CREATE TABLE IF NOT EXISTS students_courses(
	registration_number INT NOT NULL,
    id_course INT NOT NULL,
    note1 FLOAT,
    note2 FLOAT,
    note3 FLOAT,
    final_note FLOAT,
    PRIMARY KEY(registration_number,id_course),
    CONSTRAINT FOREIGN KEY(registration_number) REFERENCES students(registration_number),
    CONSTRAINT FOREIGN KEY(id_course) REFERENCES courses(id_course)
);

CREATE TABLE IF NOT EXISTS teachers_courses(
	id_teacher INT NOT NULL,
    id_course INT NOT NULL,
    PRIMARY KEY(id_teacher,id_course),
    CONSTRAINT FOREIGN KEY(id_teacher) REFERENCES teachers(id_teacher),
    CONSTRAINT FOREIGN KEY(id_course) REFERENCES courses(id_course)
);

#2. Insert information for 3 teachers, 3 courses and 10 students per course.

#Teachers
INSERT INTO teachers (first_name,last_name,birth) VALUES ('Peter', 'Johnson','1985-02-06');
INSERT INTO teachers (first_name,last_name,birth) VALUES ('Freddie', 'Mercury','1946-11-05');
INSERT INTO teachers (first_name,last_name,birth) VALUES ('Elon', 'Musk','1971-06-28');

#Courses
INSERT INTO courses (course_name,id_teacher) VALUES ('Physics','1');
INSERT INTO courses (course_name,id_teacher) VALUES ('Music','2');
INSERT INTO courses (course_name,id_teacher) VALUES ('Artificial Intelligence','3');

#Students
INSERT INTO students (first_name,last_name,birth) VALUES ('Facundo','Costa','1998-03-13');
INSERT INTO students (first_name,last_name,birth) VALUES ('Juan','Perez','1994-02-15');
INSERT INTO students (first_name,last_name,birth) VALUES ('Pedro','Gomez','1974-10-28');
INSERT INTO students (first_name,last_name,birth) VALUES ('Daniela','Lopez','1965-09-13');
INSERT INTO students (first_name,last_name,birth) VALUES ('Cristian','Baez','1984-02-10');
INSERT INTO students (first_name,last_name,birth) VALUES ('Cristina','Rodriguez','1978-05-13');
INSERT INTO students (first_name,last_name,birth) VALUES ('Andres','Perez','1999-07-03');
INSERT INTO students (first_name,last_name,birth) VALUES ('Diego','Salazar','1998-08-16');
INSERT INTO students (first_name,last_name,birth) VALUES ('Antonela','Cruz','1994-04-14');
INSERT INTO students (first_name,last_name,birth) VALUES ('Santiago','Dominguez','1988-09-01');

#Students into course 1(Physics)
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('1','1','6','7','8','6');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('2','1','6','7','8','4');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('3','1','6','7','8','8');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('4','1','6','7','8','1');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('5','1','6','7','8','2');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('6','1','6','7','8','10');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('7','1','6','7','8','2');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('8','1','6','7','8','5');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('9','1','6','7','8','6');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('10','1','6','7','8','9');

#Students into course 2(Music)
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('1','2','6','7','8','6');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('2','2','6','7','8','4');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('3','2','6','7','8','8');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('4','2','6','7','8','1');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('5','2','6','7','8','2');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('6','2','6','7','8','10');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('7','2','6','7','8','2');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('8','2','6','7','8','5');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('9','2','6','7','8','6');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('10','2','6','7','8','9');

#Students into course 3(Artificial Intelligence)
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('1','3','6','7','8','6');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('2','3','6','7','8','4');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('3','3','6','7','8','8');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('4','3','6','7','8','1');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('5','3','6','7','8','2');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('6','3','6','7','8','10');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('7','3','6','7','8','2');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('8','3','6','7','8','5');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('9','3','6','7','8','6');
INSERT INTO students_courses (registration_number,id_course,note1,note2,note3,final_note) VALUES ('10','3','6','7','8','9');

#3. List students and teachers for a given course.
SELECT courses.course_name AS 'Course', CONCAT(teachers.last_name, ', ', teachers.first_name) AS 'Teacher', CONCAT(students.last_name, ', ', students.first_name) AS 'Student' 
FROM courses, teachers, students, students_courses 
WHERE courses.id_teacher=teachers.id_teacher 
AND courses.id_course=1 
AND students.registration_number=students_courses.registration_number
AND courses.id_course=students_courses.id_course 
ORDER BY students.last_name;

#4. Percentage of students that passed/failed a given course.
SELECT c.course_name AS 'Course', COUNT(IF((sc.id_course = 1), 1, NULL)) AS 'Students' ,
COUNT(IF((sc.final_note >= 6), 1, NULL)) * 100 / COUNT(IF((sc.id_course = 1), 1, NULL)) AS '% Pass', 
COUNT(IF((sc.final_note < 6), 1, NULL)) * 100 / COUNT(IF((sc.id_course = 1), 1, NULL)) AS '% Fail'
FROM courses c, students_courses sc
WHERE sc.id_course=1 AND c.id_course=1;

#5. For a given teacher, list the timeline for each course that he is assigned to (ordered by date), and the course name
INSERT INTO schedule_time (id_course,weekday,hours) VALUES ('2','WEDNESDAY','04:00:00');
INSERT INTO schedule_time (id_course,weekday,hours) VALUES ('2','THURSDAY','02:00:00');


SELECT CONCAT(t.last_name, ', ', t.first_name) AS 'Teacher', s.weekday AS 'Day', s.hours AS 'Hours', c.course_name AS 'Course'
FROM teachers t, schedule_time s, courses c
WHERE c.id_teacher = '2' AND s.id_course = '2' AND t.id_teacher = '2';










