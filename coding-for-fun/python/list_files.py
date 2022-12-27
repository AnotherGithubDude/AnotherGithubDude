# author: https://github.com/AnotherGithubDude, 2022
# tested with: Python 3.10.8
import os
import time
from pathlib import Path

def main():
	# Print the current time in hours, minutes, seconds
	t = time.localtime()
	print("The current time is:", time.strftime("%I:%M:%S %p", t))

	# List the files of the current folder, each per line, sorted alphabetically
	files = os.listdir(Path("."))
	files.sort()
	for file in files:
		print(file)

if __name__ == "__main__":
    main()
