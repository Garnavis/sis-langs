-module(error_check).
-export([check/1]).

check(success) -> io:fwrite("success~n", []);
check({error, Message}) -> io:fwrite("error: ~s~n", [Message]).

