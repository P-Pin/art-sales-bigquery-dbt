import pandas as pd
from google.cloud import bigquery

PROJECT_ID = "art-sales-prod2026"
DATASET = "art_sales_raw"
TABLE = "raw_art_sales"

client = bigquery.Client(project=PROJECT_ID)

df = pd.read_csv("data/artDataset.csv")

table_id = f"{PROJECT_ID}.{DATASET}.{TABLE}"

job = client.load_table_from_dataframe(df, table_id)
job.result()

print("Data successfully loaded into BigQuery.")