% Base de conocimiento de ejemplo
pelicula('El Padrino', crimen).
pelicula('Pulp Fiction', crimen).
pelicula('El Señor de los Anillos', fantasia).
pelicula('Harry Potter', fantasia).
pelicula('Titanic', romance).
pelicula('Orgullo y Prejuicio', romance).
pelicula('Interestelar', ciencia_ficcion).
pelicula('Matrix', ciencia_ficcion).
pelicula('Buscando a Nemo', animacion).
pelicula('Toy Story', animacion).

recomendar_peliculas(Genero) :-
    pelicula(Titulo, Genero),
    write('Te recomiendo: '), write(Titulo), nl, fail.

recomendar_peliculas(_).
