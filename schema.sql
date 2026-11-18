
PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS riders (
    rider_id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100)
);


CREATE TABLE IF NOT EXISTS drivers (
    driver_id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20),
    license_number VARCHAR(50),
    rating REAL
);


CREATE TABLE IF NOT EXISTS vehicles (
    vehicle_id INTEGER PRIMARY KEY,
    driver_id INTEGER NOT NULL,
    license_plate VARCHAR(20),
    make VARCHAR(50),
    model VARCHAR(50),

    FOREIGN KEY (driver_id)
    REFERENCES drivers(driver_id)
);

CREATE TABLE IF NOT EXISTS trips (
    trip_id INTEGER PRIMARY KEY,
    rider_id INTEGER NOT NULL,
    driver_id INTEGER NOT NULL,
    pickup_location VARCHAR(255),
    dropoff_location VARCHAR(255),
    trip_time DATETIME,
    status VARCHAR(20),

    FOREIGN KEY (rider_id)
    REFERENCES riders(rider_id),

    FOREIGN KEY (driver_id)
    REFERENCES drivers(driver_id)
);

CREATE TABLE IF NOT EXISTS payments (
    payment_id INTEGER PRIMARY KEY,
    trip_id INTEGER NOT NULL UNIQUE,
    amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    paid_at DATETIME,

    FOREIGN KEY (trip_id)
    REFERENCES trips(trip_id)
);
