using HTTP

  resp = HTTP.get("https://raw.githubusercontent.com/AnotherGithubDude/AnotherGithubDude/main/README.md")  
    print(String(resp.body))
  exit(1)
