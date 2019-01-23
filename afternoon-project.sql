CREATE TABLE person (
  id SERIAL,
  name VARCHAR(255),
  age INTEGER,
  height INTEGER,
  city VARCHAR(255),
  favorite_color TEXT
  );

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Jim', '36', '106', 'Appleville', 'Blue');
  
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Bob', '22', '211', 'Maple Syrup City', 'Green');
  
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('George', '45', '144', 'Carrot Town', 'Blue');
  
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Jones', '28', '186', 'Noodle Soup City', 'Orange');
  
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Jeff', '12', '212', 'Eggsington', 'Red');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age>20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age<20 OR age>30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color <> 'Red';

SELECT * FROM person
WHERE favorite_color <> 'Red' AND favorite_color <> 'Blue';

SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Red';

SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Blue', 'Green');

SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');

CREATE TABLE orders(
  person_id SERIAL,
  product_name VARCHAR(255),
  product_price INT,
  quantity INT
  );

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES(0 'eggs', 4.25, 4);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES(0 'bacon', 2.25, 4);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES(1 'toast', 3.30, 2);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES(1 'jam', 3.25, 1);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES(2 'sausage', 3.50, 3);

SELECT * FROM orders;

SELECT SUM (quantity) FROM orders;

SELECT SUM (product_price * quantity) FROM orders;

SELECT SUM (product_price * quantity) FROM orders
WHERE person_id = 0;

INSERT INTO artist(name)
VALUES ('Bob');

INSERT INTO artist(name)
VALUES ('George');

INSERT INTO artist(name)
VALUES ('Jimmy');

SELECT name FROM artist
ORDER BY name DESC;

SELECT name FROM artist
ORDER BY name ASC
LIMIT 5;

SELECT name FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

Select first_name, last_name FROM employee
WHERE city IN ('Calgary');

SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT() FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA','TX','AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;