
use PROD
select * from `prod+env+inventory+dataset`

update prod.`Prod+Env+Inventory+Dataset`
set `Product ID`=7 where `Product ID`=21

update prod.`Prod+Env+Inventory+Dataset`
set `Product ID`=11 where `Product ID`=22

select * from products



create table new_table as 
select
a.`Product ID` as `Product_ID`,
a. `Order Date (DD/MM/YYYY)` as `Order_Date_DD_MM_YYYY`,
a.Availability,
a.Demand,
b.`Product Name` as `Product_Name`,
b.`Unit Price ($)` as `Unit_Price`

from prod.`Prod+Env+Inventory+Dataset` as a
left join prod.`Products` as b on a.`Product ID`=b.`Product ID`