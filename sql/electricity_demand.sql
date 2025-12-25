CREATE DATABASE power_demand_analysis;

USE power_demand_analysis;

SHOW TABLES;

SELECT * FROM electricity_demand;

UPDATE electricity_demand
SET Date = STR_TO_DATE(Date,'%m/%d/%Y');

SELECT Date FROM electricity_demand LIMIT 5;

ALTER TABLE electricity_demand
MODIFY Date DATE;

DESCRIBE electricity_demand;

SELECT * FROM electricity_demand LIMIT 10;

#KPI-1: Total Electricity Demand (SQL)
SELECT ROUND(SUM(demand_MU),2) AS total_electricity_demand
FROM electricity_demand;

#KPI-2: Average Demand by Region
SELECT Region, ROUND(AVG(demand_MU),3) AS avg_demand
FROM electricity_demand
GROUP BY Region
ORDER BY avg_demand DESC;

#KPI-3: Peak Demand by Region
SELECT Region, MAX(demand_MU) AS peak_demand
FROM electricity_demand
GROUP BY Region
ORDER BY peak_demand DESC;

#KPI-4: Yearly Demand Trend (SQL)
SELECT YEAR(Date) AS year, ROUND(SUM(demand_MU),3) AS total_demand_trend
FROM electricity_demand
GROUP BY YEAR(Date) 
ORDER BY year;

#KPI-5: Year-on-Year Growth % (Window Function)
WITH yearly_demand AS (
    SELECT 
        YEAR(Date) AS year,
        SUM(demand_MU) AS total_demand
    FROM electricity_demand
    GROUP BY YEAR(Date)
)
SELECT 
    year,
    ROUND(total_demand, 2) AS total_demand,
    ROUND((total_demand - LAG(total_demand) OVER (ORDER BY year)) / LAG(total_demand) OVER (ORDER BY year),4) AS growth_pct
FROM yearly_demand
ORDER BY year;

#KPI-6: Total Demand by Region (Ranking)
SELECT Region, ROUND(SUM(demand_MU),2) AS Total_Demand
FROM electricity_demand
GROUP BY Region
ORDER BY Total_Demand DESC;

#KPI-7: Demand Volatility
SELECT Region, ROUND(STDDEV(demand_MU),2) AS demand_volatility
FROM electricity_demand
GROUP BY Region
ORDER BY demand_volatility DESC;