#author: https://github.com/AnotherGithubDude, 2022
# licence: cc0
# tested with Elixir 1.14.2 (compiled with Erlang/OTP 25)

# Write the username into the file "user.txt"
file = File.open!("user.txt", [:write, :utf8])
username = IO.gets("Enter your username: ")
IO.puts("Your username is #{username}")
IO.write(file, username)
File.close(file)
