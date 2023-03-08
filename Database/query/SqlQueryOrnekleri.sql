--select * from Products  -- Products tablosunu listeledik.. 

--select productname, unitprice from products   -- Products tablosundaki ürün adý ve fiyatý listeledik.. 

--update Products set ProductName='Chai Çay' where ProductID=1  --  -- Products tablosundaki ürün id ' si 1 olan ürünün adýný güncelledik.. 

--update Products set ProductName='Chai Çay', UnitPrice=55 where ProductID=1  --  -- Products tablosundaki ürün id ' si 1 olan ürünün adýný ve fiyatýný güncelledik.. 

--insert into customers (CustomerID,CompanyName,ContactTitle) values ('KBIL' ,'Kontrol Bilisim','Muhammed Ferit Simsek') -- customer tablosuna bir müþterinin id þirket ismi ve title'ýn ekledik..

--select distinct city from Customers  // yinelenen þehirleri göstertmedik sadece 1 kez yazdýrdýk..

--select distinct Top 10 Percent City, count (*) as 'adet'  from Customers Group By City order by Count(*) desc 
--  NOT : tekrar eden þehirleri kaldýrdýk ve toplam þehirlerin %10 unu aldýrdýk , þehir adedini gruplayýp büyükten küçüðe sýraladýk.
--  NOT : order by standart olarak küçükten büyüðe sýralar ( asc ' dir default'u  ) , büyükten küçüðe için ( desc ) komutu kullanýrýz.. 

--select * Into Products_New from Products // ayný tabloyu koplayadýk..

--select * from Products_new 

--delete from products_new // içini sildik tablonun..

--select * into products_new2 from products where CategoryID=1 -- Product içerisindeki Category id si 1 olanlarý alýp yeni bir tablo oluþturdu..

-- Hangi ülkede kaç müþterim var ( CUSTOMER )

--select Country, Count (CustomerID) as 'Ülkedeki Müþteri Sayýsý' from Customers  group by country having Count(CustomerId) >10  order by Count(CustomerID) desc 
-- NOT : Group by varsa where kullanýlamýyor bu yüzden having kullanarak 10 dan büyük olanlarý listeledik..



--select * from Employees where FirstName = 'Nancy' -- Employees içerisinde nancy isimli kiþilerin tüm kayýtlarýný getirdik..

--delete from products_new2 where SupplierId=1  products new2 tablosundaki supplierid'si 1 olan kayýtlarý sildik..


--select * from products

-- Products tablosundaki ürünadý,ürünün fiyatý ve eðer bu ürüne 15 png kina eklersem ne olur incelemesini yapabilmek için gerekli sorguyu yazýnýz..

--select ProductName,UnitPrice,UnitPrice+15  as 'YeniFiyat' from products order by UnitPrice
--update Products set UnitPrice-=15 

-- Yeni Fiyatlar onaylandý.. Tabloyu yeni fiyatlara göre güncelleyiniz..

--update Products set UnitPrice+=15 // Products tablosundaki fiyatlara +15 ekledik

--update Products set UnitPrice+=15 where UnitPrice<=100  // Fiyatý 100 e eþit veya küçük olanlarý 15 tl arttýrdýk.
--select UnitPrice from Products where UnitPrice<=100  // Fiyatý 100 den küçük olanlarý listele..

--select 50+(30/10)  // Hesap makinesi olarak kullanabiliyoruz.. 

--Select ProductName + ' Ürünün toplam stok maliyeti =' + CONVERT ( varchar(20) ,UnitPrice * UnitsInStock) as 'Yeni Durum'  from Products  
-- NOT : Ürün adýna Ürünün toplam stok maliyeti yazýsýný ekledik sonra Convert içerisinde ürün fiyatýný stok ile çarptýk ve yazdýrdýk..

--Select * from Products where Discontinued <> 0   -- Products Tablosundaki discontinued sutunundaki 0 olmayan deðerleri getirdi..

--Select * from Customers 

-- Ülkesi Almanya olan 
-- Þehri berlin veya köln olan müþteriler

--select * from Customers where Country='Germany' and city='berlin' or city = 'köln'

--Almanya yada Ýspanyadaki müþteriler
--select  CompanyName,ContactName,Country from Customers where Country='Germany' or Country = 'Spain' 


-- Almanyada olmayan müþteriler  ( not ) 
--select CompanyName,ContactName,Country from Customers where  not Country='Germany'

-- Almanyada ve Ýspanyadan olmayan müþteriler
--Select CompanyName,ContactName,Country from Customers where (Country<>'Germany' and Country<>'Spain')

--Select * From Products

-- Fiyatý 50 ile 100 arasýndaki ürünler..
--Select ProductName,UnitPrice from Products where UnitPrice between 50 and 100 order by UnitPrice
--Select ProductName,UnitPrice from Products where UnitPrice not between 50 and 100 order by UnitPrice // ( not ) koyunca bu aralýkta olmayanlar..


-- Ürün adý Carnarvon Tigers ile Mozzarella di Giovanni arasýnda ürünleri listele
--select ProductName,UnitPrice from Products where ProductName between 'Carnarvon Tigers' and 'Mozzarella di Giovanni' order by ProductName
-- NOT : Alfabetik sýraya göre aradakileri harf harf alýyor.. 

--Select * From Orders
--Sipariþ Tarihi 1 Temmuz 1996 ile 31 Temmuz 1996 arasýnda olan sipariþler..
--Select * From Orders where OrderDate between '1996-07-01' and '1996-07-31'

----Sipariþ Tarihi 1 Temmuz 1996 ile 31 Temmuz 1996 arasýnda olan sipariþler ve birde Shipvia'sý 1 olan..
--Select * from orders where (OrderDate between '1996-07-01' and '1996-07-31') and ShipVia=1

--Almanya fransa ve ispanyadan olan müþterilerin verilerini listeleme..  ( in ) komutu çoklu or kullanýmýný kolaylaþtýran bir komut.
--select CompanyName,City,Country from Customers where country in ('Germany','France','Spain')

--Almanya fransa ve ispanyad dýþýnda olan müþterilerin verilerini listeleme..  ( not in ) komutu çoklu or kullanýmýný kolaylaþtýran bir komut.
--select CompanyName,City,Country from Customers where country not in ('Germany','France','Spain') 

--SubQuery  Alt Sorgu

--Tedarikçilerimin olduðu ülkelerdeki müþtreliremiz kimler  ?   // Mesela benim kendim eklemiþ olduðum KBIL þirketi türkiyede yer alýyor ve o þirket Suppliers'da yer almadýðý için gelmedi..
--Select * From Customers where Country in ( Select Country from Suppliers)





