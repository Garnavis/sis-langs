%% A first Prolog example.
likes(wallace, cheese).
likes(grommit, cheese).
likes(wendolene, sheep).

% X and Y are friends if
friend(X, Y) :- 
    \+(X = Y),   % X is not Y, AND
    likes(X, Z), % X likes Z, AND
    likes(Y, Z). % Y likes Z.

