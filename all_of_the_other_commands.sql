DROP TABLE urls;

CREATE TABLE urls(
id SERIAL PRIMARY KEY,
original_url VARCHAR(255) NOT NULL,
count int DEFAULT(0)
);

INSERT INTO urls (original_url) VALUES ('www.google.com');
INSERT INTO urls (original_url) VALUES ('www.yahoo.com');
INSERT INTO urls (original_url) VALUES ('www.gmail.com');
INSERT INTO urls (original_url) VALUES ('www.aol.com');
INSERT INTO urls (original_url) VALUES ('www.gschool.it');

SELECT * FROM urls;

-- Display all of the rows in the urls table with only the original_url column
SELECT original_url FROM urls;

--  Display one row from the urls table with a specific id
SELECT * FROM urls WHERE id=2;

-- Display one row from the urls table with a specific original_url
SELECT * FROM urls WHERE original_url='www.google.com';

-- Update one of the rows with a specific id to have a new count
UPDATE urls
SET original_url = 'http://tutorials.gschool.it/postresql_basics'
where id=2;

-- Delete one row that matches an original_url
DELETE FROM urls WHERE id=1;

