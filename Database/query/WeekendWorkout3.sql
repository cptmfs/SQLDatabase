-- Soru  1 -- 
-- "Categories" tablosundan CategoryName alan�na g�re artan s�rada olacak �ekilde CategoryName ve Description bilgilerini veren sorguyu olu�turunuz.

-- Cevap 1 --
--select CategoryName,Description from Categories order by CategoryName

-- Soru  2 -- 
--"Customers" tablosundan CompanyName,ContactName,Ki�iAd�, �irketAd�,ContactTitle ve Phone bilgilerini Phone bilgisine g�re artan s�rada olacak �ekilde g�steren sorguyu olu�turunuz.
-- Cevap 2 --
--Select CompanyName,ContactName,ContactTitle,Phone from Customers order by Phone

-- Soru  3 -- 
--"Employees" tablosundan i�e ba�lama tarihi ("HireDate") alan�na g�re azalan s�rada olacak �ekilde FirstName ve b�y�k harfli olacak LastName alanlar�n� aras�nda bir bo�luk karakteri olmak �zere olu�turan sorguyu olu�turunuz.
-- Cevap 3 --
--Select FirstName+ ' ' +UPPER (LastName) as 'Personel Ad� Soyad�' , HireDate as '��e Ba�lama Tarihi' from Employees order by HireDate desc 

-- Soru  4 -- 
--"Orders" tablosundan OrderID, OrderDate, ShippedDate, CustomerID, Freight bilgilerini Freight alan�na g�re azalan s�rada olacak �ekilde ilk 10 kay�d� g�steren sorguyu olu�turunuz.
-- Cevap 4 --
--Select Top(10) OrderID, OrderDate, ShippedDate, CustomerID, Freight from orders order by Freight desc

--  Soru  5 -- 
-- "Customers" tablosundan t�m "CustomerID" bilgilerini k���k harfle g�steren ve bunu "Kimlik Tnm" olarak yeniden adland�ran bir sorgu olu�turunuz.
--  Cevap 5 --
--Select LOWER (CustomerID) as ' Kimlik Tnm' from Customers

--  Soru  6 -- 
-- "Suppliers" tablosundan Country bilgisi azalan s�rada, CompanyName artan s�rada olacak �ekilde CompanyName, Fax, Phone, Country bilgilerini d�ken bir sorgu olu�turunuz.
--  Cevap 6 --
--Select CompanyName, Fax, Phone ,Country from Suppliers  order by Country DESC , CompanyName ASC

--  Soru  7 -- 
-- "Customers" tablosundan yaln�zca 'Buenos Aires'ten gelen t�m m��terilerin CompanyName, ContactName'lerini g�steren bir sorgu olu�turunuz.
--  Cevap 7 --
--Select CompanyName,ContactName,City From Customers where City = 'Buenos Aires'

--  Soru  8 -- 
-- "Products" tablosundan stokta olmayan �r�nlerin ProductName, UnitPrice, QuantityPerUnit bilgilerini g�steren bir sorgu olu�turunuz.
--  Cevap 8 --
--Select ProductName, UnitPrice, QuantityPerUnit,UnitsInStock From Products where UnitsInStock=0

--  Soru  9 -- 
-- Almanya, Meksika, �spanya'dan olmayan t�m m��terilerin(Customers) CompanyName,Address,City,Country bilgilerini g�steren bir sorgu olu�turunuz.
--  Cevap 9 --
--Select CompanyName,Address,City,Country from Customers where  Country<>'Germany'and Country<>'Mexico'and Country<>'Spain'

--  Soru  10 -- 
-- 21 May�s 1996'da verilen t�m sipari�lerin OrderDate,ShippedDate, CustomerID ve Freight bilgilerini g�steren bir sorgu olu�turunuz.
--  Cevap 10 --
--Select OrderDate,ShippedDate, CustomerID,Freight from Orders where OrderDate='1996-08-21'   *** 21 May�s 1996 da verilmi� bir Sipari� yok ***

--  Soru  11 -- 
-- Amerika Birle�ik Devletleri'nden olmayan �al��anlar�n FirstName,LastName,Country bilgilerini g�steren bir sorgu olu�turunuz.
--  Cevap 11 --
--Select FirstName,LastName,Country from Employees where not Country='USA'

--  Soru  13 -- 
-- Ba� harfi A veya B ile ba�layan �ehirlerdeki m��terilerin City, CompanyName, ContactName bilgilerini g�steren bir sorgu olu�turunuz.
--  Cevap 13 --
--Select  City, CompanyName, ContactName from Customers where City like 'A%' or City like 'B%'

