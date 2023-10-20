#!/bin/bash

# Initialize an empty JSON object
json="{"

# Iterate through the environment variables
while IFS='=' read -r name value; do
    # Append the name of the environment variable to the JSON object
    json="$json\"$name\":null,"
done < <(env)

# Remove the trailing comma from the JSON object
json="${json%,}"

# Close the JSON object
json="$json}"

# Output the JSON object to a file
echo "$json"