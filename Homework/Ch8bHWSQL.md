# Discussion Questions Ch 8b
## Deniqtrius Curry
### March 28, 2018

1. UPDATE salestaxtable set rate = 0.05332 where id like 'GA'
1. Select salesamount, salesid , 3.5 as newrate, (salesamount * newrate) as newtax, sum(salesamount * newrate) as new totaltax from salesforlastyear where year = 2017 group by salesid;
1. UPDATE data in a table and assigns values to the table at the same time.
1. ETL means to transform and merge means to insert and update in one command.
1. The semantics of merge are is mandatory to terminate the merge statement with a semicolon.
1 Insert into table output insier
1. Insert and delete combined 
1. Delete from db.orders output orderid deleted
1. To directly insert from table.