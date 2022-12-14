# author: https://github.com/AnotherGithubDude, 2022
# tested with julia 1.8.3

# Prompt user to input the Celsius value from command-line
println("Please enter the temperature in Celsius (23.3, 37.8):\t")
c_input = parse(Float64, readline())

# Convert the Celsius input to Fahrenheit and save the result
pre_result = c_input
result = (pre_result * (9/5)) + 32

# Print the result as output on the terminal 
println("The temperature in Fahrenheit is: $(result)")
