# Olist E-Commerce SQL Analysis

## 🎯 Overview
Comprehensive SQL analysis of Brazilian e-commerce dataset (Olist) containing **100,000+ orders** across **8 relational tables**. This project demonstrates advanced SQL skills including complex joins, aggregations, stored procedures, views, and performance optimization — essential for **SQL Developer** and **Data Analyst** roles.
## 📊 Dataset Information
- **Data Source:** Olist E-Commerce Public Dataset (Brazilian market)
- **Time Period:** 2016-2018
- **Total Orders:** 100,000+
- **Total Customers:** 96,000+
- **Products:** 32,000+
- **Sellers:** 3,000+
## 📁 Database Structure
**8 Core Tables with Relationships:**
- `olist_orders_dataset` — Order header data (order_id, customer_id, timestamps)
- `olist_customers_dataset` — Customer information (location, city, state)
- `olist_order_payments_dataset` — Payment details (payment_type, value, installments)
- `olist_order_reviews_dataset` — Customer reviews (rating, comments, scores)
- `olist_order_items_dataset` — Items in orders (product_id, price, shipping)
- `olist_products_dataset` — Product catalog (category, weight, dimensions)
- `olist_sellers_dataset` — Seller information
- `olist_geolocation_dataset` — Geographic data (zip codes, coordinates)
 ## 🗂️ Repository Contents

### SQL Files
- **`olist_database_export.sql`** — Complete database schema with all 100,000+ rows of data
  - Includes: CREATE TABLE statements, primary/foreign keys, constraints, data inserts
  - Use this to recreate the entire database on your MySQL server

- **`olist_kpi_queries.sql`** — 5 KPI analysis queries with detailed comments
  - Each query includes business context and insights
  - Production-ready with proper formatting and optimization
 ### Screenshots
- `screenshots/` — Visual proof of query results and schema structure

## 📈 KPI Analysis — 5 Key Business Metrics

### KPI 1: Weekday vs Weekend Payment Statistics
**Query:** Analyzes payment patterns by day type
```
Business Question: Do customers spend more on weekends vs weekdays?
Key Metrics: Total orders, total payment, average payment by day type
SQL Skills: CASE statement, DAYOFWEEK(), aggregate functions, JOIN
  ### KPI 2: 5-Star Reviews + Credit Card Payments
**Query:** Identifies high-satisfaction orders paid with credit card
```
Business Question: Which payment method receives best reviews?
Key Metrics: Payment type count, revenue, average payment for 5-star orders
SQL Skills: Multiple JOINs (4 tables), WHERE conditions, GROUP BY
```

### KPI 3: Average Delivery Days by Product Category
**Query:** Delivery performance analysis by product type
```
Business Question: Which product categories have slowest delivery?
Key Metrics: Order count, average delivery days (DATEDIFF calculation)
SQL Skills: DATE calculations, DATEDIFF, JOINs, ORDER BY
### KPI 4: Average Price & Payment in Sao Paulo
**Query:** Regional analysis for Brazil's largest market
```
Business Question: What's the spending pattern in Sao Paulo?
Key Metrics: Order count, average item price, average payment
SQL Skills: WHERE filtering by city, AVG aggregation, multiple JOINs
```

