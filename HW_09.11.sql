1) 1.Подписка на канал-CREATE,READ.
   2.Лайки и дизлайки-CREATE,READ.
   3.Комментирование-CREATE,READ.
   4.Создание канала и внесение изменений в него-CREATE,READ,UPDATE.
   5.Просмотр видео-READ.
   6.Подписки и уведомления-READ,UPDATE.
   7.Редактирование прав доступа- READ,UPDATE.
   8.Создание и редактирование плейлиста- CRUD.
   9.Скачивание видео-CREATE,READ.
   10.Поиск видео-READ.

2) Вывести названиее и стоимость товаров от 20 евро.
   
   SELECT
        ProductName, Price
   FROM Products
   WHERE 
        Price >=20

3) Вывести страны поставщиков.

   SELECT
        Country
   FROM Suppliers
   
4) Вывести контактные имена клиентов, кроме тех, что из France и USA.

   SELECT
        ContactName
   FROM Customers
   WHERE 
       NOT Country =”France”
       AND
       NOT Country =”USA”
