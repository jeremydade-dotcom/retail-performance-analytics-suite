-- =========================================================
-- RETAIL PERFORMANCE & PROFITABILITY ANALYTICS SUITE
-- SQL QUERY DOCUMENTATION
-- Purpose:
-- Business KPI development, profitability analysis,
-- segmentation analysis, and Tableau dashboard support
-- =========================================================
-- KPI 1: Profit Margin Calculations
-- =========================================================
SELECT 
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) * 100.0 / SUM(revenue)), 2) AS avg_profit_margin 
FROM sales_final;

-- =========================================================
-- BUSINESS PERFORMANCE OVERVIEW
-- =========================================================
-- KPI 2: Revenue by Region
-- =========================================================
SELECT 
    region,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM sales_final
GROUP BY region
ORDER BY total_revenue DESC;

-- =========================================================
-- KPI 3: Profit by Region
-- =========================================================
SELECT 
    region,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_final
GROUP BY region
ORDER BY total_profit DESC;

-- =========================================================
-- GEOGRAPHIC PERFORMANCE ANALYSIS
-- =========================================================
-- KPI 4: Top 10 Cities (Profit)
-- =========================================================
SELECT 
    city,
    state,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_final
GROUP BY city, state
ORDER BY total_profit DESC
LIMIT 10;

-- =========================================================
-- PRODUCT PERFORMANCE ANALYSIS
-- =========================================================
-- KPI 5: Product Category Performance
-- =========================================================
SELECT 
    product_category,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_final
GROUP BY product_category
ORDER BY total_profit DESC;

-- =========================================================
-- KPI 6: Top Products
-- =========================================================
SELECT 
    product_name,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_final
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

-- =========================================================
-- PRICING & DISCOUNT ANALYSIS
-- =========================================================
-- KPI 7: Discount Impact (Key Story)
-- =========================================================
SELECT 
    discount_tier,
    ROUND(AVG(profit_margin), 2) AS avg_profit_margin,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM sales_final
GROUP BY discount_tier
ORDER BY avg_profit_margin DESC;

-- =========================================================
-- KPI 8: Price Tier Performance
-- =========================================================
SELECT 
    price_tier,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_final
GROUP BY price_tier
ORDER BY total_profit DESC;

-- =========================================================
-- CHANNEL & CUSTOMER ANALYSIS
-- =========================================================
-- KPI 9: Channel Performance
-- =========================================================
SELECT 
    channel,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_final
GROUP BY channel
ORDER BY total_profit DESC;

-- =========================================================
-- KPI 10: Customer Segment
-- =========================================================
SELECT 
    customer_segment,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_final
GROUP BY customer_segment
ORDER BY total_profit DESC;

-- =========================================================
-- TIME SERIES ANALYSIS
-- =========================================================
-- KPI 11: Time Trend
-- =========================================================
SELECT 
    order_date,
    ROUND(SUM(revenue), 2) AS daily_revenue,
    ROUND(SUM(profit), 2) AS daily_profit
FROM sales_final
GROUP BY order_date
ORDER BY order_date;

-- =========================================================
-- NOTES
-- =========================================================
-- All aggregations are performed using cleaned and standardized dataset (sales_final)
-- Categorical inconsistencies (region, product_name, channel) were normalized prior to analysis
-- Profit margin is calculated as SUM(profit) / SUM(revenue)
-- Dataset is optimized for Tableau dashboard integration
-- =========================================================



