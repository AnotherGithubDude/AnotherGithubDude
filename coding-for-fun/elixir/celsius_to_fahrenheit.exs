# author: https://github.com/AnotherGithubDude, 2022
# licence: cc0
# tested with Elixir 1.14.2 (compiled with Erlang/OTP 25)

# Prompt user to input the Celsius value from command-line
# Formula example: (23,333°C × 9/5) + 32 = 74°F
f_input = String.trim(IO.gets("Please enter the temperatur in Celcius (30.0, 23.3):\t"))

# Convert the Fahrenheit input to Celsius and save the result
pre_result = String.to_float(f_input)
result = (pre_result * 9/5) + 32

# Print the result as output on the terminal 
IO.puts("\nThe temperature in Fahrenheit is: #{result}")
