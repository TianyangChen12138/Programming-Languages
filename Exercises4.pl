% Using the structures parent (X, Y) , male(X) , and female(X) , write a structure that defines mother (X, Y) .
mother(X, Y) :- female(X), parent(X, Y).


% Using the structures parent (X, Y) , male(X) , and female(X) , write a structure that defines sister (X, Y) .
sister(X, Y) :- parent(Z, X), parent(Z, Y), female(X), not(X = Y).