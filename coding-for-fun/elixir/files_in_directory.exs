#author: https://github.com/AnotherGithubDude, 2022
# licence: cc0
# tested with Elixir 1.14.2 (compiled with Erlang/OTP 25)
IO.puts("\nFiles: \n==========")
files = File.ls!("./")
|> Stream.filter(&Path.extname(&1) == ".exs")
|> Enum.sort
files |> Enum.each(&IO.puts/1)
