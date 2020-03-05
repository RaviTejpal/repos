CREATE TABLE [dbo].[Employee_Check] (
    [EmpID]   INT           NOT NULL,
    [EmpName] VARCHAR (500) NULL,
    [DeptID]  INT           NULL,
    PRIMARY KEY CLUSTERED ([EmpID] ASC),
    CONSTRAINT [CK__Employee___EmpNa__19CACAD2] CHECK ([empname]='ravi')
);


GO
ALTER TABLE [dbo].[Employee_Check] NOCHECK CONSTRAINT [CK__Employee___EmpNa__19CACAD2];

