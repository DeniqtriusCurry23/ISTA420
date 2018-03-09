.echo on
.headers on
-- Name: Ch04answers.sql
-- Author: Deniqtrius Curry
-- Date: March 3, 2018

-- 1
 select o.orderid, o.employeeid from orders o where o.employeeid = (
   select e.employeeid from employees e where e.firstname like 'janet');
-- 2
select p.productname from products p where p.categoryid in (
  select c.categoryid from categories c where c.categoryname like 'seafood');
 
 -- 3
select o.orderid, o.employeeid from orders o where o.employeeid in (
  select e.employeeid from employees e where e.lastname like 'D%');

-- 4
 select p.productname, p.supplierid from products p where p.supplierid in (select s.supplierid from suppliers s where  s.companyname in ('Exotic liquids', "Grandma Kelly's Homestead",'Toyko Traders'));
 
 -- 5
 select p.productid, p.productname from products p where p.supplierid in (
    select s.supplierid from suppliers s where s.country in ('Australia','Singapore','Japan'));
	
	-- 7
select o.orderdate, o.employeeid from orders o where o.orderdate = (
   select max(o1.orderdate) from orders o1 where o1.employeeid = o.employeeid);
   select o.orderdate, o.employeeid from orders o where o.orderdate = (
     select min(o1.orderdate) from orders o1 where o1.employeeid = o.employeeid);