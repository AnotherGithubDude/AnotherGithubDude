import os
import time
# author: https://github.com/AnotherGithubDude, 2022
# tested with: Python 3.10.8
 
def main():
    starttime = time.perf_counter() # for performance measurement

    # check if the file exists
    if os.path.exists("folder.txt"):
        try:
            with open("folder.txt") as f:
                contents = f.read() 
                print(contents) 
                print("Time elapsed: {} seconds".format(time.perf_counter() - starttime)) 
        except Exception as err:
            print("An error occured while opening or reading the file: {}".format(err))
    else: 
        print("The file does not exist")

    print("done")

if __name__ == "__main__":
    main()
