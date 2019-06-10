/**
 * Miguel Ángel Torres Vargas
 * Código: 55215016
 * Ingeniería de Sistemas
 * Universidad De Boyacá
*/

:- style_check(-singleton).

/**
 *  BASE DE CONOCIMIENTOS:
 *  - Descripción de Objetos Astrofísicos Masivos en el Campo Visible
*/

/* Método General */

accMax([H|T],A,Max) :-
H > A,
accMax(T,H,Max).
 
accMax([H|T],A,Max) :-
H =< A,
accMax(T,A,Max).
 
accMax([],A,A).

% accMax([-11,-2,-7,-4,-12],0,Max).

max(List,Max) :-  
List = [H|_],
accMax(List,H,Max).
% max([1,2,46,53,0],X).

addition(A, B, C):- C is A + B.
subtraction(A, B, C):- C is A - B.
multiplication(A, B, C):- C is A * B.
division(A, B, C):- C is A / B.

avg( List, Avg ):-
    sumlist( List, Sum ),
    length( List, Length),
    (  Length > 0
    -> Avg is Sum / Length
    ;  Avg is 0
    ).
 
/**
 *  Unidad Astronomica (UA) [KM]
 * 
 * Distancia media entre la Tierra y el Sol. No se utiliza fuera del Sistema Solar
 * */

ua('ua',149600000). 

/** 
 * Año luz (AL) [KM]
 * 
 * Distancia que recorre la luz en un año. 
 * Si una estrella está a 10 años luz, la vemos tal como era hace 10 años. 
 *
 * (9.46 billones de /  63.235,3 ua)
 * */

ua('al',9460730472580.8).

/** Pársec (paralaje-segundo) [KM]
 * Distancia de un cuerpo que tiene una paralaje de 2 segmentos de arco. La más "científica".	
 * 
 * (30,86 billones de / 3,26 años luz / 206.265 ua )
 * */

ua('ps',30856778570831.27).

/**
 * Brightness
 * 
 * El brillo (magnitud estelar) es un sistema de medida en que cada magnitud es 2,512 veces más brillante que la siguiente. 
 * Una estrella de magnitud 1 es 100 veces más brillante que una de magnitud 6. 
 * Las más brillantes tienen magnitudes negativas.
 * Uso: me(2,X). Regresa un valor mayor
 * */

me(0, _X).
me(N, X) :-
multiplication(N, 2512,X).

/* Starts ME */
 

/* Temperature * / 
% Name, Number, Unidad
¿Tiene tamano?
Su tamano es de

¿Hay fecha exacta de descubrimiento?
Su descubrimiento fue en 

¿Es una Estrella?
Este objeto es un 

¿Se conoce su Temperatura?
Su temperatura abarca los 

¿Su Gravedad es Conocida?
La gravedad de este objeto es
*/

conocimiento('tunguska_event',
    [
    'Su tamano es de 0.11 km', % Size
    'Su descubrimiento fue en 1199',  % Year See
    'Este objeto es un Meteorito' % Type
    ]
).

conocimiento('crab_pulsar',
    [
    'Su tamano es de 20 km', % Size
    'Su descubrimiento fue en 1968',  % Year See
    'Este objeto es una Estrella' % Type
    ]
).

conocimiento('geminga',
    [
    'Su tamano es de 20 km', % Size
    'Este objeto es una Estrella' % Type
    ]
).


conocimiento('calvera',
    [
    'Su tamano es de 25 km', % Size
    'Su temperatura abarca los 10541 C', % Temperatura
    'Este objeto es una Estrella' % Type
    ]
).

conocimiento('xte_j1650_500',
    [
    'Su tamano es de 25 km', % Size
    'Su temperatura abarca los XXX C', % Temperatura
    'Su descubrimiento fue en XXX',  % Year See
    'Este objeto es un Agujero Negro', % Type
    'La gravedad de este objeto es XXX' % Gravety
    
    ]
).

conocimiento('vela_X_1',
    [
    'Su tamano es de 28 km', % Size
    'Su temperatura abarca los 31226 C', % Temperatura
    'Este objeto es una Estrella' % Type
    ]
).

conocimiento('gaspra',
    [
    'Su tamano es de 34 km', % Size
    'Su temperatura abarca los 1916 C', % Temperatura
    'Este objeto es un Asteroide' % Type
    ]
).

