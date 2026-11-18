INSERT INTO riders (rider_id, name, phone, email)
VALUES
(1, 'John Smith', '555-0101', 'john@example.com'),
(2, 'Sarah Johnson', '555-0102', 'sarah@example.com'),
(3, 'Michael Brown', '555-0103', 'michael@example.com'),
(4, 'Emily Davis', '555-0104', 'emily@example.com'),
(5, 'David Wilson', '555-0105', 'david@example.com');


INSERT INTO drivers
(driver_id, name, phone, license_number, rating)
VALUES
(1, 'James Miller', '555-0201', 'NYD1001', 4.9),
(2, 'Robert Taylor', '555-0202', 'NYD1002', 4.7),
(3, 'Daniel Lee', '555-0203', 'NYD1003', 4.5),
(4, 'Sophia Martinez', '555-0204', 'NYD1004', 4.8),
(5, 'William Anderson', '555-0205', 'NYD1005', 4.6);


INSERT INTO vehicles
(vehicle_id, driver_id, license_plate, make, model)
VALUES
(1, 1, 'NYA1001', 'Toyota', 'Camry'),
(2, 2, 'NYA1002', 'Honda', 'Accord'),
(3, 3, 'NYA1003', 'Hyundai', 'Sonata'),
(4, 4, 'NYA1004', 'Toyota', 'Prius'),
(5, 5, 'NYA1005', 'Kia', 'K5'),
(6, 1, 'NYA1006', 'Toyota', 'RAV4'),
(7, 2, 'NYA1007', 'Honda', 'Civic'),
(8, 3, 'NYA1008', 'Nissan', 'Altima'),
(9, 4, 'NYA1009', 'Hyundai', 'Elantra'),
(10, 5, 'NYA1010', 'Toyota', 'Corolla'),
(11, 1, 'NYA1011', 'Honda', 'CR-V'),
(12, 2, 'NYA1012', 'Ford', 'Escape'),
(13, 3, 'NYA1013', 'Kia', 'Sportage'),
(14, 4, 'NYA1014', 'Toyota', 'Highlander'),
(15, 5, 'NYA1015', 'Nissan', 'Rogue');


INSERT INTO trips
(trip_id, rider_id, driver_id, pickup_location,
dropoff_location, trip_time, status)
VALUES
(1, 1, 1, 'Queens', 'Manhattan', '2026-10-01 09:00:00', 'COMPLETED'),
(2, 2, 2, 'Brooklyn', 'Queens', '2026-10-02 10:30:00', 'COMPLETED'),
(3, 3, 3, 'Bronx', 'Manhattan', '2026-10-03 11:00:00', 'CANCELLED'),
(4, 4, 4, 'Manhattan', 'Brooklyn', '2026-10-04 12:00:00', 'COMPLETED'),
(5, 5, 5, 'Queens', 'JFK Airport', '2026-10-05 08:00:00', 'COMPLETED'),
(6, 1, 2, 'Astoria', 'Flushing', '2026-10-06 14:00:00', 'COMPLETED'),
(7, 2, 3, 'Jamaica', 'Brooklyn', '2026-10-07 15:00:00', 'CANCELLED'),
(8, 3, 4, 'Long Island City', 'Midtown', '2026-10-08 16:00:00', 'COMPLETED'),
(9, 4, 5, 'Harlem', 'Times Square', '2026-10-09 17:00:00', 'COMPLETED'),
(10, 5, 1, 'Woodside', 'LaGuardia Airport', '2026-10-10 18:00:00', 'COMPLETED'),
(11, 1, 3, 'Flushing', 'Astoria', '2026-10-11 19:00:00', 'COMPLETED'),
(12, 2, 4, 'Brooklyn', 'Bronx', '2026-10-12 20:00:00', 'CANCELLED'),
(13, 3, 5, 'Manhattan', 'Queens', '2026-11-04 13:00:00', 'COMPLETED'),
(14, 4, 1, 'Queens', 'Brooklyn', '2026-11-04 15:00:00', 'IN_PROGRESS'),
(15, 5, 2, 'Astoria', 'Manhattan', '2026-11-04 16:00:00', 'IN_PROGRESS');



INSERT INTO payments
(payment_id, trip_id, amount, payment_method, paid_at)
VALUES
(1, 1, 25.50, 'Credit Card', '2026-10-01 09:35:00'),
(2, 2, 18.75, 'Debit Card', '2026-10-02 11:00:00'),
(3, 3, 0.00, 'Not Charged', NULL),
(4, 4, 32.00, 'Credit Card', '2026-10-04 12:40:00'),
(5, 5, 45.25, 'Debit Card', '2026-10-05 08:50:00'),
(6, 6, 16.50, 'Credit Card', '2026-10-06 14:30:00'),
(7, 7, 0.00, 'Not Charged', NULL),
(8, 8, 22.80, 'Debit Card', '2026-10-08 16:35:00'),
(9, 9, 14.25, 'Credit Card', '2026-10-09 17:25:00'),
(10, 10, 29.99, 'Debit Card', '2026-10-10 18:40:00'),
(11, 11, 19.50, 'Credit Card', '2026-10-11 19:30:00'),
(12, 12, 0.00, 'Not Charged', NULL),
(13, 13, 27.75, 'Debit Card', '2026-11-04 13:40:00'),
(14, 14, 0.00, 'Pending', NULL),
(15, 15, 0.00, 'Pending', NULL);
