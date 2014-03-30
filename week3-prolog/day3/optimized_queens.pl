%% Solving the Eight Queens problem in Prolog.

% True if the Queen's column and row are in the range 1..8.
valid_queen((Row, Col)) :-
    Range = [1, 2, 3, 4, 5, 6, 7, 8],
    member(Row, Range),
    member(Col, Range).

% True if every Queen's column and row are in the range 1..8.
valid_board([]).
valid_board([Head|Tail]) :-
    valid_queen(Head),
    valid_board(Tail).

% True if the second argument is the list of rows from the first argument.
rows([], []).
rows([(Row, _)|QueensTail], [Row|RowsTail]) :-
    rows(QueensTail, RowsTail).

% True if the second argument is the list of rows from the first argument.
cols([], []).
cols([(_, Col)|QueensTail], [Col|ColsTail]) :-
    cols(QueensTail, ColsTail).

diags1([], []).
diags1([(Row, Col)|QueensTail], [Diag|DiagsTail]) :-
    Diag is Col - Row,
    diags1(QueensTail, DiagsTail).

diags2([], []).
diags2([(Row, Col)|QueensTail], [Diag|DiagsTail]) :-
    Diag is Col + Row,
    diags2(QueensTail, DiagsTail).

% List: a list of 8 tuples, where each tuple is an ordered pair representing a
% queen's location on an 8-by-8 board.
eight_queens(Board) :-
    Board = [(1, _), (2, _), (3, _), (4, _),
             (5, _), (6, _), (7, _), (8, _)],
    valid_board(Board), % all queens are in rows 1-8 and columns 1-8

    rows(Board, Rows),
    cols(Board, Cols),
    diags1(Board, Diags1),
    diags2(Board, Diags2),

    fd_all_different(Rows),
    fd_all_different(Cols),
    fd_all_different(Diags1),
    fd_all_different(Diags2).

