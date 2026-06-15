# 📊 Product Inventory & Sales Analytics Dashboard (SQL Server, MySQL & Power BI)

> End-to-End Business Intelligence Project using SQL Server (SSMS), MySQL, SQL Queries, and Power BI to analyze inventory performance, product sales, and operational KPIs.

Live DashBoard Link With Respect to SQL Server: 
(https://app.powerbi.com/groups/80eec14a-b0c7-4c9d-b845-672041e1588b/reports/290caa4c-016c-477b-9bc0-f54d18bfe752/99e7124b71cd6649dde0?experience=power-bi)

Live DashBoard Link With Respect to MYSQL Server : 
(https://app.powerbi.com/groups/b958c159-2b68-4f4c-a9ce-8c9ca5a327b7/reports/1dc88f35-aebe-4e37-b8d9-03064f5ad283/99e7124b71cd6649dde0?experience=power-bi)

---

# 📌 Project Overview


The Product Inventory & Sales Analytics Dashboard is an end-to-end Business Intelligence project designed to analyze inventory levels, product sales performance, and operational metrics using SQL Server, MySQL, and Power BI.

The project demonstrates a real-world data Analyst and business intelligence workflow where data was initially stored in Microsoft SQL Server (SSMS), transformed using SQL operations, integrated into Power BI for reporting, and later migrated to MySQL while maintaining dashboard functionality.

The project showcases practical industry skills including database management, data transformation, source migration, report development, and business intelligence reporting.

---

# 🎯 Business Problem

Organizations often maintain inventory and sales data across multiple database systems.

Common challenges include:

* Average Demand Per Day
* Average Availability Per Day
* Total Supply Shortage 
* Total Profit
* Total loss
* Average Daily Loss

This project addresses these challenges by creating a centralized reporting solution using Power BI.

---

# 🛠 Tools & Technologies

## 📌 Database

* Microsoft SQL Server (SSMS)
* MySQL Workbench

## 📌 Querying

* SQL
* LEFT JOIN
* UPDATE Statements
* Filtering
* Aggregations

## 📌 Business Intelligence

* Power BI Desktop
* Power BI Service
* Power Query
* DAX

---

# 📂 Dataset Information

## 📌 Data Sources

### Production Environment Dataset

* Prod Env Inventory Dataset

### Test Environment Dataset

* Test Environment Inventory Dataset

### Product Dataset

* Products Dataset

---

## 📌 Key Features

* Product ID
* Product Name
* Unit Cost Per Product
* Order Date 
* Availability
* Demand
* Product ID

---

# 🏗 Data Analyst Workflow

## 1️⃣ Data Storage in SQL Server (SSMS)

The datasets were initially loaded into SQL Server.

Tasks performed:

* Database creation
* Table creation
* Data import
* Relationship establishment

---

## 2️⃣ SQL Transformations

Performed multiple SQL operations including:

### JOIN Operations

* LEFT JOIN

Used to combine:

* Product Tables
* Sales Tables

for analytical reporting.

---

### Data Updates

Used UPDATE statements to:

* Correct business records
* Standardize values
* Improve data quality
* Align production reporting requirements

---

## 3️⃣ Power BI Integration

Connected SQL Server database directly to Power BI.

* KPI development

---

## 4️⃣ DAX Development

Created business measures such as:

*       Average Availability Per Day = DIVIDE([Total Availability],[Total Number Of Days])

*        Average Daily Loss = DIVIDE([Total Loss],[Total Number Of Days])

*       Average Demand Per Day = DIVIDE([Total Demand],[Total Number Of Days])

*       Total Availability = SUM('Demand/Availability Data'[Availability])

*       Total Demand = SUM('Demand/Availability Data'[Demand])

*       Total Loss = 
        SUMX(FILTER('Demand/Availability Data','Demand/Availability Data'[Loss/Profit]<0),'Demand/Availability Data'[Loss/Profit]* 'Demand/Availability Data'[unit_price]) -1

*        Total Number Of Days = DISTINCTCOUNT('Demand/Availability Data'[Order_Date_DD_MM_YYYY].[Date])

*       Total Profit = 
        SUMX(FILTER('Demand/Availability Data','Demand/Availability Data'[Loss/Profit]>0),'Demand/Availability Data'[Loss/Profit]* 'Demand/Availability Data'[unit_price])

*       Total Supply Shortage = [Total Demand]-[Total Availability]

*        Loss/Profit = 'Demand/Availability Data'[Availability]-'Demand/Availability Data'[Demand]
---

## 5️⃣ Report Development

Created interactive reports including:

* Product Sales Dashboard
* KPI Overview Dashboard

---

## 6️⃣ Database Migration

One of the key project requirements was migrating the reporting source from:

### Initial Source

Microsoft SQL Server (SSMS)

### New Source

MySQL Workbench

Tasks performed:

* Data migration
* Schema validation
* Connection updates
* Power BI source replacement
* Report validation

This ensured that reports continued functioning correctly after migration.

---

## 📊 Product Sales Dashboard

![Image1](https://github.com/ROHIT19K/Product-Sales-Analysis-Using-SQL---MYSQL-POWER-BI-/blob/main/SQL%201.png)

![Image2](https://github.com/ROHIT19K/Product-Sales-Analysis-Using-SQL---MYSQL-POWER-BI-/blob/main/SQL%202.png)

![Image3](https://github.com/ROHIT19K/Product-Sales-Analysis-Using-SQL---MYSQL-POWER-BI-/blob/main/MYSQL%201.png)

Report Development 

![Image4](https://github.com/ROHIT19K/Product-Sales-Analysis-Using-SQL---MYSQL-POWER-BI-/blob/main/Page%201.png)

![Image5](https://github.com/ROHIT19K/Product-Sales-Analysis-Using-SQL---MYSQL-POWER-BI-/blob/main/Page%202.png)

Power BI Service Published

![Image6](https://github.com/ROHIT19K/Product-Sales-Analysis-Using-SQL---MYSQL-POWER-BI-/blob/main/SQL%20Server%20Power%20BI%20Published%20.png)
---

# 🔍 Key Insights

* 📌 Demand vs Availability Gap

Average Daily Demand is 48.65 units, while Average Daily Availability is only 24.70 units.
Product availability is meeting only about 50% of customer demand, indicating a significant supply-demand imbalance.
This shortage may result in lost sales opportunities, customer dissatisfaction, and reduced market competitiveness.

* 📌 Supply Chain Performance
The business experienced a total supply shortage of approximately 61,000 units.
Frequent stock shortages suggest potential issues in inventory planning, forecasting accuracy, supplier performance, or replenishment strategies.

* 📌 Profitability Analysis
The company generated a total profit of approximately 301K.
However, despite positive profitability, operational inefficiencies are affecting overall financial performance.

* 📌 Loss Analysis
Total losses amount to approximately 8 million, significantly exceeding total profit.
The high loss-to-profit ratio indicates that inventory shortages, inefficient supply planning, stockouts, or operational disruptions are negatively impacting business performance.

* 📌 Daily Operational Impact
The average daily loss is approximately 2.97K.
Persistent daily losses indicate recurring operational challenges that require immediate attention to prevent long-term financial impact.

# 🚀 Business Recommendations 

* Improve Demand Forecasting
* Increase Inventory Availability

---

# 🚀 Future Enhancements

* Implement Incremental Refresh
* Add Scheduled Refresh
* Deploy reports to Power BI Service
* Integrate cloud databases
* Build real-time inventory monitoring

---

# ▶️ Project Workflow

1. Data Collection
2. SQL Server Data Storage
3. SQL Transformations
4. JOIN Operations
5. Data Updates
6. Power BI Integration
7. DAX Development
8. Dashboard Development
9. Database Migration (SQL Server → MySQL)
10. Report Validation
11. Business Insights Generation

---

# ✅ Results & Outcomes

* Built an end-to-end BI solution.
* Performed SQL-based data transformation.
* Created interactive Power BI dashboards.
* Successfully migrated reporting source from SQL Server to MySQL.
* Delivered business-ready analytics reports.

---

# 📬 Contact

## 👤 Author

Your Name

LinkedIn: https://linkedin.com/in/yourprofile

GitHub: https://github.com/yourusername

Email: yourmail@gmail.combine 
