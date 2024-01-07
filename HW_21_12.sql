
1.Вывести ко-во товаров с ценой от 10 до 250 EUR

SELECT 
  COUNT(*)
FROM Products

WHERE
  Price BETWEEN 10 AND 250
  

2.Вывести ко-во поставщиков не из UK и не из China

SELECT
	COUNT(*) AS total_not_uk_china_suppliers
FROM Suppliers

WHERE
	NOT Country IN ('UK', 'China')

3.Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5

SELECT 
  AVG(Price) AS avg_price,
  MAX(Price) AS max_price,
  MIN(Price) AS min_price,
  COUNT(*) AS count_prod
FROM Products

WHERE
  CategoryID IN (3,5)

4.Вывести общую сумму проданных товаров

SELECT
	SUM(Products.Price * OrderDetails.Quantity) AS order_sum

FROM OrderDetails

JOIN Products ON OrderDetails.ProductID = Products.ProductID


5.Вывести данные о заказах (номерзаказа, имяклиента, странаклиента, фамилияменеджера, названиекомпанииперевозчика)

SELECT
Orders.OrderID AS order_num,
Customers.CustomerName AS customer_name,
Customers.Country AS customer_country,
Employees.LastName AS emp_last_name,
Shippers.ShipperName AS shipper_name	

FROM Orders

JOIN Customers ON Orders.CustomerID = Customers.CustomerID,
JOIN Employees ON Orders.CustomerID = Employees.EmployeeID,
JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID

6.Вывести сумму, на которую было отправлено товаров клиентам в Germany

SELECT
	SUM(Products.Price * OrderDetails.Quantity) AS order_sum_germany

FROM OrderDetails

JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE Country = 'Germany'

