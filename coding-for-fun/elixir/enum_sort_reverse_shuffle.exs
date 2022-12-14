# author: https://github.com/AnotherGithubDude, 2022
# parts have been copied from:
# https://hexdocs.pm/elixir/1.12/Enum.html#content
# tested with Elixir 1.14.2 (compiled with Erlang/OTP 25)

# Example with sort
IO.puts("reverse: #{Enum.sort(["1", "5", "6", "4", "2", "3"])}")

# Example with reverse
IO.puts("reverse: #{Enum.reverse(["1", "2", "3"],["4", "5", "6"])}")

# Example with shuffle
#:rand.seed(:exsss, {1, 2, 3})
IO.puts("shuffle: #{Enum.shuffle(["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"])}")
