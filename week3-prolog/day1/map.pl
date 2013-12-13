%% Solving the classic map coloring problem.
%% Color a map such that no two adjacent states have the same color.
different(red, green). different(red, blue).
different(green, red). different(green, blue).
different(blue, red).  different(blue, green).

coloring(Alabama, Mississippi, Georgia, Tennessee, Florida) :-
  different(Mississippi, Tennessee),
  different(Mississippi, Alabama),
  different(Alabama, Tennessee),
  different(Alabama, Mississippi),
  different(Alabama, Georgia),
  different(Alabama, Florida),
  different(Georgia, Florida),
  different(Georgia, Tennessee).
