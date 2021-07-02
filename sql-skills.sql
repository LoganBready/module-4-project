insert into artist (name, artist_id) 
values ('Big Bobby', 276);
insert into artist (name, artist_id) 
values ('Johnson and jon', 277);
insert into artist (name, artist_id) 
values ('Milk Cans', 278);

select name from artist
order by name asc
limit 5;

select e.first_name, e.last_name, e.city
from employee e
where e.city = 'Calgary';

select employee_id, first_name, last_name
from employee
where reports_to = 2;

select COUNT(*) from employee
where city = 'Lethbridge';

select count(*)
from invoice
where billing_country = 'USA';

select max(total) from invoice;

select min(total) from invoice;

select * from invoice
where total < 5;

select count(*)
from invoice
where total < 5;

select sum(total) from invoice;

select * from invoice i
join invoice_line il on il.invoice_id = i.invoice_id
where il.unit_price > 0.99;

select i.invoice_date, c.first_name, c.last_name, i.total
from invoice i
join customer c on c.customer_id = i.customer_id;

select c.first_name as CustomerFName, c.last_name, e.first_name as SalesRepName, e.last_name
from customer c
join employee e on c.support_rep_id = e.employee_id;

select al.title, a.name
from album al
join artist a on a.artist_id = al.artist_id;

