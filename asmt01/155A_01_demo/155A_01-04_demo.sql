Use a_testbed;

/* demo 01 */
Select
  z_id
, z_name
, z_type
, z_cost
, z_dob
, z_acquired
From zoo_2014;

/* demo 02 */
Select
  z_id
, z_name
, z_type
, z_cost
From zoo_2014
Where z_type = 'Armadillo';

/* demo 03 */
Select
  z_id
, z_name
, z_type
, z_cost
From zoo_2014
Where z_cost = 5000;

/* demo 04 */
Select
  z_id
, z_name
, z_type
, z_cost
From zoo_2014
Where z_type = 'Unicorn';