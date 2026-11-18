
-- ==========================================
-- MAC 250 - Team 5 Uber Database Project
-- Admin Dashboard Analytics
-- ==========================================

-- Query 1: Total Revenue by Driver
-- Calculates revenue from completed trips.

SELECT
    d.driver_id,
    d.name AS DriverName,
    COUNT(t.trip_id) AS CompletedTrips,
    ROUND(SUM(p.amount), 2) AS TotalRevenue
FROM drivers d
JOIN trips t ON d.driver_id = t.driver_id
JOIN payments p ON t.trip_id = p.trip_id
WHERE t.status = 'COMPLETED'
GROUP BY d.driver_id, d.name
ORDER BY TotalRevenue DESC;


-- Query 2: Average Driver Ratings
-- Compares ratings across all drivers.

SELECT
    driver_id,
    name AS DriverName,
    ROUND(AVG(rating), 2) AS AverageRating
FROM drivers
GROUP BY driver_id, name
ORDER BY AverageRating DESC;


-- Query 3: Trip Status Analysis
-- Counts completed, cancelled and ongoing trips.

SELECT
    status AS TripStatus,
    COUNT(*) AS TotalTrips
FROM trips
GROUP BY status
ORDER BY TotalTrips DESC;


-- Query 4: Top-Earning Drivers
-- Shows drivers earning more than $50.

SELECT
    d.driver_id,
    d.name AS DriverName,
    ROUND(SUM(p.amount), 2) AS TotalRevenue
FROM drivers d
JOIN trips t ON d.driver_id = t.driver_id
JOIN payments p ON t.trip_id = p.trip_id
WHERE t.status = 'COMPLETED'
GROUP BY d.driver_id, d.name
HAVING SUM(p.amount) > 50
ORDER BY TotalRevenue DESC;


-- Query 5: Daily Revenue Analysis
-- Calculates daily completed-trip revenue.

SELECT
    DATE(t.trip_time) AS TripDate,
    COUNT(t.trip_id) AS CompletedTrips,
    ROUND(SUM(p.amount), 2) AS DailyRevenue
FROM trips t
JOIN payments p ON t.trip_id = p.trip_id
WHERE t.status = 'COMPLETED'
GROUP BY DATE(t.trip_time)
ORDER BY TripDate DESC;
