#!/bin/bash

# author: https://github.com/AnotherGithubDude, 2023
# tested with: GNU bash, Version 5.2.12

# Set the interval in seconds
interval=2

# Set the name of the temporary file
temp_file="/tmp/process_monitor.txt"

# Run the process monitor in a loop
while true; do
  # Show all processes that are currently running on the system
  ps -eo pid,user,command > "$temp_file"

  # Filter the output of the ps command to show only processes that were started by the 'localadmin' user or with the sudo command, along with the process ID and command
  awk '$2 ~ /localadmin/ || $0 ~ /sudo/ {print $1 " " $3}' "$temp_file" > "$temp_file.filtered"

  # Compare the filtered output to the previous output
  if ! cmp -s "$temp_file.filtered" "$temp_file.prev"; then
    # If the output has changed, print the updated output to the terminal
    echo "Processes started by localadmin or with sudo:"
    cat "$temp_file.filtered"

    # Save the filtered output as the previous output
    cp "$temp_file.filtered" "$temp_file.prev"
  fi

  # Sleep for the specified interval
  sleep $interval
done
