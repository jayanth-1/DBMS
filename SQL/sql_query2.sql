--1.Find out the number of documentaries with deleted scenes.

SELECT count(f.title),fl.category,f.special_features FROM film f,film_list fl WHERE fl.category='Documentary' AND f.special_features='Deleted Scenes' AND fl.FID=f.film_id;


--2.Find out the number of sci-fi movies rented by the store managed by Jon Stephens.

SELECT COUNT(DISTINCT fl.FID) FROM store s,staff_list sl,rental r,film_list fl,inventory i WHERE s.store_id=i.store_id AND r.staff_id=sl.ID AND sl.ID=s.manager_staff_id AND r.staff_id=sl.ID AND r.inventory_id=i.inventory_id AND s.manager_staff_id=r.staff_id AND i.store_id=s.store_id AND sl.name='Jon Stephens' AND fl.category='sci-fi' AND i.film_id=fl.FID ;


--3.Find out the total sales from Animation movies.

SELECT category,total_sales FROM sales_by_film_category WHERE category='Animation';


--4.Find out the top 3 rented category of movies  by “PATRICIA JOHNSON”.

SELECT fl.category,count(fl.FID),cl.name FROM film_list fl,customer_list cl,rental r,inventory i WHERE cl.name='PATRICIA JOHNSON' AND cl.ID=r.customer_id AND fl.FID=i.film_id AND i.inventory_id=r.inventory_id GROUP BY fl.category ORDER BY count(fl.FID) desc limit 3;


--5.Find out the number of R rated movies rented by “SUSAN WILSON”.

SELECT c.name,f.rating,count(f.film_id) FROM film f,customer_list c,rental r,inventory i WHERE c.name='SUSAN WILSON' AND i.film_id=f.film_id AND r.inventory_id=i.inventory_id AND c.ID=r.customer_id AND f.rating='R';



