CREATE TABLE [dbo].[Parent] (
    [id] INT IDENTITY (1, 1) NOT NULL
);


GO
CREATE TRIGGER Parentins
    ON Parent
    FOR INSERT
    AS BEGIN
           INSERT  Child
           DEFAULT VALUES;
       END

