# Electricity-Demand-Trend-Forecasting

## Project Overview
This project analyzes historical electricity demand data across multiple Indian states to understand demand patterns, seasonal behavior, and long-term trends.
The primary focus is on Maharashtra, where monthly electricity demand is forecasted using time series techniques.
The project combines SQL analysis, Python-based forecasting, and Tableau visualization to simulate a real-world energy demand analysis use case.

## Objective
   - Analyze electricity demand trends over time
   - Identify seasonality, volatility, and regional demand differences
   - Forecast monthly electricity demand for Maharashtra
   - Present insights through an interactive Tableau dashboard

## Dataset Description
The dataset contains daily electricity demand values with the following fields:
   - Date – Daily record date
   - Region – State name
   - demand_MU – Electricity demand in Million Units (MU)
   - month_no – Month number
 Data spans multiple years and includes demand records for several major Indian states.

## Tools & Technologies
   - **Excel**: KPI calculations, pivot tables, aggregation logic
   - **MySQL**: Advanced SQL queries, window functions
   - **Python**: Data cleaning, EDA, time-series analysis, forecasting
   - **Machine Learning**: Linear Regression for trend forecasting
   - **Tableau**: Interactive management dashboard

## Key KPIs Analyzed
   - Total electricity demand by region
   - Demand volatility (standard deviation) by region
   - Monthly demand trend for Maharashtra
   - Seasonal demand patterns
   - Historical vs future demand forecast

## Analysis & Observations  
   - Overall electricity demand shows a long-term increasing trend
   - Clear seasonal patterns are visible in pre-2020 data
   - Demand remained relatively stable during 2020–2022, likely due to COVID-related effects
   - Maharashtra consistently ranks among the highest electricity-consuming states
   - Monthly aggregation provided more reliable forecasting than daily demand due to reduced noise

## Forecasting Approach
   - Filtered data for Maharashtra
   - Converted daily demand into monthly demand
   - Removed missing and incomplete months
   - Applied trend-based time series modeling
   - Forecasted electricity demand for the next 12 months
A simple Linear Regression model was chosen to establish a clear and interpretable demand trend.

## Python & Forecasting Section
**Python was used for time-series analysis and forecasting. Key steps included:**
    -Date parsing and data type correction
    -Regional filtering (Maharashtra)
    -Daily-to-monthly aggregation to reduce noise
    -Seasonal decomposition to identify trend and seasonal components
    -Linear Regression modeling to establish long-term demand trend
**Data Quality Handling:**
    -Initial months with incomplete daily records were excluded to prevent biased aggregation.

**Forecasting Rationale:**
    -Linear Regression was selected for interpretability and baseline trend estimation.
    -Seasonal effects were analyzed separately; advanced models (SARIMA) are recommended for future improvements. 

## Tableau Dashboard
The Tableau dashboard was designed to provide a high-level performance view of electricity demand across major Indian states,
along with historical demand trends to support strategic energy planning and decision-making.

## Key KPIs Displayed

**Total Electricity Demand**
      -Cumulative electricity demand (in Million Units) across all regions and years.
**Peak Demand**
      -Highest recorded demand value, helping identify system stress periods.
**Average Demand**
      -Mean electricity demand, used to understand baseline consumption levels.
**Demand Volatility**
      -Standard deviation of demand values, indicating variability and stability of demand patterns.

**Business Insight:**
      -Helps policymakers and planners understand long-term demand growth and external impact periods.
      -Supports region-specific infrastructure planning and capacity allocation.

## Dashboard Title:
Electricity Demand Performance & Trend Analysis

## Business Value
   - Helps energy planners anticipate future electricity demand
   - Supports better infrastructure and resource planning
   - Enables region-specific demand forecasting
   - Demonstrates a complete data analysis workflow from raw data to insights

 ## Conclusion
This project demonstrates an end-to-end data analytics pipeline using SQL, Python, and Tableau to solve a real-world electricity demand forecasting problem.
It emphasizes structured data preparation, analytical thinking, and business-focused storytelling.
