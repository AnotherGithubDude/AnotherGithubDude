# author: https://github.com/AnotherGithubDude, 2022
# tested with julia 1.8.3: $ julia isunix_isapple.jl

# get the pid and shows how long it took
@showtime println("isunix:", Sys.isunix())
@allocated println("isapple:", Sys.isapple())
exit(0)
