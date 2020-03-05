CREATE TABLE [dbo].[FuzzyLookupMatchIndex_FLRef_200106_10:40:23_12024_20b3b445-09de-4642-a649-aaedd20f694b] (
    [name]                                                           VARCHAR (100) NULL,
    [id]                                                             INT           NULL,
    [RID_200106_10:40:23_12024_20b3b445-09de-4642-a649-aaedd20f694b] INT           IDENTITY (1, 1) NOT NULL
);


GO
CREATE CLUSTERED INDEX [rid_idx]
    ON [dbo].[FuzzyLookupMatchIndex_FLRef_200106_10:40:23_12024_20b3b445-09de-4642-a649-aaedd20f694b]([RID_200106_10:40:23_12024_20b3b445-09de-4642-a649-aaedd20f694b] ASC);


GO
CREATE NONCLUSTERED INDEX [FuzzyLookupTableMaintenanceRefTableCopyIndex]
    ON [dbo].[FuzzyLookupMatchIndex_FLRef_200106_10:40:23_12024_20b3b445-09de-4642-a649-aaedd20f694b]([RID_200106_10:40:23_12024_20b3b445-09de-4642-a649-aaedd20f694b] ASC, [id] ASC, [name] ASC);

