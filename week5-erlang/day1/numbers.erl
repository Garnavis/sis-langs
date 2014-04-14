-module(numbers).
-export([count/0]).
-export([count/1]).

count() -> count(1).

count(10) -> erlang:display(10);
count(N)  -> erlang:display(N), count(N+1).

