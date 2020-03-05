CREATE TABLE [dbo].[temp_primary] (
    [id]   INT          IDENTITY (1, 1) NOT NULL,
    [name] VARCHAR (50) NOT NULL,
    CONSTRAINT [Primary_name] PRIMARY KEY CLUSTERED ([name] ASC)
);

