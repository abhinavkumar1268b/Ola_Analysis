-- ============================================
-- OLA RIDE BOOKING DATA ANALYSIS
-- Total: 20 SQL Queries
-- Database: MySQL Workbench
-- Table Name: ola
-- ============================================


-- ============================================
-- CATEGORY A: OVERALL BUSINESS PERFORMANCE
-- ============================================

-- Query 1: Total Bookings and Booking Status Share
use ola
SELECT
    Booking_Status,
    COUNT(*) AS bookings,
    ROUND(
        100.0 * COUNT(*) / (SELECT COUNT(*) FROM ola),
        2
    ) AS booking_share_pct
FROM ola
GROUP BY Booking_Status
ORDER BY bookings DESC;


-- Query 2: Total Booking Value of Successful Bookings

SELECT
    COUNT(*) AS successful_bookings,
    ROUND(SUM(Booking_Value), 2) AS successful_booking_value,
    ROUND(AVG(Booking_Value), 2) AS avg_booking_value
FROM ola
WHERE Booking_Status = 'Success';


-- Query 3: Customer and Driver Cancellations Share

SELECT
    Booking_Status,
    COUNT(*) AS cancelled_bookings,
    ROUND(
        100.0 * COUNT(*) / (SELECT COUNT(*) FROM ola),
        2
    ) AS share_of_all_bookings
FROM ola
WHERE Booking_Status LIKE '%Canceled%'
GROUP BY Booking_Status
ORDER BY cancelled_bookings DESC;


-- ============================================
-- CATEGORY B: VEHICLE PERFORMANCE & RATINGS
-- ============================================

-- Query 4: Successful Rides and Average Distance by Vehicle Type

SELECT
    Vehicle_Type,
    COUNT(*) AS successful_rides,
    ROUND(AVG(Ride_Distance), 2) AS avg_ride_distance
FROM ola
WHERE Booking_Status = 'Success'
GROUP BY Vehicle_Type
ORDER BY successful_rides DESC;


-- Query 5: Vehicle Type with Highest Successful Booking Value

SELECT
    Vehicle_Type,
    COUNT(*) AS successful_rides,
    ROUND(SUM(Booking_Value), 2) AS total_booking_value,
    ROUND(AVG(Booking_Value), 2) AS avg_booking_value
FROM ola
WHERE Booking_Status = 'Success'
GROUP BY Vehicle_Type
ORDER BY total_booking_value DESC;


-- Query 6: Cancellation Rate by Vehicle Type

SELECT
    Vehicle_Type,
    COUNT(*) AS total_bookings,
    SUM(
        CASE
            WHEN Booking_Status LIKE '%Canceled%' THEN 1
            ELSE 0
        END
    ) AS cancelled_bookings,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN Booking_Status LIKE '%Canceled%' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS cancellation_rate_pct
FROM ola
GROUP BY Vehicle_Type
ORDER BY cancellation_rate_pct DESC;


-- ============================================
-- CATEGORY C: CUSTOMER BEHAVIOR & PAYMENTS
-- ============================================

-- Query 7: Top 5 Customers by Number of Successful Rides

SELECT
    Customer_ID,
    COUNT(*) AS successful_bookings
FROM ola
WHERE Booking_Status = 'Success'
GROUP BY Customer_ID
ORDER BY successful_bookings DESC
LIMIT 5;


-- Query 8: Top 5 Customers by Total Booking Value

SELECT
    Customer_ID,
    COUNT(*) AS successful_bookings,
    ROUND(SUM(Booking_Value), 2) AS total_booking_value
FROM ola
WHERE Booking_Status = 'Success'
GROUP BY Customer_ID
ORDER BY total_booking_value DESC
LIMIT 5;


-- Query 9: Customer Repeat Booking Distribution

SELECT
    booking_count,
    COUNT(*) AS number_of_customers
FROM (
    SELECT
        Customer_ID,
        COUNT(*) AS booking_count
    FROM ola
    WHERE Booking_Status = 'Success'
    GROUP BY Customer_ID
) AS customer_bookings
GROUP BY booking_count
ORDER BY booking_count;


-- Query 10: Top Reasons for Customer Cancellations

SELECT
    canceled_Rides_by_Customer AS cancellation_reason,
    COUNT(*) AS bookings
FROM ola
WHERE Booking_Status LIKE '%Canceled%'
    AND canceled_Rides_by_Customer IS NOT NULL
    AND canceled_Rides_by_Customer <> 'NA'
GROUP BY canceled_Rides_by_Customer
ORDER BY bookings DESC;


-- Query 11: Top Reasons for Driver Cancellations

