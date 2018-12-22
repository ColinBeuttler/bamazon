DROP DATABASE IF EXISTS produce_DB;
CREATE DATABASE produce_DB;

USE produce_DB;

CREATE TABLE products(
  id INT NOT NULL AUTO_INCREMENT,
 
  title VARCHAR(100) NOT NULL,
  value VARCHAR(100,2) NOT NULL,
  quantity VARCHAR(40) NOT NULL,
  
  Primary Key (id)

);

INSERT INTO products (title, value, quantity)
VALUES ("bananas", .89, 1);

INSERT INTO products (title, value, quantity)
VALUES ("grapes", 2.50, 20);

INSERT INTO products (title, value, quantity)
VALUES ("strawbeeries", 5.25, 15);

INSERT INTO products (title, value, quantity)
VALUES ("mango", 3.45, 1);

INSERT INTO products (title, value, quantity)
VALUES ("grapefruit", 2.00, 1);

INSERT INTO products (title, value, quantity)
VALUES ("starfruit", 4.50, 1);

INSERT INTO products (title, value, quantity)
VALUES ("dragonfruit", 2.70, 10);

INSERT INTO products (title, value, quantity)
VALUES ("cantolope", 6.40, 1);

INSERT INTO products (title, value, quantity)
VALUES ("honeydew", 3.50, 1);

INSERT INTO products (title, value, quantity)
VALUES ("oranges", 3.00, 5);



