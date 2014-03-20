%% A collection of fibonacci number generators written in Prolog, found online.

% From LiteratePrograms (naive)
fib_lp_naive(0, 0). % The first fibnum is 0.
fib_lp_naive(1, 1). % The second fibnum is 1.
fib_lp_naive(N, NF) :-   % Fibnum N is NF if
    A is N - 1,          % A is the index of the previous fibnum and
    B is N - 2,          % B is the index of the fibnum before last and
    fib_lp_naive(A, AF), % fibnum A is AF and
    fib_lp_naive(B, BF), % fibnum B is BF and
    NF is AF + BF.       % fibnum N is fibnum A plus fibnum B.

% From LiteratePrograms (tail recursive)
fib_lp_tc(0, A, _, A).
fib_lp_tc(N, A, B, F) :-
    N1 is N - 1,
    Sum is A + B,
    fib_lp_tc(N1, B, Sum, F).
fib_lp_tc(N, F) :-
    fib_lp_tc(N, 0, 1, F).

% From RosettaCode
fib_rc(1, 1) :- !.
fib_rc(0, 0) :- !.
fib_rc(N, Value) :-
    A is N - 1,
    B is N - 2,
    fib_rc(A, A1),
    fib_rc(B, B1),
    Value is A1 + B1.

% From RosettaCode
fib_rc2(C, [P,S], C, N) :-
    N is P + S.
fib_rc2(C, [P,S], Cv, V) :-
    succ(C, Cn),
    N is P + S,
    !,
    fib_rc2(Cn, [S,N], Cv, V).
fib_rc2(0, 0).
fib_rc2(1, 1).
fib_rc2(C, N) :-
    fib_rc2(2, [0,1], C, N).

