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

select 
CONCAT  (c.first_name, ' ', c.last_name) AS "Customer Full name", Concat (e.first_name, '', e.last_name) as "Sales Rep Name"
from customer c
join employee e on c.support_rep_id = e.employee_id;

select al.title, a.name
from album al
join artist a on a.artist_id = al.artist_id;


-- EXTRA CREDIT:


select name from artist
order by name desc
limit 10;

select name from artist
where name like 'Black%';

select name from artist
where name like '%Black%';

select first_name, birth_date as birthdate
from employee
where birth_date = (select max(birth_date) from employee);

select first_name, birth_date as birthdate
from employee
where birth_date = (select min(birth_date) from employee);

select count(*)
from invoice
where billing_state IN ('CA', 'TX', 'AZ');

select AVG(total) from invoice;

select playlist_track.track_id
from playlist_track
join playlist on playlist.playlist_id = playlist_track.playlist_id
where playlist.name = 'Music';

select t.name
from track t
join playlist_track p on p.track_id = t.track_id
where p.playlist_id = 5;

select t.name, p.name 
from track t
join playlist_track pt on t.track_id = pt.track_id
join playlist p on pt.playlist_id = p.playlist_id;

select t.name, a.title
from track t
join album a on t.album_id = a.album_id
join genre g on g.genre_id = t.genre_id
where g.name = 'Alternative & Punk'

