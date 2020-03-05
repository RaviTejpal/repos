CREATE PROCEDURE Employee_sales (@empid int ,@SalesAmount Money out)
AS
	BEGIN TRY
	IF NOT EXISTS (Select * from HumanResources.Employee  where BusinessEntityID =@empid )
	GOTO tt;
	ELSE
	Select  @SalesAmount =sum(h.SubTotal)   from Sales.SalesOrderHeader h where SalesPersonID =@empid 
	END TRY

	BEGIN CATCH
	
	tt:
	RAISERROR('Employee Does not exists',0,0)
	END CATCH
RETURN 0
