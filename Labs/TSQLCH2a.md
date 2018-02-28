LabTSQLCh2a
 select regiondescription from region;
 select territorydescription from territories;
 select territorydescription, regionid from territories where regionid = 4;
 select thomas.territorydescription, thomas.regionid from territories thomas where regionid = 1;
 select productid, productname, unitsinstock from products where unitprice > 0 order by unitsinstock limit 5;
 select thomas.territorydescription, thomas.regionid from territories thomas where regionid = 1;
 select contactname, city, phone, country from customers where country like 'USA';
 select productid, productname, unitprice from products order by unitprice desc limit 5;
 select count(*) from suppliers;
 sel ect count(*) from products;
 select count(*) from customers;