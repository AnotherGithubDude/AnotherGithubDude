 # author: https://github.com/AnotherGithubDude, 2023
 # tested with: Python 3.10.8
import sys
import urllib.parse

def main():
    # Get the command line argument
    if len(sys.argv) < 2:
        print("Error: No argument provided")
        return

    arg = sys.argv[1]

    # Convert the string to URL encoding
    encoded = urllib.parse.quote(arg)

    # Print the result
    print(encoded)

if __name__ == "__main__":
    main()
