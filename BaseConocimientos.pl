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

 

id_imagen_preg('¿Tiene Tamaño?', 'size').
id_imagen_preg('¿Hay fecha exacta de descubrimiento?', 'year').
id_imagen_preg('¿Es una Estrella?', 'type').
id_imagen_preg('¿Se conoce su Temperatura?', 'temperature').
id_imagen_preg('¿Su Gravedad es Conocida?' , 'gravety').


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

