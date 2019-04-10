% Write a program that finds the maximum of a list of numbers.
mmax([X,Y|T], Predict) :- X =< Y, mmax([Y|T], Predict).
mmax([X,Y|T], Predict) :- X > Y, mmax([X|T], Predict).
mmax([X], X).


% Write a program that succeeds if the intersection of two given list parameters is empty.
ept_int(X, Y) :- eptint(X, Y, [], _).
eptint([X|A], Y, W, Z) :- not(member(X, Y)), eptint(A, Y, [W|X], Z).
eptint([], _, B, B).


% Write a program that returns a list containing the union of the elements of two given lists.
uni([X|Y], Z, W) :- member(X, Z), uni(Y, Z, W).
uni([X|Y], Z, [X|W]) :- uni(Y, Z, W).
uni([], X, X).



% Write a program that returns the final element of a list
ret_last(X, Y) :- retlast(X, [], Y).
retlast([A|X], Y, Z) :- retlast(X, [Y|A], Z).
retlast([X], _, [X]).