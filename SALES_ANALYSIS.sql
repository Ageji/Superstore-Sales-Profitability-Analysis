--What are the monthly sales and profit trends?
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    TO_CHAR(order_date, 'Month') AS month,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_sales
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date),
    TO_CHAR(order_date, 'Month')
ORDER BY year, EXTRACT(MONTH FROM order_date);

-- Which product categories and sub-categories are the most profitable?
SELECT
    category,
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_sales
GROUP BY category, sub_category
ORDER BY total_profit DESC;

--Which customers generate the most revenue?
SELECT
    customer_id,
    customer_name,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_sales
GROUP BY customer_id, customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- How does discounting affect profitability?
SELECT
    discount,
    COUNT(*) AS orders,
    ROUND(AVG(profit), 2) AS avg_profit,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_sales
GROUP BY discount
ORDER BY discount;

-- Which regions have strong sales but weak profitability?
SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales) * 100)::numeric, 2) AS profit_margin
FROM superstore_sales
GROUP BY region
ORDER BY total_sales DESC;

-- Which customers generate the most sales within each region?
WITH customer_sales AS (
    SELECT
        region,
        customer_id,
        customer_name,
        SUM(sales) AS total_sales
    FROM superstore_sales
    GROUP BY region, customer_id, customer_name
),

ranked_customers AS (
    SELECT
        region,
        customer_name,
        ROUND(total_sales, 2) AS total_sales,
        RANK() OVER (
            PARTITION BY region
            ORDER BY total_sales DESC
        ) AS sales_rank
    FROM customer_sales
)

SELECT
    region,
    customer_name,
    total_sales,
    sales_rank
FROM ranked_customers
WHERE sales_rank <= 3
ORDER BY region, sales_rank;

-- Which products are the best-selling products but also generate the most profit?
WITH product_performance AS (
    SELECT
        product_name,
        category,
        SUM(sales) AS total_sales,
        SUM(profit) AS total_profit
    FROM superstore_sales
    GROUP BY product_name, category
),

ranked_products AS (
    SELECT
        product_name,
        category,
        ROUND(total_sales, 2) AS total_sales,
        ROUND(total_profit, 2) AS total_profit,

        RANK() OVER (
            ORDER BY total_sales DESC
        ) AS sales_rank,

        RANK() OVER (
            ORDER BY total_profit DESC
        ) AS profit_rank

    FROM product_performance
)

SELECT *
FROM ranked_products
WHERE sales_rank <= 10
   OR profit_rank <= 10
ORDER BY sales_rank;