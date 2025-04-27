# Telecom Insights Dashboard

## Objective
Analyze telecom data using **Python**, **SQL**, and **Power BI** to gain insights into:
- Customer behavior
- Billing patterns
- Service plan effectiveness
- Overall operational performance

## Data Cleaning (Python)

**Cleaning Tasks Performed:**
- Removed duplicate records across all datasets.
- Standardized text fields: converted to lowercase and trimmed whitespaces.
- Formatted phone numbers: removed non-digit characters.
- Converted data types:
  - Dates: `dob`, `call_start_time`, `call_end_time`
  - Numerics: `bill_amount`, `call_duration_minutes`, `data_usage_mb`
- Handled missing values:
  - Numerical columns: filled with median
  - Categorical columns: filled with mode
- Removed outliers: applied IQR method for fields like `bill_amount`, `data_usage_mb`.
- Validated relationships: ensured consistency of `customer_id` across tables.
- Exported cleaned data to:
  - `bills_cleaned.csv`
  - `calls_cleaned.csv`
  - `services_cleaned.csv`
  - `customers_cleaned.csv`


## SQL Database Setup

**Database and Tables Created:**
- **customers**: Customer personal and contact information.
- **bills**: Billing details including due date, amount, and payments.
- **calls**: Logs of all customer calls with type, status, and timing.
- **services**: Customer service plan usage including messages, minutes, and data.

**Key Features:**
- Defined foreign keys using `customer_id` to enforce relational integrity.
- Uploaded cleaned CSVs into SQL tables using **SQLAlchemy** in Python.


## Dashboard Creation (Power BI)

**Visualizations Included:**

- **KPI Cards**:
  - Total Sales (sum of bill amounts)
  - Total Customers
  - Average Monthly Usage
  - Total Calls

- **Bar Chart**:
  - Top 5 Customers with Most Calls

- **Donut Chart**:
  - Customer Payment Behavior

- **Column Chart**:
  - Calls Per Month

- **Line Chart**:
  - Peak Days of Calls

- **Pie Chart**:
  - Customer Plan Type

- **Slicers**:
  - Plan Type
  - Call Status
  - Date Range (Start to End)


## Business Insights Gained

**Customer Behavior:**
- Over 33% of customers paid their bills late, indicating churn risk.
- Majority of calls were made by a small group of active users.

**Revenue Patterns:**
- Total revenue and usage metrics are traceable via billing data.
- On-time payment tracking can help predict financial health.

**Network Usage:**
- Peak call periods identified using daily and monthly trends.
- Insights can be used for infrastructure and bandwidth planning.

**Service Optimization:**
- Plan distribution is balanced, providing an opportunity to tailor plans based on usage.
- Customer plan migration and performance are clearly highlighted.

**Support Center Performance:**
- Missed and failed calls provide metrics to monitor call quality.
- Call duration and frequency data can be used for call center performance evaluation.

---

## Conclusion

This project demonstrates how telecom data from multiple sources can be cleaned, structured, and analyzed to provide actionable business insights. It helps identify customer trends, payment behaviors, network performance, and service usage patterns that can inform decision-making and improve overall customer satisfaction.

