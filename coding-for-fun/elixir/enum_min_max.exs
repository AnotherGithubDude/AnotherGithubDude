# author: https://github.com/AnotherGithubDude, 2022
# parts have been copied from:
# https://hexdocs.pm/elixir/1.12/IO.html#content
# tested with Elixir 1.14.2 (compiled with Erlang/OTP 25)

# Simple example with min and max
max_number = Enum.max([1, 2, 3, 9, 4, 5, 8, 7, 0])
min_number = Enum.min([1, 2, 3, 0, 4, 5, 8, 7, 9])
IO.puts ("max_number: #{max_number}")
IO.puts ("min_number: #{min_number}")

# Example with max date
max_date = Enum.max([~D[2017-03-31], ~D[2017-04-01]], Date)
IO.puts ("max_date: #{max_date}")

# Example with min date
min_date = Enum.min([~D[2017-03-31], ~D[2017-04-01]], Date)
IO.puts ("min_date: #{min_date}")
