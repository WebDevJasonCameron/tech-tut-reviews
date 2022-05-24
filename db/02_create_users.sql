USE tech_tut_db;

-- REMEMBER: Placing the cursor with a SQL statement block and entering in
-- "Command + Enter", then "Enter" again will allow you to run that SQL statement

-- 1. The following two statements will allow us to drop and "zero" out our tables if they exist:
TRUNCATE users;

DROP TABLE IF EXISTS users;

-- 3. Seed Table:
INSERT INTO users (email, password)
VALUES ('bobaFett@war.com', '1234'),
       ('ASky@Darkside.com', '1234'),
       ('Cad@grey.com', '1234'),
       ('Yoda@yogurt.com', '1234'),
       ('Jabba@crime.com', '1234' ),
       ('Leia@fightCrime.com', '1234'),
       ('Luke@sucks.com', '1234')

;

-- 4. Checks
DESC users;

SHOW CREATE TABLE users;

SELECT * FROM users;