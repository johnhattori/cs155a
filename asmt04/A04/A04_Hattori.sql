/* John Hattori */

\W    /* enable warnings! */

use   a_vets;

/*  TASK 00 */ 
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */

select cl.cl_id
, ex_id
, sv.srv_id
, srv_desc
, srv_list_price
, ex_fee
from vt_exam_details
join vt_exam_headers using(ex_id)
join vt_animals using(an_id)
join vt_clients cl using(cl_id)
join vt_services sv using(srv_id)
where ex_fee > 100
order by cl_id, srv_id;

/*  TASK 02 */

select ex_id
, ex_date
, srv_id
, ex_fee
from vt_exam_headers
join vt_exam_details using(ex_id)
join vt_animals using(an_id)
where an_type in('hamster', 'porcupine', 'dormouse')
order by ex_id;

/*  TASK 03 */

select distinct stf_id
, stf_name_first
, stf_name_last
, ex_date
from vt_staff
join vt_exam_headers using(stf_id)
where ex_date < '2014-01-01';

/*  TASK 04 */

select cl_id
, concat(cl_name_first, ' ', cl_name_last)
, an_id
, an_name
, ex_date
, srv_id
, ex_fee
from vt_clients
join vt_animals using(cl_id)
join vt_exam_headers using(an_id)
join vt_exam_details using(ex_id)
where (an_dob between '2013-01-01' and '2014-12-31')
order by an_id, ex_date, srv_id;


/*  TASK 05 */

select distinct cl_id
, cl_name_last
from vt_clients
join vt_animals using(cl_id)
where an_type in ('cat')
order by cl_id;

/*  TASK 06 */

select distinct cl_id
, cl_name_last
from vt_clients
join vt_animals using(cl_id)
where an_type not in ('cat')
order by cl_id;

/*  TASK 07 */

select distinct cl_id
, cl_name_last
from vt_clients
join vt_animals using(cl_id)
where an_type in('hamster', 'porcupine', 'dormouse')
order by cl_id;

/*  TASK 08 */

select distinct cl_id
, cl_name_last
from vt_clients
join vt_animals using(cl_id)
where an_type not in('hamster', 'porcupine', 'dormouse')
order by cl_id;


/*  TASK 09 */


/*  TASK 10 */
