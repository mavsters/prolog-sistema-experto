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
resource(vela_X_1, image, image('objects/Vela_X-1.jpg')).
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
**/
% Show Images
mostrar_imagen(Pantalla, Imagen) :-
    new(Figura, figure),
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
 
  imagen_pregunta(Ventana, Imagen) :-new(Figura, figure),
    new(Bitmap, bitmap(resource(Imagen),@on)),
    send(Bitmap, name, 1),
    send(Figura, display, Bitmap),
    send(Figura, status, 1),
    send(Ventana, display,Figura,point(500,60)).
 
/**
 * Buttons Main (Actions)
* */
  
% Delete
borrado:- send(@resp1, selection('')).
% Make
botones:-
    borrado, % Clean
    send(@boton, free),
    send(@btntratamiento,free),
    mostrar_objeto(ObjetoEspacial),
    send(@texto, selection('El resultados finales son los siguientes:')),
    send(@resp1, selection(ObjetoEspacial)),
    % Add Details
    new(@boton, button('Iniciar Preguntas',message(@prolog, botones))),
    new(@btntratamiento,button('Detalles',
    message(@prolog, mostrar_tratamiento,ObjetoEspacial)
    )),
    % Set Buttons
    send(@main, display,@boton,point(20,450)),
    send(@main, display,@btntratamiento,point(138,450)).

% Show Content
mostrar_tratamiento(X):-
    new(@tratam, dialog('Detalles')),
    send(@tratam, append, label(nombre, 'Descripcion: ')),
    send(@tratam, display,@lblExp1,point(70,51)),
    send(@tratam, display,@lblExp2,point(50,80)),
    tratamiento(X),
    send(@tratam, transient_for, @main),
    send(@tratam, open_centered).

tratamiento(X):- 
    send(@lblExp1,selection('De Acuerdo a las preguntas se Detallo que:')),
    mostrar_imagen_objeto(@tratam,X).


/**
 * Make Process Question Main
* */ 
preguntar(Preg,Resp):-
    new(Di,dialog('Responda a continuacion:')),
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
 * */
 
interfaz_principal:-
    new(@main,dialog('Sistema Experto: Descripcion de Objetos Astrofisicos Masivos en el Campo Visible',
    size(1000,1000))),
    new(@texto, label(nombre,'Los detalles y la Conceptualizacion es:',font('times','roman',18))),
    new(@resp1, label(nombre,'',font('times','roman',22))),
    new(@lblExp1, label(nombre,'',font('times','roman',14))),
    new(@lblExp2, label(nombre,'',font('times','roman',14))),
    new(@salir,button('Salir',and(message(@main,destroy),message(@main,free)))),
    new(@boton, button('Iniciar Questionamiento',message(@prolog, botones))),
    new(@btntratamiento,button('¿Detalles?')),
    % Add Elements
    nueva_imagen(@main, img_principal),
    send(@main, display,@boton,point(138,450)),
    send(@main, display,@texto,point(20,130)),
    send(@main, display,@salir,point(300,450)),
    send(@main, display,@resp1,point(20,180)),
    send(@main,open_centered).
  
/**
 * Start Interfaz Main ( Welcome )
**/ 

crea_interfaz_inicio:- 
    new(@interfaz,dialog(
        'Bienvenido al Sistema Experto: Descripcion de Objetos Astrofisicos Masivos en el Campo Visible',
        size(1000,1000)
    )),
    % Show Image
  mostrar_imagen(@interfaz, portada),
    % Add Button
  new(BotonComenzar,button('Iniciar',and(message(@prolog,interfaz_principal) ,
  and(message(@interfaz,destroy),message(@interfaz,free)) ))),
  new(BotonSalir,button('Salir',and(message(@interfaz,destroy),message(@interfaz,free)))),
  % Add Content
  send(@interfaz,append(BotonComenzar)),
  send(@interfaz,append(BotonSalir)),
  send(@interfaz,open_centered).

% Init Process
  :-crea_interfaz_inicio.

