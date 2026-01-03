SELECT 
    SUM("Purchase Amount (USD)") AS Revenue,
    COUNT(customer_id) AS Number_of_Customers,

    SUBSCRIPTION_STATUS,
    SHIPPING_TYPE,
    DISCOUNT_APPLIED,
    PROMO_CODE_USED,
    PAYMENT_METHOD,
    GENDER,
    CATEGORY,
    SIZE,
    COLOR,
    SEASON,
    FREQUENCY_OF_PURCHASES,
    LOCATION,
    
    -- Age grouping --
    CASE 
        WHEN age BETWEEN 18 AND 30 THEN 'Youth'
        WHEN age BETWEEN 31 AND 40 THEN 'Adult'
        WHEN age BETWEEN 41 AND 50 THEN 'Senior'
        ELSE 'Elder'
    END AS Age_groups,

    -- Spend bucket --
    CASE 
        WHEN "Purchase Amount (USD)" BETWEEN 20 AND 30 THEN 'Low Spend'
        WHEN "Purchase Amount (USD)" BETWEEN 31 AND 50 THEN 'Medium Spend'
        WHEN "Purchase Amount (USD)" BETWEEN 51 AND 70 THEN 'High Spend'
        ELSE '70+ Very High'
    END AS Spend_Bucket,

    -- Review bucket --
    CASE 
        WHEN review_rating <= 3.0 THEN 'Bad' 
            WHEN review_rating >= 3.1 AND review_rating <=4.0 THEN 'Neutral' 
            ELSE 'Good' 
        END AS review_rating_bucket, 

       -- Date/time breakdowns --
    TO_DATE(processdate) AS purchase_date,
    DAYNAME(TO_DATE(processdate)) AS day_name,
    DAYOFMONTH(TO_DATE(processdate)) AS day_of_month,
    MONTHNAME(TO_DATE(processdate)) AS name_of_month,
    TO_CHAR(TO_DATE(processdate), 'YYYYMM') AS month_ID,
       
FROM CUSTOMER_SHOPPING.SALES.shopping_trends

GROUP BY ALL;

          OR   

    SELECT 
    --- Aggregation ---
    
    SUM("Purchase Amount (USD)") AS Revenue,
    COUNT(Distinct customer_id) AS Number_of_Customers,

      --- Date/time breakdowns ---
    
    TO_DATE(processdate) AS purchase_date,
    DAYNAME(processdate) AS day_name,
    DAYOFMONTH(processdate) AS day_of_month,
    MONTHNAME(processdate) AS name_of_month,
    TO_CHAR(processdate, 'YYYYMM') AS month_ID,

    --- Dimensions ---
     SUBSCRIPTION_STATUS,
    SHIPPING_TYPE,
    DISCOUNT_APPLIED,
    PROMO_CODE_USED,
    PAYMENT_METHOD,
    GENDER,
    CATEGORY,
    SIZE,
    COLOR,
    SEASON,
    FREQUENCY_OF_PURCHASES,
    LOCATION,

     --- Review bucket ---
    CASE 
        WHEN review_rating BETWEEN 2.5 AND 3.0 THEN 'Bad'
        WHEN review_rating BETWEEN 3.1 AND 4.0 THEN 'Fair'
        ELSE 'Good'
    END AS review_rating_bucket,

     --- Spend bucket ---
     CASE
        WHEN "Purchase Amount (USD)" BETWEEN 20 AND 30 THEN 'Low Spend'
        WHEN "Purchase Amount (USD)" BETWEEN 31 AND 50 THEN 'Medium Spend'
        WHEN "Purchase Amount (USD)" BETWEEN 51 AND 70 THEN 'High Spend'
        ELSE '70+ Very High'
    END AS Spend_Buckets,

    --- Age grouping ---
    
   CASE WHEN age BETWEEN 18 AND 30 THEN 'Youth'
        WHEN age BETWEEN 31 AND 40 THEN 'Adult'
        WHEN age BETWEEN 41 AND 50 THEN 'Senior'
        ELSE 'Elder'
    END AS Age_groups

FROM CUSTOMER_SHOPPING.SALES.shopping_trends

GROUP BY ALL;
   
