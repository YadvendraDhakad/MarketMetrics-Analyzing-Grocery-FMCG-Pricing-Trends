create database project_Group_4;
use project_Group_4;


-- 1. Group by category or brand and calculate average prices
SELECT 
    category,
    round(AVG(sale_price),2) AS avg_sale_price,
    round(AVG(market_price),2) AS avg_market_price
FROM 
    BigBasket_Products
GROUP BY 
    category;

-- Group by brand
SELECT 
    brand,
    AVG(sale_price) AS avg_sale_price,
    AVG(market_price) AS avg_market_price
FROM 
    BigBasket_Products
GROUP BY 
    brand
ORDER BY 
    avg_sale_price DESC;


-- 2. Use subqueries to find top 5 most expensive items in each category

SELECT *
FROM (
    SELECT 
        product,
        category,
        sale_price,
        RANK() OVER (PARTITION BY category ORDER BY sale_price DESC) AS rank_in_category
    FROM 
        BigBasket_Products
) ranked
WHERE rank_in_category <= 5;

-- 3. Use window functions: Ranking or Running Average

SELECT 
    brand,
    product,
    sale_price,
    RANK() OVER (PARTITION BY brand ORDER BY sale_price DESC) AS brand_rank
FROM 
    BigBasket_Products;

-- Running average of sale_price by category (ordered by price)
SELECT 
    category,
    product,
    sale_price,
    AVG(sale_price) OVER (PARTITION BY category ORDER BY sale_price ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_avg_price
FROM 
    BigBasket_Products;



