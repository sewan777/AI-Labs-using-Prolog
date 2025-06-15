grandparent(X,Y).
grandparent(Bhola,Raghav).
grandparent(Bhola,Sewan).

cousin(X,Y):-
    grandparent(Z,X),
    grandparent(Z,Y).
