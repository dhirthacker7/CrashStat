# CrashStat: Motor Vehicle Collision Analysis

---

# Project Overview

This project analyzes motor vehicle collision data to uncover trends and hotspots, providing actionable insights for improved traffic safety. The project demonstrates the design of a robust data pipeline and the use of advanced visualization tools to enhance decision-making for traffic management and accident prevention.

---

## Key Features

- **Data Collection and Storage**:
    - Ingested raw collision data from open datasets using ETL pipelines.
    - Stored the processed data in a structured format using **AWS S3** and **Snowflake**.
- **Data Transformation**:
    - Cleaned and transformed data using **Apache Spark** and **Python** for enhanced quality and consistency.
    - Designed a star schema in **Snowflake** to optimize query performance.
- **Visualization**:
    - Created dynamic dashboards using **Power BI** to visualize accident trends, hotspots, and patterns.
    - Enhanced decision-making with insights on peak accident times, high-risk zones, and causative factors.

---

## Tools and Technologies

- **Data Processing**: Python, Alteryx, Talend Studio
- **Cloud Storage**: AWS S3
- **Database**: Snowflake,  SQL Server
- **Visualization**: Power BI
- **Other Tools**: Pandas, Matplotlib

---

## Steps and Workflow

1. **Data Ingestion**:
    - Imported collision data from open data portals and stored it in AWS S3.
2. **Data Transformation**:
    - Used Alteryx to clean and normalize the data.
    - Designed ETL pipelines to populate the Snowflake data warehouse.
3. **Visualization**:
    - Created interactive dashboards to explore and analyze collision trends.
4. **Reporting**:
    - Presented findings on accident-prone areas and times, along with key recommendations.

---

## Insights Derived

- Identified high-risk areas for motor vehicle collisions in urban regions.
- Highlighted the correlation between collision frequency and environmental factors like weather and time of day.
- Proposed actionable recommendations for reducing collision risks.

---

## Dashboards and Explanations

### 1. Accident Trends Over Time

https://github.com/user-attachments/assets/9f011d3f-e3e0-45d5-89eb-a4dc0bc273b7

**Explanation**: This dashboard visualizes the number of collisions over time, highlighting peak periods and seasonal trends. It provides insights into accident-prone months and time slots.

### 2. High-Risk Areas

https://github.com/user-attachments/assets/bf9681c3-5e81-49d8-90b3-cff7767027ad

**Explanation**: Displays a heatmap of collision hotspots, pinpointing urban zones with the highest accident frequency. This visualization is critical for traffic management and safety planning.

### 3. Causes of Accidents

![image](https://github.com/user-attachments/assets/bc404519-4e70-48df-9195-db5610c16388)

**Explanation**: A breakdown of causative factors, such as weather conditions, road type, and driver behavior. It identifies key contributors to accidents for targeted interventions.

### 4. Peak Accident Times

https://github.com/user-attachments/assets/9d8647a4-b847-4c1f-a2e1-13d53a9b909e

**Explanation**: Shows hourly and daily distributions of accidents, helping stakeholders understand when collisions are most likely to occur.

---

## How to Use

1. Clone the repository:
    
    ```bash
    git clone <https://github.com/dhirthacker7/Motor_Vehicle_Collisions.git>
    ```
    
2. Set up the environment and dependencies as outlined in the requirements.txt file.
3. Follow the notebook or scripts provided for data ingestion, transformation, and visualization.

---

## Future Enhancements

- Automate real-time data ingestion for up-to-date analysis.
- Incorporate machine learning models for predictive analytics on collision trends.
- Expand the scope to include pedestrian and cyclist collision data.
