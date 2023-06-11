start:-write('enter first number:'),read(X),write('enter second number :'),read(Y),op(X,Y).
op(X,Y):-
S is X+Y,
M is X*Y,
D is X-Y,
Div is X/Y,
write('sum is:'),write(S),nl,
write('difference is:'),write(D),nl,write('the product is:'),write(M),nl,write('the division is:'),write(Div).