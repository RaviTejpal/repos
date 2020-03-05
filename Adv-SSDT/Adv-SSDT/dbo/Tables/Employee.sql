CREATE TABLE [dbo].[Employee] (
    [EmpID]   INT           NOT NULL,
    [EmpName] VARCHAR (500) NULL,
    [DeptID]  INT           NULL,
    PRIMARY KEY CLUSTERED ([EmpID] ASC),
    CONSTRAINT [fk_emp_deptId] FOREIGN KEY ([DeptID]) REFERENCES [dbo].[Dept] ([DeptID])
);


GO
ALTER TABLE [dbo].[Employee] NOCHECK CONSTRAINT [fk_emp_deptId];

