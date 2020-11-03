drop table IF EXISTS customer;

create TABLE customer (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  first_name VARCHAR(250) NOT NULL,
  last_name VARCHAR(250) NOT NULL,
  address VARCHAR(250) DEFAULT NULL
);

insert into customer (first_name, last_name, address) values
  ('Ella', 'Jackson', 'Gdansk'),
  ('Jacob', 'William', 'London');
