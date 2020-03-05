CREATE PROCEDURE [DBO].[SetProcductCat]
  @ID AS INT ,
  @PurchaseDate AS VARCHAR(50)
  AS
  INSERT INTO  [AdventureWorks2014].[dbo].[Trx](Id,Purchasedate)
  VALUES(@Id,@PurchaseDate )