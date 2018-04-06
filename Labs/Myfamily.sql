.headers on

--Name: myfamily.sql
--Author: Deniqtrius
--Date: Feb 21, 2018

drop table if exists family;

create table family (
  id integer,
  name text,
  sex integer,
  role text,
  age integer
);

insert into family values (1,'Deniqtrius',1,'parent',27);
insert into family values (2,'Bianca',0,'parent',28);
insert into family values (3,'Tomas',1,'kitty',2);
insert into family values (4,'jackson|0|kitty|1',0,'kitty',1);
insert into family values (5,'Burtha',0,'fish',0);
insert into family values (6,'king',1,'fish',0);

.schema family
CREATE TABLE family (
  id integer,
  name text,
  sex integer,
  role text,
  age integer
);

select * from family;
id|name|sex|role|age
1|Deniqtrius|1|parent|22
2|Bianca|0|parent|19
3|Tomas|1|kitty|2
4|jackson|0|kitty|1
5|Burtha|0|fish|0
6|king|1|fish|0
select * from family where sex = 1;
id|name|sex|role|age
1|Nick|1|parent|27
3|Tomas|1|kitty|2
6|king|1|fish|0
select * from family where role like 'parent';
id|name|sex|role|age
1|Deniqtrius|1|parent|22
2|Bianca|0|parent|19
select name from family;
name
Deniqtrius
Bianca
Tomas
Jackson
Burtha
king
select avg(age) from family;
avg(age)
9.66666666666667
select sum(age) from family;
sum(age)
58