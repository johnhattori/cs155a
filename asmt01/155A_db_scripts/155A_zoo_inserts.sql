Use a_testbed;

/*  remove any rows currently in the table */
delete from zoo_2014;

/*  inserts for the zoo_2014 table */
Insert Into zoo_2014  (z_id, z_name, z_type, z_cost, z_dob, z_acquired)   Values
   (23,'Sam','Giraffe', 5000.00, '2002-05-15 10:45:00','2002-05-15');

Insert Into zoo_2014 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values 
   (25, 'Abigail', 'Armadillo', 490.00, '2010-01-15 08:30:00', '2010-04-15');

Insert Into zoo_2014 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values 
   (56, 'Leon', 'Lion', 5000.00, '2009-02-25 15:00:00', '2010-03-25');

Insert Into zoo_2014 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values 
   (57, 'Lenora', 'Lion', 5000.00, '2009-03-25 15:35:00', '2011-01-15');

Insert Into zoo_2014 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values 
   (85, 'Sally', 'Giraffe', 5000.25, '2009-05-15 2:02:00', '2012-05-15');

Insert Into zoo_2014 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values 
   (43, 'Huey', 'Zebra', 2500.25, '2012-06-02 02:02:00', '2012-06-02');

Insert Into zoo_2014 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values 
   (44, 'Dewey', 'Zebra', 2500.25, '2012-06-02 02:10:00', '2012-06-02');

Insert Into zoo_2014 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values 
   (45, 'Louie', 'Zebra', 2500.25, '2013-01-02 02:25:00', '2013-01-02'); 
  
Insert Into zoo_2014 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values  
   (47, null,'Horse', 490.00, '2010-05-15 08:30:00 ','2010-04-15');

Insert Into zoo_2014 (z_id, z_name, z_type, z_cost, z_dob, z_acquired)    Values 
   (52, 'Dewey', 'Giraffe',3750.00, '2013-06-06 02:10:00', '2013-07-12');

