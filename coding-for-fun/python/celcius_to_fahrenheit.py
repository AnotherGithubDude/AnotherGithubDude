# author: https://github.com/AnotherGithubDude, 2022
# tested with: Python 3.10.8

def main():
    # Prompt user to input the Celsius value from command-line
    print("Please enter the temperature in Celsius (23.0, 30.0):\t")
    c_input = float(input())

    # Convert the Celsius input to Fahrenheit and save the result
    pre_result = c_input
    result = (pre_result * 1.8) + 32

    # Print the result as output on the terminal 
    print("The temperature in Fahrenheit is: ", result)

if __name__ == "__main__":
    main()
