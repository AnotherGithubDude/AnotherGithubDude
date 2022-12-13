# Print with colored background
# foobar = File.exists?("/dev/null")
  IO.puts(IO.ANSI.format([:white_background, "The PID for the current Erlang runtime system instance: #{System.pid()}"]))
  IO.puts(IO.ANSI.format([:white_background, "\nThe current UTC time is: #{DateTime.utc_now()}"]))
