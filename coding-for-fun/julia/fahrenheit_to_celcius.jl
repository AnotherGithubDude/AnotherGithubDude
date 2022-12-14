# author: https://github.com/AnotherGithubDude, 2022
# tested with julia 1.8.3

# Prompt user to input the Fahrenheit value from command-line
println("Please enter the temperature in Fahrenheit (84.0, 68.2):\t")
f_input = parse(Float64, readline())

# Convert the Fahrenheit input to Celsius and save the result
pre_result = f_input
result = (pre_result - 32) * (5/9)

# Print the result as output on the terminal 
println("The temperature in Celsius is: $(result)")
