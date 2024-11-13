-- DATA CLEANING & STANDARDIZATION
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



