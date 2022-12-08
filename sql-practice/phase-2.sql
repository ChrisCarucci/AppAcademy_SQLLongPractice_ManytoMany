PRAGMA foreign_keys=on; -- Turns foreign key support in SQLite3 on
-- Your code here

create table owners (
  id integer primary key autoincrement,
  first_name varchar(25),
  last_name varchar(25)
);

create table cats (
  id integer primary key autoincrement,
  name varchar(40),
  birth_year integer
);

create table cat_owners (
  cat_id integer,
  owner_id integer,
  foreign key (cat_id) references cats(id) on delete cascade,
  foreign key (owner_id) references owners(id) on delete cascade
);


create table toys (
  id integer primary key autoincrement,
  name varchar(20),
  cat_id integer,
  foreign key (cat_id) references cats(id) on delete cascade
);


INSERT INTO owners
  (first_name, last_name)
VALUES
  ('Nathan', 'Shanahan'),
  ('Joycelyn', 'Cummerata'),
  ('Weston', 'Jones'),
  ('Melynda', 'Abshire'),
  ('George', 'Beatty'),
  ('Jonathan', 'Arbuckle'),
  ('Hermione', 'Granger');

INSERT INTO cats
  (name, birth_year)
VALUES
  ('Smudge', 2014),
  ('Molly', 2015),
  ('Lucky', 2016),
  ('Bella', 2020),
  ('Tiger', 2012),
  ('Oscar', 2010),
  ('Garfield', 2009),
  ('Crookshanks', 2017);

INSERT INTO cat_owners
  (cat_id, owner_id)
VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (3, 3),
  (4, 4),
  (5, 4),
  (5, 5),
  (7, 6),
  (8, 7);

INSERT INTO toys
  (cat_id, name)
VALUES
  (1, 'Catnip Mouse'),
  (2, 'Feather Wand'),
  (2, 'Scratcher'),
  (2, 'Laser Pointer'),
  (3, 'Chew Toy'),
  (4, 'Tunnel'),
  (4, 'Flopping Fish'),
  (7, 'Cheetos'),
  (8, 'Crinkle Ball'),
  (8, 'Yarn');