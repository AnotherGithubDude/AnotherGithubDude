#author: https://github.com/AnotherGithubDude, 2022
# tested with elixir 14.x.x
File.stream!("user.txt")
|> Stream.map(&String.trim/1)
|> Enum.each(&IO.puts("Username read from file: #{&1}"))
