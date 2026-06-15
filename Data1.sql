
Create Database Test_ENV

use Test_ENV

select * from [dbo].[Products]

select * from [dbo].[Test+Environment+Inventory+Dataset]

select DISTINCT PRODUCT_ID from [dbo].[Test+Environment+Inventory+Dataset]

select DISTINCT [Order_Date_DD_MM_YYYY] from [dbo].[Test+Environment+Inventory+Dataset]

select DISTINCT [Availability] from [dbo].[Test+Environment+Inventory+Dataset]

select DISTINCT [Demand] from [dbo].[Test+Environment+Inventory+Dataset]

------------------------------------------------------------------------------

select * from [dbo].[Test+Environment+Inventory+Dataset] as a left join [dbo].[Products] as b on a.Product_ID = b.Product_ID

select a.[Order_Date_DD_MM_YYYY],a.[Product_ID],a.[Availability],a.[Demand], b.Product_name, b.unit_price
from [dbo].[Test+Environment+Inventory+Dataset] 
as a left join [dbo].[Products] as b on a.Product_ID = b.Product_ID


select * into [New_Table] from 
(select a.[Order_Date_DD_MM_YYYY],a.[Product_ID],a.[Availability],a.[Demand], b.Product_name, b.unit_price
from [dbo].[Test+Environment+Inventory+Dataset] 
as a left join [dbo].[Products] as b on a.Product_ID = b.Product_ID) X

select * from New_Table


-----------------------------------------------------------------------------------------------------------------------------------

Create Database Production_Data

Use Production_Data

select * from [dbo].[Prod Env Inventory Dataset]

select * from [dbo].[Products]

---------------------------------------------

select distinct Order_Date_DD_MM_YYYY from [dbo].[Prod Env Inventory Dataset]

select distinct Order_Date_DD_MM_YYYY from [dbo].[Prod Env Inventory Dataset]
where Order_Date_DD_MM_YYYY is null or Order_Date_DD_MM_YYYY = ''

----------------------------------------------

select distinct Product_ID from [dbo].[Prod Env Inventory Dataset]

select distinct Product_ID from [dbo].[Prod Env Inventory Dataset]
where Product_ID is null or Product_ID = ''

UPDATE [dbo].[Prod Env Inventory Dataset]
SET Product_ID = 7 Where Product_ID = 21


UPDATE [dbo].[Prod Env Inventory Dataset]
SET Product_ID = 11 Where Product_ID = 22

select distinct Product_ID from [dbo].[Prod Env Inventory Dataset]
ORDER BY Product_ID

-----------------------------------------------------------

select distinct Availability from [dbo].[Prod Env Inventory Dataset]


select distinct Demand from [dbo].[Prod Env Inventory Dataset]


select * into [New_Table] from 
(select a.[Order_Date_DD_MM_YYYY],a.[Product_ID],a.[Availability],a.[Demand], b.Product_name, b.unit_price
from [dbo].[Prod Env Inventory Dataset]
as a left join [dbo].[Products] as b on a.Product_ID = b.Product_ID) X

select * from New_Table


