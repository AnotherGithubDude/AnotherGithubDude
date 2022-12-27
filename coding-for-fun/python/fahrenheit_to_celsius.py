# author: https://github.com/AnotherGithubDude, 2022
# tested with: Python 3.10.8
def main():
    # Prompt user to input the Fahrenheit value from command-line
    print("Please enter the temperature in Fahrenheit (73.4, 86.0):\t")
    f_input = float(input())

    # Convert the Fahrenheit input to Celsius and save the result
    pre_result = f_input
    result = (pre_result - 32) / 1.8

    # Print the result as output on the terminal 
    print("The temperature in Celsius is: ", result)

if __name__ == "__main__":
    main()
