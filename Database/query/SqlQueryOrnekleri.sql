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

--					SubQuery  Alt Sorgu				--

--Tedarikçilerimin olduðu ülkelerdeki müþtreliremiz kimler  ?   // Mesela benim kendim eklemiþ olduðum KBIL þirketi türkiyede yer alýyor ve o þirket Suppliers'da yer almadýðý için gelmedi..
--Select * From Customers where Country in ( Select Country from Suppliers)

-- Ürünler tablosundan fiyat bilgisi 100-200 arasýnda olan ama ürün kategorisi 1,2,3  dýþýnda olan 

--select * from Products where (UnitPrice between 100 and 200)  (select CategoryID from Products where CategoryID not in (1,2,3))

--						LIKE KOMUTU					--

--Select * From Customers where CompanyName like 'a%'  -- Baþ harfi a ile baþlayan 
--Select * From Customers where CompanyName like '_a%'  -- Ýkinci harfi a ile baþlayan
--Select * From Customers where CompanyName like '%or%'  -- Ýçerisinde or bulunduran
--Select * From Customers where CompanyName like '%a'  -- Sonu a ile biten
--Select * From Customers where CompanyName like '%a_'  -- Sondan ikinci harfi a ile biten

-- Örnek : CustomerID alanýnda baþ harfi c ile baþlayan müþteriler.. 
--Select * From Customers where CustomerID like 'C%'

-- Örnek : ContactName alanýnda mas karakteri olan müþteriler..
--Select * From Customers where ContactName like '%mas%'

-- Örnek : CompanyName alanýnda ikinci harfi r olan þirketler..
--Select * From Customers where CompanyName like '_r%'

-- Örnek : CompanyName alanýnda a ile baþlayan ve en az üç karakter uzunlugundaki þirketler..
--Select * from Customers where CompanyName like 'a___%'

-- Örnek : ContactName alanýnda a ile baþlayýp o ile biten þirketler..
--Select * From Customers where ContactName like 'a%o'


--						UNION ALL KOMUTU					--

-- Örnek : Müþterilerin ve Tekdarikçilerin olduðu þehirleri tek bir tabloda listelemek..
--Select City From Customers UNION ALL Select City From Suppliers order by city



--						INSERT INTO KOMUTU					--
--Insert into Customers (CustomerId,CompanyName,ContactName,Address,City,PostalCode,Country) values ('VGS','Vatan Gaming Store','Muhammet Sefer Bayram','Fevzi Çakmak Mah. No:122/4 Pendik','Istanbul',34890,'Turkey')
--Update Customers set ContactTitle='Owner',Region='TR' where CustomerID='VGS'
--Select * From Customers where City='Istanbul'

-- NOT : Eðer herhangi bir þekilde kolon isimleri belirtilmemiþse mutlaka values deðerleri tablodaki kolon sayýsý kadar olmalýdýr..

--Insert into Customers values ('FB','Fenerbahçe','Aziz Yýldýrým','Owner','Kadýkoy Sukru Saracoglu Stadyumu','Istanbul','TR',34788,'Turkey','555-555-1907','555-555-1907')
--Select * From Customers where City='Istanbul' 


--						DELETE KOMUTU					--
--Delete from Customers where CustomerID='FB'
--Select * From Customers where City='Istanbul'


--						INNER JOIN KOMUTU					--
-- Örnek : Orders Tablosundan varolan sipariþin müþterileri kimlermiþ öðrenelim  ..
--Select OrderId,Orders.CustomerID,Customers.CompanyName,Customers.Phone from Orders Inner join Customers ON orders.CustomerID=Customers.CustomerID
--Select *,Shippers.CompanyName From Orders Inner Join Shippers On orders.ShipVia=Shippers.ShipperID 

-- Örnek : Orders tablosundan varolan sipariþlerin müþterileri adlarý ve hangi taþýmacý taþýyor ? 
--Select Orders.CustomerID,ShipName,Shippers.CompanyName as 'Tasima Sirketi' ,Shippers.Phone as 'Telefon' , (Employees.FirstName +' '+Employees.LastName) as 'Satýcý' from Orders Inner Join Shippers on Orders.ShipVia=Shippers.ShipperID  Inner Join Employees On Orders.EmployeeID=Employees.EmployeeID


-- Örnek : Çýkýþ Tablosu : Products , 
--Ýstenen : Ýlgili ürünümü (Chai) acaba hangi tedarikçi (adýyla) (Tablo:Suppliers) saðlamaktadýr. Ve ürünümün kategorisi nedir adý/tanýmý)

--Select ProductID,ProductName,UnitPrice,UnitsInStock,Suppliers.CompanyName as 'Satýcý Tedarikci' , Categories.CategoryName as ' Ürün Kategorisi' from Products  inner join Suppliers on Products.SupplierID=Suppliers.SupplierID
--inner join Categories on Products.CategoryID=Categories.CategoryID


-- Ýstenen : Sipariþler tablosundan hareketle , o sipariþin hangi tür kategoride olduðunu listeleyiniz.. Ýlgili tablolar : OrderDetails, Products ve Categories

