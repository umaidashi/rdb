CREATE TABLE
  teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    member_id VARCHAR(1000),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );

CREATE TABLE
  members (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );

INSERT INTO
  members (name)
VALUES
  ('Alice'),
  ('Bob'),
  ('Charlie'),
  ('David'),
  ('Eve'),
  ('Frank'),
  ('Grace'),
  ('Heidi'),
  ('Ivan'),
  ('Judy');

INSERT INTO
  teams (name, member_id)
VALUES
  ('Team A', '1,2,3,4,8,9,10'),
  ('Team B', '3,4,5,6,7'),
  ('Team C', '1,2,7,8,9,10');
