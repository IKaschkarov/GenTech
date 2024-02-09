1.Создание таблицы students:

CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  firstname VARCHAR(255) NOT NULL,
  lastname VARCHAR(255) NOT NULL,
  subject VARCHAR(255) NOT NULL,
  mark INT CHECK (mark >= 0 AND mark <= 5),
  class INT CHECK (class >= 1 AND class <= 10)
);

2.Изменение типа поля mark на integer:

ALTER TABLE students
MODIFY mark INT CHECK (mark >= 0 AND mark <= 5);

3.Удаление поля age:

ALTER TABLE students
DROP COLUMN age;

4.Добавление поля class после lastname:

ALTER TABLE students
ADD COLUMN class INT CHECK (class >= 1 AND class <= 10) AFTER lastname;

5.Заполнение таблицы строками (10 штук):

INSERT INTO students (firstname, lastname, subject, mark, class)
VALUES
('John', 'Doe', 'Math', 4, 5),
('Alice', 'Smith', 'History', 3, 3),
('Bob', 'Johnson', 'Physics', 2, 7),
('Eva', 'Anderson', 'Chemistry', 5, 2),
('Chris', 'Taylor', 'Biology', 4, 9),
('Sophia', 'Brown', 'English', 1, 1),
('Daniel', 'Miller', 'Art', 3, 6),
('Olivia', 'Clark', 'Music', 5, 10),
('James', 'Williams', 'Geography', 2, 4),
('Emma', 'Davis', 'Computer Science', 4, 8);

6.Удаление из таблицы студентов с оценкой 0:

DELETE FROM students
WHERE mark = 0;

7.Выбор всех студентов с оценкой выше 3:

SELECT * FROM students
WHERE mark > 3;

8.Выбор студентов из первого класса с оценкой меньше 3:

SELECT * FROM students
WHERE class = 1 AND mark < 3;

9.Удаление студентов из первого класса с оценкой меньше 3:

DELETE FROM students
WHERE class = 1 AND mark < 3;

10.Выбор всех студентов с длиной имени более 4 букв:

SELECT * FROM students
WHERE LENGTH(firstname) > 4;

11.Выбор студентов, фамилия которых начинается с буквы "a" и имеет длину не менее 3 символов:

SELECT * FROM students
WHERE lastname LIKE 'a%' AND LENGTH(lastname) >= 3;

12.Удаление таблицы:

DROP TABLE students;