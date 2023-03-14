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

--					SubQuery  Alt Sorgu				--

--Tedarik�ilerimin oldu�u �lkelerdeki m��treliremiz kimler  ?   // Mesela benim kendim eklemi� oldu�um KBIL �irketi t�rkiyede yer al�yor ve o �irket Suppliers'da yer almad��� i�in gelmedi..
--Select * From Customers where Country in ( Select Country from Suppliers)

-- �r�nler tablosundan fiyat bilgisi 100-200 aras�nda olan ama �r�n kategorisi 1,2,3  d���nda olan 

--select * from Products where (UnitPrice between 100 and 200)  (select CategoryID from Products where CategoryID not in (1,2,3))

--						LIKE KOMUTU					--

--Select * From Customers where CompanyName like 'a%'  -- Ba� harfi a ile ba�layan 
--Select * From Customers where CompanyName like '_a%'  -- �kinci harfi a ile ba�layan
--Select * From Customers where CompanyName like '%or%'  -- ��erisinde or bulunduran
--Select * From Customers where CompanyName like '%a'  -- Sonu a ile biten
--Select * From Customers where CompanyName like '%a_'  -- Sondan ikinci harfi a ile biten

-- �rnek : CustomerID alan�nda ba� harfi c ile ba�layan m��teriler.. 
--Select * From Customers where CustomerID like 'C%'

-- �rnek : ContactName alan�nda mas karakteri olan m��teriler..
--Select * From Customers where ContactName like '%mas%'

-- �rnek : CompanyName alan�nda ikinci harfi r olan �irketler..
--Select * From Customers where CompanyName like '_r%'

-- �rnek : CompanyName alan�nda a ile ba�layan ve en az �� karakter uzunlugundaki �irketler..
--Select * from Customers where CompanyName like 'a___%'

-- �rnek : ContactName alan�nda a ile ba�lay�p o ile biten �irketler..
--Select * From Customers where ContactName like 'a%o'


--						UNION ALL KOMUTU					--

-- �rnek : M��terilerin ve Tekdarik�ilerin oldu�u �ehirleri tek bir tabloda listelemek..
--Select City From Customers UNION ALL Select City From Suppliers order by city



--						INSERT INTO KOMUTU					--
--Insert into Customers (CustomerId,CompanyName,ContactName,Address,City,PostalCode,Country) values ('VGS','Vatan Gaming Store','Muhammet Sefer Bayram','Fevzi �akmak Mah. No:122/4 Pendik','Istanbul',34890,'Turkey')
--Update Customers set ContactTitle='Owner',Region='TR' where CustomerID='VGS'
--Select * From Customers where City='Istanbul'

-- NOT : E�er herhangi bir �ekilde kolon isimleri belirtilmemi�se mutlaka values de�erleri tablodaki kolon say�s� kadar olmal�d�r..

--Insert into Customers values ('FB','Fenerbah�e','Aziz Y�ld�r�m','Owner','Kad�koy Sukru Saracoglu Stadyumu','Istanbul','TR',34788,'Turkey','555-555-1907','555-555-1907')
--Select * From Customers where City='Istanbul' 


--						DELETE KOMUTU					--
--Delete from Customers where CustomerID='FB'
--Select * From Customers where City='Istanbul'


--						INNER JOIN KOMUTU					--
-- �rnek : Orders Tablosundan varolan sipari�in m��terileri kimlermi� ��renelim  ..
--Select OrderId,Orders.CustomerID,Customers.CompanyName,Customers.Phone from Orders Inner join Customers ON orders.CustomerID=Customers.CustomerID
--Select *,Shippers.CompanyName From Orders Inner Join Shippers On orders.ShipVia=Shippers.ShipperID 

-- �rnek : Orders tablosundan varolan sipari�lerin m��terileri adlar� ve hangi ta��mac� ta��yor ? 
--Select Orders.CustomerID,ShipName,Shippers.CompanyName as 'Tasima Sirketi' ,Shippers.Phone as 'Telefon' , (Employees.FirstName +' '+Employees.LastName) as 'Sat�c�' from Orders Inner Join Shippers on Orders.ShipVia=Shippers.ShipperID  Inner Join Employees On Orders.EmployeeID=Employees.EmployeeID


