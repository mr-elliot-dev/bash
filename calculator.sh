#!/bin/bash

echo "===== SIMPLE CALCULATOR ====="

read -p "Enter First Number: " a
read -p "Enter Second Number: " b

echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

read -p "Choose Option: " choice

case $choice in
    1) echo "Result: $((a + b))" ;;
    2) echo "Result: $((a - b))" ;;
    3) echo "Result: $((a * b))" ;;
    4)
        if [ "$b" -ne 0 ]; then
            echo "Result: $((a / b))"
        else
            echo "Cannot divide by zero!"
        fi
        ;;
    *) echo "Invalid Option!" ;;
esac

