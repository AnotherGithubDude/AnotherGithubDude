# author: https://github.com/AnotherGithubDude, 2022
# tested with julia 1.8.3: $ julia files-sorted.jl
using HTTP
  resp = HTTP.get("https://raw.githubusercontent.com/AnotherGithubDude/AnotherGithubDude/main/README.md")  
    print(String(resp.body))
  exit(1)
