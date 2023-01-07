#!/bin/bash

# author: https://github.com/AnotherGithubDude, 2023
# tested with: GNU bash, Version 5.2.12

# This script will run in the background and will print a message
# whenever someone logs in to the system, including when the "root" user logs in

while true
do
  # Check the system logs for login events
  LOGIN_EVENTS=$(grep -E "system.log.*loginwindow" /var/log/system.log)

  # If there are any login events, print a message
  if [[ ! -z "$LOGIN_EVENTS" ]]
  then
    # Extract the username from the login event
    USERNAME=$(echo "$LOGIN_EVENTS" | awk '{print $8}')

    # Print a message based on the username
    if [[ "$USERNAME" == "root" ]]
    then
      echo "The root user has logged in to the system."
    else
      echo "User $USERNAME has logged in to the system."
    fi
  fi

  # Sleep for 5 seconds before checking the logs again
  sleep 5
done
