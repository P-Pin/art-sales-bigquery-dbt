# art-sales-bigquery-dbt project
Production-ready art sales cloud end-to-end analytics engineering project demonstrating a modern ELT pipeline using Github, VS Code + WSL Ubuntu + Python 3.11 + Conda + GCP + BigQuery + dbt + Looker Studio

# Focus Learning:
Python Ingestion
Cloud data warehouse
Data modeling
Analytics engineering
Dashboarding

## 📊 Executive Art Market Intelligence Dashboard

This dashboard visualizes insights from the art sales data pipeline built using:

- Python (data ingestion)
- BigQuery (data warehouse)
- dbt (data transformations)
- Meltano (pipeline orchestration)
- Looker Studio (business intelligence)

🔗 **Live Dashboard**

[View the Interactive Dashboard]([https://lookerstudio.google.com/reporting/abcd1234/page/p_xyz](https://lookerstudio.google.com/reporting/ed13ddd8-bc45-4ed7-9e4e-0e0e9f6262f3)

---

## 📊 Dashboard Preview

![Art Sales Dashboard](docs/dashbd_preview.png)

---

## Project Overview

This project builds an end-to-end data pipeline to analyze art market sales data.

The pipeline ingests raw CSV data, loads it into a cloud data warehouse, transforms it into a dimensional model using dbt, and visualizes insights through a BI dashboard.

---

## Architecture

CSV Dataset
↓
Python Data Ingestion
↓
BigQuery Raw Layer
↓
dbt Staging Models
↓
dbt Mart Models (Star Schema)
↓
Analytics Tables
↓
Looker Studio Dashboard

---

## Tech Stack

- Python
- Google BigQuery
- dbt
- Looker Studio
- GitHub

---

## Data Pipeline Steps

### 1 Data Ingestion

Raw CSV data is loaded into BigQuery using:

python load_raw.py

This loads data into:

art_sales_raw.raw_art_sales

### 2 Data Transformation (dbt)

Run dbt models:

cd art_sales_dbt
dbt run
dbt test

Models created:

stg_art_sales
dim_artist
dim_style
dim_date
fact_art_sales

### 3 Star Schema

Fact table:

fact_art_sales

Dimension tables:

dim_artist
dim_style
dim_date

### 4 Analytics Models

Analytics tables used for the dashboard:

top_artists
sales_by_style
price_trend_by_year

---

### 5 Dashboard

Interactive dashboard built in Looker Studio.

Features:

- Total sales KPIs
- Top artists
- Sales by art movement
- Price trends over time

---

## Dataset

Dataset source:

Kaggle Art Sales Dataset

Download and place in:
data/artDataset.csv

Dataset is not stored in Github repository due to file size limits (100MB).

---

## Project Structure

art-sales-bigquery-dbt
|
|--art_sales_dbt  # dbt models
|--docs           # dashboard screenshot
|--notebooks      # analysis
|--load_raw.py    # ingestion script
|--README.md
|--.gitignore

---

## Dashboard Preview

![Dashboard](docs/dashbd_preview.png)

---

## Future Improvements

- Add pipeline automation
- Add scheduled orchestration
- Add machine learning forecasting
