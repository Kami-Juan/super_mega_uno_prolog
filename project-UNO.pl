:- use_module(library(pce)).

sistema_UNO:- new(Dialog, dialog('Nombre del Dialogo')),

send_list(Dialog, append,
    [
      new(Color_colocado,  new(Color_colocado, menu(que_color_esta_colocado))),
      button(azul,and(message(@prolog,tienes_color,'azul'), message(Dialog, destroy))),
      button(rojo,and(message(@prolog,tienes_color,'rojo'), message(Dialog, destroy))),
      button(verde,and(message(@prolog,tienes_color,'verde'), message(Dialog, destroy))),
      button(amarilla,and(message(@prolog,tienes_color,'amarilla'), message(Dialog, destroy)))
    ]),

    send(Dialog, default_button, azul),
    send(Dialog, default_button, rojo),
    send(Dialog, default_button, verde),
    send(Dialog, default_button, amarilla),
    send(Dialog, open).




guardar(Color, Simbolo, Tienes_color, Respuesta):- write(Color) ,tab(1), write(Simbolo), tab(1), write(Tienes_color), tab(1), write(Respuesta), nl.

guardar_no(Color, Simbolo, Tienes_color,Tiene_respuesta ,Respuesta):- write(Color) ,tab(1), write(Simbolo), tab(1), write(Tienes_color), tab(1), write(Tiene_respuesta),tab(1) ,write(Respuesta), nl.

ninguno( Color,Carta,Tienes_color,Tienes_simbolo,Ninguno ):- write(Color) ,tab(1), write(Carta), tab(1), write(Tienes_color), tab(1), write(Tienes_simbolo),tab(1) ,write(Ninguno), nl.

carta_no_simbolo( Color,Carta,Tienes_color,Tienes_simbolo,Color_no_repetido, Respuesta ) :- write(Color) ,tab(1), write(Carta), tab(1), write(Tienes_color), tab(1), write(Tienes_simbolo),tab(1) ,write(Color_no_repetido),tab(1),write(Respuesta), nl.

    
