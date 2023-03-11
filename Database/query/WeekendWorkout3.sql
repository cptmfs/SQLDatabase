-- Soru  1 -- 
-- "Categories" tablosundan CategoryName alanýna göre artan sýrada olacak þekilde CategoryName ve Description bilgilerini veren sorguyu oluþturunuz.

-- Cevap 1 --
--select CategoryName,Description from Categories order by CategoryName

-- Soru  2 -- 
--"Customers" tablosundan CompanyName,ContactName,KiþiAdý, ÞirketAdý,ContactTitle ve Phone bilgilerini Phone bilgisine göre artan sýrada olacak þekilde gösteren sorguyu oluþturunuz.
-- Cevap 2 --
--Select CompanyName,ContactName,ContactTitle,Phone from Customers order by Phone

-- Soru  3 -- 
--"Employees" tablosundan iþe baþlama tarihi ("HireDate") alanýna göre azalan sýrada olacak þekilde FirstName ve büyük harfli olacak LastName alanlarýný arasýnda bir boþluk karakteri olmak üzere oluþturan sorguyu oluþturunuz.
-- Cevap 3 --
--Select FirstName+ ' ' +UPPER (LastName) as 'Personel Adý Soyadý' , HireDate as 'Ýþe Baþlama Tarihi' from Employees order by HireDate desc 

-- Soru  4 -- 
--"Orders" tablosundan OrderID, OrderDate, ShippedDate, CustomerID, Freight bilgilerini Freight alanýna göre azalan sýrada olacak þekilde ilk 10 kayýdý gösteren sorguyu oluþturunuz.
-- Cevap 4 --
--Select Top(10) OrderID, OrderDate, ShippedDate, CustomerID, Freight from orders order by Freight desc

--  Soru  5 -- 
-- "Customers" tablosundan tüm "CustomerID" bilgilerini küçük harfle gösteren ve bunu "Kimlik Tnm" olarak yeniden adlandýran bir sorgu oluþturunuz.
--  Cevap 5 --
--Select LOWER (CustomerID) as ' Kimlik Tnm' from Customers

--  Soru  6 -- 
-- "Suppliers" tablosundan Country bilgisi azalan sýrada, CompanyName artan sýrada olacak þekilde CompanyName, Fax, Phone, Country bilgilerini döken bir sorgu oluþturunuz.
--  Cevap 6 --
--Select CompanyName, Fax, Phone ,Country from Suppliers  order by Country DESC , CompanyName ASC

--  Soru  7 -- 
-- "Customers" tablosundan yalnýzca 'Buenos Aires'ten gelen tüm müþterilerin CompanyName, ContactName'lerini gösteren bir sorgu oluþturunuz.
--  Cevap 7 --
--Select CompanyName,ContactName,City From Customers where City = 'Buenos Aires'

--  Soru  8 -- 
-- "Products" tablosundan stokta olmayan ürünlerin ProductName, UnitPrice, QuantityPerUnit bilgilerini gösteren bir sorgu oluþturunuz.
--  Cevap 8 --
--Select ProductName, UnitPrice, QuantityPerUnit,UnitsInStock From Products where UnitsInStock=0

--  Soru  9 -- 
-- Almanya, Meksika, Ýspanya'dan olmayan tüm müþterilerin(Customers) CompanyName,Address,City,Country bilgilerini gösteren bir sorgu oluþturunuz.
--  Cevap 9 --
--Select CompanyName,Address,City,Country from Customers where  Country<>'Germany'and Country<>'Mexico'and Country<>'Spain'

--  Soru  10 -- 
-- 21 Mayýs 1996'da verilen tüm sipariþlerin OrderDate,ShippedDate, CustomerID ve Freight bilgilerini gösteren bir sorgu oluþturunuz.
--  Cevap 10 --
--Select OrderDate,ShippedDate, CustomerID,Freight from Orders where OrderDate='1996-08-21'   *** 21 Mayýs 1996 da verilmiþ bir Sipariþ yok ***

--  Soru  11 -- 
-- Amerika Birleþik Devletleri'nden olmayan çalýþanlarýn FirstName,LastName,Country bilgilerini gösteren bir sorgu oluþturunuz.
--  Cevap 11 --
--Select FirstName,LastName,Country from Employees where not Country='USA'

--  Soru  13 -- 
-- Baþ harfi A veya B ile baþlayan þehirlerdeki müþterilerin City, CompanyName, ContactName bilgilerini gösteren bir sorgu oluþturunuz.
--  Cevap 13 --
--Select  City, CompanyName, ContactName from Customers where City like 'A%' or City like 'B%'

