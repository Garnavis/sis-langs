%% Find the smallest element in a list.
smallest(X, L) :- min_acc(X, 9999, L).

min_acc(X, X, []).
min_acc(X, Min, []) :- X is min(X, Min).
min_acc(X, Min, [H|T]) :-
    Min is min(H, Min),
    min_acc(X, Min, T).

