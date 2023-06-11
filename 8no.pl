% Predicates:
% - queens/1 is the main predicate that solves the 8-queen problem.
% - queens/2 is a helper predicate that generates the solution.
% - safe/2 checks if it is safe to place a queen at a given position.

% Main predicate to solve the 8-queen problem.
queens(QueenPositions) :-
    queens(8, QueenPositions).

% Helper predicate to generate the solution.
queens(0, []).
queens(N, [Pos|Rest]) :-
    N > 0,
    M is N - 1,
    queens(M, Rest),
    between(1, 8, Pos),
    safe(Pos, Rest).

% Check if it is safe to place a queen at a given position.
safe(_, []).
safe(Pos, [Pos2|Rest]) :-
    Pos =\= Pos2,
    Pos2 - Pos =\= Rest,
    Pos - Pos2 =\= Rest,
    safe(Pos, Rest).

% Predicate to display the solution.
display_queens([]).
display_queens([Pos|Rest]) :-
    display_row(Pos),
    display_queens(Rest).

% Predicate to display a row with a queen.
display_row(Pos) :-
    display_row(1, Pos).

display_row(8, Pos) :-
    write('|'),
    display_cell(Pos),
    write('|'),
    nl.
display_row(Column, Pos) :-
    write('|'),
    display_cell(Column, Pos),
    NextColumn is Column + 1,
    display_row(NextColumn, Pos).

% Predicate to display a cell.
display_cell(Column, Column) :- write(' Q ').
display_cell(_, _) :- write('   ').

% Solving and displaying the solution.
:- queens(QueenPositions), display_queens(QueenPositions).