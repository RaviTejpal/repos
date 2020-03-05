CREATE TABLE [dbo].[product_sparse] (
    [ProductID]   INT                                   NOT NULL,
    [ProductName] NVARCHAR (50)                         NOT NULL,
    [COLOR]       NVARCHAR (15) SPARSE                  NULL,
    [WEIGHT]      DECIMAL (8, 2) SPARSE                 NULL,
    [SELLEndDate] DATETIME SPARSE                       NULL,
    [ProductInfo] XML COLUMN_SET FOR ALL_SPARSE_COLUMNS,
    PRIMARY KEY CLUSTERED ([ProductID] ASC)
);

