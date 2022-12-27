import os
import time 
# author: https://github.com/AnotherGithubDude, 2022
# tested with: Python 3.10.8

def main():
    start = time.time()
    while True:
        files = os.listdir()  # read the contents of the current directory
        time.sleep(1)
        new_files = os.listdir()
        if files != new_files:  # check for any changes
            print("A change has occurred")
            diff = list(set(new_files) - set(files))
            print(f"The following files have changed: {diff}")
#           break
        if (time.time() - start) >= 300:  # check if five minutes has passed
            print('Monitoring complete. Exiting...')
            break

if __name__ == "__main__":
    main()
