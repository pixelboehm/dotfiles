#!/bin/bash

# Function to cut string at the third colon
cut_string_at_third_colon() {
    # Check if argument is provided
    if [ -z "$1" ]; then
        echo "Usage: $0 <input_string>"
        exit 1
    fi

    # Use cut to extract the substring before the third colon
    result=$(echo "$1" | cut -d'-' -f-1)

    # Print the result
    echo "$result"
}

# Example usage
#input_string="1.2.1-dev.1"
input_string="1.2.1"
result=$(cut_string_at_third_colon "$input_string")
echo "Original string: $input_string"
echo "Result after cutting at the third colon: $result"

