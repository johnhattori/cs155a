/*  Demo 01		*/
select z_em_dept.d_id, d_name, e_id, e_name
from z_em_dept 
LEFT JOIN  z_em_emp on z_em_dept.d_id = z_em_emp.d_id



Select d_id, d_name, e_id, e_name
From z_em_dept 
LEFT JOIN  z_em_emp Using(d_id)
;


/*  Demo 02		*/
Select z_em_dept.d_id, d_name, e_id, e_name
From z_em_emp  
LEFT JOIN  z_em_dept on z_em_dept.d_id = z_em_emp.d_id;

Select d_id, d_name, e_id, e_name
From z_em_emp  
LEFT JOIN  z_em_dept Using(d_id)
;

/*  Demo 03	*/
Select z_em_dept.d_id, d_name, e_id, e_name
From z_em_dept 
RIGHT JOIN z_em_emp on z_em_dept.d_id = z_em_emp.d_id;

Select d_id, d_name, e_id, e_name
From z_em_dept 
RIGHT JOIN z_em_emp Using(d_id)
;

/*  Demo 04		*/
Select d_id, d_name, e_id, e_name, P_ID
From z_em_dept 
LEFT JOIN  z_em_emp Using(d_id)
LEFT JOIN  z_em_empproj Using(e_id)
;

/*  Demo 05	*/	
Select e_id, e_name,d_id, d_name, P_ID
From z_em_emp  
LEFT JOIN z_em_dept Using(d_id)
LEFT JOIN z_em_empproj Using(e_id)
;

/*  Demo 06	*/
Select z_em_emp.e_id, e_name,z_em_dept.d_id, d_name, P_ID
From z_em_emp  
LEFT JOIN z_em_dept on z_em_dept.d_id = z_em_emp.d_id
Joinz_em_empproj on z_em_emp.e_id = z_em_empproj.e_id
;




/*  switch database
use a_oe;

/*  Demo 07	 */
Select cust_id
,         cust_name_last
,         ord_id
From a_oe.customers 
Joina_oe.order_headers using(cust_id)
Where cust_id between 404900 and 409030
order by cust_id, ord_id
;


/*  Demo 08	 */
Select cust_id
,         cust_name_last
,         ord_id
From a_oe.customers 
left join a_oe.order_headers using(cust_id)
Where cust_id between 404900 and 409030
order by cust_id, ord_id
;


/*  Demo 09 	*/
Select cust_id
,         cust_name_last
,         ord_id
From a_oe.customers 
right join a_oe.order_headers using(cust_id)
Where cust_id between 404900 and 409030
order by cust_id, ord_id
;


/*  Demo 10 	*/
Select PR.prod_id, PR.prod_desc, PR.catg_id, OD.ord_id
From  a_prd.products  PR
join  a_oe.order_details  OD  on PR.prod_id = OD.prod_id
Where PR.catg_id  in ('MUS')
order by PR.prod_id;


/*  Demo 11	*/
Select PR.prod_id, PR.prod_desc, PR.catg_id
From  a_prd.products  PR
Where catg_id  in ('MUS')
order by PR.prod_id;


/*  Demo 12	*/
Select PR.prod_id, prod_desc, catg_id, ord_id
From  a_prd.products  PR
left join a_oe.order_details   OD  on PR.prod_id = OD.prod_id
Where catg_id  in ('MUS')
order by PR.prod_id;



/*  Demo 13	*/
Select OD.prod_id, prod_desc, catg_id, ord_id
From  a_prd.products PR
left join a_oe.order_details   OD  on PR.prod_id = OD.prod_id
Where catg_id  in ('MUS')
order by OD.prod_id;













