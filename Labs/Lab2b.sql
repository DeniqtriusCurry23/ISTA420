.echo on
.headers on

-- Name: Lab2b.sql
-- Author: Deniqtrius Curry
-- Date: February 28, 2018

select customerid, companyname, country from customers 
		where country in ('USA','Canada','Mexico');
	
select orderid,orderdate from orders where orderdate like '1998-04-%';

select productname from products where productname like '%sauce%';

select productname from products where productname like '%dried%';

select employeeid, shipcountry, shippeddate from orders where shipcountry like 'Ger%' and shippeddate like '%-12-%';

select orderid, productid, unitprice, quantity, (unitprice * quantity) as total_price, discount,
((unitprice * quantity) - (unitprice * quantity * discount)) as net
from order_details where productid = 19 and discount > 0;
select --contactname ,
		substr(contactname,instr(contactname, ' ') + 1) -- | |  '  ' ||
		substr(contactname, 1 , instr(contactname, ' ') -1) as alphaname
		from customers: order by lastname ;

select titleofcourtesy || ' ' || firstname ||  ' ' || lastname || ' 
' || title || '
 ' from employees;