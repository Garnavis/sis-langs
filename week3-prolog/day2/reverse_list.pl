%% Reverse the elements of a list.
reverse_list([], []). % An empty list is the reverse of an empty list.
reverse_list([H|[]], [H|[]]). % A list with one element is its own reversal.
reverse_list(Reverse, [Head|Tail]) :- % Reverse is the reverse of a list if
    reverse_list(TailReverse, Tail),
    append(TailReverse, [Head], Reverse). % Reverse is the Head appended to the 
                                          % reverse of the tail.

