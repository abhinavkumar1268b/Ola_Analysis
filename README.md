# Ola Ride Booking Data Analysis | Python, SQL & Power BI

An end-to-end data analytics project focused on understanding ride-booking performance, revenue trends, customer retention, and operational inefficiencies using Python, MySQL, and Power BI.

## Project Overview

This project analyzes Ola's ride-booking data to identify business trends, uncover operational bottlenecks, and generate actionable insights to improve booking success, customer retention, and revenue performance.

The analysis follows an end-to-end data pipeline, combining exploratory data analysis, SQL-based business intelligence, and interactive Power BI dashboards.

**Key objectives:**
- Analyze booking performance and cancellation patterns.
- Identify revenue trends across vehicle types and payment methods.
- Understand customer booking frequency and retention.
- Evaluate ride demand across different hours of the day.
- Develop data-driven recommendations to improve business performance.

## Tech Stack

| Category | Tools & Technologies |
|---|---|
| Programming | Python |
| Data Analysis | Pandas, NumPy |
| Data Visualization | Matplotlib, Seaborn, Power BI |
| Database | MySQL, MySQL Workbench |
| Data Processing | Microsoft Excel |
| Environment | Jupyter Notebook |

## Project Workflow

**1. Python — Exploratory Data Analysis (EDA)**

Performed data cleaning, statistical analysis, and exploratory visualization to understand the dataset and identify patterns.

- Cleaned missing values in cancellation, rating, and incomplete-ride fields.
- Converted date and time columns into appropriate formats for time-based analysis.
- Conducted univariate and bivariate analysis of booking values, ride distances, vehicle types, and booking statuses.
- Examined rating distributions and relationships between customer and driver ratings.
- Used boxplots and statistical techniques to investigate outliers in ride distance and booking value.

**2. MySQL — Business Intelligence & KPI Analysis**

Developed **20 SQL queries** to answer business-focused questions and extract actionable insights.

Analysis included:
- Booking success and cancellation rates.
- Revenue and ride-distance performance by vehicle type.
- Customer booking frequency and repeat-ride behavior.
- Driver and customer cancellation reasons.
- Payment-method distribution and peak demand periods.
- Customer ratings and operational performance.

**3. Power BI — Interactive Dashboards**

Designed a multi-page Power BI report to communicate business performance through KPIs, visualizations, and interactive analysis.

| Dashboard | Key Metrics & Analysis |
|---|---|
| Overall Performance | Total bookings, booking value, ride volume trends, booking status |
| Vehicle Performance | Revenue and ride distance by vehicle type |
| Revenue Analysis | Payment methods, top customers, daily ride distance |
| Cancellation Analysis | Customer and driver cancellations, cancellation reasons |
| Ratings Analysis | Driver and customer ratings across vehicle types |

## Key Business Insights

The analysis revealed several important patterns in booking performance, customer behavior, and operational efficiency.

### 1. Booking Success & Operational Bottlenecks

- **62.19% booking success rate** — approximately 42,948 successful bookings.
- **17.87% driver cancellation rate** — approximately 12,338 bookings.
- **10.14% customer cancellation rate** — approximately 6,999 bookings.
- Driver-side cancellations and driver-not-found outcomes together account for approximately **28% of booking outcomes**, highlighting a major operational challenge.

### 2. Driver Cancellation Analysis

- **4,311 cancellations** were attributed to personal and car-related issues, the leading reported driver cancellation cause.
- Customer-related issues were another important cancellation category.

These findings suggest opportunities to improve driver support, vehicle readiness, and booking reliability.

### 3. Customer Retention & Repeat Bookings

- Approximately **97.6% of customers booked only once** in the analyzed dataset.
- Around **961 customers** made a second booking.
- Only **20 customers** reached three bookings.

The low repeat-booking rate highlights a potential customer retention challenge and an opportunity to encourage second and subsequent rides.

### 4. Payment Preferences

- **Cash: 54.57%**
- **UPI: 40.61%**

Cash remains the leading payment method, while UPI already represents a substantial share of transactions.

### 5. Peak Booking Hours

| Time | Bookings |
|---|---:|
| 8:00 AM | **2,956** |
| 9:00 PM | **2,941** |

The observed demand peaks suggest opportunities to improve driver availability and service reliability during morning and evening travel periods.

### 6. Vehicle Performance & Revenue

- **Prime Sedan generated approximately ₹3.48 million (₹34.8 lakh)** in booking value, making it the highest-revenue vehicle category in the analysis.
- Auto rides had an average ride distance of approximately **10.06 km**, compared with around **24–25 km** for the referenced cab and bike categories.

These differences highlight distinct usage patterns across vehicle categories and opportunities for targeted service offerings.

## Strategic Business Recommendations

The following recommendations translate the observed data patterns into potential business initiatives. Their actual impact should be validated through controlled experiments and profitability analysis.

| Business Challenge | Proposed Strategy | Expected Benefit |
|---|---|---|
| Low repeat bookings | Offer a targeted second-ride incentive after a customer's first successful trip | Improve repeat bookings and customer lifetime value |
| High cash usage | Test UPI cashback or digital-payment incentives | Encourage digital payments and potentially reduce cash-handling costs |
| Short-distance Auto usage | Pilot a commuter pass for frequent short-distance Auto riders | Encourage repeat usage and improve driver utilization |
| Peak-hour demand | Test targeted peak-hour offers for eligible frequent riders | Strengthen customer loyalty during high-demand periods |
| Cancelled high-value rides | Test personalized recovery offers after eligible cancelled bookings | Recover some lost demand and improve booking completion |

**Recommendation note:** Discounts, cashback, and subscriptions are proposed strategies—not measured project outcomes. Their commercial viability depends on incentive costs, contribution margin, customer response, and operational capacity.

## Repository Structure

```text
Ola-Ride-Data-Analysis/
│
├── Ola_EDA.ipynb
│   └── Python data cleaning, EDA, and visualizations
│
├── Ola_Data_Analysis.sql
│   └── 20 SQL queries for business KPI analysis
│
├── Ola_Project_Report.pdf
│   └── Detailed project report, SQL results, and Power BI screenshots
│
├── Ola_Dataset.csv
│   └── Raw ride-booking dataset
│
└── README.md
    └── Project documentation
```

## Data Dictionary

| Column | Description |
|---|---|
| `Booking_ID` | Unique identifier for each ride booking |
| `Booking_Status` | Booking outcome, such as successful, cancelled, or driver not found |
| `Vehicle_Type` | Category of vehicle booked |
| `Booking_Value` | Recorded booking fare or value |
| `Payment_Method` | Payment method used for the booking |
| `Ride_Distance` | Recorded ride distance |
| `Driver_Ratings` | Rating provided to the driver |
| `Customer_Rating` | Customer-related rating recorded in the dataset |

## Project Deliverables

- Python notebook for data preparation and exploratory analysis.
- MySQL queries for business KPI extraction.
- Interactive Power BI dashboards for stakeholder analysis.
- Detailed project report containing analytical outputs and dashboard screenshots.

## Author

**Abhinav Kumar**

[LinkedIn](https://www.linkedin.com/in/abhinav-kumar-33ak)

