#!/bin/bash

echo "===== PASSWORD GENERATOR ====="

read -p "Enter Password Length: " length

if ! [[ "$length" =~ ^[0-9]+$ ]] || [ "$length" -lt 1 ]; then
    echo "Invalid Length!"
    exit 1
fi

password=$(tr -dc 'A-Za-z0-9!@#$%^&*' < /dev/urandom | head -c "$length")

echo "Generated Password: $password"
