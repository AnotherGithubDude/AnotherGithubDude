#!/bin/bash

# author: https://github.com/AnotherGithubDude, 2023
# tested with: GNU bash, Version 5.2.12

current_connections=$(lsof -iTCP -sTCP:ESTABLISHED | awk '{print $1, $2, $9}')

while true
do
    sleep 1
    new_connections=$(lsof -iTCP -sTCP:ESTABLISHED | awk '{print $1, $2, $9}')

    # Compare the current list of connections with the previous list
    new_connections=$(echo "$new_connections" | grep -Fxv "$current_connections")

    # if there's any new connections , print them
    if [ -n "$new_connections" ]; then
        echo "New TCP connections established:"
        echo "$new_connections"
        current_connections=$new_connections
    fi
done
