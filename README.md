# Básicos de prolog

[![Prolog](https://img.shields.io/badge/Lenguajes-Prolog-red)](https://www.swi-prolog.org/)
[![date](https://img.shields.io/badge/Semestre-2025-blue)]()
[![date](https://img.shields.io/badge/Universidad-UdeA-green)]()
[![date](https://img.shields.io/badge/Carrera-Ingenier%C3%ADa%20de%20sistemas-orange)]()
[![date](https://img.shields.io/badge/Asignatura-Matem%C3%A1ticas%20discretas%20I-purple)]()


### Algunos links de interés
1. [Documentación oficial de Prolog](https://www.swi-prolog.org/)
2. [Tutorial de Prolog de Swish](https://swish.swi-prolog.org/p/Tutorial%20de%20prolog.swinb) (Recomendado)


> [!TIP]
> El tutorial de Prolog de SWISH es sencillo y está muy bien documentado para entender como escribir cláusulas en Prolog, archivos .pl para las bases de conocimiento y también la relación entre estas y proposiciones simples. Se recomienda encarecidamente seguirlo con atención. 


## Creación y consulta de bases de conocimiento

<details><summary><b>Crear y consultar base de conocimiento en Windows</b></summary>

1. Crear una carpeta donde se guardarán las bases de conocimiento. (No es obligatorio. Es solo para mantener el orden y evitar pérdidas de la información)
2. Dar clic en el Menú de Prolog en la sección File
![Screenshot 1](https://github.com/discretas1-udea/prolog-basics/blob/main/assets/windows/01.png)


3. Dar clic en "New"                              
![Screenshot 2](https://github.com/discretas1-udea/prolog-basics/blob/develop/readme/assets/windows/02.png)

4. Nos ubicamos en la carpeta que creamos, le ponemos nombre al archivo con extensión .pl (Ej: base_conocimiento.pl) y damos clic en guardar
![Screenshot 3](https://github.com/discretas1-udea/prolog-basics/blob/develop/readme/assets/windows/03.png)


5. Esto abre una ventana la cual es un editor de nuestras bases de conocimiento. Aquí es donde escribiremos todos los hechos, las reglas y demás componentes de las bases de conocimiento. Para este ejemplo, se usará una pequeña base de conocimiento que se presenta en el [tutorial de prolog de SWISH](https://swish.swi-prolog.org/p/Tutorial%20de%20prolog.swinb) 
    ```prolog
    animal(conejo).
    animal(perro).
    carnivoro(perro).
    masDebil(conejo, perro).
    
    herbivoro(conejo).
    plantaComestible(lechuga).

    come(A,B) :-
        carnivoro(A), animal(B), masDebil(B, A);
        herbivoro(A), plantaComestible(B).
    ```
![Screenshot 4](https://github.com/discretas1-udea/prolog-basics/blob/main/assets/windows/04.png)


6. Cuando terminemos de escribir la base de conocimiento, debemos guardar el archivo dando clic en File y Save buffer                                    
    ![Screenshot 5](https://github.com/discretas1-udea/prolog-basics/blob/main/assets/windows/05.png)



7. Para saber si ya estamos consultando esta base de conocimiento, en Prolog escribimos el siguiente comando: `consult('base_conocimiento.pl')`. Recuerda cambiar el nombre del archivo según lo hayas guardado. Si vemos True en la consola, entonces estamos consultando la base de conocimiento correctamente. Si aparece false, debemos consultar correctamente el archivo. 
![Screenshot 5](https://github.com/discretas1-udea/prolog-basics/blob/main/assets/windows/06.png)


</details>
