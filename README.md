# art-sales-bigquery-dbt project
Production-ready art sales cloud end-to-end analytics engineering project demonstrating a modern ELT pipeline using Github, VS Code + WSL Ubuntu + Python 3.11 + Conda + GCP + BigQuery + dbt + Looker Studio

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

### 1️⃣ Data Ingestion

Raw CSV data is loaded into BigQuery using:

python load_raw.py

This loads data into:

art_sales_raw.raw_art_sales

### 2️⃣ Data Transformation (dbt)

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

3️⃣ Star Schema

Fact table:

fact_art_sales

Dimension tables:

dim_artist
dim_style
dim_date

4️⃣ Analytics Models

Analytics tables used for the dashboard:

top_artists
sales_by_style
price_trend_by_year





