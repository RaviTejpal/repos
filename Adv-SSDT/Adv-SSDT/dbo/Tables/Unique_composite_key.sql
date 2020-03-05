CREATE TABLE [dbo].[Unique_composite_key] (
    [id]   INT           IDENTITY (1, 1) NOT NULL,
    [name] VARCHAR (100) NULL,
    [age]  INT           NULL,
    CONSTRAINT [idname] UNIQUE NONCLUSTERED ([name] ASC, [age] ASC)
);

