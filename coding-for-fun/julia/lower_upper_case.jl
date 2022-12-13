# author: https://github.com/AnotherGithubDude, 2022
# tested with julia 1.8.3: $ julia lower_upper_case.jl

# get the pid and shows how long it took
myname = "AnotherGithubDude"
println("myname is: ", myname)
@showtime println("lowercase: ", lowercase(myname))
@showtime println("uppercase: ", uppercase(myname))
exit(0)
