1. В рамках БД "песочница" выведите З/П каждого менеджера, исходя из ставки в 5% от суммы заказов


SELECT employees.FirstName, employees.LastName, sum(products.Price * order_details.Quantity) * 0.05 AS Salary
FROM employees 
JOIN orders ON employees.EmployeeID = orders.EmployeeID
JOIN order_details ON orders.OrderID = order_details.OrderID
JOIN products ON products.ProductID = order_details.ProductID
GROUP BY orders.EmployeeID;

2. Используя MySQL WorkBench создайте БД music (сервис онлайн-музыки) и в рамках нее таблицы users, tracks с полями на Ваше усмотрение

create database music;
use music;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(100),
    email VARCHAR(100), 
    password VARCHAR(100),
    registration_date DATE,
    last_login_date DATE, 
    full_name VARCHAR(100), 
    date_of_birth DATE,
    country VARCHAR(50)
);

CREATE TABLE tracks (
    track_id INT PRIMARY KEY, 
    title VARCHAR(100), 
    artist VARCHAR(100),
    album VARCHAR(100),
    genre VARCHAR(50),
    release_date DATE,
    duration_seconds INT, 
    upload_date DATE,
    user_id INT 
);