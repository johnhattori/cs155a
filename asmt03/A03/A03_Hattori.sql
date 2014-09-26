/* John Hattori */

\W    /* enable warnings! */

use   a_vets;

/*  TASK 00 */ 
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */
select concat(cl_postal_code , ': ', cl_city, ' ', cl_state  ) 
as Location 
from vt_clients;

/*  TASK 02 */
select 
  cl_id
, cl_name_first 
, cl_name_last 
from vt_clients
where cl_city in('San Francisco');

/*  TASK 03 */
select 
  an_id
, cl_id 
from vt_animals
where an_name is null;

/*  TASK 04 */
select 
  srv_id as "Service ID"
, srv_type as "Service Type"
, srv_list_price as "Curr Type" 
, srv_list_price * 0.12 as "Tax Amnt" 
from vt_services 
where srv_type not in("office visit") 
order by srv_id;

/*  TASK 05 */
select ex_fee, srv_id,  ex_fee 
from vt_exam_details
where ex_fee between 35.00 and 50.00
order by srv_id;

/*  TASK 06 */
select cl_id, an_id, an_name  
from vt_animals 
where an_type in("hamster", "capybara", "porcupine", "dormouse") 
order by cl_id, an_id;

/*  TASK 07 */
select cl_id, an_type 
from vt_animals 
where an_type in("snake", "chelonian", "crocodilian", "lizard") 
order by cl_id;

/*  TASK 08 */
select cl_id, an_id, an_name, an_dob 
from vt_animals 
where an_type not in("snake", "chelonian", "crocodilian", "lizard", "hamster", "capybara", "porcupine", "doormouse")  
order by an_dob desc;

/*  TASK 09 */


/*  TASK 10 */