conocimiento('psyche',
    [
    'Su tamano es de 226 km', % Size
    'Su descubrimiento fue en 1852',  % Year See
    'Este objeto es un Asteroide', % Type
    'La gravedad de este objeto es XXX' % Gravety
    ]
).

conocimiento('pallas',
    [
    'Su tamano es de 545 km', % Size
    'Su descubrimiento fue en 1802',  % Year See
    'Este objeto es un Asteroide', % Type
    'La gravedad de este objeto es 0.21 m/s2' % Gravety
    ]
).


conocimiento('ceres',
    [
    'Su tamano es de 545 km', % Size
    'Su temperatura abarca los -113 C', % Temperatura
    'Su descubrimiento fue en 1801',  % Year See
    'Este objeto es un Planeta Enano', % Type
    'La gravedad de este objeto es 0.27 m/s2' % Gravety
    ]
).


conocimiento('makemake',
    [
    'Su tamano es de 1434 km', % Size
    'Su temperatura abarca los -239 C', % Temperatura
    'Su descubrimiento fue en 2005',  % Year See
    'Este objeto es un Planeta Enano', % Type
    'La gravedad de este objeto es 0.5 m/s2' % Gravety
    ]
).

conocimiento('haumea',
    [
    'Su tamano es de 1632 km', % Size
    'Su temperatura abarca los -241 C', % Temperatura
    'Su descubrimiento fue en 2004',  % Year See
    'Este objeto es un Planeta Enano', % Type
    'La gravedad de este objeto es 0.401 m/s2' % Gravety
    ]
).

conocimiento('eris',
    [
    'Su tamano es de 2326 km', % Size
    'Su temperatura abarca los -231 C', % Temperatura
    'Su descubrimiento fue en 2005',  % Year See
    'Este objeto es un Planeta Enano', % Type
    'La gravedad de este objeto es 0.82 m/s2' % Gravety
    ]
).

conocimiento('pluto',
    [
    'Su tamano es de 2377 km', % Size
    'Su temperatura abarca los -228 C', % Temperatura
    'Su descubrimiento fue en 1930',  % Year See
    'Este objeto es un Planeta Enano', % Type
    'La gravedad de este objeto es 0.62 m/s2' % Gravety
    ]
).



conocimiento('the_Moon',
    [
    'Su tamano es de 3474 km', % Size
    'Su temperatura abarca los 367 C', % Temperatura
    'Su descubrimiento fue en 1639',  % Year See
    'Este objeto es una Luna', % Type
    'La gravedad de este objeto es 3.7 m/s2' % Gravety
    ]
).

conocimiento('kepler_37b',
    [
    'Su tamano es de 4511 km', % Size
    'Este objeto es una Luna', % Type
    'La gravedad de este objeto es 1.62 m/s2' % Gravety
    ]
).

conocimiento('callisto',
    [
    'Su tamano es de 4800 km', % Size
    'Este objeto es una Luna', % Type
    'La gravedad de este objeto es 3.7 m/s2' % Gravety
    ]
).

conocimiento('mercury',
    [
    'Su tamano es de 4879 km', % Size
    'Su temperatura abarca los 467 C', % Temperatura
    'Su descubrimiento fue en 1639',  % Year See
    'Este objeto es un Planeta', % Type
    'La gravedad de este objeto es 3.7 m/s2' % Gravety
    ]
).

conocimiento('mars',
    [
    'Su tamano es de 6779 km', % Size
    'Su temperatura abarca los 20 C', % Temperatura
    'Su descubrimiento fue en 1610',  % Year See
    'Este objeto es un Planeta', % Type
    'La gravedad de este objeto es 3.711 m/s2' % Gravety
    ]
).

conocimiento('kepler_390_C',
    [
    'Su tamano es de 9710 km', % Size
    'Este objeto es un Planeta' % Type
    ]
).


/**
 * Adición de Identificación de Objetos mediante Imagenes:
*/

