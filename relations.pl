:- dynamic parents_of/3.

mother_of(C, M) :- parents_of(C, _, M).
father_of(C, F) :- parents_of(C, F, _).


sibling_of(C1, C2) :-
 parents_of(C1, F, M),
 parents_of(C2, F, M),
 C1 \= C2.


parent_of(C, P) :- parents_of(C, P, _).
parent_of(C, P) :- parents_of(C, _, P).


ancestor_of(A, B) :- parent_of(A, B).
ancestor_of(A, B) :- parent_of(A, X), ancestor_of(X, B).

nephew_or_neice_of(Person, N) :- 
 sibling_of(Person, Sibling),
 parent_of(N, Sibling).


grandfather_of(Person, G) :-
 parent_of(Person, Parent),
 father_of(Parent, G).


sibling_of_ancestors_of(Person, AS) :-
 ancestor_of(Person, A),
 sibling_of(A, AS).


decendant_of(Person, D) :-
 ancestor_of(D, Person).
