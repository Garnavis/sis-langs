%% Rewriting the "append" built-in rule.
concatenate([], List, List). % The concatenation of nil and a list is the list.
concatenate([Head|Tail1], List, [Head|Tail2]) :-
    concatenate(Tail1, List, Tail2).

% Put another way:
% [Head|Tail1] + List = [Head|Tail2]
% Tail1 + List = Tail2
% [Head|Tail1] + List = [Head|Tail1 + List]

