# MarketMetrics-Analyzing-Grocery-FMCG-Pricing-Trends

# Team Members
• Ashutosh Rawat – Data Cleaning & Preparation
• Abhay Tiwari – Statistical Analysis & Visualization
• Yadvendra Singh Dhakad – SQL Analysis & Dashboard Development,Github & Documentation

# Project Overview
This project aims to explore and analyze pricing trends within the Indian online grocery and FMCG sector using a dataset of 27,439 products from BigBasket. The primary objective is to provide data-driven insights into price behavior across categories, brands, and pack sizes using data wrangling, statistical analysis, SQL queries, and visual storytelling.

# Data Cleaning Tasks
Performed by Ashutosh Rawat:

- Removed currency symbols and standardized the `sale_price` and `market_price`.
- Handled missing or null values (if any).
- Standardized inconsistent product names, brand names, and quantity representations.
- Simplified product descriptions for streamlined analysis.
- Grouped and merged similar sub-categories and types where possible.

# Exploratory Data Analysis (EDA)
Conducted by Abhay Tiwari:

# Visualizations Used:
- Grouped Bar Charts: Average price by category and brand.
- Box Plots: Price variation across categories.
- Histograms & KDE Plots: Distribution of prices.
- Heatmap: Correlation between price, rating, and market_price.

# Key Insights:
- Highest Avg Price Categories: Beauty & Hygiene, Gourmet Foods.
- Lowest Avg Price Categories: Staples, Bakery.
- Categories with Most Price Dispersion: Snacks & Branded Foods.
- Brand Effect: Premium brands have noticeably higher prices.
- Pack Size Trend: Larger packs usually offer better value per unit.

# Statistical Analysis
Also by Abhay Tiwari:
- t-Test: Compared prices of branded vs unbranded items — branded items were significantly more expensive.
- ANOVA Test: Confirmed significant price differences between product categories.
- Descriptive Stats: Computed mean, median, standard deviation for each category and sub-category.

# SQL-Based Insights
Conducted by Yadvendra Singh Dhakad:

# Queries Performed:
1. Average Price per Category
SELECT category, ROUND(AVG(sale_price), 2) AS avg_price
FROM products
GROUP BY category
ORDER BY avg_price DESC;

2. Top 5 Expensive Items in Each Category
SELECT *
FROM (
    SELECT *, RANK() OVER (PARTITION BY category ORDER BY sale_price DESC) AS rank
    FROM products
) ranked
WHERE rank <= 5;

3. Categories with Highest Price Variation
   
SELECT category, STDDEV(sale_price) AS price_std_dev
FROM products
GROUP BY category
ORDER BY price_std_dev DESC;

5. Brand-wise Price Analysis
SELECT brand, COUNT(*) AS products, AVG(sale_price) AS avg_price
FROM products
GROUP BY brand
ORDER BY products DESC
LIMIT 10;

# Dashboard & KPI Cards
Built by Yadvendra Singh Dhakad using Tableau:

# Highlights:
- Average Price Across All Products: ₹174.36
- Total Product Categories: 17
- Top Category by Average Price: Beauty & Hygiene
- Most Represented Brands: Nivea, Surf Excel, Haldiram's
- Popular Pack Sizes: 1 kg, 500 ml
- Visual Filters: Category, Brand, Price Range

# Conclusion

The MarketMetrics project successfully uncovered key pricing patterns in the online grocery space. Insights from category-level analysis, brand positioning, and price variance can help optimize product listing strategies. Combining SQL, Python, and Tableau tools enabled a holistic and actionable business intelligence workflow.

<img width="432" height="649" alt="image" src="https://github.com/user-attachments/assets/17c668c5-7512-435f-82b4-9e67de17e55f" />


Real-time insights into grocery &amp; FMCG pricing trends.
