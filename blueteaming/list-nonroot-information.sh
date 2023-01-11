#!/bin/bash

# author: https://github.com/AnotherGithubDude, 2023
# tested with: GNU bash, Version 5.2.12

# Read data without root permission
echo "Reading data without root permission..."

# Get browser caches path 
browserCachesPath=$(find ~/Library/Caches -type d -maxdepth 1)
echo "Browser caches path is: $browserCachesPath"

# Print browser caches filenames 
echo "Printing browser caches filenames..."
for i in $(find ${browserCachesPath} -maxdepth 3); do echo $i; done

# Get cookies path
cookiesPath=$(find ~/Library/Cookies -type d -maxdepth 1)
echo "Cookies path is: $cookiesPath"

# Print cookies filenames 
echo "Printing cookies filenames..."
for i in $(find ${cookiesPath} -maxdepth 3); do echo $i; done

# Get application settings path 
applicationSettingsPath=$(find ~/Library/Preferences -type d -maxdepth 1)
echo "Application settings path is: $applicationSettingsPath"

# Print application settings filenames 
echo "Printing application settings filenames..."
for i in $(find ${applicationSettingsPath} -maxdepth 3); do echo $i; done

# Get temporary files path
tempFilesPath=$(find /tmp -type d -maxdepth 1)
echo "Temporary files path is: $tempFilesPath"

# Print temporary files filenames 
echo "Printing temporary files filenames..."
for i in $(find ${tempFilesPath} -maxdepth 3); do echo $i; done

# End of script
echo "End of script"
