#author: https://github.com/AnotherGithubDude, 2022
# licence: cc0
# tested with elixir 14.x.x on Mac
IO.puts("\nFiles: \n==========")
files = File.ls!("./")
|> Stream.filter(&Path.extname(&1) == ".exs")
|> Enum.sort
files |> Enum.each(&IO.puts/1)
