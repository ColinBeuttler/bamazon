DROP DATABASE IF EXISTS products_DB;
CREATE DATABASE products_DB;

USE products_DB;

CREATE TABLE products(
  id INT NOT NULL AUTO_INCREMENT,
 
  title VARCHAR(100) NOT NULL,
  value VARCHAR(100,2) NOT NULL,
  quantity VARCHAR(40) NOT NULL,
  
  Primary Key (id)

);

