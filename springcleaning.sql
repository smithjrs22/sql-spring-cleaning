1) Create database called shirts
create database shirts_db

2) Make the table
create table shirts (
shirt_id INT not null primary key,
article varchar (10) not null, 
color varchar (10) not null,
shirt_size varchar(1) not null,
last_worn varchar(10) not null
);

3) SELECT all shirts but only print out article and color

SELECT article,color
FROM shirts;


4) SELECT all medium shirts and print out everything but shirt_id

SELECT article,color,shirt_size,last_worn FROM shirts
WHERE shirt_size = 'M';

5) Update all polo shirts Change their size to L

UPDATE shirts
SET shirt_size = 'L'
WHERE article = 'polo shirt';

6) Update the shirt last worn 15 days ago change last_worn to zero ('0')

UPDATE shirts
SET last_worn = 0
WHERE last_worn = 15;

7) Update all white shirts and change size to 'XS' and color to 'off white'
UPDATE shirts
SET shirt_size= 'XS', color = 'off white'
WHERE  color = 'white';

8) Delete all old shirts that were last worn 200 days ago

DELETE FROM shirts
WHERE last_worn = 200;

9) Delete all tank tops. Your tastes have changed…
DELETE FROM shirts
WHERE article = 'tank top';

10) Delete all shirts. You are doing some major spring cleaning!
DELETE FROM shirts;

11) Drop the entire shirts table. Scraping everything... you must be rich or something!
DROP TABLE shirts
