%% Demonstrating recursive rules.

% Zeb is the father of John Boy Sr.
father(zeb, john_boy_sr).
% John Boy Sr. is the father of John Boy Jr.
father(john_boy_sr, john_boy_jr).

ancestor(X, Y) :- % X is the ancestor of Y if
    father(X, Y). % X is the father of Y.

ancestor(X, Y) :-   % X is the ancestor of Y if
    father(X, Z),   % X is the father of Z and
    ancestor(Z, Y). % Z is the ancestor of Y.
