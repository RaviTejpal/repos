CREATE PROCEDURE SquareSP_XML
@MyFirstParam INT, @xmldata XML OUTPUT
AS
SET @xmldata = (SELECT *
                FROM   humanresources.employee
                WHERE  BusinessEntityID = @MyFirstParam
                FOR    XML RAW ('salesbystore'), TYPE);

