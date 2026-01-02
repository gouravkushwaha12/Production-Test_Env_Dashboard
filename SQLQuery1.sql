create database test_env
use test_env
select * from [dbo].[Test+Environment+Inventory+Dataset]
select * from [dbo].[Products]


select distinct PRODUCT_id from  [dbo].[Test+Environment+Inventory+Dataset]

select  [Availability],count(*) from [dbo].[Test+Environment+Inventory+Dataset]
group by [Availability]

select distinct [Demand],count(*) from [dbo].[Test+Environment+Inventory+Dataset]
group by  [Demand]


select distinct [Order_Date_DD_MM_YYYY] from [dbo].[Test+Environment+Inventory+Dataset]


select * from  [dbo].[Test+Environment+Inventory+Dataset] a 
left join [dbo].[Products] b on a.product_id=b.product_id

select
a.[Product_ID],
a.[Order_Date_DD_MM_YYYY],
a.[Availability],
a.[Demand],
b.[Product_Name],
b.[Unit_Price]
from  [dbo].[Test+Environment+Inventory+Dataset] a 
left join [dbo].[Products] b on a.product_id=b.product_id

select * into new_table from (select
a.[Product_ID],
a.[Order_Date_DD_MM_YYYY],
a.[Availability],
a.[Demand],
b.[Product_Name],
b.[Unit_Price]
from  [dbo].[Test+Environment+Inventory+Dataset] a 
left join [dbo].[Products] b on a.product_id=b.product_id) x


select * from new_table