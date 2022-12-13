# author: https://github.com/AnotherGithubDude, 2022
# tested with julia 1.8.3: $ julia cd_readdir_pwd.jl

# shows the files in the current directory
@showtime println(cd(readdir,pwd()))
exit(0)
