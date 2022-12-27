# author: https://github.com/AnotherGithubDude, 2022
# tested with: Python 3.10.8
def main():
    try:
        with open("user.txt", "w", encoding="utf8") as file:
            username = input("Enter your username: ")
            print(f"Your username is {username}")
            file.write(username)
    except IOError as err:
        print("An error occurred: ", err)

if __name__ == "__main__":
    main()
