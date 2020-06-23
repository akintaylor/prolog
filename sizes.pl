% facts
bigger(ant, flea).
bigger(mouse, ant).
bigger(cat, mouse).
bigger(horse, cat).
bigger(whale, horse).

% this rule states, variable A is bigger than variable B if there is a fact - bigger(A, B)
bigger_than(A, B) :- bigger(A, B).

% this rule states, variable A is bigger than variable B if there is a fact - bigger(A, X) and a rule bigger_than(X, B)
bigger_than(A, B) :- bigger(A, X), bigger_than(X, B).
