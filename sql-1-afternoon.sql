CREATE TABLE Person
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  height FLOAT,
  city VARCHAR(100),
  favorite_color VARCHAR(25)
)


INSERT INTO Person
  (name, age, height, city, favorite_color)
VALUES
  ('Milkman', 22, 213.36, 'Los Angeles', 'white'),
  ('Geo', 27, 113.36, 'Los Angeles', 'purple'),
  ('Sam', 25, 150.36, 'Denton', 'pink'),
  ('Alex', 23, 100.36, 'Altadena', 'black'),
  ('John', 35, 150.36, 'San Antonio', 'green')


SELECT *
FROM Person
ORDER BY height DESC;


SELECT *
FROM Person
ORDER BY height ASC;


SELECT *
FROM Person
ORDER BY age DESC;


SELECT *
FROM Person
WHERE age > 20;


SELECT *
FROM Person
WHERE age = 18;


SELECT *
FROM Person
WHERE age > 20 AND age < 30;


SELECT *
FROM Person
WHERE age != 27;


SELECT *
FROM Person
WHERE favorite_color != 'red';


SELECT *
FROM Person
WHERE favorite_color != 'red' AND favorite_color != 'blue';


SELECT *
FROM Person
WHERE favorite_color = 'orange' OR favorite_color != 'green';


SELECT *
FROM Person
WHERE favorite_color IN ('orange', 'green', 'blue')


SELECT *
FROM Person
WHERE favorite_color IN ('yellow', 'orange')






CREATE TABLE orders
(
  order_id SERIAL PRIMARY KEY,
  person_id SERIAL,
  product_name VARCHAR(50),
  product_price FLOAT,
  quantity INT
)

INSERT INTO orders
  (product_name, product_price, quantity)
VALUES
  ('Double Cheese Bruger', 2.5, 2),
  ('Fries', 1.75, 2),
  ('Soda', 1.25, 2),
  ('Milkshake', 3.75, 2),
  ('Skittles', 5.99, 1)

SELECT *
FROM orders

SELECT SUM(quantity)
FROM orders

SELECT SUM(product_price)
FROM orders

SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 1;




INSERT INTO artist
  (name)
VALUES
  ('Gorillaz'),
  ('Airborne Toxic Event'),
  ('The Small Pools')

SELECT *
FROM artist
ORDER BY name DESC
LIMIT 10

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5

SELECT *
FROM artist
WHERE name LIKE 'Black%'

SELECT *
FROM artist
WHERE name LIKE '%Black%'





SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary'

SELECT *
FROM employee
ORDER BY birth_date DESC
LIMIT 1

SELECT *
FROM employee
ORDER BY birth_date ASC
LIMIT 1

SELECT *
FROM employee
WHERE reports_to = 2

SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';





SELECT COUNT(*)
FROM invoice
Where billing_country = 'USA'

SELECT *
FROM invoice
ORDER BY total DESC
LIMIT 1

SELECT *
FROM invoice
ORDER BY total ASC
LIMIT 1

SELECT *
FROM invoice
WHERE total > 5

SELECT COUNT(*)
FROM invoice
WHERE total < 5

SELECT COUNT(*)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ')

SELECT AVG(total)
FROM invoice

SELECT SUM(total)
FROM invoice