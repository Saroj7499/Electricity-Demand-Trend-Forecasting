# Electricity-Demand-Trend-Forecasting

## Project Overview
This project analyzes historical electricity demand data across multiple Indian states to understand demand patterns, seasonal behavior, and long-term trends.
The primary focus is on Maharashtra, where monthly electricity demand is forecasted using time series techniques.
The project combines SQL analysis, Python-based forecasting, and Tableau visualization to simulate a real-world energy demand analysis use case.

## Project Objective
   - Analyze electricity demand trends over time
   - Identify seasonality, volatility, and regional demand differences
   - Forecast monthly electricity demand for Maharashtra
   - Present insights through an interactive Tableau dashboard

## Dataset Description
The dataset contains daily electricity demand records across multiple Indian states.
**Key Fields:**
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
   - Total Electricity Demand by region
   - Peak Demand (maximum recorded demand)
   - Average Demand (baseline consumption level)
   - Demand Volatility (standard deviation of demand)
   - Monthly Demand Trend for Maharashtra
   - Historical vs Forecasted Demand

## Analysis & Key Observations  
   - Overall electricity demand shows a long-term increasing trend
   - Clear seasonal patterns are visible in pre-2020 data
   - Demand remained relatively stable during 2020–2022, likely due to COVID-related effects
   - Maharashtra consistently ranks among the highest electricity-consuming states
   - Monthly aggregation provided more reliable forecasting than daily demand due to reduced noise

## Forecasting Methodology (Python)
**Steps Followed:**
   - Parsed and corrected date formats
   - Filtered data for Maharashtra
   - Converted daily demand into monthly demand
   - Removed incomplete initial months to avoid biased aggregation
   - Performed seasonal decomposition to study trend and seasonality
   - Applied Linear Regression to model long-term demand trend
   - Forecasted electricity demand for the next 12 months
     
## Why Linear Regression?
   - Simple and interpretable baseline model
   - Clearly explains long-term trend behavior
   - Suitable for management-level forecasting discussions
     
**Note:** Seasonal effects were analyzed separately. Advanced models like SARIMA can further improve forecast accuracy in future work.

## Tableau Dashboard
The Tableau dashboard was designed to provide a high-level performance view of electricity demand across major Indian states,
along with historical demand trends to support strategic energy planning and decision-making.

**Key KPIs Displayed**

   **- Total Demand:** Cumulative electricity demand across all regions.
   **- Peak Demand** Highest recorded demand value, helping identify system stress periods. 
   **- Average Demand** Baseline electricity consumption.
   **- Demand Volatility** Variability of demand patterns.

**Visual Insights**
   - Year-wise electricity demand trend
   - Region-wise demand comparison
   - Identification of high-consumption states
   - Impact periods such as demand drops and recoveries

## Dashboard Title:
**Electricity Demand Performance & Trend Analysis**

## Business Value
   - Helps energy planners anticipate future electricity demand
   - Supports better infrastructure and resource planning
   - Enables region-specific demand forecasting
   - Demonstrates a complete data analysis workflow from raw data to insights

 ## Conclusion
This project demonstrates a complete data analytics pipeline—from raw data to business insights—using SQL, Python, and Tableau.
It highlights strong analytical thinking, forecasting fundamentals, and business storytelling, making it suitable for real-world energy demand analysis scenarios.
