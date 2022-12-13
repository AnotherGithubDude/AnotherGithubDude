# author: https://github.com/AnotherGithubDude, 2022
# tested with Elixir 1.14.2 (compiled with Erlang/OTP 25)
# $ elixir string_concatenation.exs

foo = "AnotherGit"
bar = "hubDude"
#merged = foo <> " " <> bar
merged = foo <> bar
IO.puts("merged: #{merged}")
