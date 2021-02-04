use sakila;

-- Get film ratings.
select rating from film;

select distinct rating from film;

select * from film
order by rating;

-- Get release years.
select release_year from film;

select distinct release_year from film;

select * from film
order by release_year;

-- Get all films with ARMAGEDDON in the title.
select * from film
where title regexp 'ARMAGEDDON';

-- Get all films with APOLLO in the title
select * from film
where title regexp 'APOLLO';

-- Get all films which title ends with APOLLO.
select * from film
where title regexp 'APOLLO$';

-- Get all films with word DATE in the title.
select * from film where title like '%DATE%';

select * from film where title like 'DATE';

select * from film where title like '%DATE%' and title not like 'DATE';

select * from film
where title regexp '\bDATE\b';

-- Get 10 films with the longest title.

select * from film order by length(title) desc limit 10;

-- Get 10 the longest films.
select * from film order by length desc limit 10;

-- How many films include Behind the Scenes content?
select count(title) from film
where special_features in ('Behind the Scenes');

-- List films ordered by release year and title in alphabetical order.
select * from film
order by title, release_year asc; -- all movies are released in 2006






