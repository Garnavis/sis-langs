%% A knowledge base describing foods, types, and flavors.
food_type(velveeta, cheese).
food_type(ritz, cracker).
food_type(spam, meat).
food_type(sausage, meat).
food_type(jolt, soda).
food_type(twinkie, dessert).

flavor(sweet, dessert).
flavor(savory, meat).
flavor(savory, cheese).
flavor(sweet, soda).

food_flavor(X, Y) :- % food X has flavor Y if
    food_type(X, Z), % food X is of type Z and
    flavor(Y, Z).    % type Z has flavor Y
