.echo on
.headers on

--  Name:Deniqtrius Curry
--  Date: March 14, 2018
--- Author: Sql Programming Ex 3

select od1.orderid, od1.productid, od1.unitprice, od1.quantity,
	(od1,unitprice * od1.quantity) as LineTotal,
	round((od1.unitprice * od1.quantity) /
	(select sum(od2.unitprice * od2.quantity) as OrderTotal from order_details od2 where od2.orderid = od.orderid) as OrderTotal from order_details limit 10;  