-- �rnek : ��k�� Tablosu : Products , 
--�stenen : �lgili �r�n�m� (Chai) acaba hangi tedarik�i (ad�yla) (Tablo:Suppliers) sa�lamaktad�r. Ve �r�n�m�n kategorisi nedir ad�/tan�m�)

--Select ProductID,ProductName,UnitPrice,UnitsInStock,Suppliers.CompanyName as 'Sat�c� Tedarikci' , Categories.CategoryName as ' �r�n Kategorisi' from Products  inner join Suppliers on Products.SupplierID=Suppliers.SupplierID
--inner join Categories on Products.CategoryID=Categories.CategoryID


-- �stenen : Sipari�ler tablosundan hareketle , o sipari�in hangi t�r kategoride oldu�unu listeleyiniz.. �lgili tablolar : OrderDetails, Products ve Categories

--Select OrderID,Quantity,Products.ProductName,Categories.CategoryName from [Order Details] inner join Products on Products.ProductID=[Order Details].ProductID
--inner join Categories on Categories.CategoryID=Products.CategoryID


--						SELF JOIN KOMUTU					--  Kendi �zerinde Join   

--Select (E1.TitleOfCourtesy + E1.FirstName + ' ' + E1.LastName) as EmpName,E1.Title, (E2.TitleOfCourtesy + E2.FirstName + ' ' + E2.LastName) as ReportsToWho,E2.Title from Employees E1, Employees E2 where E1.ReportsTo = E2.EmployeeID order by E1.ReportsTo


--						LEN FONKS�YONU					--

--Select ProductName,Len(ProductName) as 'Uzunluk' from Products    -- �r�n adlar�n�n uzulugunu getir ( bosluklar dahil sayar )
--Select ProductName as 'Uzunluk' from Products  where Len(ProductName)<10 order by Len(ProductName) desc -- �r�n adlar� karakter say�s� 10 dan k���k olanlar� listeler..


--						SubString FONKS�YONU					--

--Select ProductName , SUBSTRING(ProductName,2,5) as 'SONUC' From Products   -- �r�n ad�n�n�n 2. karakterinden itibaren 5 karakteri al ..


--						LEFT/RIGHT FONKS�YONU					--

--Select ProductName , LEFT(ProductName,5) as 'SONUC' From Products -- �r�n ad�n�n solundan 5 karakter al..
--Select ProductName , RIGHT(ProductName,6) as 'SONUC' From Products  --  �r�n ad�n�n sa��ndan 6 karakter al..

--						UPPER/LOWER FONKS�YONU					--

--Select ProductName , UPPER(ProductName) as 'SONUC' From Products  -- �r�n Ad�n� Komple B�y�k Harf'e �evirir..
--Select ProductName , LOWER(ProductName) as 'SONUC' From Products  -- �r�n Ad�n� Komple K���k Harf'e �evirir..

-- �rnek : ProductName'in sadece ilk karakteri b�y�k di�er karakterleri k���k yap..

--Select ProductName,substring(ProductName,1,1) + Lower(SUBSTRING(ProductName,2,50)) from Products  


--						TRIM / LTRIM / RTRIM FONKS�YONU					--

-- TRIM = T�m Bosluklar� Siler    LTRIM = Soldaki Bosluklar� Siler   RTRIM = Sagdaki Bosluklar� Siler
--Select TRIM('    a      MFS   a   ' )


--						CONVERT FONKS�YONU					--

--Select Convert(int,50) * 20  -- String gelen de�eri i�leme sokmak istiyorsak int'e �evirip sonra i�leme sokmak i�in..


--						CAST FONKS�YONU					--


--Select Cast('100'as int) /  50    -- Direk �nte �evirir gelen de�eri


--						CONCAT FONKS�YONU					--
-- String Birle�tirme..

--Select CONCAT ('Ben ','Muhammed Ferit Simsek ','Yaz�l�m Ogrencisiyim') as 'Kisisel Bilgiler',


