USE tech_tut_db;

-- REMEMBER: Placing the cursor with a SQL statement block and entering in
-- "Command + Enter", then "Enter" again will allow you to run that SQL statement

-- 1. The following two statements will allow us to drop and "zero" out our tables if they exist:
TRUNCATE tut_cats;

DROP TABLE IF EXISTS tut_cats;

-- 2. Build table:
CREATE TABLE tut_cats (
      id       int(10) NOT NULL AUTO_INCREMENT,
      tut_cats varchar(155) NOT NULL UNIQUE,
      PRIMARY KEY (id));


-- 3. Seed Table:
INSERT INTO tut_cats(tut_cats)
VALUES ('HTML'),
       ('CSS'),
       ('JavaScript'),
       ('Java')
;

-- 4. Checks
DESC tut_cats;

SHOW CREATE TABLE tut_cats;

SELECT * FROM tut_cats;