CREATE PROCEDURE [dbo].[usp_Search_employees]
	@EmployeeID int 
	
AS
Declare @loginid nvarchar(100)
	SELECT @loginid =  E.LoginID  from HumanResources.Employee E where BusinessEntityID =@EmployeeID 
RETURN @loginid
