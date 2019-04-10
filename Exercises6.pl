% reverses a list of integers
reverse(X, Y) :- reverse1(X, [], Y).
reverse1([X|A], Y, Z) :- reverse1(A, [X|Y], Z).
reverse1([], X, X).