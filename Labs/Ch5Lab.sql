.echo on
.headers on 

--Name Chapter05Lab.sql
--Author: Deniqtrius Curry
--Date: March 22, 2018
1.
with USAcust as 
		(select customerid, country from customers where country like 'USA')
	 select customerid, count(orderid) from orders
		where customerid in USAcust 
		group  by customerid order by count(orderid) desc;
2.
with
 Gersup as 
	(select s.supplierid from suppliers s where country like 'Germany'),
GerCust as 
 select c.customerid from customers c where c.country like 'Germany',
GEROdr as 
	(select o.orderid from orders o where o.shipcountry like 'Germany');
	select p.productname,sum(od.quantity) from products p
	join order_details od on p.productid = od.productid group by p.productname;
	join Gersup on p.supplierid = Gersup.supplierid