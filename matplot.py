import schedule
import time
import mysql.connector
import pandas as pd
import matplotlib.pyplot as plt
import os
from datetime import datetime

# 1. Fetch data from MySQL
def fetch_data():
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root123",
        database="yourdatabase"
    )
    query = "SELECT date, product, category, region, sales FROM sales_table;"
    df = pd.read_sql(query, conn)
    conn.close()
    df['date'] = pd.to_datetime(df['date'])
    return df

# 2. Create charts
def create_charts(df):
    os.makedirs("reports", exist_ok=True)
    today = datetime.now().strftime('%Y%m%d')

    #Daily Sales Trend
    daily = df.groupby("date")["sales"].sum().reset_index()
    plt.figure(figsize=(8,5))
    plt.plot(daily["date"], daily["sales"], marker="o", color="blue")
    plt.title("Daily Sales Trend")
    plt.xlabel("Date")
    plt.ylabel("Sales")
    plt.grid(True)
    plt.savefig(f"reports/daily_sales_{today}.png")
    plt.close()

    #Sales by Category
    category_sales = df.groupby("category")["sales"].sum().reset_index()
    plt.figure(figsize=(6,4))
    plt.bar(category_sales["category"], category_sales["sales"], color="green")
    plt.title("Sales by Category")
    plt.xlabel("Category")
    plt.ylabel("Total Sales")
    plt.savefig(f"reports/sales_by_category_{today}.png")
    plt.close()

    #Sales by Region
    region_sales = df.groupby("region")["sales"].sum()
    plt.figure(figsize=(6,6))
    plt.pie(region_sales, labels=region_sales.index, startangle=90)
    plt.title("Sales by Region")
    plt.savefig(f"reports/sales_by_region_{today}.png")
    plt.close()

    #Top 5 Products
    top_products = df.groupby("product")["sales"].sum().sort_values(ascending=False).head(5)
    plt.figure(figsize=(6,4))
    top_products.plot(kind="bar", color="orange")
    plt.title("Top 5 Products")
    plt.xlabel("Product")
    plt.ylabel("Total Sales")
    plt.savefig(f"reports/top_products_{today}.png")
    plt.close()

    print("All charts generated and saved in /reports folder")

# 3. Task
def job():
    print(f"Running dashboard at {datetime.now()}")
    data = fetch_data()
    create_charts(data)

# 4. Schedule every day at 6 PM
schedule.every().day.at("16:31").do(job)

print("Scheduler started... Waiting for 6 PM")
while True:
    schedule.run_pending()
    time.sleep(60)