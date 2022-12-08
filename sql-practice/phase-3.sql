-- Find Hermione's cats
-- Your code here

-- Find All the Toys for Hermione's cats
-- Your code here


// FInd hermiones Cat using joined table

SELECT cats.name
FROM cats
JOIN cat_owners
ON cats.id = cat_owners.cat_id
JOIN owners
ON owners.id = cat_owners.owner_id
WHERE owners.first_name = 'Hermione';

// Find Hermiones cats toys

SELECT toys.name
FROM toys
JOIN cat_owners
ON toys.cat_id = cat_owners.cat_id
JOIN owners
ON owners.id = cat_owners.owner_id
WHERE owners.first_name = 'Hermione';

