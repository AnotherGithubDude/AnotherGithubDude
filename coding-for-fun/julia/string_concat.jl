# author: https://github.com/AnotherGithubDude, 2022
# tested with julia 1.8.3: $ julia string_concat.jl
# parts copied from: https://docs.julialang.org/en/v1/manual/strings/

foo = "foo"
bar = "bar"
merged3 = string(foo," ",bar)

println("merged3: $(merged3)")
println("foo+bar: $(string(foo,bar))")
