# Ola Ride Data Analysis | Python EDA, SQL & Power BI Project


# Project Overview
This project is an end-to-end data analysis of Ola's ride-booking dataset. The primary goal is to uncover key operational bottlenecks, analyze revenue trends, understand customer behavior, and provide actionable business recommendations to increase sales, improve profit margins, and reduce cancellations.

The project follows a complete data pipeline:

Python (EDA): Data cleaning, handling missing values, outlier detection, and statistical exploration.

SQL (MySQL): Deep-dive data extraction and answering specific business KPIs.

Power BI: Creating interactive dashboards for stakeholders to visualize the insights.

# Tech Stack
Programming Language: Python

Python Libraries: Pandas, NumPy, Matplotlib, Seaborn

Database: MySQL (Workbench)

Data Visualization: Power BI

Data Processing: Microsoft Excel

Environment: Jupyter Notebook

# Python Exploratory Data Analysis (EDA)
The Python EDA phase focused on understanding the data structure and preparing it for further analysis. Key steps included:

Data Cleaning: Handled NA values in columns like Canceled_Rides_by_Customer, Driver_Ratings, and Incomplete_Rides_Reason.

Data Type Conversion: Converted Date and Time columns into appropriate datetime formats for time-series analysis.

Univariate & Bivariate Analysis: Plotted distributions of Booking_Value, Ride_Distance, and compared Vehicle_Type with Booking_Status.

Correlation Analysis: Checked correlations between Driver_Ratings and Customer_Ratings using heatmaps.

Outlier Detection: Used boxplots to identify extreme values in Ride_Distance and Booking_Value.

(Tip: You can embed 1-2 Python Matplotlib/Seaborn charts here as screenshots in your README to make it look even better).

📊 Power BI Dashboard Sections
The interactive Power BI report is divided into 5 main sections based on the stakeholder needs:

Overall Dashboard: Total Bookings, Total Booking Value, Ride Volume over time, and Booking Status breakdown.

Vehicle Type Dashboard: Top vehicle types by ride distance and revenue.

Revenue Dashboard: Revenue by payment method, Top 5 customers by booking value, and daily ride distance.

Cancellation Dashboard: Detailed breakdown of cancelled rides by customers and drivers, along with specific reasons.

Ratings Dashboard: Distribution of driver and customer ratings across different vehicle types.

# Key Data Insights (Calculated)
Based on the combined analysis of Python, SQL, and Power BI, here are the critical findings:

Booking Success & Cancellations: Out of all bookings, 62.19% were successful. However, 17.87% were cancelled by drivers, and 10.14% by customers. Driver-side issues (cancellations + not found) account for nearly 28% of all booking outcomes.

Driver Cancellation Causes: The leading cause for driver cancellations is "Personal & Car related issues" (4,311 cases), followed by "Customer related issues", indicating a need for better driver support and vehicle maintenance.

Customer Retention is Low: A staggering 97.6% of customers have booked a ride only once. Only ~961 customers made a second booking, and just 20 customers reached 3 bookings.

Payment Preferences: Cash is still the dominant payment method (54.57%), closely followed by UPI at 40.61%.

Peak Booking Hours: The highest ride demand occurs at 8:00 AM (2,956 bookings) and 9:00 PM (2,941 bookings), aligning with standard office commute hours.

Vehicle Performance: Prime Sedan generates the highest revenue (₹3.48M). Auto rides are primarily used for short distances (avg 10.06 km) compared to cabs/bikes (avg 24-25 km).

# Strategic Business Recommendations (To Increase Sales & Profit)
Based on the data insights, the following discount and offer strategies are recommended:

"Second Ride" Discount (Retention Strategy): To tackle the 97.6% single-booking rate, Ola should send an automated "Next Ride 20% OFF" coupon immediately after a user's first successful ride. This reduces Customer Acquisition Cost (CAC) and increases Lifetime Value (LTV).

UPI Cashback Campaign (Payment Optimization): Since 54.57% of rides are paid in Cash, Ola should offer a 2-5% cashback (in Ola Money) specifically for UPI payments. This reduces cash-handling logistics costs and locks the customer into the Ola ecosystem.

"Micro-Commute" Pass for Auto Riders: Since Auto rides have a low average distance (10 km), introduce a "Daily Commuter Pass" for Auto users (e.g., Buy 5 short rides for a discounted price). This will increase daily ride volume and driver utilization.

Peak Hour "Surge Lock" Subscriptions: For high-frequency corporate users, offer a ₹99/month subscription for flat ₹30 off on rides between 8 AM - 10 AM. This locks in revenue during the highest-demand hours.

Premium Win-Back Vouchers: Data shows cancelled rides have a slightly higher average value (₹555) than successful rides (₹547). Send targeted win-back vouchers to users who cancelled high-value Premium rides to recover lost top-line revenue.

 Repository Structure
Ola_EDA.ipynb - Jupyter Notebook containing the Python code for data cleaning, EDA, and visualizations.

Ola_Data_Analysis.sql - Contains all 20 SQL queries used for data extraction and KPI generation.

Ola_Project_Report.pdf - The complete detailed project report with SQL outputs and Power BI screenshots.

Ola_Dataset.csv - The raw dataset used for this project.

README.md - Project documentation.

# Data Dictionary (Key Columns)
Booking_ID: Unique identifier for each ride.

Booking_Status: Current state of the ride (Success, Canceled by Driver, Canceled by Customer, Driver Not Found).

Vehicle_Type: Type of vehicle booked (Prime Sedan, Mini, Auto, Bike, etc.).

Booking_Value: Total fare generated by the ride.

Payment_Method: Mode of payment (Cash, UPI, Credit Card, etc.).

Ride_Distance: Total distance covered in the ride.

Driver_Ratings & Customer_Rating: Feedback ratings provided by both parties.



Author: Abhinav Kumar
Connect with me: [https://www.linkedin.com/in/abhinav-kumar-33ak]
