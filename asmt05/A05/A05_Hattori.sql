/* John Hattori */

\W    /* enable warnings! */

use   a_vets;

/*  TASK 00 */ 
select user(), current_date(), version(), @@sql_mode\G

/*  TASK 01 */

select stf_job_title
, stf_name_last
from vt_staff s
join vt_staff_pay sp on s.stf_id = sp.stf_id
where sp.stf_salary > 30000;

/* Is this also a valid way to write a join statement? */

select stf_job_title
, stf_name_last
from vt_staff s, vt_staff_pay sp
where s.stf_id = sp.stf_id
and sp.stf_salary > 30000;

/* using Subquery */

select stf_job_title
, stf_name_last
from vt_staff 
where stf_id in (
    select stf_id
    from vt_staff_pay
    where stf_salary > 30000);

/*  TASK 02 */

select cl_id
, an_id
, an_name
, an_dob
from vt_animals 
where cl_id  in (
    select cl_id
    from vt_clients
    where cl_state in ('NY', 'MA'))
and an_type not in ('cat', 'dog', 'bird');

/*  TASK 03 */

set @fee = 50;
select srv_id
, ex_fee
, ed.ex_id
, ex_date
from vt_exam_details ed, vt_exam_headers eh
where ed.ex_id = eh.ex_id
and ed.ex_fee > @fee;

set @fee = 100;
select srv_id
, ex_fee
, ed.ex_id
, ex_date
from vt_exam_details ed, vt_exam_headers eh
where ed.ex_id = eh.ex_id
and ed.ex_fee > @fee;

/*  TASK 04 */

set @animal = 15001;
select cl.cl_id
, cl_name_last
, an.an_type
, srv_id
, ex_desc
, ex_fee
from vt_animals an, vt_clients cl
, vt_exam_headers eh, vt_exam_details ed
where cl.cl_id = an.cl_id 
and an.an_id = eh.an_id
and eh.ex_id = ed.ex_id
and an.an_id = @animal;

/* no an_id = 16004 in vt_exam_headers table */

set @animal = 16004;
select cl.cl_id
, cl_name_last
, an.an_type
, srv_id
, ex_desc
, ex_fee
from vt_animals an, vt_clients cl
, vt_exam_headers eh, vt_exam_details ed
where cl.cl_id = an.cl_id 
and an.an_id = eh.an_id
and eh.ex_id = ed.ex_id
and an.an_id = @animal;

set @animal = 15401;
select cl.cl_id
, cl_name_last
, an.an_type
, srv_id
, ex_desc
, ex_fee
from vt_animals an, vt_clients cl
, vt_exam_headers eh, vt_exam_details ed
where cl.cl_id = an.cl_id 
and an.an_id = eh.an_id
and eh.ex_id = ed.ex_id
and an.an_id = @animal;

/*  TASK 05 */

select ex_desc
, srv_id
from vt_exam_details
where ex_desc like '%feline%'
and ex_desc not like '%dental%'
order by ex_desc, srv_id;

/*  TASK 06 */

select cl_id
, cl_name_last
from vt_clients
where cl_id in (
    select cl_id
    from vt_animals 
    where an_type in ('snake', 'chelonian', 'crocodilian', 'lizard'));
/*  TASK 07 */
select cl_id
, cl_name_last
from vt_clients
where cl_id in (
    select cl_id
    from vt_animals 
    where an_type in ('snake', 'chelonian', 'crocodilian', 'lizard'))
    and cl_id in (
    select cl_id
    from vt_animals
    where an_type in ('bird'));

/*  TASK 08 */

select cl_id
, cl_name_last
from vt_clients
where cl_id not in (
    select cl_id
    from vt_animals 
    where an_type in ('snake', 'chelonian', 'crocodilian', 'lizard'))
    and cl_id in (
    select cl_id
    from vt_animals
    where an_type in ('bird'));

/*  TASK 09 */


/*  TASK 10 */