--  Soru  14 -- 
-- Navlun(Freight) maliyetinin 500 dolardan fazla oldu�u t�m sipari�leri(Orders) g�steren bir sorgu olu�turunuz.
--  Cevap 14 --
--Select * From Orders where Freight>500

--  Soru  15 -- 
-- Faks numaras� olmayan t�m m��terilerin CompanyName, ContactName bilgilerini g�steren bir sorgu olu�turunuz.
--  Cevap 15 --
--Select  CompanyName, ContactName, Fax from Customers where Fax IS NULL

--  Soru  16 -- 
-- Kimseye rapor vermeyen(ReportsTo alan�) �al��anlar�n FirstName, LastName bilgilerini g�steren bir sorgu olu�turunuz.
--  Cevap 16 --
--Select  FirstName, LastName,ReportsTo from Employees where ReportsTo IS NULL

--  Soru  17 -- 
-- Ad�nda L harfi olan �ehirlerdeki m��terilerin City,CompanyName,ContactName bilgilerini ContactName bilgisi azalacak �ekilde g�steren bir sorgu olu�turunuz.
--  Cevap 17 --
--Select City,CompanyName,ContactName from Customers where City like '%L%' Order By ContactName desc

--  Soru  18 -- 
-- 1950'lerde do�an �al��anlar�n(Employee tablosu) FirstName, LastName, BirthDate bilgilerini g�steren bir sorgu olu�turunuz.
--  Cevap 18 --
--Select FirstName, LastName, BirthDate from Employees  where (YEAR(BirthDate) between 1950 and 1959)

--  Soru  19 -- 
-- Exotic Liquids, Specialty Biscuits Ltd., Escargots Nouveaux tedarik�ileri taraf�ndan sa�lanan t�m �r�nlerin tedarik�i kimli�ine g�re s�ralanm�� olarak 
-- SupplierID, ProductName ve CompanyName bilgilerini g�steren sorgu olu�turunuz.
--  Cevap 19 --
--Select s.SupplierID, p.ProductName , CompanyName  from Suppliers s  INNER JOIN Products p on s.SupplierID=p.SupplierID 
--where CompanyName='Exotic Liquids' or CompanyName='Specialty Biscuits, Ltd.'  or CompanyName='Escargots Nouveaux' order by SupplierID

--  Soru  20 -- 
-- "Seattle" �ehrindeki �al��anlar�n LastName,FirstName bilgilerini g�steren bir sorgu olu�turunuz
--  Cevap 20 --
--Select LastName,FirstName from Employees where City='Seattle'

--  Soru  21 -- 
-- Madrid d���nda Meksika'daki herhangi bir �ehirdeki veya �spanya'daki di�er �ehirlerdeki t�m m��terilerin CompanyName,ContactName, City ve Country bilgilerini g�steren bir sorgu olu�turunuz.
--  Cevap 21 --
--Select CompanyName,ContactName, City , Country from Customers where Country='Mexico' or Country='Spain' and City<>'Madrid'

--  Soru  22 -- 
-- �kinci karakterinde A harfi olmayan t�m m��terilerin ContactName bilgisini azalan s�rada g�steren bir sorgu olu�turunuz.
--  Cevap 22 --
--Select ContactName from Customers where not ContactName  like '_a%' order by ContactName desc

--  Soru  23 -- 
-- Orders tablosundan Freight toplam� 200$'dan b�y�k olan bilgilerin CustomerID ve Freight toplam�n� g�steren bir sorgu olu�turunuz.(�PUCU: GroupBy ve Having deyimi kullanman�z gerekecek.)
--  Cevap 23 --
--Select CustomerID,SUM(Freight) as 'Freight Toplam' From Orders group by CustomerID having SUM(Freight)>200

--  Soru  24 -- 
-- �al��anlar tablosundan �al��an Kimli�i, �al��an�n Soyad� ve Ad� ve y�netici olarak rapor verdikleri ki�inin Soyad� ve Ad�'n� g�steren bir sorgu olu�turunuz. (�P�NUCU : Self Join)
--  Cevap 24 --
--Select e1.EmployeeID,e1.FirstName+' '+ e1.LastName as 'Calisan Ad Soyad',e2.FirstName+' '+e2.LastName as 'Y�netici Ad Soyad' from Employees e1
--INNER JOIN Employees e2 on e1.ReportsTo=e2.EmployeeID