--  Soru  14 -- 
-- Navlun(Freight) maliyetinin 500 dolardan fazla olduðu tüm sipariþleri(Orders) gösteren bir sorgu oluþturunuz.
--  Cevap 14 --
--Select * From Orders where Freight>500

--  Soru  15 -- 
-- Faks numarasý olmayan tüm müþterilerin CompanyName, ContactName bilgilerini gösteren bir sorgu oluþturunuz.
--  Cevap 15 --
--Select  CompanyName, ContactName, Fax from Customers where Fax IS NULL

--  Soru  16 -- 
-- Kimseye rapor vermeyen(ReportsTo alaný) çalýþanlarýn FirstName, LastName bilgilerini gösteren bir sorgu oluþturunuz.
--  Cevap 16 --
--Select  FirstName, LastName,ReportsTo from Employees where ReportsTo IS NULL

--  Soru  17 -- 
-- Adýnda L harfi olan þehirlerdeki müþterilerin City,CompanyName,ContactName bilgilerini ContactName bilgisi azalacak þekilde gösteren bir sorgu oluþturunuz.
--  Cevap 17 --
--Select City,CompanyName,ContactName from Customers where City like '%L%' Order By ContactName desc

--  Soru  18 -- 
-- 1950'lerde doðan çalýþanlarýn(Employee tablosu) FirstName, LastName, BirthDate bilgilerini gösteren bir sorgu oluþturunuz.
--  Cevap 18 --
--Select FirstName, LastName, BirthDate from Employees  where (YEAR(BirthDate) between 1950 and 1959)

--  Soru  19 -- 
-- Exotic Liquids, Specialty Biscuits Ltd., Escargots Nouveaux tedarikçileri tarafýndan saðlanan tüm ürünlerin tedarikçi kimliðine göre sýralanmýþ olarak 
-- SupplierID, ProductName ve CompanyName bilgilerini gösteren sorgu oluþturunuz.
--  Cevap 19 --
--Select s.SupplierID, p.ProductName , CompanyName  from Suppliers s  INNER JOIN Products p on s.SupplierID=p.SupplierID 
--where CompanyName='Exotic Liquids' or CompanyName='Specialty Biscuits, Ltd.'  or CompanyName='Escargots Nouveaux' order by SupplierID

--  Soru  20 -- 
-- "Seattle" þehrindeki çalýþanlarýn LastName,FirstName bilgilerini gösteren bir sorgu oluþturunuz
--  Cevap 20 --
--Select LastName,FirstName from Employees where City='Seattle'

--  Soru  21 -- 
-- Madrid dýþýnda Meksika'daki herhangi bir þehirdeki veya Ýspanya'daki diðer þehirlerdeki tüm müþterilerin CompanyName,ContactName, City ve Country bilgilerini gösteren bir sorgu oluþturunuz.
--  Cevap 21 --
--Select CompanyName,ContactName, City , Country from Customers where Country='Mexico' or Country='Spain' and City<>'Madrid'

--  Soru  22 -- 
-- Ýkinci karakterinde A harfi olmayan tüm müþterilerin ContactName bilgisini azalan sýrada gösteren bir sorgu oluþturunuz.
--  Cevap 22 --
--Select ContactName from Customers where not ContactName  like '_a%' order by ContactName desc

--  Soru  23 -- 
-- Orders tablosundan Freight toplamý 200$'dan büyük olan bilgilerin CustomerID ve Freight toplamýný gösteren bir sorgu oluþturunuz.(ÝPUCU: GroupBy ve Having deyimi kullanmanýz gerekecek.)
--  Cevap 23 --
--Select CustomerID,SUM(Freight) as 'Freight Toplam' From Orders group by CustomerID having SUM(Freight)>200

--  Soru  24 -- 
-- Çalýþanlar tablosundan Çalýþan Kimliði, çalýþanýn Soyadý ve Adý ve yönetici olarak rapor verdikleri kiþinin Soyadý ve Adý'ný gösteren bir sorgu oluþturunuz. (ÝPÝNUCU : Self Join)
--  Cevap 24 --
--Select e1.EmployeeID,e1.FirstName+' '+ e1.LastName as 'Calisan Ad Soyad',e2.FirstName+' '+e2.LastName as 'Yönetici Ad Soyad' from Employees e1
--INNER JOIN Employees e2 on e1.ReportsTo=e2.EmployeeID