--Select OrderID,Quantity,Products.ProductName,Categories.CategoryName from [Order Details] inner join Products on Products.ProductID=[Order Details].ProductID
--inner join Categories on Categories.CategoryID=Products.CategoryID


--						SELF JOIN KOMUTU					--  Kendi üzerinde Join   

--Select (E1.TitleOfCourtesy + E1.FirstName + ' ' + E1.LastName) as EmpName,E1.Title, (E2.TitleOfCourtesy + E2.FirstName + ' ' + E2.LastName) as ReportsToWho,E2.Title from Employees E1, Employees E2 where E1.ReportsTo = E2.EmployeeID order by E1.ReportsTo


--						LEN FONKSÝYONU					--

--Select ProductName,Len(ProductName) as 'Uzunluk' from Products    -- Ürün adlarýnýn uzulugunu getir ( bosluklar dahil sayar )
--Select ProductName as 'Uzunluk' from Products  where Len(ProductName)<10 order by Len(ProductName) desc -- Ürün adlarý karakter sayýsý 10 dan küçük olanlarý listeler..


--						SubString FONKSÝYONU					--

--Select ProductName , SUBSTRING(ProductName,2,5) as 'SONUC' From Products   -- Ürün adýnýnýn 2. karakterinden itibaren 5 karakteri al ..


--						LEFT/RIGHT FONKSÝYONU					--

--Select ProductName , LEFT(ProductName,5) as 'SONUC' From Products -- Ürün adýnýn solundan 5 karakter al..
--Select ProductName , RIGHT(ProductName,6) as 'SONUC' From Products  --  Ürün adýnýn saðýndan 6 karakter al..

--						UPPER/LOWER FONKSÝYONU					--

--Select ProductName , UPPER(ProductName) as 'SONUC' From Products  -- Ürün Adýný Komple Büyük Harf'e çevirir..
--Select ProductName , LOWER(ProductName) as 'SONUC' From Products  -- Ürün Adýný Komple Küçük Harf'e çevirir..

-- Örnek : ProductName'in sadece ilk karakteri büyük diðer karakterleri küçük yap..

--Select ProductName,substring(ProductName,1,1) + Lower(SUBSTRING(ProductName,2,50)) from Products  


--						TRIM / LTRIM / RTRIM FONKSÝYONU					--

-- TRIM = Tüm Bosluklarý Siler    LTRIM = Soldaki Bosluklarý Siler   RTRIM = Sagdaki Bosluklarý Siler
--Select TRIM('    a      MFS   a   ' )


--						CONVERT FONKSÝYONU					--

--Select Convert(int,50) * 20  -- String gelen deðeri iþleme sokmak istiyorsak int'e çevirip sonra iþleme sokmak için..


--						CAST FONKSÝYONU					--


--Select Cast('100'as int) /  50    -- Direk Ýnte Çevirir gelen deðeri


--						CONCAT FONKSÝYONU					--
-- String Birleþtirme..

--Select CONCAT ('Ben ','Muhammed Ferit Simsek ','Yazýlým Ogrencisiyim') as 'Kisisel Bilgiler',


--						CASE FONKSÝYONU					--
-- Bir koþul atayýp onun oluþtuðunda yeni tabloya yazýlacak þeyleri belirtiyoruz..

--Select OrderID,Quantity ,
--case 
--when Quantity>30 then 'Bu deðer 30 dan büyük' 
--when Quantity=30 then 'bu deðer 30' 
--else 'bu deðer 30 dan küçük' 
--end as 'Deðer Kontrol' from [order details]


--						SUM FONKSÝYONU					--

--Select Sum(Quantity) from [Order Details]  -- OrderDetails'deki Quantitylerin toplamý
--Select Sum(UnitPrice) from [Order Details]   -- OrderDetails'deki Fiyatlarýn toplamý

--Select [Order Details].ProductID, Products.ProductName, 
--Max([Order Details].UnitPrice)
--from [Order Details]  inner join Products
--ON [Order Details].ProductId=Products.ProductId 
--Group By  [Order Details].ProductID, Products.ProductName, 
--[Order Details].UnitPrice
--having [Order Details].UnitPrice=MAX([Order Details].UnitPrice)  

--Select Top 1 [Order Details].ProductID,Products.ProductName,[Order Details].UnitPrice
--from [Order Details] inner join Products on Products.ProductID=[Order Details].ProductID 
--group by [Order Details].ProductID, [Order Details].UnitPrice,Products.ProductName
--having [Order Details].UnitPrice=Max([Order Details].UnitPrice)
--order by [Order Details].UnitPrice desc


--						DECLARE FONKSÝYONU					--
-- Sql Deðiþken tanýmlama komutudur..


--DECLARE @sayi1 int -- deðiþkenin adý sayi1 , tipi de int
--DECLARE @ad varchar(15) -- deðiþkenin adý ad , tipi de varchar
--DECLARE @soyad varchar(25) -- deðiþkenin adý ad , tipi de varchar
--DECLARE @yas int 


