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



7. Para saber si ya estamos consultando esta base de conocimiento, en Prolog escribimos el siguiente comando: `consult('base_conocimiento.pl')`. Recuerda cambiar el nombre del archivo según lo hayas guardado. Si vemos 'true' en la consola, entonces estamos consultando la base de conocimiento correctamente. Si aparece 'false', debemos consultar correctamente el archivo. 
![Screenshot 5](https://github.com/discretas1-udea/prolog-basics/blob/main/assets/windows/06.png)


</details>



---



<details><summary><b>Crear y consultar base de conocimiento en Linux</b></summary>

1. Crear una carpeta donde guardaremos todas nuestras bases de conocimiento. (No es obligatorio guardar ordenadamente las bases de conocimiento pero facilita su consulta y evita pérdidas de información).

2. Crear un archivo con el nombre que deseemos y la extensión `.pl`
    ```bash
    touch base_conocimiento.pl
    ```
3. Abrimos el archivo con un editor de texto y escribimos los hechos y reglas que conforman la base de conocimiento que posteriormente consultaremos. 

    - Puede usar Nvim:
    ```bash 
    nvim base_conocimiento.pl
    ```

    - Nano:
    ```bash
    nano base_conocimiento.pl
    ```

    - O cualquier editor de texto que desee

4. Para consultar la base de conocimiento que hemos creado, debemos tener una terminal abierta donde tengamos guardadas las bases de conocimiento. Con el comando `pwd` podemos observar en qué ruta estamos parados. Allí ejecutamos el siguiente comando para abrir Prolog:

    ```bash
    swipl
    ```
5. Ya dentro de Prolog, ejecutamos el siguiente comando para consultar la base de conocimiento que creamos previamente:
    ```prolog
    consult('base_conocimiento.pl').
    ```

6. Si la consola retorna `true` significa que está consultando correctamente la base de conocimiento que creamos. Si retorna un error, debemos verificar:
    - Si estamos parados en la misma carpeta donde tenemos la base de conocimiento a consultar. Si no es así, cambiar el directorio y volver a ejecutar Prolog. 
    - Si el archivo .pl efectivamente quedó creado donde queremos.

</details>



---


<details><summary><b>Crear y consultar base de conocimiento en Google Colab</b></summary>

La primera forma de trabajar con bases de conocimiento en Google Colab es escribirla directamente en una celda. Sin necesidad de cargar un archivo. Por cada hecho o regla debemos llamar el método `assertz` del objeto prolog que creamos en el [setup de prolog](https://github.com/discretas1-udea/prolog-setup). Esto se hace de la siguiente manera:

 ```python
prolog.assertz("animal(conejo)")
prolog.assertz("animal(perro)")
prolog.assertz("carnivoro(perro)")
prolog.assertz("masDebil(conejo, perro)")
prolog.assertz("herbivoro(conejo)")
prolog.assertz("plantaComestible(lechuga)")
prolog.assertz("come(A,B) :- carnivoro(A), animal(B), masDebil(B,A); herbivoro(A), plantaComestible(B)")
```

   

Como se puede observar, con el objeto prolog estamos escribiendo hechos y reglas usando el método `assertz` del mismo. Sin necesidad de cargar archivos al entorno virtual. 


La segunda manera de usar bases de conocimiento en Prolog, es escribir la base de conocimiento con la sintaxis normal de Prolog en un archivo con extensión `.pl` en nuestro computador, para luego cargarlo y consultarlo en el entorno virtual de la siguiente manera:

1. Crear un archivo .pl con los hechos y reglas de nuestra base de conocimiento. 

2. Una vez estemos en el notebook de Google Colab vamos a dar clic en la carpeta del menú vertical izquierdo. 
    - Si no estamos conectados aún al entorno virtual, se demorará un momento en cargar el directorio. Debemos esperar a que se carguen las carpetas correspondientes. 
    - Si ya estamos conectados podemos proceder.


    ![Screenshot 1](https://github.com/discretas1-udea/prolog-basics/blob/main/assets/colab/01.png)

3. Luego, damos clic en el primer ícono del menú superior para cargar el archivo. Escogemos el archivo con extensión `.pl` donde tenemos nuestra base de conocimiento y observamos que se carga al directorio. 

    ![Screenshot 2](https://github.com/discretas1-udea/prolog-basics/blob/main/assets/colab/02.png)


    ![Screenshot 3](https://github.com/discretas1-udea/prolog-basics/blob/main/assets/colab/03.png)


4. Ya con el archivo cargado a nuestro directorio actual de trabajo, podemos consultarlo ejecutando la siguiente celda:

    ```python
    prolog.consult('base_conocimiento.pl')
    ```

    - Si la celda se ejecuta correctamente, entonces ya podemos trabajar con nuestra base de conocimiento.

    ![Screenshot 3](https://github.com/discretas1-udea/prolog-basics/blob/main/assets/colab/04.png)


</details>
