Create function funcBolgeGetir6(@calisanID int)
returns varchar(50)
as begin
declare @BolgeBilgi varchar(50)
Select @BolgeBilgi =r.RegionDescription from Employees e 
inner join EmployeeTerritories et on e.EmployeeID=et.EmployeeID 
inner join Territories t on et.TerritoryID=t.TerritoryID 
inner join Region r on t.RegionID=r.RegionID 
where e.EmployeeID=@calisanID 
group by e.EmployeeID 
return @BolgeBilgi
end