--  Soru  25 -- 
-- T�m �r�nlerin(Products) BirimFiyat�n�(UnitPrice) ortalama(AVG), minimum(MIN) ve maksimum(MAX) de�erlerini OrtalamaFiyat, MinimumFiyat,MaksimumFiyat olarak g�steren bir sorgu olu�turunuz.
--  Cevap 25 --
--Select AVG(UnitPrice) as 'Ortalama Fiyat',MIN(UnitPrice) as 'Minimum Fiyat', MAX(UnitPrice) as 'Maximum Fiyat' From Products

--  Soru  26 -- 
-- "Categories" tablosundan CategoryName bilgisinin ilk 5 karakterini getiren(LEFT fonksiyonu) ve K�saBilgi olarak yeniden adland�r�lan bir sorgu olu�turunuz.
--  Cevap 26 --
--Select Left(CategoryName,5) as 'K�sa Bilgi' From Categories

--  Soru  27 -- 
-- Deniz �r�nleri kategorisindeki t�m �r�nlerden �irketAd� ve �r�nAd�n� listeleyen bir sorgu olu�turunuz.
--  Cevap 27 --
--Select s.CompanyName,p.ProductName,c.CategoryName from Categories c 
--Inner join Products p on  c.CategoryID=p.CategoryID
--Inner join Suppliers s on s.SupplierID=p.SupplierID where CategoryName='Seafood'

--  Soru  28 -- 
-- CategoryID'si 5 olan t�m �r�nlerden CategoryID, CompanyName ve ProductName bilgilerini listeleyen bir sorgu olu�turunuz.
--  Cevap 28 --
--Select c.CategoryID, CompanyName, ProductName From Categories c
--Inner join Products p on  c.CategoryID=p.CategoryID
--Inner join Suppliers s on s.SupplierID=p.SupplierID where c.CategoryID=5

--  Soru  29 -- 
-- ContactTitle alan�nda 'Owner' ge�en m��terilerimin �irket adlar�n� listeleyiniz.
--  Cevap 29 --
--Select CompanyName ,ContactTitle from Customers where ContactTitle='Owner'

--  Soru  30 -- 
-- 50$ ile 100$ aras�nda bulunan t�m �r�nlerin adlar� ve fiyatlar�n� listeleyiniz.
--  Cevap 30 --
--Select ProductName,UnitPrice From Products where UnitPrice between 50 and 100 order by UnitPrice

--  Soru  31 -- 
-- 1 temmuz 1996 ile 31 Aral�k 1996 tarihleri aras�ndaki sipari�lerin (Orders), Sipari�ID (OrderID) ve Sipari�Tarihi (OrderDate) bilgilerini listeleyiniz.
--  Cevap 31 --
--Select OrderID,OrderDate From Orders where OrderDate between '1996-07-01' and '1996-12-31'

--  Soru  32 -- 
-- 1997 y�l�na ait sat��lar�(Orders) listeleyiniz.
--  Cevap 32 --
--Select * From Orders Where YEAR(OrderDate) between 1997 and 1997

--  Soru  33 -- 
-- 1997 Ocak ay�na ait Londra ve Fransaya yap�lan sat��lar� listeleyiniz.
--  Cevap 33 --
--Select * From Orders Where ShipCountry='France' or ShipCity='London'  and OrderDate between '1997-01-01' and  '1997-01-31'  ..

--  Soru  34 -- 
-- 1955-1963 y�llar� aras�nda do�mu� olan 3 Amerikal� olmayan �al��an� listeleyiniz.(Employee tablosu)
--  Cevap 34 --
--Select *  from Employees where Country<>'USA' and Year(BirthDate) between 1955 and 1963

--  Soru  35 -- 
-- 1997 y�l�n�n ilk 6 ay�nda Londra ya yap�lan sat��lar� listeleyiniz.
--  Cevap 35 --
--Select * From Orders where ShipCity='London'  and OrderDate between '1997-01-01' and '1997-06-30' 

--  Soru  36 -- 
-- 1998 y�l�nda g�nderilemeyen sipari�leri g�r�nt�leyiniz.(Orders)
--  Cevap 36 -- 
--Select * From Orders Where YEAR(OrderDate)=1998 and ShippedDate IS NULL

--  Soru  37 -- 
-- Deniz �r�nlerinden ve stoklarda 15 ten �ok olan �r�nleri g�steriniz.
--  Cevap 37 -- 
--Select * From Products where CategoryID=8 and UnitsInStock>15

--  Soru  38 -- 
-- �lkesi (Country) Spain veya France veya Germany olan m��terileri listeleyiniz.
--  Cevap 38 -- 
--Select * From Customers where Country='Spain' or Country='France' or Country='Germany' order by Country

