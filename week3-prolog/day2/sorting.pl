%% Sort the elements of a list.
:- include('smallest.pl').
list_sort([], []).
list_sort([H|[]], [H|[]]).
list_sort(List, [Head|Tail]) :-
    smallest(Head, List),
    select(Head, List, Rest),
    list_sort(Rest, Tail).

