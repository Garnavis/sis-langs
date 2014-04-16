-module(ttt).
-export([winner/1]).

winner({X,X,X,_,_,_,_,_,_}) -> X;
winner({_,_,_,X,X,X,_,_,_}) -> X;
winner({_,_,_,_,_,_,X,X,X}) -> X;
winner({X,_,_,X,_,_,X,_,_}) -> X;
winner({_,X,_,_,X,_,_,X,_}) -> X;
winner({_,_,X,_,_X_,_,_,X}) -> X;
winner({X,_,_,_,X,_,_,_,X}) -> X;
winner({_,_,X,_,X,_,X,_,_}) -> X;
winner({A,B,C,D,E,F,G,H,I}) -> cat;
winner(_) -> no_winner.

