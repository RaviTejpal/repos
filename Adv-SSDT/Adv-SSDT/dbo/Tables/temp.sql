CREATE TABLE [dbo].[temp] (
    [id]   INT          NULL,
    [name] VARCHAR (40) NULL,
    INDEX [temp_index] NONCLUSTERED HASH ([name]) WITH (BUCKET_COUNT = 16)
)
WITH (DURABILITY = SCHEMA_ONLY, MEMORY_OPTIMIZED = ON);

