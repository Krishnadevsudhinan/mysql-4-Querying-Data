create database employee;
use employee;
create table Country_with_fields 
( ID Int Primary Key ,
country_name varchar(50),
population_in_lacs decimal,
area_in_sq_miles decimal);
insert into Country_with_fields(id,country_name,population_in_Lacs,area_in_sq_miles)
values
(11,"USA",3454,665384.04),
(12,"Canada",401,3855100),
(13,"UK",683,94060),
(14,"India",14509,1269219),
(15,"China",14193,663705405 ),
(16,"Indonesia",2834,735358),
(17,"Mexico",1280,761610 ),
(18,"Turkey",853,302535),
(19,"Germany",844,138069),
(20,"Australia",266.4, 2968464 );
create table person_with_fields 
( Id int unique primary key,
 Fname varchar(50),
 Lname varchar(50),
 Population decimal(10),
 Rating decimal(2),
 Country_Id  int ,
 Country_name varchar(50),
 foreign key (country_id) references country_with_fields(id) 
 on update cascade
 on delete cascade
 );
insert into person_with_fields(Id,Fname,Lname,Population,Rating,Country_Id,Country_name) 
values
(101,"John","David",3454,4,11,"USA"),
(102,"Simon","Andrews",3454,9,20,"Australia"),
(103,"Robert","xavier",3454,8,16,"Indonesia"),
(104,"Mariam","Muhammad",3454,5,12,"canada"),
(105,"Veena","Nair",3454,7,19,"Germany"),
(106,"Abdul","Salam",3454,6,15,"china"),
(107,"Asia","Khan",3454,5,14,"India"),
(108,"Roy","krishna",3454,4,13,"UK"),
(109,"Teresa","Davis",3454,3,17,"Mexico"),
(110,"Ram","Varma",3454,2,18,"Turkey");
select distinct country_name from person_with_fields;
select * from person_with_fields;
select fname, lname
from person_with_fields;
select fname,lname  from person_with_fields
where rating>4;
select country_name from person_with_fields
where population>10;
select country_name from person_with_fields
where rating>4.5 and country_name="usa" ;
select country_name from person_with_fields
where country_name = null;
select fname,lname from person_with_fields
where country_name in ("Canada","Usa","Uk");
select fname,lname from person_with_fields
where country_name not in ("india","australia");
select country_name from person_with_fields
where population between 5 and 20;
 select country_name from person_with_fields
where country_name  not regexp '^c' ;