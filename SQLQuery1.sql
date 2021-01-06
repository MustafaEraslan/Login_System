insert into ogrenci(ogr_no,ogr_adi,ogr_soyadi) values(1,'Mustafa','Eraslan');
select * from ogrenci; 
select * from okul; 

update ogrenci set ogr_adi='Umut'

delete from ogrenci where ogr_no=1;

create table #okul
(
ID int,
ogrenciNo varchar(20),
Okul char(40),
)
insert into #okul(ID,OgrenciNo,Okul)
values
(1,'1','sdu'),
(2,'2','ege'),
(3,'3','sdu');		

select distinct ogrenciNo from okul;
create table bolum
(
ID int,
ogrenciNo varchar(20),
bolum char(40),
)
insert into bolum(ID,ogrenciNo,bolum) values(3,3,'MEKATRONÝK');
update bolum set bolum='BÝYOMEDÝKAL' where ID=2

select okul.Okul,okul.ogrenciNo,ogrenci.ogr_no	
from ogrenci inner join okul
on(ogrenci.ogr_no=okul.ogrenciNo)

select * from ogrenci;
select * from okul;
select * from bolum;
select * from ortalama;

create table ortalama
(
ID int,
ogrenciNo varchar(20),
ortalama float,
)
insert into ortalama(ID,ogrenciNo,ortalama) values(3,3,2.2);
update bolum set bolum='BÝYOMEDÝKAL' where ID=2


select ortalama.ogrenciNo,okul.ogrenciNo
from okul inner join ortalama
on(okul.ogrenciNo=ortalama.ogrenciNo)

select bolum.ogrenciNo,ortalama.ogrenciNo	
from bolum inner join ortalama
on(bolum.ogrenciNo=ortalama.ogrenciNo)

SELECT  ortalama FROM ortalama.ortalama  
IF(ortalama.ortalama)>2 
begin
disp('Mezun', 'mezun degil')
end
else
begin
disp('mezun')
end


update okul set Ad='Mustafa' where ID=1

