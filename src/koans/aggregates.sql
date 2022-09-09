-- Meditate on counting rows with COUNT
select count(*) from book

-- Meditate on counting within groups with GROUP BY
select genre, count(*)
from book
group by genre

-- Meditate on MAX
select max(datetime) from event

-- Meditate on MIN
select min(datetime) from event

-- Meditate on getting the maximum within groups
select genre, max(year_published)
from book
group by genre

-- Meditate on joining data with aggregates
select name, count(*)
from customer
	join event on event.customer_id = customer.id
group by name

-- Meditate on grouping with filtering
-- Find customers that borrowed more than 1 book 
select customer.name, count(*) as "cnt"
from event 
join customer on customer.id = customer_id
where type = 'Checkout'
group by customer_id
having cnt > 1


