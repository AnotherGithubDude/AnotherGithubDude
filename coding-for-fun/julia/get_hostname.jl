# author: https://github.com/AnotherGithubDude, 2022
# tested with julia 1.8.3: $ julia get_hostname.jl

# get the pid and shows how long it took
@showtime println("gethostname:", gethostname())
exit(0)
