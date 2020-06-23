% facts
isLanguage(english).
isLanguage(spanish).

% a rule
peopleSpeak(L) :- isLanguage(L).