--						CASE FONKS�YONU					--
-- Bir ko�ul atay�p onun olu�tu�unda yeni tabloya yaz�lacak �eyleri belirtiyoruz..

--Select OrderID,Quantity ,
--case 
--when Quantity>30 then 'Bu de�er 30 dan b�y�k' 
--when Quantity=30 then 'bu de�er 30' 
--else 'bu de�er 30 dan k���k' 
--end as 'De�er Kontrol' from [order details]


--						SUM FONKS�YONU					--

--Select Sum(Quantity) from [Order Details]  -- OrderDetails'deki Quantitylerin toplam�
--Select Sum(UnitPrice) from [Order Details]   -- OrderDetails'deki Fiyatlar�n toplam�

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


--						DECLARE FONKS�YONU					--
-- Sql De�i�ken tan�mlama komutudur..


--DECLARE @sayi1 int -- de�i�kenin ad� sayi1 , tipi de int
--DECLARE @ad varchar(15) -- de�i�kenin ad� ad , tipi de varchar
--DECLARE @soyad varchar(25) -- de�i�kenin ad� ad , tipi de varchar
--DECLARE @yas int 


--SET @sayi1=5
--PRINT 'Girdi�iniz Say� : ' + CONVERT (nvarchar(20),@sayi1)
--SET @ad='Muhammed Ferit'  SET @soyad='Simsek' SET @yas=29
--SELECT @ad as Ad,@soyad as Soyad , @yas as Yas

-- FirstName , LastName ve Title isminde degiskenler tan�mlan�yor ve de�erleri tablodan al�n�p atan�yor ve ekrana yazd�r�l�yor..

--DECLARE @FirstName nvarchar(20) , @LastName nvarchar(20) , @Title nvarchar(25)
--Select FirstName,LastName,Title From Employees where EmployeeID=7
--Select @FirstName = FirstName ,@LastName= LastName , @Title= Title from Employees where EmployeeID=7;
--print 'FirstName De�eri:'; print @FirstName;
--print 'LastName De�eri:'; print @LastName;
--print '�nvan :' print @Title

-- Workout : Exotic Liquids �irketinin uzun Adresini ekrana yaz�n�z.. Uzun adres = adres + �ehir + �lke

--DECLARE @Adres nvarchar(30) , @Ulke nvarchar(20) , @Sehir nvarchar(20) , @Sirket nvarchar(20) 
--select Address,Country,City,CompanyName from Suppliers where SupplierID=1
--Select @Adres=Address , @Ulke=Country , @Sehir=City , @Sirket=CompanyName from Suppliers where SupplierID=1
--print Concat( @Sirket ,' Sirketinin Acik  Adresi : ',@Adres,' ',@Sehir,'/',@Ulke)

--Di�er bir yol.

--Declare @SirketAd� nvarchar(30) , @AcikAdres nvarchar(50)
--Select @SirketAd�=CompanyName , @AcikAdres= Address+ ' ' +City+'/'+Country from Suppliers where SupplierID=1
--print @SirketAd� + ' Sirketinin Acik Adresi : ' + @AcikAdres 



--						FONKS�YONLAR					--

--Create Function fonksiyon_adi

---- Parametrelerin Eklendi�i Yer
--(@param1 verit�r�, @param2 verit�r�)
--Returns geri_d�necek_de�erin_verit�r�
--AS
--Begin 
---- �nce geri d�necek de�er tan�mlan�r.
--Declare @donen verit�r�
----Sql ifadeleri d�nen parametreye de�er aktar�m� gibi i�lemler
--return @donen
--end


-- �rnek : Verilen bir tarih bilgisine g�re kisinin yas�n� hesaplayan bir fonksiyon (Scalar function) tan�mlayal�m..

--Create Function funcYasHesapla (@tarih Date) 
--returns int 
--as begin 
--	declare @yas int  
--	set @yas= YEAR(GETDATE())-YEAR(@tarih)     -- Year ve GetDate sistem fonksiyonlar�
--	return @yas  
--end

