select fl.title ,fl.length, fl.category 
from film_list fl;

select f.title, r.rental_period 
from film f
join inventory i on i.film_id = f.film_id 
join rental r on r.inventory_id = i.inventory_id 
join customer c on c.customer_id = r.customer_id 
where c.first_name = 'John' and c.last_name = 'Smith'

select count(f.film_id) as order_count, f.title 
from film f
join inventory i on i.film_id = f.film_id 
join rental r on r.inventory_id = i.inventory_id 
group by f.film_id 
order by order_count asc
limit 5
