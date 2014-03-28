%% Find the smallest element in a list.
% My own recursive version.
smallest(H, [H|[]]).
smallest(X, [H|T]) :-
    smallest(M, T),
    X is min(M, H).

% Non-recursive version, based on max_list/2 from RosettaCode.
my_min_list(Min, List) :-
    select(Min, List, Sublist),
    \+((member(X, Sublist),
       X < Min)).

