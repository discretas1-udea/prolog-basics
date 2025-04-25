% Solo una persona dice la verdad
% Ana dice: "Brandon es el culpable"
% Brandon dice: "Jonas es el culpable"
% Jonas dice: "Yo no soy el culpable"

% Hechos posibles
es_culpable(ana).
es_culpable(brandon).
es_culpable(jonas).

% Ana dice: "Brandon es el culpable"
ana_dice_la_verdad :- es_culpable(brandon).

% Brandon dice: "Jonas es el culpable"
brandon_dice_la_verdad :- es_culpable(jonas).

% Jonas dice: "Yo no soy el culpable"
jonas_dice_la_verdad :- \+ es_culpable(jonas).

% Solo uno dice la verdad
solo_uno_dice_la_verdad :-
    (ana_dice_la_verdad, \+ brandon_dice_la_verdad, \+ jonas_dice_la_verdad);
    (\+ ana_dice_la_verdad, brandon_dice_la_verdad, \+ jonas_dice_la_verdad);
    (\+ ana_dice_la_verdad, \+ brandon_dice_la_verdad, jonas_dice_la_verdad).

resolver :-
    es_culpable(Culpable),
    solo_uno_dice_la_verdad,
    write('El culpable es: '), write(Culpable), nl.
