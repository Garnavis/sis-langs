%% Demonstrating lists and math in Prolog.

count(0, []). % 0 is the count of nil.
count(Count, [Head|Tail]) :- % Count is the count of a list if
    count(TailCount, Tail),  % TailCount is the count of the tail and
    Count is TailCount + 1.  % Count is the TailCount plus 1.

sum(0, []). % 0 is the sum of nil.
sum(Total, [Head|Tail]) :- % Total is the sum of a list if
    sum(Sum, Tail),        % Sum is the sum of the tail and
    Total is Head + Sum.   % Total is the head of the list plus Sum.

average(Average, List) :- % Average is the average of a list if
    sum(Sum, List),       % Sum is the sum of the list and
    count(Count, List),   % Count is the count of the list and
    Average is Sum/Count. % Average is the sum divided by the count.