-- Hadi Fonksiyonumuzu Kullanal�m.. 

--Select dbo.funcYasHesapla('06.06.1993') as 'Yas'

--						V�EW					--

--Create view viewEmployees as select * from Employees

--select * from viewEmployees

--Create view viewCustomerDetails as 
--Select CustomerID,CompanyName,ContactName,City,Country from Customers

--select * from viewCustomerDetails
 

 --select * from viewOrderDetails


-- Soru : Notrhwind veri taban�ndaki "Customers" tablosunda CustomerID de�erinin ilk harfi 'A','D','W' ile ba�layana m��teri 
--kay�tlar�ndan sadece 'Mexico' ve  'Germany' deki olanlar�n CompanyName, ContactName ve Phone bilgilerini �lkeye artan s�ral� 
--listeleyen 'CountryContactNames' isimle view'i yarat�n�z.

 --Create view countryContactNames as  Select Top(50) ContactName,Phone,CompanyName From Customers 
 --where (CustomerID like 'A%' or CustomerID like  'D%' or CustomerID  like 'W%')  
 --and (Country='Mexico' or Country ='Germany') order by Country

 -- Di�er Y�ntem : 
 --Create view countryContactNames2 as Select Top 1000 CompanyName,ContactName,Phone,Country from Customers
 --where SUBSTRING(CustomerID,1,1) IN ('A','D','W') and (Country='Germany' or Country='Mexico') Order by Country

 --Select * from countryContactNames

 --Select * from countryContactNames2



 --						TRIGGERS					--


-- Create Trigger trgUpdateStockQuantity 
--on [Order Details]
--after insert
--as
--begin
----Order Details tablosu �zerine bir kay�t yaz�lma durumu geldi�inde �al��acak program sat�rlar�..
--declare @ProductID int, @Quantity smallint
----temporary(ge�ici) tablodan ilgili alanlar� okuyorum.(ProductID,Quantity)
--Select @ProductID=ProductID,@Quantity=Quantity From inserted
----G�ncelleme �ncesi Products tablosundaki UnitsInStock de�erini oku.
--Select ProductID,ProductName,UnitsInStock from Products where ProductID=@ProductID   -- trigger dan �nceki hali..
---- Tabloyu yeni de�erle update etme.
--Update Products
--set UnitsInStock=UnitsInStock-@Quantity -- @ sipari� gelen adedi tutuyor.
--where ProductID=@ProductID
----G�ncellemeden sonra olusan yeni degeri oku..
--Select ProductID,ProductName,UnitsInStock from Products where ProductID=@ProductID -- �r�n�n son stok durumunu g�ster..
--end

--Select * From [Order Details]

--Insert INTO [Order Details] (OrderID,ProductID,UnitPrice,Quantity,Discount) values (10501,1,18,5,0)

-- �rnek :  Kirkland �ehrinde oturan �al��an�m�n yeni ev adresi Ba�da Caddesi No:5 olsun , 
-- bunu yapan trigger'� haz�rlay�n�z.. trigger name : trigAddressChange olsun..

--Create Trigger trigAddressChange2
--on Employees
--after Update
--as begin 
--Declare @ID int,@adres nvarchar(60), @ulke nvarchar(20) , @sehir nvarchar(20)
--set @adres='Bagdat Caddesi No:5'
--set @ulke='Turkey'
--set @sehir='Istanbul'
--Select @ID=EmployeeID from inserted
--Select EmployeeID,Address,Country,City from Employees where EmployeeID=@ID
--Update Employees
--set Address=@adres , Country=@ulke , City=@sehir where EmployeeID=@ID
--Select EmployeeID,Address,Country,City from Employees where EmployeeID=@ID
--end


--Select * From Employees

--Update Employees set Title='T�rkiye Ceosu' where City='Kirkland'

