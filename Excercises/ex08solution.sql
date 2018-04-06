use tsqlv4;

if object_id('presidents') is not null
begin
  drop table presidents
end;

create table pres (
first nvarchar(100),
middle nvarchar(100),
last nvarchar(100),
 born nvarchar(100),
 died nvarchar(100),
 start nvarchar(100),
 finish nvarchar(100),
 party nvarchar(100),
 home nvarchar(100));

 select * from dbo.pres;

 bulk insert dbo.pres
 from 'C:\Users\Deniqtrius\Desktop\ISTA420\Exercises\presidents.csv' 
 with (
	datafiletype = 'char',
	fieldterminator = ',',
	rowterminator = '/n');
	