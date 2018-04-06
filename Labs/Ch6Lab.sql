.echo on 
.headers on 

-- Name: Chapter06lab.sql
--Author: Deniqtrius Curry
--Date: March21, 2018

--1. 
select distinct country from suppliers;
union 
select distinct country from customers;
--2
select city, country from suppliers;
union 
select city, country from customers;
--3
select  country from suppliers;
intersect
select  country from customers;
--4
select city, country from suppliers;
intersect
select city, country from customers;
--5
select  country from customers
intersect
select  country from suppliers;
--6
select  country from suppliers;
except
select  country from customers;
