# author: https://github.com/AnotherGithubDude, 2022
# tested with julia 1.8.3: $ julia showtime_get_pid.jl

# get the pid and shows how long it took
@showtime println("getpid:", getpid())
exit(0)
