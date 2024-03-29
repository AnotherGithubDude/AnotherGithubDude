#author: https://github.com/AnotherGithubDude, 2022
# licence: cc0
# tested with Elixir 1.14.2 (compiled with Erlang/OTP 25)

# Print with colored background
  IO.puts(IO.ANSI.format([:white_background, "The PID for the current Erlang runtime system instance: #{System.pid()}"]))
  IO.puts(IO.ANSI.format([:white_background, "\nThe current UTC time is: #{DateTime.utc_now()}"]))
