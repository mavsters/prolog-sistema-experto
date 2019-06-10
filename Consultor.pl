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

mostrar_objeto(X):-
    haz_diagnostico(X),
    clean_scratchpad.

mostrar_objeto(lo_siento_diagnostico_desconocido):-
    clean_scratchpad .

haz_diagnostico(Diagnostic):-
    obten_hipotesis_y_Questions(Diagnostic, ListaDeQuestions),
    prueba_presencia_de(Diagnostic, ListaDeQuestions).

obten_hipotesis_y_Questions(Diagnostic, ListaDeQuestions):-
    conocimiento(Diagnostic, ListaDeQuestions).

prueba_presencia_de(Diagnostic, []).
    prueba_presencia_de(Diagnostic, [Head | Tail]):- 
    prueba_verdad_de(Diagnostic, Head),
    prueba_presencia_de(Diagnostic, Tail).

prueba_verdad_de(Diagnostic, Question):- 
    conocido(Question).

prueba_verdad_de(Diagnostic, Question):- 
    not(conocido(is_false(Question))),
    pregunta_sobre(Diagnostic, Question, Reply), Reply = 'si'.

pregunta_sobre(Diagnostic, Question, Reply):- 
    preguntar(Question,Respuesta),
    process(Diagnostic, Question, Respuesta, Reply).

process(Diagnostic, Question, si, si):- 
    asserta(conocido(Question)).

process(Diagnostic, Question, no, no):- 
    asserta(conocido(is_false(Question))).

clean_scratchpad:- 
    retract(conocido(X)), 
    fail.

clean_scratchpad.
 
 
conocido(_):- fail.

not(X):- X,!,fail.
not(_).