--select * from Products  -- Products tablosunu listeledik.. 

--select productname, unitprice from products   -- Products tablosundaki �r�n ad� ve fiyat� listeledik.. 

--update Products set ProductName='Chai �ay' where ProductID=1  --  -- Products tablosundaki �r�n id ' si 1 olan �r�n�n ad�n� g�ncelledik.. 

--update Products set ProductName='Chai �ay', UnitPrice=55 where ProductID=1  --  -- Products tablosundaki �r�n id ' si 1 olan �r�n�n ad�n� ve fiyat�n� g�ncelledik.. 

--insert into customers (CustomerID,CompanyName,ContactTitle) values ('KBIL' ,'Kontrol Bilisim','Muhammed Ferit Simsek') -- customer tablosuna bir m��terinin id �irket ismi ve title'�n ekledik..

--select distinct city from Customers  // yinelenen �ehirleri g�stertmedik sadece 1 kez yazd�rd�k..

--select distinct Top 10 Percent City, count (*) as 'adet'  from Customers Group By City order by Count(*) desc 
--  NOT : tekrar eden �ehirleri kald�rd�k ve toplam �ehirlerin %10 unu ald�rd�k , �ehir adedini gruplay�p b�y�kten k����e s�ralad�k.
--  NOT : order by standart olarak k���kten b�y��e s�ralar ( asc ' dir default'u  ) , b�y�kten k����e i�in ( desc ) komutu kullan�r�z.. 

--select * Into Products_New from Products // ayn� tabloyu koplayad�k..

--select * from Products_new 

--delete from products_new // i�ini sildik tablonun..

--select * into products_new2 from products where CategoryID=1 -- Product i�erisindeki Category id si 1 olanlar� al�p yeni bir tablo olu�turdu..

-- Hangi �lkede ka� m��terim var ( CUSTOMER )

--select Country, Count (CustomerID) as '�lkedeki M��teri Say�s�' from Customers  group by country having Count(CustomerId) >10  order by Count(CustomerID) desc 
-- NOT : Group by varsa where kullan�lam�yor bu y�zden having kullanarak 10 dan b�y�k olanlar� listeledik..



--select * from Employees where FirstName = 'Nancy' -- Employees i�erisinde nancy isimli ki�ilerin t�m kay�tlar�n� getirdik..

--delete from products_new2 where SupplierId=1  products new2 tablosundaki supplierid'si 1 olan kay�tlar� sildik..


--select * from products

-- Products tablosundaki �r�nad�,�r�n�n fiyat� ve e�er bu �r�ne 15 png kina eklersem ne olur incelemesini yapabilmek i�in gerekli sorguyu yaz�n�z..

--select ProductName,UnitPrice,UnitPrice+15  as 'YeniFiyat' from products order by UnitPrice
--update Products set UnitPrice-=15 

-- Yeni Fiyatlar onayland�.. Tabloyu yeni fiyatlara g�re g�ncelleyiniz..

--update Products set UnitPrice+=15 // Products tablosundaki fiyatlara +15 ekledik

--update Products set UnitPrice+=15 where UnitPrice<=100  // Fiyat� 100 e e�it veya k���k olanlar� 15 tl artt�rd�k.
--select UnitPrice from Products where UnitPrice<=100  // Fiyat� 100 den k���k olanlar� listele..

--select 50+(30/10)  // Hesap makinesi olarak kullanabiliyoruz.. 

--Select ProductName + ' �r�n�n toplam stok maliyeti =' + CONVERT ( varchar(20) ,UnitPrice * UnitsInStock) as 'Yeni Durum'  from Products  
-- NOT : �r�n ad�na �r�n�n toplam stok maliyeti yaz�s�n� ekledik sonra Convert i�erisinde �r�n fiyat�n� stok ile �arpt�k ve yazd�rd�k..

--Select * from Products where Discontinued <> 0   -- Products Tablosundaki discontinued sutunundaki 0 olmayan de�erleri getirdi..

--Select * from Customers 

-- �lkesi Almanya olan 
-- �ehri berlin veya k�ln olan m��teriler

--select * from Customers where Country='Germany' and city='berlin' or city = 'k�ln'

--Almanya yada �spanyadaki m��teriler
--select  CompanyName,ContactName,Country from Customers where Country='Germany' or Country = 'Spain' 


-- Almanyada olmayan m��teriler  ( not ) 
--select CompanyName,ContactName,Country from Customers where  not Country='Germany'

-- Almanyada ve �spanyadan olmayan m��teriler
--Select CompanyName,ContactName,Country from Customers where (Country<>'Germany' and Country<>'Spain')

--Select * From Products

-- Fiyat� 50 ile 100 aras�ndaki �r�nler..
--Select ProductName,UnitPrice from Products where UnitPrice between 50 and 100 order by UnitPrice
--Select ProductName,UnitPrice from Products where UnitPrice not between 50 and 100 order by UnitPrice // ( not ) koyunca bu aral�kta olmayanlar..


-- �r�n ad� Carnarvon Tigers ile Mozzarella di Giovanni aras�nda �r�nleri listele
--select ProductName,UnitPrice from Products where ProductName between 'Carnarvon Tigers' and 'Mozzarella di Giovanni' order by ProductName
-- NOT : Alfabetik s�raya g�re aradakileri harf harf al�yor.. 

--Select * From Orders
--Sipari� Tarihi 1 Temmuz 1996 ile 31 Temmuz 1996 aras�nda olan sipari�ler..
--Select * From Orders where OrderDate between '1996-07-01' and '1996-07-31'

----Sipari� Tarihi 1 Temmuz 1996 ile 31 Temmuz 1996 aras�nda olan sipari�ler ve birde Shipvia's� 1 olan..
--Select * from orders where (OrderDate between '1996-07-01' and '1996-07-31') and ShipVia=1

--Almanya fransa ve ispanyadan olan m��terilerin verilerini listeleme..  ( in ) komutu �oklu or kullan�m�n� kolayla�t�ran bir komut.
--select CompanyName,City,Country from Customers where country in ('Germany','France','Spain')

--Almanya fransa ve ispanyad d���nda olan m��terilerin verilerini listeleme..  ( not in ) komutu �oklu or kullan�m�n� kolayla�t�ran bir komut.
--select CompanyName,City,Country from Customers where country not in ('Germany','France','Spain') 

--SubQuery  Alt Sorgu

--Tedarik�ilerimin oldu�u �lkelerdeki m��treliremiz kimler  ?   // Mesela benim kendim eklemi� oldu�um KBIL �irketi t�rkiyede yer al�yor ve o �irket Suppliers'da yer almad��� i�in gelmedi..
--Select * From Customers where Country in ( Select Country from Suppliers)





