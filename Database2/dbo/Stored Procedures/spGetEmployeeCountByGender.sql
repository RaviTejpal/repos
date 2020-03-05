CREATE PROCEDURE spGetEmployeeCountByGender
@Gender nvarchar(20),
@EmployeeCount int Output
AS
BEGIN
SELECT @EmployeeCount = COUNT(businessentityid) 
FROM HumanResources.employee 
WHERE Gender = @Gender
--PRINT @employeecount
END