--  Soru  25 -- 
-- Tüm ürünlerin(Products) BirimFiyatýný(UnitPrice) ortalama(AVG), minimum(MIN) ve maksimum(MAX) deðerlerini OrtalamaFiyat, MinimumFiyat,MaksimumFiyat olarak gösteren bir sorgu oluþturunuz.
--  Cevap 25 --
--Select AVG(UnitPrice) as 'Ortalama Fiyat',MIN(UnitPrice) as 'Minimum Fiyat', MAX(UnitPrice) as 'Maximum Fiyat' From Products

--  Soru  26 -- 
-- "Categories" tablosundan CategoryName bilgisinin ilk 5 karakterini getiren(LEFT fonksiyonu) ve KýsaBilgi olarak yeniden adlandýrýlan bir sorgu oluþturunuz.
--  Cevap 26 --
--Select Left(CategoryName,5) as 'Kýsa Bilgi' From Categories

--  Soru  27 -- 
-- Deniz ürünleri kategorisindeki tüm ürünlerden ÞirketAdý ve ÜrünAdýný listeleyen bir sorgu oluþturunuz.
--  Cevap 27 --
--Select s.CompanyName,p.ProductName,c.CategoryName from Categories c 
--Inner join Products p on  c.CategoryID=p.CategoryID
--Inner join Suppliers s on s.SupplierID=p.SupplierID where CategoryName='Seafood'

--  Soru  28 -- 
-- CategoryID'si 5 olan tüm ürünlerden CategoryID, CompanyName ve ProductName bilgilerini listeleyen bir sorgu oluþturunuz.
--  Cevap 28 --
--Select c.CategoryID, CompanyName, ProductName From Categories c
--Inner join Products p on  c.CategoryID=p.CategoryID
--Inner join Suppliers s on s.SupplierID=p.SupplierID where c.CategoryID=5

--  Soru  29 -- 
-- ContactTitle alanýnda 'Owner' geçen müþterilerimin þirket adlarýný listeleyiniz.
--  Cevap 29 --
--Select CompanyName ,ContactTitle from Customers where ContactTitle='Owner'

--  Soru  30 -- 
-- 50$ ile 100$ arasýnda bulunan tüm ürünlerin adlarý ve fiyatlarýný listeleyiniz.
--  Cevap 30 --
--Select ProductName,UnitPrice From Products where UnitPrice between 50 and 100 order by UnitPrice

--  Soru  31 -- 
-- 1 temmuz 1996 ile 31 Aralýk 1996 tarihleri arasýndaki sipariþlerin (Orders), SipariþID (OrderID) ve SipariþTarihi (OrderDate) bilgilerini listeleyiniz.
--  Cevap 31 --
--Select OrderID,OrderDate From Orders where OrderDate between '1996-07-01' and '1996-12-31'

--  Soru  32 -- 
-- 1997 yýlýna ait satýþlarý(Orders) listeleyiniz.
--  Cevap 32 --
--Select * From Orders Where YEAR(OrderDate) between 1997 and 1997

--  Soru  33 -- 
-- 1997 Ocak ayýna ait Londra ve Fransaya yapýlan satýþlarý listeleyiniz.
--  Cevap 33 --
--Select * From Orders Where ShipCountry='France' or ShipCity='London'  and OrderDate between '1997-01-01' and  '1997-01-31'  ..

--  Soru  34 -- 
-- 1955-1963 yýllarý arasýnda doðmuþ olan 3 Amerikalý olmayan çalýþaný listeleyiniz.(Employee tablosu)
--  Cevap 34 --
--Select *  from Employees where Country<>'USA' and Year(BirthDate) between 1955 and 1963

--  Soru  35 -- 
-- 1997 yýlýnýn ilk 6 ayýnda Londra ya yapýlan satýþlarý listeleyiniz.
--  Cevap 35 --
--Select * From Orders where ShipCity='London'  and OrderDate between '1997-01-01' and '1997-06-30' 

--  Soru  36 -- 
-- 1998 yýlýnda gönderilemeyen sipariþleri görüntüleyiniz.(Orders)
--  Cevap 36 -- 
--Select * From Orders Where YEAR(OrderDate)=1998 and ShippedDate IS NULL

--  Soru  37 -- 
-- Deniz ürünlerinden ve stoklarda 15 ten çok olan ürünleri gösteriniz.
--  Cevap 37 -- 
--Select * From Products where CategoryID=8 and UnitsInStock>15

--  Soru  38 -- 
-- Ülkesi (Country) Spain veya France veya Germany olan müþterileri listeleyiniz.
--  Cevap 38 -- 
--Select * From Customers where Country='Spain' or Country='France' or Country='Germany' order by Country

