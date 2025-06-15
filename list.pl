first(X, [H|_]):- X=H.
first(X,[2,1,3]):- X = 2.

firsttwo(X, [H|I],I):- X=[H,I].

member(X, [X|_]):- !.
member(X, [_|T]):- member(X,T).

count([], 0).
count([_|T], C) :-
    count(T, C1),
    C is C1 + 1.

sum([], 0).
sum([H|T], S) :-
    sum(T, S1),
    S is S1 + H.


smallest([X], X).
smallest([H|T], M) :-
    smallest(T, TailMin),
    (H < TailMin -> M = H ; M = TailMin).

largest([X], X).
largest([H|T], M) :-
    largest(T, TailMax),
    (H > TailMax -> M = H ; M = TailMax).

reverse([])