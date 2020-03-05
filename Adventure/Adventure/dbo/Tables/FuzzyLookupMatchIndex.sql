CREATE TABLE [dbo].[FuzzyLookupMatchIndex] (
    [Token]        NVARCHAR (100)  COLLATE Latin1_General_CS_AS_KS_WS NULL,
    [ColumnNumber] INT             NULL,
    [TokenProp]    INT             NULL,
    [BucketNumber] ROWVERSION      NOT NULL,
    [Freq]         INT             NULL,
    [Rids]         NVARCHAR (4000) NULL
);


GO
CREATE CLUSTERED INDEX [token_idx]
    ON [dbo].[FuzzyLookupMatchIndex]([Token] ASC, [ColumnNumber] ASC, [TokenProp] ASC, [BucketNumber] ASC);

