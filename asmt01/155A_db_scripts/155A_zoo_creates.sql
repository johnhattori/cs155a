Use a_testbed;

/*  This will drop a table if it exists */
drop table if exists zoo_2014;

/*  create the table  */
Create table zoo_2014 (
  z_id         integer       not null
, z_name       varchar(25)   null
, z_type       varchar(25)   not null
, z_cost       decimal(7,2)  unsigned  not null
, z_dob        datetime      not null
, z_acquired   date          not null
)
;

