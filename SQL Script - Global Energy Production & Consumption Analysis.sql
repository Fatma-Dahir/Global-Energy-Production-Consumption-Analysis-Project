-- DATA CLEANING 
-- Check for null values in all tables 
-- Checking for Null Values in `production` Table
SELECT 
    SUM(CASE WHEN Date IS NULL THEN 1 ELSE 0 END) AS Date_Null_Count,
    SUM(CASE WHEN Total_Fossil_Fuels_Production IS NULL THEN 1 ELSE 0 END) AS Total_Fossil_Fuels_Production_Null_Count,
    SUM(CASE WHEN Nuclear_Electric_Power_Production IS NULL THEN 1 ELSE 0 END) AS Nuclear_Electric_Power_Production_Null_Count,
    SUM(CASE WHEN Total_Renewable_Energy_Production IS NULL THEN 1 ELSE 0 END) AS Total_Renewable_Energy_Production_Null_Count,
    SUM(CASE WHEN Primary_Energy_Imports IS NULL THEN 1 ELSE 0 END) AS Primary_Energy_Imports_Null_Count,
    SUM(CASE WHEN Total_Primary_Energy_Production IS NULL THEN 1 ELSE 0 END) AS Total_Primary_Energy_Production_Null_Count
FROM production;

-- Checking for Null Values in `consumption` Table
SELECT 
    SUM(CASE WHEN Date IS NULL THEN 1 ELSE 0 END) AS Date_Null_Count,
    SUM(CASE WHEN Total_Fossil_Fuels_Consumption IS NULL THEN 1 ELSE 0 END) AS Total_Fossil_Fuels_Consumption_Null_Count,
    SUM(CASE WHEN Nuclear_Electric_Power_Consumption IS NULL THEN 1 ELSE 0 END) AS Nuclear_Electric_Power_Consumption_Null_Count,
    SUM(CASE WHEN Total_Renewable_Energy_Consumption IS NULL THEN 1 ELSE 0 END) AS Total_Renewable_Energy_Consumption_Null_Count,
    SUM(CASE WHEN Primary_Energy_Net_Exports IS NULL THEN 1 ELSE 0 END) AS Primary_Energy_Net_Exports_Null_Count,
    SUM(CASE WHEN Total_Primary_Energy_Consumption IS NULL THEN 1 ELSE 0 END) AS Total_Primary_Energy_Consumption_Null_Count
FROM consumption;

-- Checking for Null Values in `primary_energy_consumption` Table
SELECT 
    SUM(CASE WHEN Entity IS NULL THEN 1 ELSE 0 END) AS Entity_Null_Count,
    SUM(CASE WHEN Code IS NULL THEN 1 ELSE 0 END) AS Code_Null_Count,
    SUM(CASE WHEN Year IS NULL THEN 1 ELSE 0 END) AS Year_Null_Count,
    SUM(CASE WHEN Primary_energy_consumption_TWh IS NULL THEN 1 ELSE 0 END) AS Primary_energy_consumption_TWh_Null_Count
FROM primary_energy_consumption;

-- Checking for Null Values in `change_energy_consumption` Table
SELECT 
    SUM(CASE WHEN Entity IS NULL THEN 1 ELSE 0 END) AS Entity_Null_Count,
    SUM(CASE WHEN Code IS NULL THEN 1 ELSE 0 END) AS Code_Null_Count,
    SUM(CASE WHEN Year IS NULL THEN 1 ELSE 0 END) AS Year_Null_Count,
    SUM(CASE WHEN Annual_change_in_primary_energy_consumption_percentage IS NULL THEN 1 ELSE 0 END) AS Annual_Change_Percentage_Null_Count
FROM change_energy_consumption;

