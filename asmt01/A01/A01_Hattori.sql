/* John Hattori */

\W    /* enable warnings! */

use   a_testbed;

/*  TASK 00 */ 
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */

Delete
From a_testbed.zoo_2014
Where z_id > 100;

Select *
From a_testbed.zoo_2014;

/*  TASK 02 */

Insert 
Into zoo_2014 
    (z_id, z_name, z_type, z_cost, z_dob, z_acquired)
Values 
    (124, 'Zuca', 'Jaguar', 8000.00, '2012-07-24 02:40:00', '2014-07-18')
   ,(164, 'Mona', 'Wooly Lemur', 2000.00, '2008-02-28 10:20:00', '2012-08-04')
   ,(240, 'Lucky', 'Giant Sloth', 4000.00, '2002-12-24 12:00:00', '2006-06-07');

/*  TASK 03 */

Insert 
Into a_testbed.zoo_2014 
    (z_id, z_name, z_type, z_cost, z_dob, z_acquired) 
Values
    (127, 'Vence', 'Ox', 800.00,'2013-08-18 15:47','2014-04-15');

Insert 
Into a_testbed.zoo_2014 
    (z_id, z_name, z_type, z_cost, z_dob, z_acquired) 
Values
    (138, 'Vences', 'Lion',600.50,'2011-01-15 17:30','2014-05-15');

Insert 
Into a_testbed.zoo_2014 
    (z_id, z_name, z_type, z_cost, z_dob, z_acquired) 
Values 
    (160, 'Venceslas', 'Eagle', 800.00,'2011-03-25 19:00','2013-04-20');

Insert 
Into a_testbed.zoo_2014 
Values
    ( 144, 'Fred', 'Alpaca', 1200.00, '2011-05-01 15:40:00', '2012-03-20' )
    ,( 242, 'Alistair', 'Serval', 400.00, '2009-08-10 06:00:00', '2010-05-20' )
    ,( 301, 'Sphinx', 'Tiger', 7500.00, '2005-10-10 11:11:11', '2013-01-01' );

/*  TASK 04 */

Select z_name, z_type, z_id, z_cost, z_dob, z_acquired
From a_testbed.zoo_2014;  

/*  TASK 05 */

Select z_type, z_name, z_cost
From a_testbed.zoo_2014;

/*  TASK 06 */

Select z_type, z_name
From a_testbed.zoo_2014;

/*  TASK 07 */

Select z_id, z_name, z_dob
From a_testbed.zoo_2014
Where z_type = "Zebra";


/*  TASK 08 */

show tables;

/*  TASK 09 */

desc zoo_2014;

/*  TASK 10 */
