:- dynamic(visited_state/2).

state(2,_).
state(_,2).

state(X,Y) :-
    X < 4,
    format("Fill the 4-ltr jug: (~d, ~d) --> (~d, ~d)", [X, Y, 4, Y]),
    nl,
    state(4, Y).

state(X,Y) :-
    Y < 3,
    format("Fill the 3-ltr jug: (~d, ~d) --> (~d, ~d)", [X, Y, X, 3]),
    nl,
    state(X, 3).

state(X,Y) :-
    X > 0,
    format("Empty the 4-ltr jug: (~d, ~d) --> (~d, ~d)", [X, Y, 0, Y]),
    nl,
    state(0, Y).

state(X,Y) :-
    Y > 0,
    format("Empty the 3-ltr jug: (~d, ~d) --> (~d, ~d)", [X, Y, X, 0]),
    nl,
    state(X, 0).

state(X,Y) :-
    X + Y =< 4,
    Y > 0,
    New_X is X + Y,
    format("Pour all water from 3-ltr jug to 4-ltr jug: (~d, ~d) --> (~d, 0)", [X, Y, New_X]),
    nl,
    state(New_X, 0).

state(X,Y) :-
    X + Y > 4,
    Y > 0,
    X < 4,
    Transfer is 4 - X,
    New_X is 4,
    New_Y is Y - Transfer,
    format("Pour water from 3-ltr jug to 4-ltr until full: (~d, ~d) --> (~d, ~d)", [X, Y, New_X, New_Y]),
    nl,
    state(New_X, New_Y).

state(X,Y) :-
    X + Y =< 3,
    X > 0,
    New_Y is X + Y,
    format("Pour all water from 4-ltr jug to 3-ltr jug: (~d, ~d) --> (0, ~d)", [X, Y, New_Y]),
    nl,
    state(0, New_Y).

state(X,Y) :-
    X + Y > 3,
    X > 0,
    Y < 3,
    Transfer is 3 - Y,
    New_Y is 3,
    New_X is X - Transfer,
    format("Pour water from 4-ltr jug to 3-ltr until full: (~d, ~d) --> (~d, ~d)", [X, Y, New_X, New_Y]),
    nl,
    state(New_X, New_Y).
