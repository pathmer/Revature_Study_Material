-- Stored Procedure
drop procedure add_cat;

create procedure add_cat(name varchar, age integer, breed integer, person integer)
language sql
as $$

insert into cats values (default, name, age, breed, person);

$$;


call add_cat('Kitty', 5, 2, 1);

select * from cats;

delete from cats where id = 10;