--  Soru  39 -- 
-- Ülkesi (Country) Spain veya France veya Germany olmayan müþterileri listeleyiniz.
--  Cevap 39 -- 
--Select * From Customers where Country<>'Spain' and Country<>'France' and Country<>'Germany' 

--  Soru  40 -- 
-- Amerika’da yaþamayan çalýþanlarý listeleyiniz.
--  Cevap 40 --
--Select * From Employees Where not  Country='USA'

--  Soru  41 -- 
-- En Pahalý 5 ürünü listeleyiniz.
--  Cevap 41 --
--Select  Top(5)* from Products order by UnitPrice desc

--  Soru  42 -- 
-- 1996 yýlýnýn 12 ayýnda yapýlan satýþlardan nakliye(freight) ücretlerinden en pahalý 3 tanesini gösteriniz
--  Cevap 42 --
--Select TOP(3)* From Orders where OrderDate between '1996-12-01' and '1996-12-30' order by Freight desc

--  Soru  43 -- 
-- Ürünlerimi en pahalýdan en ucuza doðru sýralasýn, ama stoklarýný küçükten-büyüðe doðru göstersin sonuç olarak ürün adý ve fiyatýný göstersin
--  Cevap 43 --
--Select ProductName,UnitPrice From Products order by UnitPrice desc , UnitsInStock asc

--  Soru  44 -- 
-- 1 Numaralý kategoride kaç ürün vardýr.
--  Cevap 44 --
--Select * From Products where CategoryID=1

--  Soru  45 -- 
-- Kaç farklý ülkeye satýþ yapýlmaktadýr. Bunlarý listeleyiniz.
--  Cevap 45 --
--Select DISTINCT ShipCountry  From Orders 

--  Soru  46 -- 
-- Tüm ciro miktarý ne kadardýr?
--  Cevap 46 --
--Select SUM(UnitPrice*Quantity) as ' CÝRO ' From [Order Details] 

--  Soru  47 -- 
-- Ortalama Ürün Fiyatý nedir?
--  Cevap 47 --
--Select AVG(UnitPrice) as 'Ortalama Ürün Fiyatý' from Products 

--  Soru  48 -- 
-- En pahalý ürünün adý ve fiyatý nedir?
--  Cevap 48 --
--Select TOP(1) ProductName,UnitPrice From Products order by UnitPrice desc

--  Soru  49 -- 
-- En ucuz ürünün adý ve fiyatý nedir?
--  Cevap 49 --
--Select TOP(1) ProductName,UnitPrice From Products order by UnitPrice 

--  Soru  50 -- 
-- En az kazandýran sipariþin tutarý nedir?
--  Cevap 50 --
--Select TOP(1)* From [Order Details] where Quantity=(Select Top (1)Quantity from [Order Details] order by Quantity ) order by UnitPrice

--  Soru  51 -- 
-- Hangi ürün kategorisinde kaç adet ürün vardýr. Ýsimleriyle ve adetleriyle birlikte belirtiniz.
--  Cevap 51 --
--Select CategoryName,ProductName From Categories Inner Join Products on Products.CategoryID=Categories.CategoryID order by CategoryName 

--  Soru  52 -- 
-- 500 adetden fazla satýlan ürünler nedir?    ** 500 adetten fazla satýlan ürün bulamadým **
--  Cevap 52 --
--Select  OrderID,SUM(Quantity)+p.UnitsOnOrder as 'Toplam Siparis',p.ProductName From [Order Details] od
--Inner Join Products p on p.ProductID=od.ProductID
--group by ProductName,UnitsOnOrder ,OrderID having Sum(Quantity)>50 order by [Toplam Siparis] desc

--  Soru  53 -- 
-- Hangi sipariþi hangi müþteri vermiþ?
--  Cevap 53 --
--Select OrderID,c.ContactName,OrderDate From Orders o Inner join Customers c on  o.CustomerID=c.CustomerID

--  Soru  54 -- 
-- En fazla sipariþ alan çalýþaným kimdir?
----  Cevap 54 --
Select (e.FirstName +' '+ e.LastName) as 'Çalisan', sum(od.Quantity) as 'ADET', e.EmployeeID from Products p
Inner Join [Order Details] od on p.ProductID=od.ProductID
Inner Join Orders o on od.OrderID=o.OrderID
Inner Join Employees e on o.EmployeeID=e.EmployeeID
group by e.FirstName +' '+ e.LastName,p.ProductName,e.EmployeeID
order by ADET desc