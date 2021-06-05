-- this is how we write comments in SQL
/*
 * This will create multi-
 * line comments
 * 
 * */

drop table movies;

-- Create a table (DDL)
CREATE TABLE movies (
	id serial,
	title varchar(50),
	genre varchar(30),
	release_year int
);

select * from movies;
-- DROP table (DDL) 
drop table movies;

drop table if exists movies;



-- TRUNCATE (DDL) -- DROPS table and then Creates table (basically - deleting all data from the table)
truncate movies;

-- ALTER (DDL)
alter table movies alter column release_year type numeric(4, 0);

alter table movies add column domestic_gross money;

-- serial is a sequence
select nextval('movies_id_seq'); 

select currval('movies_id_seq'); 
-- edit the table



-- Create - of our CRUD operations (DML)
insert into movies values (default, 'Thor', 'Action', 2000); -- sortof like Movie thor = new Movie("Thor", "Action", 2000);
insert into movies values (default, 'Ant-Man', 'Adventure', 2008);
insert into movies values (default, 'Jumanji', 'Adventure', 1997);

insert into movies values 
(default, 'Jumanji', 'Adventure', 1997), 
(default, 'Jumanji', 'Adventure', 1997), 
(default, 'Jumanji', 'Adventure', 1997);


-- Read - 
select * from movies; -- this will select all of the records in the movies table

select title, genre from movies;

-- Update 
update movies set genre = 'Changed Genre' where id = 5;
update movies set genre = 'Horror' where id in (1, 3, 5);
update movies set genre = 'Another Genre' where id < 6 and id >2;
update movies set genre = 'Horror' where id between 2 and 3;

-- Delete
delete from movies where id = 6;
delete from movies;

commit;
rollback;

-- If you want on your own: 
/*
 * 
 * Create another table
 * practice adding records to a table
 * 
 * practice retrieving records from a table (SELECT)
 * 
 * 
 * practice update
 * 
 * 
 * practice deleting
 * 
 * 
 * */
select * from cats;
select * from breeds;

insert into breeds values (default, 'Another Test');

insert into breeds values (default, 'Another Test') returning id;

select c.id, c.name, c.age, b.id as breed_id, b.breed from cats c left join breeds b on c.breed = b.id;


select * from cats;
select * from breeds;

update cats set breed = 6 where id = 5;



-- Order by
select * from cats order by id asc;

select * from cats order by name;

select * from cats order by name desc;


-- Group by
select b.breed, count(b.breed) from cats c left join breeds b on c.breed = b.id group by b.breed;



create table persons (
	id serial primary key,
	username varchar unique not null,
	password varchar not null
);

insert into persons values 
(default, 'catman', 'meow'),
(default, 'catperson', 'meowmeow'),
(default, 'catcat', 'pass');

insert into persons values (default, 'catwoman', 'pfiefer');

select * from persons;
select * from cats;

alter table cats
add column p_id integer;

alter table cats
add constraint cat_person_fk
foreign key (p_id) references persons(id);

update cats set p_id = 1 where id in (1, 2, 3);
update cats set p_id = 2 where id =5;
update cats set p_id = 3 where id in (4,9);
update cats set p_id = 4 where id in (6,7,8);


select p.id, p.username, p.password, c.id as cat_id, c.name as cat_name, c.age, b.id as breed_id, b.breed 
from persons p
left join cats c on p.id = c.p_id
left join breeds b on c.breed = b.id;

select * from movies;








