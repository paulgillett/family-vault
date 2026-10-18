#!/bin/bash
# Simple encryption helper for family vault items

if [ -z "$1" ]; then
    echo "Usage: ./encrypt.sh <filename>"
    exit 1
fi

# Uses age to encrypt the file to a symmetrical passphrase
age -c "$1" > "$1.age"
echo "Encrypted $1 to $1.age"