### KPI 5: Shipping Days vs Review Score Correlation
**Query:** Analyzes relationship between delivery speed and satisfaction
```
Business Question: Does faster delivery improve customer reviews?
Key Metrics: Average shipping days, average review score, order count
SQL Skills: Correlation analysis, DATEDIFF, GROUP BY with calculations
## 🛠️ Technical Features

### SQL Concepts Demonstrated
✅ **SELECT Statements** — Complex multi-table queries
✅ **JOINs** — INNER, LEFT, combining 4-5 tables efficiently
✅ **Aggregations** — COUNT, SUM, AVG with GROUP BY, HAVING
✅ **Subqueries** — Nested queries for complex analysis
✅ **Date Functions** — DATEDIFF, DAYOFWEEK, YEAR, MONTH
✅ **CASE Statements** — Conditional logic (Weekday/Weekend)
✅ **Window Functions** — Advanced analytical queries
✅ **Data Filtering** — WHERE, GROUP BY, ORDER BY optimization
✅ **Normalization** — Proper schema design, referential integrity
✅ **Indexes** — Performance optimization concepts
### Database Design Features
✅ Properly normalized relational schema (1NF, 2NF, 3NF)
✅ Primary keys and foreign key constraints
✅ Data type optimization
✅ Referential integrity across all tables
✅ Efficient JOIN paths

## 🚀 How to Use

### Import Database Locally
```bash
# Method 1: MySQL Command Line
mysql -u username -p < olist_database_export.sql
# Method 2: MySQL Workbench
1. Server → Data Import
2. Select olist_database_export.sql
3. Click Start Import
```

### Run KPI Queries
```bash
1. Open MySQL Workbench or MySQL CLI
2. Connect to your database
3. Copy-paste queries from olist_kpi_queries.sql
4. Execute each query separately
5. Analyze results
### Expected Output
Each KPI query returns:
- KPI 1: Day type summary with spending data
- KPI 2: Payment method analysis with satisfaction metrics
- KPI 3: Category-wise delivery performance ranking
- KPI 4: Sao Paulo market demographics and spending
- KPI 5: Correlation between shipping time and ratings

## 📊 Sample Query Results
[See `screenshots/` folder for visual proof of all query results]

## 🎓 Skills Demonstrated
### For SQL Developer Roles
✓ Advanced SQL writing (joins, subqueries, aggregations)
✓ Database design and normalization
✓ Query optimization and performance tuning
✓ Complex business logic in SQL
✓ Data integrity and constraints
✓ Real-world data analysis scenarios

### For Data Analyst Roles
✓ KPI development and tracking
✓ Business question answering with SQL
✓ Data exploration and insights
✓ Performance analysis
✓ Trend identification
✓ Decision support analytics

## 🔍 Tools & Technologies
- **Database:** MySQL 8.0+
- **Client:** MySQL Workbench
- **Language:** SQL
- **Dataset:** Public dataset (Olist/Kaggle)

## 📚 Learning Resources Used
- SQL Window Functions
- Date/Time Functions in MySQL
- Database Normalization Principles
- Query Optimization Techniques
- Real-world E-Commerce Analytics
## 💡 Key Insights from Analysis
1. **Payment Behavior:** Identifies weekday/weekend spending patterns
2. **Customer Satisfaction:** Correlates payment methods with satisfaction
3. **Logistics Performance:** Reveals product categories needing delivery improvement
4. **Market Analysis:** Deep-dive into Sao Paulo's economic behavior
5. **Service Quality:** Links delivery speed directly to customer satisfaction

## 🤝 How This Helps Your Career

### For SQL Developer Interview Prep
- Shows ability to write complex, production-ready SQL
- Demonstrates understanding of database relationships
- Proves capability to optimize queries
- Shows analytical thinking applied to real data
## 💡 Key Insights from Analysis
1. **Payment Behavior:** Identifies weekday/weekend spending patterns
2. **Customer Satisfaction:** Correlates payment methods with satisfaction
3. **Logistics Performance:** Reveals product categories needing delivery improvement
4. **Market Analysis:** Deep-dive into Sao Paulo's economic behavior
5. **Service Quality:** Links delivery speed directly to customer satisfaction

## 🤝 How This Helps Your Career

### For SQL Developer Interview Prep
- Shows ability to write complex, production-ready SQL
- Demonstrates understanding of database relationships
- Proves capability to optimize queries
- Shows analytical thinking applied to real data
### For Data Analyst Interview Prep
- Proves ability to extract business insights from raw data
- Shows understanding of KPI development
- Demonstrates communication of findings
- Shows data literacy and analytical skills

## 📝 Project Statistics
- **Total SQL Lines:** 150+
- **Tables Analyzed:** 8
- **Rows Processed:** 100,000+
- **KPIs Developed:** 5
- **Time to Complete:** 10-15 hours (from setup to GitHub)
## 🔗 Connect With Me
- **LinkedIn:** [www.linkedin.com/in/riya-pawar-0805rp]
- **Email:** riyap6701@gmail.com
- **GitHub:** github.com/RiyapPawar

---

*Created by Riya Premsingh Pawar | SQL Developer | Data Analyst*
*Last Updated: June 2026*
