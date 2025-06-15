parent(john,alice).
parent(john, charles).
sibling(john, bob).
elder(rab, steve).
father(denver, ram).
mother(sita,ram).
married(sita, denver).
stepmother(harry, ram).

sibling(X,Y):- parent(Z,X),  parent(Z,Y).
uncle(X,Y):- parent(Z,Y), sibling(Z,X).
child(X,Y) :- parent(Y,X).
elder(X,Y):- age(X, Ax), age(Y,Yx), Ax>Yx.
who_is_older(X,Y):- elder(X,Y), write(X), write(' is old').
who_is_older(X,Y):- elder(Y,X), write(Y), write(' is old').

stepmother(X,Y):- father(F,Y),
		  married(X,F),
		  \+mother(X,Y).

	      