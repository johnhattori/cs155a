use a_oe;

/*  demo 01  */
Select ord_id
 , ord_date
 , sales_rep_id
 , shipping_mode
From a_oe.order_headers
Where shipping_mode is null ;

/*  demo 02  */
Select ord_id
 , ord_date
 , sales_rep_id
From a_oe.order_headers
Where sales_rep_id is null ;

/*  demo 03  */
Select ord_id
 , ord_date
 , shipping_mode
From a_oe.order_headers
Where shipping_mode is not null ;


/*  demo 04  */
Select ord_id, ord_date, shipping_mode
From a_oe.order_headers
WHERE shipping_mode = NULL;

Select ord_id, ord_date, shipping_mode
From a_oe.order_headers
WHERE shipping_mode <> NULL;

/*  demo 05  */
Select ord_id
 , ord_date
 , cust_id
From a_oe.order_headers
Where cust_id in( 402100, 400300, 40330 ) ;

/*  demo 06  */
Select ord_id
 , ord_date
 , cust_id
From a_oe.order_headers
Where ord_id in( 101, 107, 95, 125 ) ;

/*  demo 07  */
Select prod_id
 , prod_name
 , catg_id
From a_prd.products
Where catg_id not in( 'HW', 'PET' ) ;

/*  demo 08  */
Select job_id, job_title, max_salary
From a_emp.jobs 
WHERE max_salary  IN (120000 );


/*  demo 09  */
Select job_id, job_title, max_salary
From a_emp.jobs 
WHERE max_salary NOT IN (120000 );


/*  demo 10  */
Select job_id, job_title, max_salary
From a_emp.jobs 
WHERE max_salary is null;

/*  demo 11  */
Select job_id, job_title, max_salary
From a_emp.jobs 
WHERE max_salary  IN (120000, null );

/*  demo 12  */
Select job_id, job_title, max_salary
From a_emp.jobs 
WHERE max_salary  NOT IN (120000, null );

/*  demo 13  */
Select emp_id
 , name_last
 , dept_id
 , emp_mng
From a_emp.employees
Where row( dept_id, emp_mng ) in ( row( 30, 101 ) );

/*  demo 14  */
Select emp_id
 , name_last
 , dept_id
 , emp_mng
From a_emp.employees
Where row( dept_id, emp_mng ) in (
    row( 30, 101 )
  , row( 35, 101 )
  )
Order by dept_id
 , emp_mng;
 
/*  demo 15  */
Select emp_id
 , name_last
 , dept_id
 , emp_mng
From a_emp.employees
Where( dept_id, emp_mng ) in (( 30, 101 ),( 35, 101 ) )
Order by dept_id
 , emp_mng;
 
/*  demo 16  */
use a_vets;
Select cl_name_last
 , cl_name_first
 , an_name
From vt_clients c
Left join vt_animals a on c.cl_id = a.cl_id
Where 'Edger' in ( cl_name_last, cl_name_first, an_name );


use a_oe;

/*  demo 17  */
Select emp_id
 , name_last as "Employee"
 , salary
From a_emp.employees
Where salary between 65000 and 70000 
Order by salary ;


/*  demo 18  */
Select emp_id
 , name_last as "Employee"
 , salary
From a_emp.employees
Where salary not between 25000 and 105000
Order by salary ;


/*  demo 19 */
Select emp_id
 , name_last as "Employee"
 , hire_date
From a_emp.employees
Where hire_date between '2001-01-01' and '2007-12-31' ;

/*  demo 20  */
Select emp_id
 , name_last as "Employee"
 , dept_id
From a_emp.employees
Where name_last between 'J' and 'T'
Order by name_last ;

/*  demo 21  */
Select cust_id
 , cust_name_last
 , cust_name_first
 , credit_limit
From a_oe.customers
Where credit_limit between 0 and 1000;

/*  demo 22  */
Select cust_id
 , cust_name_last
 , cust_name_first
 , credit_limit
From a_oe.customers
Where credit_limit is null;

/*  demo 23  */
Select emp_id
 , name_last as "Employee"
 , salary
From a_emp.employees
Where salary between 70000 AND  65000; ;

/*  demo 24  */
Select emp_id
 , name_last as "Employee"
 , salary
From a_emp.employees
Where salary between 30000 and null ;

/*  demo 25  */
Select emp_id
 , name_last as "Employee"
 , salary
From a_emp.employees
Where salary between null and 51000 ;

/*  demo 26  */
Select ex_id
, stf_id
, ex_date
From a_vets.vt_exam_headers
Order by ex_date;

/*  demo 27  */
Select ex_id
, stf_id
, ex_date
From a_vets.vt_exam_headers
Where ex_date between '2013-04-01' and '2013-04-30';

/*  demo 28  */
Select ex_id
, stf_id
, ex_date
From a_vets.vt_exam_headers
Where ex_date between '2013-04-01' and '2013-04-30 23:59:59';


