# author: https://github.com/AnotherGithubDude, 2023
# tested with: Python 3.10.8

import sys
import random
import string

def generate_password(length):
    # Get a random selection of upper and lower case letters, digits, and special characters
    characters = string.ascii_letters + string.digits + string.punctuation
    # Shuffle the characters
    characters = ''.join(random.sample(characters, k=len(characters)))
    # Select the first `length` characters
    password = characters[:length]
    return password

def main():
    # Check if a length was passed as a command line argument
    if len(sys.argv) > 1:
        # Convert the argument to an integer
        length = int(sys.argv[1])
        # Generate and print the password
        print(generate_password(length))
    else:
        # Print the usage message
        print("Usage: python password_generator.py LENGTH")

if __name__ == "__main__":
    main()

