# author: https://github.com/AnotherGithubDude, 2022
# licence: cc0
# tested with Elixir 1.14.2 (compiled with Erlang/OTP 25)

# Prompt user to input the Fahrenheit value from command-line
# Formula example: (74°F − 32) × 5/9 = 23,333°C
f_input = String.trim(IO.gets("Please enter the temperature in Fahrenheit (84.0, 68.2):\t"))

# Convert the Fahrenheit input to Celsius and save the result
pre_result = String.to_float(f_input)
result = (pre_result - 32) * (5/9)

# Print the result as output on the terminal 
IO.puts("The temperature in Celsius is: #{result}")
