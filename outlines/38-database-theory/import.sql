CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name varchar(50),
  age integer,
  gender varchar(50),
  date_created timestamp DEFAULT current_timestamp
);