%% A Sudoku solver written in Prolog.

valid([]).
% Note that Head is actually a list (because this takes a list of lists).
valid([Head|Tail]) :-
    fd_all_different(Head),
    valid(Tail).

sudoku(Puzzle, Solution) :-
    Solution = Puzzle, % The solution contains the same numbers as the puzzle

    Puzzle = [S11, S12, S13, S14, % The puzzle contains 16 elements
              S21, S22, S23, S24,
              S31, S32, S33, S34,
              S41, S42, S43, S44],

    fd_domain(Puzzle, 1, 4), % The numbers in the puzzle are between 1 and 4

    Row1 = [S11, S12, S13, S14], % Splitting up the rows
    Row2 = [S21, S22, S23, S24],
    Row3 = [S31, S32, S33, S34],
    Row4 = [S41, S42, S43, S44],

    Col1 = [S11, S21, S31, S41], % Splitting up the columns
    Col2 = [S12, S22, S32, S42],
    Col3 = [S13, S23, S33, S43],
    Col4 = [S14, S24, S34, S44],

    Square1 = [S11, S12, S21, S22], % Splitting up the squares
    Square2 = [S13, S14, S23, S24],
    Square3 = [S31, S32, S41, S42],
    Square4 = [S33, S34, S43, S44],

    valid([Row1, Row2, Row3, Row4,
           Col1, Col2, Col3, Col4,
           Square1, Square2, Square3, Square4]).

