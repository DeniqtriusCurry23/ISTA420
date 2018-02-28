.echo on
.headers on

--name: myfamily.sql
--Author: Deniqtrius Curry
--Date: February 21, 2018

drop table if exists family;
  create table family (
	id integer,
	name text,
	sex integer,
	role text,
	age integer
);

 insert into family values (1,'Deniqtrius',1,'parent',22);
 insert into family values (2,'Bianca',0,'parent',20);
 insert into family values (3,'Sasha',0,'child',10);
 insert into family values (4,'Troy',1,'child',8);
 insert into family values (5,'jack',1,'pet',4);
 insert into family values (6,'snake',1,'pet',3);

1. .schema family
CREATE TABLE family (
	id integer,
	name text,
	sex integer,
	role text,
	age integer
);

 select * from family;
 id |name|sex|role|age
 1|Deniqtrius|1|parent|22
 2|Bianca|0|parent|20
 3|Sasha|0|child|10
 4|Troy|1|child|8
 5|jack|1|pet|4
 6|snake|1|pet|3
 select * from family where sex = 1;
 id|name|sex|role|age
 1|Deniqtrius|1|parent|22
 4|Troy|1|child|8
 5|jack|1|pet|4
 6|snake|1|pet|3
 select * from family where role like 'parent';
 id|name|sex|role|age
 1|Deniqtrius|1|parent|22
 2|Bianca|0|parent|20
 select name from family;
 name
 Deniqtrius
 Bianca
 Sasha
 Troy
 jack
 snake
 select avg(age) from family;
 avg(age)
 11.1666666666667
 select sum(age) from family;
 sum(age)
 67