--SET @sayi1=5
--PRINT 'Girdiðiniz Sayý : ' + CONVERT (nvarchar(20),@sayi1)
--SET @ad='Muhammed Ferit'  SET @soyad='Simsek' SET @yas=29
--SELECT @ad as Ad,@soyad as Soyad , @yas as Yas

-- FirstName , LastName ve Title isminde degiskenler tanýmlanýyor ve deðerleri tablodan alýnýp atanýyor ve ekrana yazdýrýlýyor..

--DECLARE @FirstName nvarchar(20) , @LastName nvarchar(20) , @Title nvarchar(25)
--Select FirstName,LastName,Title From Employees where EmployeeID=7
--Select @FirstName = FirstName ,@LastName= LastName , @Title= Title from Employees where EmployeeID=7;
--print 'FirstName Deðeri:'; print @FirstName;
--print 'LastName Deðeri:'; print @LastName;
--print 'Ünvan :' print @Title

-- Workout : Exotic Liquids þirketinin uzun Adresini ekrana yazýnýz.. Uzun adres = adres + þehir + ülke

--DECLARE @Adres nvarchar(30) , @Ulke nvarchar(20) , @Sehir nvarchar(20) , @Sirket nvarchar(20) 
--select Address,Country,City,CompanyName from Suppliers where SupplierID=1
--Select @Adres=Address , @Ulke=Country , @Sehir=City , @Sirket=CompanyName from Suppliers where SupplierID=1
--print Concat( @Sirket ,' Sirketinin Acik  Adresi : ',@Adres,' ',@Sehir,'/',@Ulke)

--Diðer bir yol.

--Declare @SirketAdý nvarchar(30) , @AcikAdres nvarchar(50)
--Select @SirketAdý=CompanyName , @AcikAdres= Address+ ' ' +City+'/'+Country from Suppliers where SupplierID=1
--print @SirketAdý + ' Sirketinin Acik Adresi : ' + @AcikAdres 



--						FONKSÝYONLAR					--

--Create Function fonksiyon_adi

---- Parametrelerin Eklendiði Yer
--(@param1 veritürü, @param2 veritürü)
--Returns geri_dönecek_deðerin_veritürü
--AS
--Begin 
---- Önce geri dönecek deðer tanýmlanýr.
--Declare @donen veritürü
----Sql ifadeleri dönen parametreye deðer aktarýmý gibi iþlemler
--return @donen
--end


-- Örnek : Verilen bir tarih bilgisine göre kisinin yasýný hesaplayan bir fonksiyon (Scalar function) tanýmlayalým..

--Create Function funcYasHesapla (@tarih Date) 
--returns int 
--as begin 
--	declare @yas int  
--	set @yas= YEAR(GETDATE())-YEAR(@tarih)     -- Year ve GetDate sistem fonksiyonlarý
--	return @yas  
--end

-- Hadi Fonksiyonumuzu Kullanalým.. 

--Select dbo.funcYasHesapla('06.06.1993') as 'Yas'

-- Örnek Çalýþma --
-- Kullanýlacak tablolar Employess,Orders,Order Details
--Ýstenen ; EmployeeID deðeri verilen bir personelin ne kadar satýþ yaptýðýný listeleyen fonksiyonu hazýrlayýnýz..


--Create function funcSatisHesapla(@employeeId int) 
--returns int
--as begin
--declare @SatisMiktari int
--Select @SatisMiktari=Sum(od.Quantity) from  Employees Emps  
--inner join Orders o on Emps.EmployeeID=o.EmployeeID   
--inner join [Order Details] od on o.OrderID=od.OrderID  
--where Emps.EmployeeID=@employeeId group by Emps.EmployeeID
--return @SatisMiktari
--end

-- Fonksiyonu Kullanma Aþamasý..
--Select dbo.funcSatisHesapla(3) as 'TOPLAM SATIS'

-- Örnek : Deðeri(ID) verilmiþ olan bir çalýþanýn hizmet verdiði bölge tanýmýný getiren bir fonksiyon yazýnýz..
-- Çýkýþ þöyle olacak Çalýþanýn ID'si,adý,soyadý,bölge ad

--Select e.EmployeeID,FirstName,LastName,r.RegionDescription from Employees e inner join EmployeeTerritories et on e.EmployeeID=et.EmployeeID 
--inner join Territories t on et.TerritoryID=t.TerritoryID inner join Region r on t.RegionID=r.RegionID where e.EmployeeID=3


--Create function funcBolgeGetir6(@calisanID int)
--returns varchar(50)
--as begin
--declare @BolgeBilgi varchar(50)
--Select @BolgeBilgi =r.RegionDescription from Employees e 
--inner join EmployeeTerritories et on e.EmployeeID=et.EmployeeID 
--inner join Territories t on et.TerritoryID=t.TerritoryID 
--inner join Region r on t.RegionID=r.RegionID 
--where e.EmployeeID=@calisanID 
--group by e.EmployeeID 
--return @BolgeBilgi
--end




Select EmployeeID,FirstName,LastName,dbo.funcBolgeGetir6(3) as 'Bölge' from Employees where EmployeeID=3



