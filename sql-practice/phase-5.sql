-- Find the first owner that has a last name containing the lowercase letter "r"
-- Your code here

// FInd the first owner with last name container lowercase r

select first_name, last_name
from owners
where last_name like '%r%'
limit 1;

-- Find the name and birth year of all the cats ordered by descending birth year
-- Your code here

select name, birth_year
from cats
order by birth_year desc;

-- Find the name of the cats who have an owner whose first name begins with an "H"
-- Your code here
select cats.name
from cats
join cat_owners
on cats.id = cat_owners.cat_id
join owners
on cat_owners.owner_id = owners.id
where owners.first_name like 'H%';

-- Find the first and last names of the owner whose cats are born after the year 2015
-- Your code here
select owners.first_name, owners.last_name
from owners
join cat_owners
on owners.id = cat_owners.owner_id
join cats
on cats.id = cat_owners.cat_id
where birth_year > 2015;


-- Find names of the cats whose owners are both George Beatty and Melynda Abshire, or just George Beatty, or just Melynda Abshire
-- Your code here
select distinct cats.name
from cats
join cat_owners
on cats.id = cat_owners.owner_id
join owners
on cat_owners.owner_id = owners.id
where owners.id IN (4, 5);
