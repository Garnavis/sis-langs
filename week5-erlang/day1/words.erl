-module(words).
-export([count/1]).

count(List) -> count(List, 1).

count([], N) -> N;
count([32|T], N) -> count(T, N+1);
count([_|T], N) -> count(T, N).