%conocimiento('tunguska_event',
    
    id_imagen_preg('Su tamano es de 0.11 km', 'size').
    id_imagen_preg('Su descubrimiento fue en 1199',  'year').
    id_imagen_preg('Este objeto es un Meteorito', 'type').
  
% conocimiento('crab_pulsar',
    
    id_imagen_preg('Su tamano es de 20 km', 'size').
    id_imagen_preg('Su descubrimiento fue en 1968',  'year').
    id_imagen_preg('Este objeto es una Estrella', 'type').
    

% conocimiento('geminga',
    
    id_imagen_preg('Su tamano es de 20 km', 'size').
    id_imagen_preg('Este objeto es una Estrella', 'type').
  

% conocimiento('calvera',
    
    id_imagen_preg('Su tamano es de 25 km', 'size').
    id_imagen_preg('Su temperatura abarca los 10541 C', 'temperature').
id_imagen_preg('Este objeto es una Estrella', 'type').
  
% conocimiento('xte_j1650_500',
    
    id_imagen_preg('Su tamano es de 25 km', 'size').
    id_imagen_preg('Su temperatura abarca los XXX C', 'temperature').
    id_imagen_preg('Su descubrimiento fue en XXX',  'year').
    id_imagen_preg('Este objeto es un Agujero Negro', 'type').
    id_imagen_preg('La gravedad de este objeto es XXX' , 'gravety').
    
 
% conocimiento('vela_X_1',
    
    id_imagen_preg('Su tamano es de 28 km', 'size').
    id_imagen_preg('Su temperatura abarca los 31226 C', 'temperature').
    id_imagen_preg('Este objeto es una Estrella', 'type').
  

%conocimiento('gaspra',
    
    id_imagen_preg('Su tamano es de 34 km', 'size').
    id_imagen_preg('Su temperatura abarca los 1916 C', 'temperature').
    id_imagen_preg('Este objeto es un Asteroide', 'type').
    
% conocimiento('psyche',
    
    id_imagen_preg('Su tamano es de 226 km', 'size').
    id_imagen_preg('Su descubrimiento fue en 1852',  'year').
    id_imagen_preg('Este objeto es un Asteroide', 'type').
    id_imagen_preg('La gravedad de este objeto es XXX' , 'gravety').
  

%conocimiento('pallas',
    
    id_imagen_preg('Su tamano es de 545 km', 'size').
    id_imagen_preg('Su descubrimiento fue en 1802',  'year').
    id_imagen_preg('Este objeto es un Asteroide', 'type').
    id_imagen_preg('La gravedad de este objeto es 0.21 m/s2' , 'gravety').
  


%conocimiento('ceres',
    id_imagen_preg('Su tamano es de 545 km', 'size').
    id_imagen_preg('Su temperatura abarca los -113 C', 'temperature').
    id_imagen_preg('Su descubrimiento fue en 1801',  'year').
    id_imagen_preg('Este objeto es un Planeta Enano', 'type').
    id_imagen_preg('La gravedad de este objeto es 0.27 m/s2' , 'gravety').
    


%conocimiento('makemake',
    
    id_imagen_preg('Su tamano es de 1434 km', 'size').
    id_imagen_preg('Su temperatura abarca los -239 C', 'temperature').
    id_imagen_preg('Su descubrimiento fue en 2005',  'year').
    id_imagen_preg('Este objeto es un Planeta Enano', 'type').
    id_imagen_preg('La gravedad de este objeto es 0.5 m/s2' , 'gravety').

%conocimiento('haumea',
    
    id_imagen_preg('Su tamano es de 1632 km', 'size').
    id_imagen_preg('Su temperatura abarca los -241 C', 'temperature').
    id_imagen_preg('Su descubrimiento fue en 2004',  'year').
    id_imagen_preg('Este objeto es un Planeta Enano', 'type').
    id_imagen_preg('La gravedad de este objeto es 0.401 m/s2' , 'gravety').

%conocimiento('eris',
    
    id_imagen_preg('Su tamano es de 2326 km', 'size').
    id_imagen_preg('Su temperatura abarca los -231 C', 'temperature').
    id_imagen_preg('Su descubrimiento fue en 2005',  'year').
    id_imagen_preg('Este objeto es un Planeta Enano', 'type').
    id_imagen_preg('La gravedad de este objeto es 0.82 m/s2' , 'gravety').
 
%conocimiento('pluto',
    
    id_imagen_preg('Su tamano es de 2377 km', 'size').
    id_imagen_preg('Su temperatura abarca los -228 C', 'temperature').
    id_imagen_preg('Su descubrimiento fue en 1930',  'year').
    id_imagen_preg('Este objeto es un Planeta Enano', 'type').
    id_imagen_preg('La gravedad de este objeto es 0.62 m/s2' , 'gravety').
  
%conocimiento('the_Moon',
    
    id_imagen_preg('Su tamano es de 3474 km', 'size').
    id_imagen_preg('Su temperatura abarca los 367 C', 'temperature').
    id_imagen_preg('Su descubrimiento fue en 1639',  'year').
    id_imagen_preg('Este objeto es una Luna', 'type').
    id_imagen_preg('La gravedad de este objeto es 3.7 m/s2' , 'gravety').
    

% conocimiento('kepler_37b',
    id_imagen_preg('Su tamano es de 4511 km', 'size').
    id_imagen_preg('Este objeto es una Luna', 'type').
    id_imagen_preg('La gravedad de este objeto es 1.62 m/s2' , 'gravety').
 

%conocimiento('callisto',
    
    id_imagen_preg('Su tamano es de 4800 km', 'size').
    id_imagen_preg('Este objeto es una Luna', 'type').
    id_imagen_preg('La gravedad de este objeto es 3.7 m/s2' , 'gravety').

%conocimiento('mercury',

    id_imagen_preg('Su tamano es de 4879 km', 'size').
    id_imagen_preg('Su temperatura abarca los 467 C', 'temperature').
    id_imagen_preg('Su descubrimiento fue en 1639',  'year').
    id_imagen_preg('Este objeto es un Planeta', 'type').
    id_imagen_preg('La gravedad de este objeto es 3.7 m/s2' , 'gravety').


% conocimiento('mars',
    id_imagen_preg('Su tamano es de 6779 km', 'size').
    id_imagen_preg('Su temperatura abarca los 20 C', 'temperature').
    id_imagen_preg('Su descubrimiento fue en 1610',  'year').
    id_imagen_preg('Este objeto es un Planeta', 'type').
    id_imagen_preg('La gravedad de este objeto es 3.711 m/s2' , 'gravety').
  

%'kepler_390_C'
    id_imagen_preg('Su tamano es de 9710 km', 'size').
    id_imagen_preg('Este objeto es un Planeta', 'type').

/**
 * Miguel Ángel Torres Vargas
 * Código: 55215016
 * Ingeniería de Sistemas
 * Universidad De Boyacá
*/

 /** 
* MOTOR DE INFERENCIA: 
* Este fragmento del sistema experto se encarga de inferir cual es el la posible respuesta a partir de las preguntas realizadas
 */
:- dynamic conocido/1.

  mostrar_objeto(X):-haz_diagnostico(X),clean_scratchpad.
  mostrar_objeto(lo_siento_diagnostico_desconocido):-clean_scratchpad .

  haz_diagnostico(Diagnosis):-
                            obten_hipotesis_y_sintomas(Diagnosis, ListaDeSintomas),
                            prueba_presencia_de(Diagnosis, ListaDeSintomas).
                            
                            
obten_hipotesis_y_sintomas(Diagnosis, ListaDeSintomas):-
                            conocimiento(Diagnosis, ListaDeSintomas).

                            
prueba_presencia_de(Diagnosis, []).
prueba_presencia_de(Diagnosis, [Head | Tail]):- prueba_verdad_de(Diagnosis, Head),
                                              prueba_presencia_de(Diagnosis, Tail).


prueba_verdad_de(Diagnosis, Sintoma):- conocido(Sintoma).
prueba_verdad_de(Diagnosis, Sintoma):- not(conocido(is_false(Sintoma))),
pregunta_sobre(Diagnosis, Sintoma, Reply), Reply = 'si'.


pregunta_sobre(Diagnosis, Sintoma, Reply):- preguntar(Sintoma,Respuesta),
                          process(Diagnosis, Sintoma, Respuesta, Reply).


process(Diagnosis, Sintoma, si, si):- asserta(conocido(Sintoma)).
process(Diagnosis, Sintoma, no, no):- asserta(conocido(is_false(Sintoma))).


clean_scratchpad:- retract(conocido(X)), fail.
clean_scratchpad.
     
     
conocido(_):- fail.

not(X):- X,!,fail.
not(_).

/**
 * Miguel Ángel Torres Vargas
 * Código: 55215016
 * Ingeniería de Sistemas
 * Universidad De Boyacá
*/

:- style_check(-singleton).

/**
 *  INTERFAZ GRAFICA:
 *  - Descripción de Objetos Astrofísicos Masivos en el Campo Visible
 *  En este fragmento del sistema experto es la que se encarga de interactuar con la persona comun, mostrar imagenes, botones, textos, etc.
*/

/**
* INICIAR SISTEMA EXPERTO:
* PARA CORRER EL PROGRAMA, ES NESESARIO CARGAR LAS 3 PARTES AL SWI PROLOG
* Y LUEGO SOLO CONSULTAR TODO, AUTOMATICAMENTE SE ABRIRA LA VENTANA DEL PROGRAMA
**/

:- use_module(library(pce)).
:- pce_image_directory('./img').
:- use_module(library(pce_style_item)).
:- dynamic color/2.


resource(img_principal, image, image('img_principal.jpg')).
resource(portada, image, image('portada.jpg')).

% Objects Answers
 
resource(objeto_desconocido, image, image('desconocido.jpg')).
resource(tunguska_event, image, image('objects/tunguska_event.jpg')).
resource(crab_pulsar, image, image('objects/Crab_Pulsar.jpg')).
resource(geminga, image, image('objects/Geminga.jpg')).
resource(calvera, image, image('objects/Calvera.jpg')).
resource(xte_j1650_500, image, image('objects/Aguejero_Negro.jpg')).
resource(vela_X_1, image, image('objects/trat_Vela_X-1hidropesia.jpg')).
resource(gaspra, image, image('objects/Gaspra.jpg')).
resource(psyche, image, image('objects/Psyche.jpg')).
resource(pallas, image, image('objects/Pallas.jpg')).
resource(ceres, image, image('objects/Ceres.jpg')).
resource(makemake, image, image('objects/Makemake.jpg')).
resource(haumea, image, image('objects/Haumea.jpg')).
resource(eris, image, image('objects/Eris.jpg')).
resource(pluto, image, image('objects/Pluto.jpg')).
resource(the_moon, image, image('objects/The_Moon.jpg')).
resource(kepler_37b, image, image('objects/Kepler_37b.jpg')).
resource(callisto, image, image('objects/Callisto.jpg')).
resource(mercury, image, image('objects/Mercury.jpg')).
resource(mars, image, image('objects/Mars.jpg')).
resource(kepler_390_C, image, image('objects/Kepler_390_C.jpg')).

% Objects Questions

resource(size, image, image('size.jpg')).
resource(temperature, image, image('temperature.jpg')).
resource(year, image, image('year.jpg')).
resource(type, image, image('type.jpg')).
resource(gravety, image, image('gravety.jpg')).

/**
 * Make Methods Base ( Add Images & Buttons)
*
% Show Images
mostrar_imagen(Pantalla, Imagen) :- new(Figura, figure),
new(Bitmap, bitmap(resource(Imagen),@on)),
send(Bitmap, name, 1),
send(Figura, display, Bitmap),
send(Figura, status, 1),
send(Pantalla, display,Figura,point(100,80)).

% Show Resultad Image
mostrar_imagen_objeto(Pantalla, Imagen) :-
    new(Figura, figure),
    new(Bitmap, bitmap(resource(Imagen),@on)),
    send(Bitmap, name, 1),
    send(Figura, display, Bitmap),
    send(Figura, status, 1),
    send(Pantalla, display,Figura,point(20,100)).


% Show a New Image
nueva_imagen(Ventana, Imagen) :-
    new(Figura, figure),
    new(Bitmap, bitmap(resource(Imagen),@on)),
    send(Bitmap, name, 1),
    send(Figura, display, Bitmap),
    send(Figura, status, 1),
    send(Ventana, display,Figura,point(0,0)).

% Show Question Image
imagen_pregunta(Ventana, Imagen) :-
    new(Figura, figure),
    new(Bitmap, bitmap(resource(Imagen),@on)),
    send(Bitmap, name, 1),
    send(Figura, display, Bitmap),
    send(Figura, status, 1),
    send(Ventana, display,Figura,point(500,60)).
*/
mostrar_imagen(Pantalla, Imagen) :- new(Figura, figure),
                                     new(Bitmap, bitmap(resource(Imagen),@on)),
                                     send(Bitmap, name, 1),
                                     send(Figura, display, Bitmap),
                                     send(Figura, status, 1),
                                     send(Pantalla, display,Figura,point(100,80)).
  mostrar_imagen_objeto(Pantalla, Imagen) :-new(Figura, figure),
                                     new(Bitmap, bitmap(resource(Imagen),@on)),
                                     send(Bitmap, name, 1),
                                     send(Figura, display, Bitmap),
                                     send(Figura, status, 1),
                                     send(Pantalla, display,Figura,point(20,100)).
 nueva_imagen(Ventana, Imagen) :-new(Figura, figure),
                                new(Bitmap, bitmap(resource(Imagen),@on)),
                                send(Bitmap, name, 1),
                                send(Figura, display, Bitmap),
                                send(Figura, status, 1),
                                send(Ventana, display,Figura,point(0,0)).
  imagen_pregunta(Ventana, Imagen) :-new(Figura, figure),
                                new(Bitmap, bitmap(resource(Imagen),@on)),
                                send(Bitmap, name, 1),
                                send(Figura, display, Bitmap),
                                send(Figura, status, 1),
                                send(Ventana, display,Figura,point(500,60)).
 
/**
 * Buttons Main (Actions)
* /
% Delete
borrado:- send(@resp1, selection('')).
% Make
botones:-
    borrado, % Clean
    send(@boton, free),
    send(@btntratamiento,free),
    % Start
    mostrar_objeto(ObjetoEspacial),
    send(@texto, selection('El resultados finales son los siguientes:')),
    send(@resp1, selection(ObjetoEspacial)),
    new(@boton, button('Iniciar Busqueda',
    message(@prolog, botones)
    )),
    % Add Details
    new(@btntratamiento,button('Detalles',
    message(@prolog, mostrar_tratamiento,ObjetoEspacial)
    )),
    % Set Buttons
    send(@main, display,@boton,point(20,450)),
    send(@main, display,@btntratamiento,point(138,450)).

% Show Content
 show_details(X):-
    new(@tratam, dialog('Detalles')),
    send(@tratam, append, label(nombre, 'Descripcion: ')),
    send(@tratam, display,@lblExp1,point(70,51)),
    send(@tratam, display,@lblExp2,point(50,80)),
    tratamiento(X),
    send(@tratam, transient_for, @main),
    send(@tratam, open_centered).

details(X):- 
    send(@lblExp1,selection('De Acuerdo a las preguntas se Detallo que:')),
    mostrar_imagen_objeto(@tratam,X).
*/
botones:-borrado,
                send(@boton, free),
                send(@btntratamiento,free),
                mostrar_objeto(ObjetoEspacial),
                send(@texto, selection('El Diagnostico a partir de los datos es:')),
                send(@resp1, selection(ObjetoEspacial)),
                new(@boton, button('Iniciar consulta',
                message(@prolog, botones)
                )),

                new(@btntratamiento,button('Detalles y Tratamiento',
                message(@prolog, mostrar_tratamiento,ObjetoEspacial)
                )),
                send(@main, display,@boton,point(20,450)),
                send(@main, display,@btntratamiento,point(138,450)).



  mostrar_tratamiento(X):-new(@tratam, dialog('Tratamiento')),
                          send(@tratam, append, label(nombre, 'Explicacion: ')),
                          send(@tratam, display,@lblExp1,point(70,51)),
                          send(@tratam, display,@lblExp2,point(50,80)),
                          tratamiento(X),
                          send(@tratam, transient_for, @main),
                          send(@tratam, open_centered).

tratamiento(X):- send(@lblExp1,selection('De Acuerdo Al Diagnostico El Tratamiento Es:')),
                 mostrar_imagen_objeto(@tratam,X).


/**
 * Make Process Question Main
* /

preguntar(Preg,Resp):
  -new(Di,dialog('Responda a continuacion:')),
  new(L2,label(texto,'Responde las siguientes preguntas')),
  id_imagen_preg(Preg,Imagen),
  imagen_pregunta(Di,Imagen),
  new(La,label(prob,Preg)),
  new(Caja1,text_item('Ingrese valor')),
  new(B1,button(si,and(message(Di,return,si)))),
  new(B2,button(no,and(message(Di,return,no)))),
  send(Di, gap, size(25,25)),
  send(Di,append(L2)),
  send(Di,append(La)),
  send(Di,append(B1)),
  send(Di,append(B2)),
  send(Di,default_button,'si'),
  send(Di,open_centered),get(Di,confirm,Answer),
  free(Di),
  Resp=Answer.
*/
preguntar(Preg,Resp):-new(Di,dialog('Colsultar Datos:')),
                        new(L2,label(texto,'Responde las siguientes preguntas')),
                        id_imagen_preg(Preg,Imagen),
                        imagen_pregunta(Di,Imagen),
                        new(La,label(prob,Preg)),
                        new(B1,button(si,and(message(Di,return,si)))),
                        new(B2,button(no,and(message(Di,return,no)))),
                        send(Di, gap, size(25,25)),
                        send(Di,append(L2)),
                        send(Di,append(La)),
                        send(Di,append(B1)),
                        send(Di,append(B2)),
                        send(Di,default_button,'si'),
                        send(Di,open_centered),get(Di,confirm,Answer),
                        free(Di),
                        Resp=Answer.

/**
 * Make Question Interfaz
 * * /

 interfaz_principal:-
    new(@main,
        dialog('Sistema Experto: Descripcion de Objetos Astrofisicos Masivos en el Campo Visible',size(1000,1000))
    ),
    new(@texto, label(nombre,'Los detalles y Conceptualizacion es:',font('times','roman',18))),
    new(@resp1, label(nombre,'',font('times','roman',22))),
    new(@lblExp1, label(nombre,'',font('times','roman',14))),
    new(@lblExp2, label(nombre,'',font('times','roman',14))),
    new(@salir,button('Salir',and(message(@main,destroy),message(@main,free)))),
    new(@boton, button('Iniciar Questionamiento',message(@prolog, botones))),
    % Show Details
    new(@btndetails,button('¿Detalles?')),
    % Show Image
    nueva_imagen(@main, img_principal),
    % Add Data
    send(@main, display,@boton,point(138,450)),
    send(@main, display,@texto,point(20,130)),
    send(@main, display,@salir,point(300,450)),
    send(@main, display,@resp1,point(20,180)),
    send(@main,open_centered).
    send(@main,open_centered).
*/

interfaz_principal:-new(@main,dialog('Sistema Experto Diagnosticador de ObjetoEspaciales deL Goldfish',
        size(1000,1000))),
        new(@texto, label(nombre,'El Diagnostico a partir de los datos es:',font('times','roman',18))),
        new(@resp1, label(nombre,'',font('times','roman',22))),
        new(@lblExp1, label(nombre,'',font('times','roman',14))),
        new(@lblExp2, label(nombre,'',font('times','roman',14))),
        new(@salir,button('SALIR',and(message(@main,destroy),message(@main,free)))),
        new(@boton, button('Iniciar consulta',message(@prolog, botones))),

        new(@btntratamiento,button('¿Tratamiento?')),

        nueva_imagen(@main, img_principal),
        send(@main, display,@boton,point(138,450)),
        send(@main, display,@texto,point(20,130)),
        send(@main, display,@salir,point(300,450)),
        send(@main, display,@resp1,point(20,180)),
        send(@main,open_centered).

       borrado:- send(@resp1, selection('')).

/**
 * Start Interfaz Main ( Welcome )
* /
 crea_interfaz_inicio:- 
    new(
        @interfaz,dialog(
            'Bienvenido al Sistema Experto: Descripcion de Objetos Astrofisicos Masivos en el Campo Visible',
            size(1000,1000)
        )
    ),
    % Show Image
    mostrar_imagen(@interfaz, portada),
    % Add Button
    new(BotonComenzar,
        button('Iniciar',
            and(message(@prolog,interfaz_principal),
                and(message(@interfaz,destroy),message(@interfaz,free))
            )
        )
    ),
    % Add Button
    new(BotonSalir,
        button('Salir',
            and(message(@interfaz,destroy),message(@interfaz,free))
        )
    ),
    % Add Content
    send(@interfaz,append(BotonComenzar)),
    send(@interfaz,append(BotonSalir)),
    send(@interfaz,open_centered).

% Init Process
:-crea_interfaz_inicio.*/

crea_interfaz_inicio:- new(@interfaz,dialog('Bienvenido al Sistema Experto Diagnosticador',
  size(1000,1000))),

  mostrar_imagen(@interfaz, portada),

  new(BotonComenzar,button('COMENZAR',and(message(@prolog,interfaz_principal) ,
  and(message(@interfaz,destroy),message(@interfaz,free)) ))),
  new(BotonSalir,button('SALIDA',and(message(@interfaz,destroy),message(@interfaz,free)))),
  send(@interfaz,append(BotonComenzar)),
  send(@interfaz,append(BotonSalir)),
  send(@interfaz,open_centered).

  :-crea_interfaz_inicio.

