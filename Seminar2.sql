/*
1. Используя операторы языка SQL, создайте таблицу “sales”. Заполните ее данными.
*/
CREATE TABLE sales
(
id 	INT PRIMARY KEY AUTO_INCREMENT,
order_date DATE NOT NULL,
count_product INT NOT NULL
);

SELECT * FROM sales;

INSERT INTO sales (order_date, count_product)
VALUES
("2022-01-01", 156),
("2022-01-02", 180),
("2022-01-03", 21),
("2022-01-04", 124),
("2022-01-05", 341);


/*2.  
Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва : 
меньше 100  -    Маленький заказ
от 100 до 300 - Средний заказ
больше 300  -     Большой заказ
*/

SELECT *,
CASE
	WHEN count_product < 100
		THEN "Маленький заказ"
	WHEN count_product >= 100 AND count_product <= 300
		THEN "Средний заказ"
	WHEN count_product > 300
		THEN "Большой заказ"
END AS type_order
FROM sales;


/*3. 
Создайте таблицу “orders”, заполните ее значениями
Выберите все заказы. В зависимости от поля order_status выведите столбец full_order_status:
OPEN – «Order is in open state» ; CLOSED - «Order is closed»; CANCELLED -  «Order is cancelled»
*/

CREATE TABLE orders
(
id 	INT PRIMARY KEY AUTO_INCREMENT,
employee_id VARCHAR(10) NOT NULL,
amount DEC(7,2) NOT NULL,
order_status VARCHAR(15) NOT NULL
);

INSERT INTO orders (employee_id, amount, order_status)
VALUES
("e03", 15.00, "OPEN"),
("e01", 25.50, "OPEN"),
("e05", 100.70, "CLOSED"),
("e02", 22.18, "OPEN"),
("e04", 9.50, "CANCELLED");

SELECT * FROM orders;

SELECT *,
CASE
	WHEN order_status = "OPEN"
		THEN "Order is in open state"
	WHEN order_status = "CLOSED"
		THEN "Order is closed"
	WHEN order_status = "CANCELLED"
		THEN "Order is cancelled"
END AS full_order_status
FROM orders;


/*
4.  Чем 0 отличается от NULL?
Напишите ответ в комментарии к домашнему заданию на платформе
*/

-- Null - это отсутствие значения в ячейке, а 0 - это цифра 0 (значение ячейки 0)