SELECT
    Canceled_Rides_by_Driver AS cancellation_reason,
    COUNT(*) AS bookings
FROM ola
WHERE Booking_Status LIKE '%Canceled%'
    AND Canceled_Rides_by_Driver IS NOT NULL
    AND Canceled_Rides_by_Driver <> 'NA'
GROUP BY Canceled_Rides_by_Driver
ORDER BY bookings DESC;


-- Query 12: Main Reasons for Incomplete Rides

SELECT
    Incomplete_Rides_Reason,
    COUNT(*) AS incomplete_rides
FROM ola
WHERE Incomplete_Rides = 'Yes'
    AND Incomplete_Rides_Reason IS NOT NULL
    AND Incomplete_Rides_Reason <> 'NA'
GROUP BY Incomplete_Rides_Reason
ORDER BY incomplete_rides DESC;


-- Query 13: Payment Method Distribution for Successful Bookings

SELECT
    Payment_Method,
    COUNT(*) AS successful_bookings,
    ROUND(SUM(Booking_Value), 2) AS total_booking_value,
    ROUND(
        100.0 * COUNT(*) /
        (
            SELECT COUNT(*)
            FROM ola
            WHERE Booking_Status = 'Success'
        ),
        2
    ) AS booking_share_pct
FROM ola
WHERE Booking_Status = 'Success'
GROUP BY Payment_Method
ORDER BY successful_bookings DESC;


-- Query 14: Average Customer Rating by Vehicle Type

SELECT
    Vehicle_Type,
    COUNT(Customer_Rating) AS rating_count,
    ROUND(AVG(Customer_Rating), 2) AS avg_customer_rating
FROM ola
WHERE Booking_Status = 'Success'
    AND Customer_Rating IS NOT NULL
    AND Customer_Rating <> 'NA'
GROUP BY Vehicle_Type
ORDER BY avg_customer_rating DESC;


-- Query 15: Prime Sedan Driver Ratings (Minimum, Maximum, Average)

SELECT
    COUNT(Driver_Ratings) AS rating_count,
    ROUND(MIN(Driver_Ratings), 2) AS min_driver_rating,
    ROUND(MAX(Driver_Ratings), 2) AS max_driver_rating,
    ROUND(AVG(Driver_Ratings), 2) AS avg_driver_rating
FROM ola
WHERE Vehicle_Type = 'Prime Sedan'
    AND Booking_Status = 'Success'
    AND Driver_Ratings IS NOT NULL
    AND Driver_Ratings <> 'NA';


-- ============================================
-- CATEGORY D: LOCATION & TIME TRENDS
-- ============================================

-- Query 16: Top 10 Pickup Locations for Successful Bookings

SELECT
    Pickup_Location,
    COUNT(*) AS successful_bookings,
    ROUND(SUM(Booking_Value), 2) AS total_booking_value
FROM ola
WHERE Booking_Status = 'Success'
GROUP BY Pickup_Location
ORDER BY successful_bookings DESC
LIMIT 10;


-- Query 17: Top 10 Drop Locations by Successful Rides

SELECT
    Drop_Location,
    COUNT(*) AS successful_bookings,
    ROUND(AVG(Ride_Distance), 2) AS avg_ride_distance
FROM ola
WHERE Booking_Status = 'Success'
GROUP BY Drop_Location
ORDER BY successful_bookings DESC
LIMIT 10;


-- Query 18: Bookings by Hour of the Day (Peak Hours)

SELECT
    HOUR(Time) AS booking_hour,
    COUNT(*) AS total_bookings,
    SUM(
        CASE
            WHEN Booking_Status = 'Success' THEN 1
            ELSE 0
        END
    ) AS successful_bookings
FROM ola
GROUP BY HOUR(Time)
ORDER BY total_bookings DESC;


-- Query 19: Daily Successful Bookings and Revenue Trend

SELECT
    Date,
    COUNT(*) AS successful_bookings,
    ROUND(SUM(Booking_Value), 2) AS daily_booking_value
FROM ola
WHERE Booking_Status = 'Success'
GROUP BY Date
ORDER BY Date;


-- ============================================
-- CATEGORY E: BOOKING VALUE ANALYSIS
-- ============================================

-- Query 20: Booking Outcomes vs. Booking Value Comparison

SELECT
    Booking_Status,
    COUNT(*) AS bookings,
    ROUND(SUM(Booking_Value), 2) AS total_booking_value,
    ROUND(AVG(Booking_Value), 2) AS avg_booking_value
FROM ola
GROUP BY Booking_Status
ORDER BY bookings DESC;