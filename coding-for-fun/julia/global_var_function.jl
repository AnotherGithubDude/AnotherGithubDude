# author: https://github.com/AnotherGithubDude, 2022
# tested with julia 1.8.3: $ julia global_var_function.jl
# parts copied from: https://docs.julialang.org/en/v1/manual/strings/

x = 123 #global

function greet()
           x = "hello" # new local
           println(x)
       end

println("x: $(x)")
println("calling greet() function:")
greet()
