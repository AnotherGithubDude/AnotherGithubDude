 # author: https://github.com/AnotherGithubDude, 2023
 # tested with: Python 3.10.8

import sys
import urllib.parse

def decode_url(url):
    decoded_url = urllib.parse.unquote(url)
    return decoded_url

# Check if an encoded URL was passed as a command line argument
if len(sys.argv) > 1:
    # Decode and print the URL
    encoded_url = sys.argv[1]
    decoded_url = decode_url(encoded_url)
    print(decoded_url)
else:
    # Print the usage message
    print("Usage: python url_decoder.py ENCODED_URL")

