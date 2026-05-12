Matplot-Insights: Automated Sales Reporting Dashboard

This project demonstrates an automated data visualization pipeline. It connects to a MySQL database, processes sales data using Python, generates various analytical charts (Line, Bar, Pie), and uses a scheduler to automate the reporting process.

Tech Stack
Python: Core logic and data processing.

Pandas: For data manipulation and aggregation.

Matplotlib: For creating high-quality analytical visualizations.

MySQL Connector: To fetch real-time data from the SQL database.

Schedule & Time: For automating the script execution.

Project Components
1. Database Setup (vis_project.sql)
A structured sales database with a sales_analytics table containing:

Customer demographics (Name, Age, Gender, City).

Product details (Category, Unit Price, Quantity).

Financial metrics (Sales Amount, Profit, Shipping Cost).

Order tracking (Payment Mode, Delivery Status).

2. Data Extraction (matplotlib.py)
The script establishes a secure connection to the MySQL server and performs:

SQL Querying: Extracts specific fields required for analysis.

Data Cleaning: Converts date strings into Python datetime objects for accurate trend plotting.

3. Automated Visualization Engine
The script generates four distinct types of insights:

Daily Sales Trend: A Line Plot showing revenue fluctuations over time.

Sales by Category: A Bar Chart comparing performance across different product lines.

Regional Distribution: A Pie Chart visualizing sales share across different geographic regions.

Top 5 Products: A Horizontal Bar Chart identifying the highest revenue-generating items.

4. Reporting Automation
Includes a robust scheduling system:

Automatic Directory Creation: Creates a /reports folder to store daily snapshots.

Daily Scheduler: Configured to run the dashboard logic every day at a specific time (e.g., 6:00 PM) to provide stakeholders with updated insights automatically.

How to Run
Database: Import and run vis_project.sql in MySQL to populate the sales data.

Dependencies: Install required libraries: pip install pandas matplotlib mysql-connector-python schedule.

Execute: Run python matplotlib.py.

Output: Check the /reports folder for the generated .png dashboard charts.



