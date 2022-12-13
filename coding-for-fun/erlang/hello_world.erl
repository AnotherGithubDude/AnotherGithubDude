% author: https://github.com/AnotherGithubDude, 2022
% parts generated with: https://beta.openai.com/playground/p/default-chat
% tested with Eshell V13.1.1
% to get it run:
% 1. $ erl
% 2. c(hello_world).
% 3. hello_world:hello_world().
% 4. init:stop().

-module(hello_world).
-export([hello_world/0]).

hello_world() -> io:fwrite("Hello World\n").
