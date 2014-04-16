-module(languages).
-export([get_paradigm/2]).

get_paradigm([], _) -> "";
get_paradigm([{Lang, Paradigm}|_], Lang) -> Paradigm;
get_paradigm([_|Tail], Lang) -> get_paradigm(Tail, Lang).

