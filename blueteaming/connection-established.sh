#!/bin/bash

# author: https://github.com/AnotherGithubDude, 2023
# tested with: GNU bash, Version 5.2.12

# Store the output of the "netstat" command in a variable
netstat_output=$(netstat)

# Iterate through each line of the output
while read -r line; do
  # Check if the line indicates a new connection
  if [[ $line == *"ESTABLISHED"* ]]; then
    # Extract the IP address from the line
    ip_address=$(echo $line | awk '{print $5}' | cut -d: -f1)
    # Perform a reverse lookup on the IP address
    hostname=$(nslookup $ip_address | grep "name =" | awk '{print $3}' | sed 's/.$//')
    # Print the result
    echo "Connection established with hostname: $hostname"
  fi
done <<< "$netstat_output"

