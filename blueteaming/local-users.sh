#!/bin/bash

# author: https://github.com/AnotherGithubDude, 2023
# tested with: GNU bash, Version 5.2.12

# Get a list of all the user accounts on the system
users=$(dscl . -list /Users)

# Iterate through the list of users and print each one
for user in $users; do
  echo $user
done
