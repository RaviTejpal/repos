CREATE PROCEDURE FindArea
@SquaredParam INT
AS
SELECT *
INTO   #temp
FROM   HumanResources.Employee
WHERE  1 = 2;
INSERT #temp
EXECUTE squareSP @squaredparam;
SELECT *
FROM   #temp;

