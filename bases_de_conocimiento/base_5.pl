% Menú

entrada(paella).
entrada(gazpacho).
entrada(consome).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(nueces_con_miel).
postre(naranja).

plato_principal(P) :- 
    carne(P).

plato_principal(P) :-
    pescado(P).

comida(E, D, P) :- 
    entrada(E),
    plato_principal(P),
    postre(D).

calorias(paella, 200).
calorias(gazpacho, 150).
calorias(consome, 300).
calorias(filete_de_cerdo, 400).
calorias(pollo_asado, 280).
calorias(trucha, 160).
calorias(bacalao, 300).
calorias(flan, 200).
calorias(nueces_con_miel, 500).
calorias(naranja, 50).

valor(E, D, P, V) :- 
    calorias(E, X),
    calorias(P, Y),
    calorias(D, Z),
    V is X+Y+Z.

comida_equilibrada(E, P, D) :- 
    comida(E, P, D),
    valor(E, P, D, V),
    V < 800.

