-- Update the toy with the name of "Cheetos" to have a name of "Pooky"
-- Your code here

update toys
set name = 'Pooky'
where name = 'cheetos';

select * from toys;