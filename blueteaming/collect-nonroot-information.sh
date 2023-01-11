#!/bin/bash

# author: https://github.com/AnotherGithubDude, 2023
# tested with: GNU bash, Version 5.2.12

# Read data without root permission
echo "Reading data without root permission..."

# Get browser caches path 
browserCachesPath=$(find ~/Library/Caches -type d -maxdepth 1)
echo "Browser caches path is: $browserCachesPath"

# Read browser caches content 
echo "Reading browser caches content..."
for i in $(find ${browserCachesPath} -maxdepth 3); do cat $i; done

# Get cookies path
cookiesPath=$(find ~/Library/Cookies -type d -maxdepth 1)
echo "Cookies path is: $cookiesPath"

# Read cookies content 
echo "Reading cookies content..."
for i in $(find ${cookiesPath} -maxdepth 3); do cat $i; done

# Get application settings path 
applicationSettingsPath=$(find ~/Library/Preferences -type d -maxdepth 1)
echo "Application settings path is: $applicationSettingsPath"

# Read application settings content 
echo "Reading application settings content..."
for i in $(find ${applicationSettingsPath} -maxdepth 3); do cat $i; done

# Get temporary files path
tempFilesPath=$(find /tmp -type d -maxdepth 1)
echo "Temporary files path is: $tempFilesPath"

# Read temporary files content 
echo "Reading temporary files content..."
for i in $(find ${tempFilesPath} -maxdepth 3); do cat $i; done

# End of script
echo "End of script"
