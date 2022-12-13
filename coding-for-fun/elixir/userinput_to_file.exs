# Write the username into the file "user.txt"
file = File.open!("user.txt", [:write, :utf8])
username = IO.gets("Enter your username: ")
IO.puts("Your username is #{username}")
IO.write(file, username)
File.close(file)
