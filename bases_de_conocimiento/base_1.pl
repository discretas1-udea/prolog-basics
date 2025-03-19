% Hechos - Proposiciones simples

% En un archivo prolog escribimos hechos y reglas que son lo que conocemos como premisas de un argumento. 

% Escribamos hechos, para que Prolog tenga contexto de la situación que queremos plantear. 
% Supongamos que queremos consultar cuando algo es mortal o no. Entonces escribamos hechos definiendo sujetos y sus propiedades. 

% Hechos
persona(maría).
persona(antonio).
persona(socrates).
objeto(miImpresora).
objeto(miCelular).
animal(miVaca).

% Reglas
mortal(X) :- persona(X).
mortal(X) :- animal(X).
no_mortal(X) :- objeto(X). 

