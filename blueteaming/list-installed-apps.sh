#!/bin/bash

# author: https://github.com/AnotherGithubDude, 2023
# tested with: GNU bash, Version 5.2.12

# Find all the .app directories in the /Applications folder
apps=$(find /Applications -type d -name "*.app")

# Iterate through the list of apps and print each one
for app in $apps; do
  echo $app
done
