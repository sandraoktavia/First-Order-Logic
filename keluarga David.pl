% Fakta berdasarkan silsilah keluarga
dan(david, amy).
dan(jack, karen).
dan(john, susan).

orangtua(david, john).
orangtua(amy, john).
orangtua(jack, ray).
orangtua(karen, ray).
orangtua(john, peter).
orangtua(susan, peter).
orangtua(john, mary).
orangtua(susan, mary).
orangtua(david, liza).
orangtua(amy, liza).

laki_laki(david).
laki_laki(jack).
laki_laki(john).
laki_laki(ray).
laki_laki(peter).

perempuan(amy).
perempuan(karen).
perempuan(susan).
perempuan(liza).
perempuan(mary).

% Aturan
ayah(X, Y) :- laki_laki(X), orangtua(X, Y).
ibu(X, Y) :- perempuan(X), orangtua(X, Y).
kakak(X, Y) :- orangtua(Z, X), orangtua(Z, Y), X \= Y.
adik(X, Y) :- orangtua(Z, X), orangtua(Z, Y), X \= Y.
cucu(X, Y) :- orangtua(Y, Z), orangtua(Z, X).
