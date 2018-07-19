--1.Find out the PG-13 rated comedy movies.

SELECT f.title,f.rating,c.name FROM film f,category c,film_category fc WHERE c.name='Comedy' AND f.film_id=fc.film_id AND c.category_id=fc.category_id AND f.rating='PG-13';


--2.Find out the top 3 rented horror movies.

SELECT fl.category,COUNT(fl.FID),fl.title FROM film_list fl,rental r,inventory i WHERE fl.category='Horror' AND fl.FID=i.film_id AND r.inventory_id=i.inventory_id GROUP BY fl.FID ORDER BY COUNT(fl.FID) DESC LIMIT 3;


--3.Find out the list of customers from India who have rented sports movies.
SELECT DISTINCT c.name,c.country,ct.name FROM customer_list c,rental r,category ct,film f,film_category fc,inventory i WHERE c.country='India' AND ct.name='Sports' AND r.customer_id=c.ID AND r.inventory_id=i.inventory_id AND i.film_id=f.film_id AND fc.category_id=ct.category_id AND f.film_id=fc.film_id;

--4.Find out the list of customers from Canada who have rented “NICK WAHLBERG” movies

SELECT DISTINCT c.name,a.first_name,a.last_name,c.country FROM customer_list c,rental r,inventory i,film_actor fa,actor_info a WHERE c.country='Canada' AND r.customer_id=c.ID AND r.inventory_id=i.inventory_id AND i.film_id=fa.film_id AND a.actor_id=fa.actor_id AND a.first_name='NICK' AND a.last_name='WAHLBERG';


--5.Find out the number of movies in which “SEAN WILLIAMS” acted.

SELECT a.first_name,a.last_name,COUNT(f.film_id) FROM film f,actor a,film_actor fa WHERE a.actor_id=fa.actor_id AND fa.film_id=f.film_id AND a.first_name='SEAN' AND a.last_name='WILLIAMS';