--Update Employees set Title='T�rkiye Ceosu' where City='Redmond'



 --						SUB QUERY					--

 -- �rnek  : Ad� Michael ve Laura olanlar ile ayn� �ehirde ya�ayan �al��anlar�n bilgilerini getiriniz..

 --Select * From Employees where City IN (Select City From Employees where FirstName IN ('Laura' , 'Michael'))

  -- �rnek 2 : �r�n ortalama fiyat�n�n alt�nda fiyata sahip �r�nlerin ad� ve fiyat�n� listeleyen sorguyu yaz�n�z..

  --Select ProductName,UnitPrice from Products where UnitPrice <(Select AVG(UnitPrice) from Products)

 --						STORAGE PROCEDURE					--

 -- �rnek : Customers tablosundaki �ehir bilgerinin adedi azalacak �ekilde City,Adet �eklinde listeleyen bir Sp olu�turunuz.. �ehir Ad� , Adet

 --Create Procedure spCityList
 --as begin
 --Select City,COUNT(City) as Adet from Customers group by City order by Adet desc
 --end

 -- Storage Procedure'i �al��t�rma ..
 --Execute spCityList

 -- �rnek 2 : Orders tablosundan CustomerID'si verilen m��teriye ait sipari�leri listeleyen SP yi haz�rlay�n�z..

 --Create Procedure spCustomerOrders (@CustomerID nchar(5))
 --as begin
 --Select * from Orders where CustomerID=@CustomerID
 --end


  -- Storage Procedure'i �al��t�rma ..
 --Execute spCustomerOrders VINET

 -- �rnek 3 : Order tablosundan CustomerID'si(ilk Harf) verilen m��teriye ait sipari�lerin numaras�n�, sipari� tarihini ve 
 -- bunlara ek olarak m��teri detaylar�n� (CompanyName,Address,City,Country) listeleyen Sp yi Haz�rlay�n�z..

 --Create Procedure spCustomerOrderDetails (@CustomerID nchar(5))
 --as begin
 --Select OrderID,OrderDate,c.CompanyName,c.Address,c.City,c.Country,c.CustomerID from Orders o Inner join Customers c on c.CustomerID=o.CustomerID where Substring(o.CustomerID,1,1)=@CustomerID
 --end

 --EXEC spCustomerOrderDetails  W



  --						STORAGE PROCEDURE IF / ELSSE					--


  -- �rnek : �lkelere g�re �ok basit olarak o �lkede tedarik�i varm� yokmu kontrol edecek . �ki adet parametre alarak yapacak bu i�i.

 -- Create Procedure spSupplierByCountry 
 -- (
 -- @Country1 nvarchar(20) ,
 -- @Country2 nvarchar(20)
 -- )
 -- as begin
	--IF @Country1 IS NOT NULL
	--	BEGIN -- Country1 parametresi dolu gelmi�se a�a��y� �al��t�r..
	--	Select * From Suppliers where Country=@Country1
	--	PRINT '1. Sonu� Setindeki Tedarik�iler : ' + @Country1 + ' �lkesinde Bulunuyorlar..'
	--	END
	--IF @Country2 IS NOT NULL
	--	BEGIN
	--	Select * From Suppliers where Country=@Country2
	--	PRINT '2. Sonu� Setindeki Tedarik�iler : ' + @Country2 + ' �lkesinde Bulunuyorlar..'
	--	END
 -- end

 --Execute spSupplierByCountry Germany,UK

   --						STORAGE PROCEDURE IF EXISTS / NOT EXISTS					--

-- �rnek : 
--IF NOT EXISTS(Select * from Suppliers where Country='USA')
--BEGIN
--PRINT 'Amerika da yerle�ik �irketler var'
--END
--ELSE
--BEGIN
--PRINT 'Amerika da hi� tedarik�imiz yok'
--END

   --						STORAGE PROCEDURE WHILE					--


   -- �rnek : 1 den 10 a kadar olan say�lar� ekrana yazd�r ve bu say�lar�n son toplam�n�da yaz 

--Create Procedure [dbo].[spCounter] as 
--declare @counter int=1 , @toplam int=0;
--while @counter<=10
--begin
--print @counter; -- Counter de�i�keninin o de�erini yazd�r.
--set @toplam= @toplam+@counter
--set @counter=@counter+1; -- Counter'� 1 artt�r ve devam et..
--end
--print 'TOPLAM : '+ Convert (nvarchar (20),@toplam)


