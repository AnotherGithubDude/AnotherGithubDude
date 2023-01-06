# author: https://github.com/AnotherGithubDude, 2023
# tested with: GNU bash, Version 5.2.12

#!/bin/bash

# Get the input string from the command line
input_string=$1

# Visit the page with the input string and extract the domains
curl "https://crt.sh/?q=$input_string" | grep -oP '<TD>\K[^<]+' > subdomains.txt

# Check if each domain is reachable and save the reachable ones to a new file
while read domain; do
  if curl --output /dev/null --silent --head --fail "$domain"; then
    echo "$domain" >> subdomains-accessible.txt
  fi
done <subdomains.txt
