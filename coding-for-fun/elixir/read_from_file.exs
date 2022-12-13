#author: https://github.com/AnotherGithubDude, 2022
# licence: cc0
# tested with Elixir 1.14.2 (compiled with Erlang/OTP 25)
File.stream!("user.txt")
|> Stream.map(&String.trim/1)
|> Enum.each(&IO.puts("Username read from file: #{&1}"))
