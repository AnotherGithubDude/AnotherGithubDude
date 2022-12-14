# author: https://github.com/AnotherGithubDude, 2022
# tested with julia 1.8.3

# Get the list of software from /Applications
all_software = readdir("/Applications")

# Remove the unwanted files
filtered_software = filter(x-> !in(x, [".localized", ".DS_Store"]), all_software)

# Count the number of software
num_software = length(filtered_software)

# Print the number of software
println("There are $(num_software) tools installed in /Applications")

# Ask user if they want to list the software
println("Do you want to list the software? (Type 'y' for yes, 'n' for no)")
user_input = readline()

# List the software names if user said yes
if user_input == "y"
    println("Software names:")
    for software in filtered_software
        print("$software\n")
    end
    println()
end
