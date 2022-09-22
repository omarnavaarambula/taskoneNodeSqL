CREATE TABLE usersall  (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "designed_to" varchar NOT NULL,
  "description" text,
  "start_date" date DEFAULT 'now()',
  "end_date" date NOT NULL,
  "is_completed" bool DEFAULT false
);

insert into usersall 
(
id,
title,
designed_to,
description,
start_date,
end_date,
is_completed
)

values (
'e457c7d2-c96d-4f08-a9d4-d291d3fe5f4b',
'Compras',
'grupo2',
'jugos',
'2022-9-21',
'2022-09-22',
true
),
(
'da34533c-4d8e-420b-9bd5-b89c78493879',
'Compras',
'grupo10',
'carnes',
'2022-09-21',
'2022-09-22',
false
),
(
'7ef0c94a-e9a4-45ac-b5ec-3f093j4759ed',
'Compras',
'grupo1',
'cafe',
'2022-09-11',
'2022-09-22',
true
);
/*query all related tables in the database*/

select * from usersall;

/*check everything that is in process */
select * from usersall where is_completed = false,
/*check the product ID and description */
select id,description from usersall;