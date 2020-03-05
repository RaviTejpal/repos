CREATE TABLE [dbo].[Car] (
    [CarId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]  VARCHAR (100) NULL,
    [Make]  VARCHAR (100) NULL,
    [Model] INT           NULL,
    [Price] INT           NULL,
    [Type]  VARCHAR (20)  NULL,
    PRIMARY KEY CLUSTERED ([CarId] ASC)
);