--EXEC spCounter

-- �rnek 2 : Olayda bir b�lme i�lemi var . Hata olabilir d���ncesiyle bu hesaplama/i�lem k�sm�n� bir try catch bloklar� aras�na almak
--yoluyla burdaki hatalar�n neler oldugunu gorebiliriz..

--Create Procedure spDivide
--(@a decimal,@b decimal)
--as begin
--declare @c decimal
--begin try -- a�a��daki bolumu dener olmuyorsa c de�eri d��a g�nderilmi� olsun.
--		set @c = @a /@b;
--		PRINT 'Sonu� = ' + Convert(nvarchar(10),@c) 
--	  end try
--	  begin catch
--	  Select 
--	  ERROR_NUMBER() AS ErrorNumber, -- Olu�an hatan�n numaras�/kodu
--	  ERROR_SEVERITY() AS ErrorSeverity, -- Tehlike seviyesi
--	  ERROR_STATE() AS ErrorState, -- Hata durumu
--	  ERROR_PROCEDURE() AS ErrorProcedure, -- Hangi sp de verdi bu hatay�
--	  ERROR_LINE() AS ErrorLine, -- Hatan�n ger�ekle�ti�i sat�r no 
--	  ERROR_MESSAGE() As ErrorMessage; -- Hatan�n detayl� mesaj�
--	  end catch
--end

--Exec spDivide 10,0


   --						CURSOR					--

-- Employees  tablosundaki  FirstName , LastName , Title alanlar�n� aralar�nda bir bo�luk olacak �ekilde birle�tiren sp yi haz�rlay�n�z..

--Create Procedure spEmployeeReport
--as begin
----De�i�kenleri haz�rl�yorum..
--declare @FirstName nvarchar(max), @LastName nvarchar(MAX) , @Title nvarchar(MAX)
---- �ncelikle Employee tablomu ba�tan sonra i�lemden ge�irebilmek i�in asl�nda bir kopyas�n� bellekte Cursor yard�m�yla olusturucam.
---- Asl�nda Cursor'larda bir de�i�ken

--Declare curEmployees CURSOR -- Cursor olu�turuluyor.
--For -- Ne i�in olu�turulacak bu Cursor
--	Select FirstName,LastName,Title from Employees -- Curson'un temsil edece�i veriler
--	OPEN curEmployees -- Cursor a��l�yor. Default olarak ileri y�nl�
--	-- �imdi bu Cursor'un 1. kayd�na ula�mak laz�mki okumaya ba�las�n.. Ayn� andada okudugu veriyi de�i�kenlere aktaral�m..
--	 -- FETCH komutu okuyor/almaya ba�l�yor ve de�i�kenlerimize yerle�tiriyor..
--	FETCH NEXT FROM curEmployees INTO @FirstName,@LastName,@Title 
--	--bir tane sistem de�i�keni var -> Ad� @@FETCH_STATUS "Okuma i�lemini do�ru yapt�mm� kontrol� i�in kullan�l�r.."
--	--��lem ba�ar�l� ise @@FETCH_STATUS de�eri 0(S�f�rd�r) ve ��lem ba�ar�l�d�r..
--	--Bir sonraki kay�tta mevcuttur.
--	WHILE @@FETCH_STATUS=0 -- Yani kay�t varsa gel i�lemini yap
--	BEGIN

--	PRINT CONCAT(@FirstName,' ',@LastName,' ',@Title)
--	-- S�radaki sat�ra ge�mem laz�m o y�zden
--	FETCH NEXT FROM curEmployees INTO @FirstName,@LastName,@Title  -- Bir Sonraki Kay�d� Okuma ve De�i�kenlere Atama..
--	END
--	-- Kay�tlar bitti. �uana kadar ekrana bas�ld� bir�eyler..
--	-- 
--	CLOSE curEmployees -- Close etsem dahi hala bellekte o y�zden bellekten atmam�z laz�m
--	DEALLOCATE curEmployees

--END

Exec spEmployeeReport