--  Soru  39 -- 
-- �lkesi (Country) Spain veya France veya Germany olmayan m��terileri listeleyiniz.
--  Cevap 39 -- 
--Select * From Customers where Country<>'Spain' and Country<>'France' and Country<>'Germany' 

--  Soru  40 -- 
-- Amerika�da ya�amayan �al��anlar� listeleyiniz.
--  Cevap 40 --
--Select * From Employees Where not  Country='USA'

--  Soru  41 -- 
-- En Pahal� 5 �r�n� listeleyiniz.
--  Cevap 41 --
--Select  Top(5)* from Products order by UnitPrice desc

--  Soru  42 -- 
-- 1996 y�l�n�n 12 ay�nda yap�lan sat��lardan nakliye(freight) �cretlerinden en pahal� 3 tanesini g�steriniz
--  Cevap 42 --
--Select TOP(3)* From Orders where OrderDate between '1996-12-01' and '1996-12-30' order by Freight desc

--  Soru  43 -- 
-- �r�nlerimi en pahal�dan en ucuza do�ru s�ralas�n, ama stoklar�n� k���kten-b�y��e do�ru g�stersin sonu� olarak �r�n ad� ve fiyat�n� g�stersin
--  Cevap 43 --
--Select ProductName,UnitPrice From Products order by UnitPrice desc , UnitsInStock asc

--  Soru  44 -- 
-- 1 Numaral� kategoride ka� �r�n vard�r.
--  Cevap 44 --
--Select * From Products where CategoryID=1

--  Soru  45 -- 
-- Ka� farkl� �lkeye sat�� yap�lmaktad�r. Bunlar� listeleyiniz.
--  Cevap 45 --
--Select DISTINCT ShipCountry  From Orders 

--  Soru  46 -- 
-- T�m ciro miktar� ne kadard�r?
--  Cevap 46 --
--Select SUM(UnitPrice*Quantity) as ' C�RO ' From [Order Details] 

--  Soru  47 -- 
-- Ortalama �r�n Fiyat� nedir?
--  Cevap 47 --
--Select AVG(UnitPrice) as 'Ortalama �r�n Fiyat�' from Products 

--  Soru  48 -- 
-- En pahal� �r�n�n ad� ve fiyat� nedir?
--  Cevap 48 --
--Select TOP(1) ProductName,UnitPrice From Products order by UnitPrice desc

--  Soru  49 -- 
-- En ucuz �r�n�n ad� ve fiyat� nedir?
--  Cevap 49 --
--Select TOP(1) ProductName,UnitPrice From Products order by UnitPrice 

--  Soru  50 -- 
-- En az kazand�ran sipari�in tutar� nedir?
--  Cevap 50 --
--Select TOP(1)* From [Order Details] where Quantity=(Select Top (1)Quantity from [Order Details] order by Quantity ) order by UnitPrice

--  Soru  51 -- 
-- Hangi �r�n kategorisinde ka� adet �r�n vard�r. �simleriyle ve adetleriyle birlikte belirtiniz.
--  Cevap 51 --
--Select CategoryName,ProductName From Categories Inner Join Products on Products.CategoryID=Categories.CategoryID order by CategoryName 

--  Soru  52 -- 
-- 500 adetden fazla sat�lan �r�nler nedir?    ** 500 adetten fazla sat�lan �r�n bulamad�m **
--  Cevap 52 --
--Select  OrderID,SUM(Quantity)+p.UnitsOnOrder as 'Toplam Siparis',p.ProductName From [Order Details] od
--Inner Join Products p on p.ProductID=od.ProductID
--group by ProductName,UnitsOnOrder ,OrderID having Sum(Quantity)>50 order by [Toplam Siparis] desc

--  Soru  53 -- 
-- Hangi sipari�i hangi m��teri vermi�?
--  Cevap 53 --
--Select OrderID,c.ContactName,OrderDate From Orders o Inner join Customers c on  o.CustomerID=c.CustomerID

--  Soru  54 -- 
-- En fazla sipari� alan �al��an�m kimdir?
----  Cevap 54 --
Select (e.FirstName +' '+ e.LastName) as '�alisan', sum(od.Quantity) as 'ADET', e.EmployeeID from Products p
Inner Join [Order Details] od on p.ProductID=od.ProductID
Inner Join Orders o on od.OrderID=o.OrderID
Inner Join Employees e on o.EmployeeID=e.EmployeeID
group by e.FirstName +' '+ e.LastName,p.ProductName,e.EmployeeID
order by ADET desc