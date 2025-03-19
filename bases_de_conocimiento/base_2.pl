% Regla: Un estudiante aprueba si su calificación es mayor o igual a 6.

aprobado(Estudiante) :- calificacion(Estudiante, Calificacion), Calificacion >= 6.

% Base de conocimiento:
calificacion(juan, 8).
calificacion(maria, 5).
calificacion(pedro, 7).
calificacion(jose, 8).
