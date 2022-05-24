USE tech_tut_db;

-- REMEMBER: Placing the cursor with a SQL statement block and entering in
-- "Command + Enter", then "Enter" again will allow you to run that SQL statement

-- 1. The following two statements will allow us to drop and "zero" out our tables if they exist:
TRUNCATE users;

DROP TABLE IF EXISTS users;

-- 3. Seed Table:
INSERT INTO users (username, email, password)
VALUES ('boba', 'bobaFett@war.com', '1234'),
       ('sky',  'ASky@Darkside.com', '1234'),
       ('cad','Cad@grey.com', '1234'),
       ('yoda', 'Yoda@yogurt.com', '1234'),
       ('jabba', 'Jabba@crime.com', '1234' ),
       ('leia', 'Leia@fightCrime.com', '1234'),
       ('luke', 'Luke@sucks.com', '1234')

;

-- 4. Checks
DESC users;

SHOW CREATE TABLE users;

SELECT * FROM users;