-- Checking for Null Values in `world_energy_overview` Table
SELECT 
    SUM(CASE WHEN Date IS NULL THEN 1 ELSE 0 END) AS Date_Null_Count,
    SUM(CASE WHEN Total_Fossil_Fuels_Production IS NULL THEN 1 ELSE 0 END) AS Total_Fossil_Fuels_Production_Null_Count,
    SUM(CASE WHEN Total_Fossil_Fuels_Consumption IS NULL THEN 1 ELSE 0 END) AS Total_Fossil_Fuels_Consumption_Null_Count,
    SUM(CASE WHEN Nuclear_Electric_Power_Production IS NULL THEN 1 ELSE 0 END) AS Nuclear_Electric_Power_Production_Null_Count,
    SUM(CASE WHEN Nuclear_Electric_Power_Consumption IS NULL THEN 1 ELSE 0 END) AS Nuclear_Electric_Power_Consumption_Null_Count,
    SUM(CASE WHEN Total_Renewable_Energy_Production IS NULL THEN 1 ELSE 0 END) AS Total_Renewable_Energy_Production_Null_Count,
    SUM(CASE WHEN Total_Renewable_Energy_Consumption IS NULL THEN 1 ELSE 0 END) AS Total_Renewable_Energy_Consumption_Null_Count,
    SUM(CASE WHEN Primary_Energy_Imports IS NULL THEN 1 ELSE 0 END) AS Primary_Energy_Imports_Null_Count,
    SUM(CASE WHEN Primary_Energy_Net_Imports IS NULL THEN 1 ELSE 0 END) AS Primary_Energy_Net_Imports_Null_Count,
    SUM(CASE WHEN Primary_Energy_Net_Exports IS NULL THEN 1 ELSE 0 END) AS Primary_Energy_Net_Exports_Null_Count,
    SUM(CASE WHEN Total_Primary_Energy_Production IS NULL THEN 1 ELSE 0 END) AS Total_Primary_Energy_Production_Null_Count,
    SUM(CASE WHEN Total_Primary_Energy_Consumption IS NULL THEN 1 ELSE 0 END) AS Total_Primary_Energy_Consumption_Null_Count,
    SUM(CASE WHEN Primary_Energy_Stock_Change_and_Other IS NULL THEN 1 ELSE 0 END) AS Primary_Energy_Stock_Change_and_Other_Null_Count
FROM world_energy_overview;


-- Check for duplicates across all tables
-- Checking for Duplicates in `production` Table
SELECT 
    Date, Total_Fossil_Fuels_Production, Nuclear_Electric_Power_Production, 
    Total_Renewable_Energy_Production, Primary_Energy_Imports, Total_Primary_Energy_Production, 
    COUNT(*) AS Duplicate_Count
FROM production
GROUP BY Date, Total_Fossil_Fuels_Production, Nuclear_Electric_Power_Production, 
         Total_Renewable_Energy_Production, Primary_Energy_Imports, Total_Primary_Energy_Production
HAVING COUNT(*) > 1;

-- Checking for Duplicates in `consumption` Table
SELECT 
    Date, Total_Fossil_Fuels_Consumption, Nuclear_Electric_Power_Consumption, 
    Total_Renewable_Energy_Consumption, Primary_Energy_Net_Exports, Total_Primary_Energy_Consumption, 
    COUNT(*) AS Duplicate_Count
FROM consumption
GROUP BY Date, Total_Fossil_Fuels_Consumption, Nuclear_Electric_Power_Consumption, 
         Total_Renewable_Energy_Consumption, Primary_Energy_Net_Exports, Total_Primary_Energy_Consumption
HAVING COUNT(*) > 1;

-- Checking for Duplicates in `primary_energy_consumption` Table
SELECT 
    Entity, Code, Year, Primary_energy_consumption_TWh, COUNT(*) AS Duplicate_Count
FROM primary_energy_consumption
GROUP BY Entity, Code, Year, Primary_energy_consumption_TWh
HAVING COUNT(*) > 1;

-- Checking for Duplicates in `change_energy_consumption` Table
SELECT 
    Entity, Code, Year, Annual_change_in_primary_energy_consumption_percentage, 
    COUNT(*) AS Duplicate_Count
FROM change_energy_consumption
GROUP BY Entity, Code, Year, Annual_change_in_primary_energy_consumption_percentage
HAVING COUNT(*) > 1;

-- Checking for Duplicates in `world_energy_overview` Table
SELECT 
    Date, Total_Fossil_Fuels_Production, Total_Fossil_Fuels_Consumption, 
    Nuclear_Electric_Power_Production, Nuclear_Electric_Power_Consumption, 
    Total_Renewable_Energy_Production, Total_Renewable_Energy_Consumption, 
    Primary_Energy_Imports, Primary_Energy_Net_Imports, Primary_Energy_Net_Exports, 
    Total_Primary_Energy_Production, Total_Primary_Energy_Consumption, 
    Primary_Energy_Stock_Change_and_Other, 
    COUNT(*) AS Duplicate_Count
