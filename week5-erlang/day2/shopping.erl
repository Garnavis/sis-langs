-module(shopping).
-export([calculate_total_price/1]).

calculate_total_price(L) -> [{I, Q * P} || {I, Q, P} <- L].

