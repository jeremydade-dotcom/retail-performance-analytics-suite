# Retail Performance & Profitability Analytics Suite

## Business Context

A retail organization is experiencing steady revenue growth but declining profitability, creating uncertainty in strategic decision-making. While top-line performance appears strong, leadership lacks visibility into the underlying drivers of margin erosion across products, regions, customer segments, and sales channels.

As a result, decision-making has become reactive rather than data-driven, with limited ability to identify which areas of the business are driving profit versus those eroding margins.

---

## Objective

The objective of this project is to identify and quantify the key drivers of profitability decline by analyzing transactional sales data across multiple business dimensions, including region, product category, pricing structure, discount behavior, customer segments, and sales channels.

The analysis transforms raw transactional data into structured KPIs and insights and delivers them through a fully interactive Tableau analytics suite designed to support executive-level decision-making.

---

## Tools & Methods

* SQL (data cleaning, transformation, KPI development, and aggregation)
* Tableau (interactive multi-dashboard analytics suite development)
* Data modeling (creation of unified analytical view for reporting consistency and dashboard performance)

---

## Key Business Question

Why is the business generating higher revenue while experiencing declining profitability?

---

## Hypotheses

1. Increased discounting is driving revenue growth but reducing overall profit margins.
2. High-revenue products are not the highest-margin products, indicating a suboptimal product mix.
3. Certain regions are underperforming in profitability despite strong sales volume.
4. High-volume customers may contribute disproportionately to revenue but not profitability.
5. Profit margins have declined over time due to pricing or cost structure shifts.
6. Higher unit prices negatively correlate with sales volume.
7. Customer segmentation reveals distinct purchasing patterns across product categories.

---

# 1. Data Cleaning & Preparation

The dataset was cleaned and standardized to ensure analytical accuracy, consistency, and reliability across all downstream reporting and Tableau visualization.

* Standardized inconsistent regional naming conventions.
* Removed extraneous whitespace from categorical fields.
* Filtered invalid transactional records.
* Removed unrealistic discount values.
* Deduplicated transactional records.
* Added city and state geographic fields for mapping analysis.

---

# 2. SQL-Based Data Transformation & Modeling

SQL was used to transform and normalize the dataset into an analytics-ready structure.

* Developed a structured relational view (`sales_final`) as the single source of truth.
* Standardized region, product, and channel naming conventions.
* Applied trimming and casing transformations for consistency.

---

# 3. KPI Development & Business Metric Design

Core business KPIs were developed using SQL-based aggregations.

* Total revenue and profit calculations
* Profit margin development
* Regional revenue and profit analysis
* Customer segment contribution analysis
* Sales channel performance comparison
* Product profitability rankings

---

# 4. Pricing, Discounting & Profitability Analysis

Additional segmentation analysis evaluated the relationship between pricing strategy and profitability.

* Developed price tier classifications (Budget, Mid-Range, Premium)
* Segmented discount levels into low, medium, and high tiers
* Identified correlation between discount intensity and margin erosion
* Evaluated profitability contribution by pricing tier

---

# 5. Customer, Channel & Regional Performance Insights

Business performance was analyzed across operational dimensions.

* Customer segment profitability analysis
* Sales channel performance comparison
* Regional revenue and profitability concentration analysis

---

# 6. Tableau Analytics Suite

A fully interactive Tableau multi-dashboard analytics suite was developed as the final delivery layer.

* Built four interconnected dashboards
* Implemented navigation tiles between dashboards
* Enabled cross-dashboard filtering
* Developed KPI cards and comparative visualizations
* Designed cohesive dashboard storytelling and usability

---

# 7. Final Data Modeling for Visualization

A final structured SQL view (`sales_final`) was created to support Tableau reporting consistency.

* Consolidated cleaned and transformed fields
* Standardized KPI calculations
* Enabled reliable dashboard integration

---

# 8. Key Business Insights

* Revenue and profitability are heavily concentrated in the North East region.
* Certain product categories generate high revenue but low margins.
* Premium pricing tiers drive disproportionate profitability.
* Increased discounting strongly correlates with declining profit margins.
* Online and corporate channels outperform alternative sales channels.
