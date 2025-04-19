#!/bin/bash

# generate_hw2_db.sh
# This script creates the hw2.db SQLite database and imports data from CSV files

echo "Creating hw2.db database and importing data..."

# Remove existing database if it exists
if [ -f hw2.db ]; then
    echo "Removing existing hw2.db file..."
    rm hw2.db
fi

# Create database and import data using SQLite commands
sqlite3 hw2.db <<EOF
.read create-tables.sql
.mode csv
.import carriers.csv CARRIERS
.import months.csv MONTHS
.import weekdays.csv WEEKDAYS
.import flights-small.csv FLIGHTS
.tables
EOF

# Check if database was created successfully
if [ -f hw2.db ]; then
    echo "Database created successfully!"
    echo "Tables in the database:"
    sqlite3 hw2.db ".tables"
    
    # Show row counts for verification
    echo "Row counts:"
    sqlite3 hw2.db "SELECT 'CARRIERS: ' || COUNT(*) FROM CARRIERS;"
    sqlite3 hw2.db "SELECT 'MONTHS: ' || COUNT(*) FROM MONTHS;"
    sqlite3 hw2.db "SELECT 'WEEKDAYS: ' || COUNT(*) FROM WEEKDAYS;"
    sqlite3 hw2.db "SELECT 'FLIGHTS: ' || COUNT(*) FROM FLIGHTS;"
else
    echo "Error: Failed to create database!"
    exit 1
fi

echo "Done!"

