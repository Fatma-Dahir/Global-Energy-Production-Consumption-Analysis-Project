# 📊 Global Energy Production & Consumption Analysis Project

## Table of Contents
- [Project Overview](#project-overview)
- [Methodology](#methodology)
- [Data_Description](#data-description)
- [Data Cleaning](#data-cleaning)
- [Exploratory Data Analysis](#exploratory-data-analysis)
- [Results and Findings](#results-and-findings)
- [Recommendations](#recommendations)

## Project Overview
This project analyzes global energy production and consumption trends from 1973 to 2022, focusing on fossil fuels, renewable energy, and nuclear power. It includes data exploration, trend analysis, and visualizations to assess energy security, production-consumption ratios, and export opportunities for a sustainable energy future. SQL was used for data cleaning and analysis, with Power BI employed to create dynamic, interactive dashboards that highlight key insights.

![Dashboard (2)](https://github.com/user-attachments/assets/c67ae89d-4241-4af3-9001-7abe38fc6513)

## Methodology
For this project, I used SQL for data cleaning and analysis and Microsoft Power BI to create interactive dashboards and visualizations to explore energy production, consumption trends and the shift toward renewable and nuclear energy.

## Data Description
The datasets for this project were sourced from [GitHub](https://github.com/Shanu1110/Energy-Consumption-and-Production-Analysis) and [Our World in Data](https://ourworldindata.org/energy-production-consumption).  

**Data Dictionary**

The project utilizes the following datasets:

**1.	Consumption:** Data on total fossil fuel consumption, nuclear electric power consumption, total renewable energy consumption, primary energy net exports, and total primary energy consumption.

**2.	Production:** Data on total fossil fuel production, nuclear electric power production, total renewable energy production, primary energy imports, and total primary energy production.

**3.	Primary Energy Consumption:** Total primary energy consumption in TWh.

**4.	Change in Energy Consumption:** Annual percentage change in primary energy consumption.

**5.	World Energy Overview:** A general overview of global energy production and cconsumption.


## Data Cleaning
In this phase, I performed the following tasks:
1. Imported the Data into MySQL Workbench using the Import Table Wizard
2. Standardized the data

## Exploratory Data Analysis
I used SQL to conduct the following analyses on the data:
- How many entities are there in the dataset, and what are they?
- What are the  Monthly Trends in Consumption and Production and Balance?
- What are the Years and months sorted by production, from highest to lowest?
- What are the Years and months sorted by consumption, from highest to lowest?
- What is the primary energy consumption by entity?
- What is the consumption like by energy type and year?
- What is the production like by energy type and year?
- What is the Average Primary Energy Production & Consumption?
- What is the Average Ratio of Production to Consumption?

The SQL script is available in the repository for reference.

## Results and Findings
- **Fossil Fuels:** Fossil fuels remain the most produced and consumed energy type from 1973 to 2022.
- **Peak Energy Production:** The highest total primary energy production occurred in August 2022 (8.81 TWh), while the lowest was in February 1978 (4.31 TWh).
- **Peak Energy Consumption:** The highest total primary energy consumption occurred in January 2018 (9.66 TWh), with the lowest recorded in June 1975 (5.44 TWh).
- **Renewable Energy:** Renewable energy production increased sharply from 6.22 TWh in 2005 to 12.26 TWh by 2022, marking a period of rapid growth and diversification in energy sources.
- **Nuclear Energy:** Nuclear electric power saw its most significant growth between 1973 and 2000, with a +6.95 increase.
- Renewable Energy and Nuclear Energy both trended up between 1973 and 2022.
- **Production-Consumption Average Ratio:**  
  In **2019**, the Average Ratio of Production to Consumption ratio reached 1.01 and has remained above that level in the subsequent years through 2022. This indicates that during that time production exceeded consumption and/or there was potential for export or storage and/or energy efficiency had improved.  
  In all the years **prior to 2019**, the ratio was less than 1. This indicates that consumption exceeded production and/or there was dependence on imports and/or there was a risk of an energy crisis.

- **Average Primary Energy Production:** 6.15 TWh
- **Average Primary Energy Consumption:** 7.44 TWh.
- **Total Energy Production on Last Day of Month (1973-2022):** 3683 TWh
- **Total Energy Consumption on Last Day of Month (1973-2022):** 4457 TWh
- **Average Annual % Change in Primary Energy Consumption:**  
  The **highest increase** occurred in 2000, with a rise of about 14.41% in primary energy consumption.  
  The **largest decrease** was in 2020, when consumption dropped by approximately 6.77%, likely due to the COVID-19 pandemic's significant impact on global energy demand. Overall, the trend suggests a gradual stabilization over time, likely due to improved energy efficiency and shifts toward diverse energy sources.

## Recommendations
**1. Transition to Renewable Energy and Diversification**
Given the sharp increase in Renewable Energy production since 2005, particularly with the steepest incline between 2005 and 2022, it is crucial to continue investing in and promoting the adoption of renewable energy sources such as solar, wind, and hydropower. This will help reduce dependence on fossil fuels, which remain the dominant source of energy production and consumption.

**2. Focus on Energy Efficiency and Technological Innovations**
The trend observed in 2019, where the Ratio of Production to Consumption exceeded 1 (1.01), suggests a positive shift towards greater energy efficiency and possibly storage or export capabilities. This indicates that improving energy efficiency should continue to be a priority for the coming years.

**3. Enhance Energy Independence and Reduce Vulnerability to Imports**
The periods before 2019, where the production-to-consumption ratio was consistently below 1, indicate periods of energy dependence on imports and the risk of an energy crisis. In light of this, it is vital to strengthen domestic energy production to ensure energy security and reduce reliance on external sources.

**4. Continue Support for Nuclear Energy Development**
The long growth period of Nuclear Electric Power from 1973 to 2000 (+6.95) indicates its significant contribution to stable energy production. Nuclear energy is a low-carbon, high-output energy source that can complement renewable energy in the energy mix.

**5. Monitor and Manage Energy Consumption Trends**
With January 2018 marking the highest energy consumption (9.66 TWh) and June 1975 recording the lowest consumption (5.44 TWh), it’s clear that managing energy demand will be increasingly important as consumption continues to rise. The average consumption of 7.44 TWh suggests a need for better demand-side management strategies.

**6. Investigate Potential Export Markets**
Recommendation: Since the production-to-consumption ratio has been above 1 since 2019, suggesting potential for export or storage, there is an opportunity to explore energy exports to neighboring countries or international markets.

**7. Address Energy Crisis Risk with Proactive Planning**
The historical periods of energy crisis risk prior to 2019 underscore the importance of proactive energy planning. Energy crises can lead to economic disruption, so strategic energy reserves, predictive analytics, and comprehensive energy policies are critical.


