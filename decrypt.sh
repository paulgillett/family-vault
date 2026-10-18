#!/bin/bash
# Simple decryption helper for family vault items

if [ -z "$1" ]; then
    echo "Usage: ./decrypt.sh <filename.age>"
    exit 1
fi

OUTPUT="${1%.age}"
age -d "$1" > "$OUTPUT"
echo "Decrypted $1 to $OUTPUT"
