# author: https://github.com/AnotherGithubDude, 2022
# this code has been copied from:
# https://hexdocs.pm/elixir/1.12/IO.html#content
# tested with Elixir 1.14.2 (compiled with Erlang/OTP 25)

# Here is an example on how we mimic an echo server from the command line:
IO.puts ("Whenever you write something, it will echo:")
Enum.each(IO.stream(:stdio, :line), &IO.write(&1))
