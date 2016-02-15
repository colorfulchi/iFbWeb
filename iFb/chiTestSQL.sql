
select * from foods

use iFoodBoxDatabase
drop table foods

CREATE TABLE [dbo].[foods] (
    [foodID]       INT           IDENTITY (1, 1) NOT NULL,
    [foodType]     NVARCHAR (10) NULL,
    [foodName]     NVARCHAR (20) NULL,
    [foodCount]    INT           NULL,
    [foodDate]     DATE          NULL,
    [foodDeadline] DATE          NULL,
    [foodFreezing] INT           NULL,
    [foodalarmDay] INT           NULL,
	[foodPicPath]  NVARCHAR (50) NULL,
    [iFoodBoxID]   INT           NULL,
    CONSTRAINT [PK_foods] PRIMARY KEY CLUSTERED ([foodID] ASC)
);


INSERT INTO foods(foodType,foodName,foodCount,foodDate,foodDeadline,foodFreezing,foodalarmDay,foodPicPath,iFoodBoxID)
     VALUES(N'水果類',N'草莓',2,'2016/2/12','2016/2/18',0,1,'testf1.png',1)