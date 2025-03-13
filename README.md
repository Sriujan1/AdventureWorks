# End-to-End Data Engineering Pipeline: Kaggle to Azure

## Overview

This project demonstrates an end-to-end data engineering pipeline leveraging Azure services to process and analyze data sourced from Kaggle. The pipeline follows the Medallion Architecture (Bronze, Silver, Gold) and integrates Azure Data Factory, Azure Data Lake Gen2, Azure Databricks, and Azure Synapse Analytics for structured data processing and visualization.

## Architecture Diagram

![Architecture](https://github.com/user-attachments/assets/65e6d1c5-72c1-4877-908d-3dd05f2dc099)


## Tech Stack

* Kaggle – Source of raw data
* GitHub – Data repository
* Azure Data Factory (ADF) – For automated data ingestion
* Azure Data Lake Storage Gen2 (ADLS Gen2) – Storage for raw, cleaned, and refined data
* Azure Databricks – For data transformation using PySpark
* Azure Synapse Analytics – For analytical querying
* Power BI – For data visualization

## Data Ingestion (Bronze Layer)

1. Fetched data from Kaggle and stored it in GitHub.
2. Connected Azure Data Factory (ADF) to GitHub using HTTP functionality.
3. Used Lookup, ForEach, and Copy activities in ADF to dynamically ingest raw data into Azure Data Lake Gen2 (Bronze Layer).
4. Followed Medallion Architecture to ensure structured data processing.

## Data Transformation (Silver Layer)

1. Connected ADLS Gen2 with Azure Databricks using access connectors.
2. Performed data transformation using PySpark functions:
  * withColumn, concat_ws, to_timestamp, regex_replace for data cleansing and formatting.
  * groupBy, agg for aggregations and summary statistics.
3. Stored transformed data into the Silver Layer in ADLS Gen2.

## Data Storage & Querying (Gold Layer)

1. Created a database in Azure Synapse Analytics.
2. Defined External Tables using:
  * Master Key, Credentials, and External Data Sources.
3. Optimized structured storage for analytical querying in Synapse.

## Data Visualization

1. Connected Synapse Analytics with Power BI.
2. Created interactive dashboards to extract insights from the Gold Layer.

## Key Features

✔ Automated Data Ingestion from Kaggle to Azure using GitHub & ADF

✔ Dynamic Pipeline Orchestration with ADF (Lookup, ForEach, Copy activities)

✔ Structured Data Processing following the Medallion Architecture

✔ Scalable Transformations using PySpark in Databricks

✔ Optimized Storage & Querying with Azure Synapse Analytics
✔ Actionable Insights via Power BI Dashboards
