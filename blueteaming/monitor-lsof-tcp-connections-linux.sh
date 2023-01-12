#!/bin/bash

# author: https://github.com/AnotherGithubDude, 2023
# tested with: GNU bash, Version 5.2.12

while true
do
    # Use lsof to list all open TCP connections
    lsof -i TCP | grep ESTABLISHED | awk '{print $1, $2, $9}' > /tmp/tcp-connections.txt

    # Store the current list of connections in a variable
    current_connections=$(cat /tmp/tcp-connections.txt)

    # Sleep for 1 second
    sleep 1

    # Use lsof to list all open TCP connections again
    lsof -i TCP | grep ESTABLISHED | awk '{print $1, $2, $9}' > /tmp/tcp-connections.txt

    # Compare the current list of connections with the previous list
    new_connections=$(diff /tmp/tcp-connections.txt /tmp/tcp-connections-prev.txt | grep ">" | awk '{print $2}')

    # if there's any new connections , print them
    if [ -n "$new_connections" ]; then
        echo "New TCP connections established:"
        echo "$new_connections"
        mv /tmp/tcp-connections.txt /tmp/tcp-connections-prev.txt
    fi
done

