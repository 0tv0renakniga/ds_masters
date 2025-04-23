/* 
--------------------------------------------------------------------------------------------------
  Create tables for the airline database.
  This script creates the CARRIERS, MONTHS, WEEKDAYS, and FLIGHTS tables.
  It also sets up foreign key constraints to ensure data integrity.


-- Run generate_hw2_db.sh to create the database
-- and load the data into the tables.

--------------------------------------------------------------------------------------------------
 */

-- Enable foreign key support
PRAGMA foreign_keys=ON;

-- Create CARRIERS table
CREATE TABLE CARRIERS (
    cid  VARCHAR(7)  PRIMARY KEY,  -- Carrier ID (primary key)
    name VARCHAR(83)               -- Carrier name
);

-- Create MONTHS table
CREATE TABLE MONTHS (
    mid   INT        PRIMARY KEY,  -- Month ID (primary key)
    month VARCHAR(9)               -- Month name
);

-- Create WEEKDAYS table
CREATE TABLE WEEKDAYS (
    did         INT       PRIMARY KEY,  -- Day ID (primary key, 1=Monday, etc.)
    day_of_week VARCHAR(9)              -- Day name
);

-- Create FLIGHTS table with foreign key constraints
CREATE TABLE FLIGHTS (
    fid             INT PRIMARY KEY,
    month_id        INT,              -- 1-12
    day_of_month    INT,              -- 1-31
    day_of_week_id  INT,              -- 1-7, 1 = Monday, 2 = Tuesday, etc.
    carrier_id      VARCHAR(7),
    flight_num      INT,
    origin_city     VARCHAR(34),
    origin_state    VARCHAR(47),
    dest_city       VARCHAR(34),
    dest_state      VARCHAR(46),  
    departure_delay INT,              -- in mins
    taxi_out        INT,              -- in mins
    arrival_delay   INT,              -- in mins
    canceled        INT,              -- 1 means canceled
    actual_time     INT,              -- in mins
    distance        INT,              -- in miles
    capacity        INT,
    price           INT,              -- in $
    
                    -- Foreign key constraints
                    FOREIGN KEY (carrier_id) REFERENCES CARRIERS(cid),
                    FOREIGN KEY (month_id) REFERENCES MONTHS(mid),
                    FOREIGN KEY (day_of_week_id) REFERENCES WEEKDAYS(did)
);