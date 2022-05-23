USE tech_tut_db;

-- REMEMBER: Placing the cursor with a SQL statement block and entering in
-- "Command + Enter", then "Enter" again will allow you to run that SQL statement

-- 1. The following two statements will allow us to drop and "zero" out our tables if they exist:
TRUNCATE review_cats;

DROP TABLE IF EXISTS review_cats;

-- 2. Build table:
CREATE TABLE review_cats (
     tutID      int(10) NOT NULL,
     catsID     int(10) NOT NULL);

-- 3. Seed Table
INSERT INTO review_cats (tutID, catsID)
VALUES (1, 1),
       (2, 2),
       (3, 3)
;

-- 4. Checks
DESC review_cats;

SHOW CREATE TABLE review_cats;

SELECT * FROM review_cats;