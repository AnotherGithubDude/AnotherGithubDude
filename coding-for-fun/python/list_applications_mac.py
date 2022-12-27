import os
# author: https://github.com/AnotherGithubDude, 2022
# tested with: Python 3.10.8

# Get the list of software from /Applications
all_software = os.listdir("/Applications")

# Remove the unwanted files
filtered_software = [s for s in all_software if s not in [".localized", ".DS_Store"]]

# Count the number of software
num_software = len(filtered_software)

# Print the number of software
print(f"There are {num_software} tools installed in /Applications")

# Ask user if they want to list the software
user_input = input("Do you want to list the software alphabetically? (Type 'y' for yes, 'n' for no): ")

# List the software names if user said yes
if user_input == "y":
    sorted_software=sorted(filtered_software)
    print("Software names:")
    for software in sorted_software:
        print(software)
    print()
