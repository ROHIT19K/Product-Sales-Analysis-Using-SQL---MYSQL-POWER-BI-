USE Production_Data;

Create Table New_Table as 
select
a.`Order Date (DD/MM/YYYY)` as `Order_Date_DD_MM_YYYY`,
a.`Product ID` as Product_ID ,
a.Availability,
a.Demand, 
b.`Product Name` as Product_name, 
b.`Unit Price ($)` as unit_price
from production_data.`prod+env+inventory+dataset` as a left join production_data.products as b
on a.`Product ID` = b.`Product ID`;

select * from New_Table;
