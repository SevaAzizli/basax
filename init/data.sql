CREATE TABLE IF NOT EXISTS customer(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(250) NOT NULL,
  last_name VARCHAR(250) NOT NULL,
  address VARCHAR(250) DEFAULT NULL
);

INSERT INTO customer (first_name, last_name, address) VALUES
  ( 'Ella', 'Jackson', 'Gdansk'),
  ('Jacob', 'William', 'London');