FROM world_energy_overview
GROUP BY Date, Total_Fossil_Fuels_Production, Total_Fossil_Fuels_Consumption, 
         Nuclear_Electric_Power_Production, Nuclear_Electric_Power_Consumption, 
         Total_Renewable_Energy_Production, Total_Renewable_Energy_Consumption, 
         Primary_Energy_Imports, Primary_Energy_Net_Imports, Primary_Energy_Net_Exports, 
         Total_Primary_Energy_Production, Total_Primary_Energy_Consumption, 
         Primary_Energy_Stock_Change_and_Other
HAVING COUNT(*) > 1;


-- STANDARDIZE DATA
-- Convert data type to date for columns DATE
UPDATE consumption
SET Date = STR_TO_DATE(Date,"%d-%m-%Y");

ALTER TABLE consumption
Modify Date DATE;

UPDATE production
SET Date = STR_TO_DATE(Date,"%d-%m-%Y");

ALTER TABLE production
Modify Date DATE;

UPDATE world_energy_overview
SET Date = STR_TO_DATE(Date,"%d-%m-%Y");

ALTER TABLE world_energy_overview
Modify Date DATE;

-- DATA ANALYSIS
-- How many entities are there 
SELECT COUNT(DISTINCT Entity) as Total_Entities
FROM primary_energy_consumption;

SELECT DISTINCT Entity
FROM primary_energy_consumption;

-- Monthly Trends in Consumption and Production and Balance
SELECT 
    YEAR(Date) AS Year,
    MONTH(Date) AS Month,
    Total_Primary_Energy_Production AS Monthly_production,
    Total_Primary_Energy_Consumption AS Monthly_consumption,
    (SUM(Total_Primary_Energy_Production) - SUM(Total_Primary_Energy_Consumption)) AS Balance
FROM world_energy_overview
GROUP BY YEAR(Date), MONTH(Date),Monthly_production,Monthly_consumption
ORDER BY Year, Month;

-- Years and months sorted by consumption, from highest to lowest
SELECT
     Year(Date) as Year,
     Month(Date) as Month,
     ROUND(SUM(Total_Primary_Energy_Consumption),2) AS Total_consumption,
     ROUND(SUM(Total_Primary_Energy_Production),2) AS Total_production
FROM world_energy_overview
GROUP BY YEAR(Date), MONTH(Date)
ORDER BY Total_consumption DESC;

-- Years and months sorted by production, from highest to lowest
SELECT
     Year(Date) as Year,
     Month(Date) as Month,
     ROUND(SUM(Total_Primary_Energy_Production),2) AS Total_production,
     ROUND(SUM(Total_Primary_Energy_Consumption),2) AS Total_consumption
FROM world_energy_overview
GROUP BY YEAR(Date), MONTH(Date)
ORDER BY Total_production DESC;


-- Consumption by Entity
SELECT Entity, Year, Primary_energy_consumption_TWh
FROM primary_energy_consumption
GROUP BY Entity, Year, Primary_energy_consumption_TWh
ORDER BY Primary_energy_consumption_TWh DESC;

-- Consumption by Energy Type and Year
SELECT YEAR(Date) AS Year,
       ROUND(SUM(Total_Fossil_Fuels_Consumption),2) AS Fossil_Fuels,
       ROUND(SUM(Nuclear_Electric_Power_Consumption),2) AS Nuclear_Power,
       ROUND(SUM(Total_Renewable_Energy_Consumption),2) AS Renewable_Energy
FROM consumption
GROUP BY YEAR(Date);

-- Production by Energy Type and Year
SELECT YEAR(Date) AS Year,
       ROUND(SUM(Total_Fossil_Fuels_Production),2) AS Fossil_Fuels,
       ROUND(SUM(Nuclear_Electric_Power_Production),2) AS Nuclear_Power,
       ROUND(SUM(Total_Renewable_Energy_Production),2) AS Renewable_Energy
FROM production
GROUP BY YEAR(Date);


-- Average Primary Energy Production & Consumption
SELECT
       ROUND(AVG(Total_Primary_Energy_Production),2) AS Average_Energy_Production,
       ROUND(AVG(Total_Primary_Energy_Consumption),2) AS Average_Energy_Consumption
FROM world_energy_overview;


-- Average Ratio of Production to Consumption
SELECT 
    YEAR(Date) AS Year,
    ROUND(AVG(Total_Primary_Energy_Production / Total_Primary_Energy_Consumption),2) AS avg_production_to_consumption_ratio
FROM world_energy_overview
GROUP BY YEAR(Date)
ORDER BY avg_production_to_consumption_ratio DESC;



