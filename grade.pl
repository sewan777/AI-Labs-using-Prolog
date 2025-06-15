get_grade(Score) :-
    between(80, 100, Score),
    Grade = 'A',
    format('Your Grade is ~w~n', [Grade]).

get_grade(Score) :-
    between(75, 79, Score),
    Grade = 'A-',
    format('Your Grade is ~w~n', [Grade]).

get_grade(Score) :-
    between(70, 74, Score),
    Grade = 'B+',
    format('Your Grade is ~w~n', [Grade]).

get_grade(Score) :-
    between(65, 69, Score),
    Grade = 'B',
    format('Your Grade is ~w~n', [Grade]).

get_grade(Score) :-
    Score < 65,
    format('Your Grade is below B~n').
