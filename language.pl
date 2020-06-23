% facts
isLanguage(english).
isLanguage(spanish).

% a rule that states people can only speak a variable L if it's a Language.
peopleSpeak(L) :- isLanguage(L).
