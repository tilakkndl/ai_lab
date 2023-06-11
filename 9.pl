mammals(X):-horse(X),pigs(X),cows(X).
horse(bluebeard).
horse(X):-offspring(X,Y),horse(Y).
parent(bluebeard,charlie).
offspring(charlie,bluebeard).
parent(X,Y):-mammal(Y).
