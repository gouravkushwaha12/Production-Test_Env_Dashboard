create database PROD
USE PROD

SELECT * FROM [dbo].[Prod+Env+Inventory+Dataset]
SELECT * FROM [dbo].[Products+(1)]

SELECT distinct [Order_Date_DD_MM_YYYY] FROM [dbo].[Prod+Env+Inventory+Dataset]

SELECT distinct [Product_ID] FROM [dbo].[Prod+Env+Inventory+Dataset]
order by [Product_ID] asc


SELECT distinct [Availability] FROM [dbo].[Prod+Env+Inventory+Dataset]

SELECT distinct [Demand] FROM [dbo].[Prod+Env+Inventory+Dataset]

update [dbo].[Prod+Env+Inventory+Dataset]
set Product_ID=7 where Product_ID=21

--------------------------------------------------------------
update [dbo].[Prod+Env+Inventory+Dataset]
set Product_ID=11 where Product_ID=22
------------------------------------------------------------------
select * from [dbo].[Prod+Env+Inventory+Dataset] a
left join [dbo].[Products+(1)] b on a.Product_ID=b.Product_ID 
-----------------------------------------------------------------------
select
a.[Product_ID],a.[Order_Date_DD_MM_YYYY],a.[Availability],a.[Demand],b.[Product_Name],b.[Unit_Price]

from [dbo].[Prod+Env+Inventory+Dataset] a
left join [dbo].[Products+(1)] b on a.Product_ID=b.Product_ID 
------------------------------------------------------------------------------
select * into new_table from (select
a.[Product_ID],a.[Order_Date_DD_MM_YYYY],a.[Availability],a.[Demand],b.[Product_Name],b.[Unit_Price]

from [dbo].[Prod+Env+Inventory+Dataset] a
left join [dbo].[Products+(1)] b on a.Product_ID=b.Product_ID) x
--------------------------------------------------------------------

select * from new_table



