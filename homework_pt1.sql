use sakila;

#1a
select first_name, last_name from actor;

#1b
select concat(first_name, " ", last_name) as Names
from actor;

#2a
select actor_id, first_name, last_name 
from actor
where first_name = 'Joe';

#2b
SELECT last_name
FROM actor
WHERE last_name LIKE '%GEN%';

#2c
SELECT last_name, first_name
FROM actor
WHERE last_name LIKE '%LI%'
ORDER BY last_name, first_name;

#2d
SELECT country_id, country
FROM country
WHERE country IN ('Afghanistan', 'Bangladesh', 'China');

#3a
ALTER TABLE actor
ADD COLUMN middle_name VARCHAR(50);

#3b
ALTER TABLE actor
MODIFY middle_name BLOB;

#3c
ALTER TABLE actor
DROP COLUMN middle_name;

#4a
SELECT last_name, COUNT(last_name)
FROM actor
GROUP BY last_name;

#4b
SELECT last_name, COUNT(last_name)
FROM actor
GROUP BY last_name
HAVING COUNT(last_name) >=2;

#4c
UPDATE actor
SET first_name = 'Harpo'
WHERE first_name = 'GROUCHO' AND last_name = 'WILLIAMS';

#4d
 UPDATE actor
 SET first_name = 
 CASE 
 WHEN first_name = 'HARPO' 
 THEN 'GROUCHO'
 ELSE 'MUCHO GROUCHO'
 END
 WHERE actor_id = 172