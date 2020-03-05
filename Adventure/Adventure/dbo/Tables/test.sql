CREATE TABLE [dbo].[test] (
    [id]        INT          NULL,
    [fname]     VARCHAR (50) NULL,
    [lname]     VARCHAR (50) NULL,
    [full_name] AS           ([fname]+[lname]) PERSISTED
);

