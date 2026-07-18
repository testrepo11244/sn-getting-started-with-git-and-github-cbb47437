#!/bin/bash

echo "Simple Interest Calculator"
echo "---------------------------"

# Read principal amount
read -p "Enter principal amount: " principal

# Read rate of interest
read -p "Enter rate of interest (in %): " rate

# Read time period in years
read -p "Enter time period (in years): " time

# Calculate simple interest: (principal * rate * time) / 100
# Using bc for floating point arithmetic with two decimal places
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo "The simple interest is: $interest"