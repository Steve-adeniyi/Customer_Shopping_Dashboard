# Customer_Shopping_Dashboard
## 📖 Overview
This repository contains SQL queries and supporting documentation for analyzing customer shopping behavior using the CUSTOMER_SHOPPING.SALES.shopping_trends dataset.

## 🎯 Goal
The goal is to uncover actionable insights into revenue, customer demographics, purchasing patterns, and review ratings, enabling businesses to optimize marketing, product offerings, and customer engagement.

## 📊 Dataset
Source # `Customer Shopping Trends Data` Contains customer level shopping transactions with fields such as:
+ Customer ID
+ Purchase Amount (USD)
+ Subscription Status
+ Shipping Type
+ Discount Applied
+ Age Group
+ Gender
+ Promo Code
+ Category
+ Size
+ Color
+ Season
+ Location
+ Payment Method

## 🧩 Segmentation
  ## 📊 Key Metrics
  - **Revenue** > `SUM("Purchase Amount (USD))
  - **Number of Customer** > `COUNT(Customer_ID)`

## 🗂️ Classification Buckets
 -** 🎂 Age Group**
 - 18-30 = Youth
 - 31-40 = Adult
 - 41-50 = Senior
 - 51+ =Elder

-** 💰Spend Buckets**
 - $20-$30 = Low Spend
 - $31-$50 = Medium Spend
 - $51-$70 = High Spend
 - $71+ = Very High Spend
-** ⭐ Review Rating Bucket**
   - < 3.0 = Bad
   - 3.1-4.0 = Neutral
   - > 4.1 = Good

## 📅 Time-Based Analysis
 - `Purchase_Date` = Transaction Date
 - `Day_Name` = Day of Week
 - `Day_of_Month` = Day number
 - `Name_of_Month` = Month Name
 - `Month_ID` = Year + Month (YYYYMM)

## 💡 Key Insights
 - **Youth(18-30)** and **Adult (31-40)** drive the majority of purchase, but **Seniors (41-50)** and **Elders (51+)** show higher average spend.
 - **High Spender ($51-$70)** and **Very High spender ($71)** contribute disapropotionately to revenue.
 - **Good reviews (>4.1)** correlate strongly with higher revenue, while **Bad reviews (<3.0)** indicate potential risk
 - **Subscripton status** and **Promo code usage** significantly influence customer retention and revenue
 - **Payment method** and **Shipping types** reveal operational preferences that can guide logistics planning and optimization
 - **Season** is evident: certain cetagories peak is specific seasons (e.g, clothing in winter, accesssories in summer)
 - **Location** Highlightgeographic hotspot for the revenue growth

 ## 🛠️ Tool Used
 + Excel - Data Source
 + Snowflake - Data Manipulation
 + PowerBI - Data analyzing and presentation
 + Google Looker Studio - Data analyzing and Presentation: https://lookerstudio.google.com/reporting/f3c8344a-d38f-4fde-a1f4-58118f77d904
