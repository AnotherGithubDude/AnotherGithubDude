# author: https://github.com/AnotherGithubDude, 2023
# tested with: GNU bash, Version 5.2.12

#!/bin/bash

# Set the maximum number of processes allowed per user
MAX_PROCESSES=100

# Get a list of all users and their process counts
processes=$(ps -ax -o user=,pid= | awk '{count[$1]++} END {for (user in count) {print user, count[user]}}')

# Iterate over the list of users and check their process counts
while read -r user count; do
  if [[ $count -gt $MAX_PROCESSES ]]; then
    # The user has exceeded the maximum number of processes allowed
    echo "Fork bomb detected: user $user has $count processes running"
  fi
done <<< "$processes"
