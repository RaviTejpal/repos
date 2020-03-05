CREATE TABLE [dbo].[countrynames] (
    [id]         INT           IDENTITY (1, 1) NOT NULL,
    [name]       VARCHAR (100) NULL,
    [population] VARCHAR (100) NULL
);


GO
create trigger [tg_DataCleaningMaintenance__20200106_000000_68b40de9-da20-4472-947e-442b9e6af91b] 
on [dbo].[countrynames] 
for insert, update, delete as begin 
SET XACT_ABORT ON
SET NOCOUNT ON
insert into [tg_DataCleaningMaintenance_PendingInsert__20200106_000000_02628a25-dfd0-4963-83b6-59f199b07e95] ([id],[name])
  select [id],[name] from inserted 

insert into [tg_DataCleaningMaintenance_PendingDelete__20200106_000000_37390335-3768-4b83-9c5d-690c82f13f1b] ([id],[name])
  select [id],[name] from deleted 

exec sys.sp_FuzzyLookupTableMaintenanceInvoke '[FuzzyLookupMatchIndex]' end
GO
EXECUTE sp_addextendedproperty @name = N'DeleteTableName', @value = N'[tg_DataCleaningMaintenance_PendingDelete__20200106_000000_37390335-3768-4b83-9c5d-690c82f13f1b]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'countrynames', @level2type = N'TRIGGER', @level2name = N'tg_DataCleaningMaintenance__20200106_000000_68b40de9-da20-4472-947e-442b9e6af91b';


GO
EXECUTE sp_addextendedproperty @name = N'EtiTableName', @value = N'[FuzzyLookupMatchIndex]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'countrynames', @level2type = N'TRIGGER', @level2name = N'tg_DataCleaningMaintenance__20200106_000000_68b40de9-da20-4472-947e-442b9e6af91b';


GO
EXECUTE sp_addextendedproperty @name = N'InsertTableName', @value = N'[tg_DataCleaningMaintenance_PendingInsert__20200106_000000_02628a25-dfd0-4963-83b6-59f199b07e95]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'countrynames', @level2type = N'TRIGGER', @level2name = N'tg_DataCleaningMaintenance__20200106_000000_68b40de9-da20-4472-947e-442b9e6af91b';

