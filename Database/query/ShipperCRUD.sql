ALTER PROCEDURE ShipperCRUD
	@OpCode INT,
    @ShipperID INT = NULL,
    @CompanyName NVARCHAR(40),
    @Phone NVARCHAR(24)
AS
BEGIN
    SELECT * FROM Shippers

    IF @OpCode = 0 -- Insert i�lemi..
    BEGIN
        INSERT INTO Shippers (CompanyName, Phone)
        VALUES (@CompanyName, @Phone)
    END
    ELSE IF @OpCode = 1 -- Update i�lemi..
    BEGIN
        UPDATE Shippers
        SET CompanyName = @CompanyName,
            Phone = @Phone
        WHERE ShipperID = @ShipperID
    END
    ELSE IF @OpCode = 2 -- Delete i�lemi..
    BEGIN
        DELETE FROM Shippers
        WHERE ShipperID = @ShipperID
    END
    SELECT * FROM Shippers
END


--EXEC ShipperCRUD 0,NULL,'ChemFleet','(536) 666-6666' -- Yeni Kay�t Ekleme
--EXEC ShipperCRUD 1,1,'ChemFleet','(536) 666-6666' -- G�ncelleme
--EXEC ShipperCRUD 2,4,'ChemFleet','(536) 666-6666' -- Silme