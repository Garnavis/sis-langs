%% Find the smallest element in a list.
smallest(X, [X|[]]).
smallest(X, [H|T]) :- % X is the smallest element in a list if
    smallest(Tx, T),  % Tx is the smallest element of the tail and
    X =< H,           % X is smaller than the head and
    X =< Tx.          % X is smaller than the smallest element of the tail.

