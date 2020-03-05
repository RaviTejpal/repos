CREATE PROCEDURE SquareSP
@MyFirstParam INT
AS
SELECT *
FROM   humanresources.employee
WHERE  BusinessEntityID = @MyFirstParam;
RETURN;

