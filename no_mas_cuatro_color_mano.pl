:- use_module(library(pce)).

mas_cuatro(Color,Carta,Tienes_color,Tienes_simbolo):- new(Cual_sim, dialog('Color repetida')),

send_list(Cual_sim, append,
    [
        new(Color_colocado, new(Color_colocado, menu(que_color_se_repite_mas_en_tu_mano))),
        button(amarillo,and(message(@prolog,cartas_mano_no_cuatro_comodin,Color,Carta,Tienes_color,Tienes_simbolo,'amarillo'), message(Cual_sim, destroy))),
        button(azul,and(message(@prolog,cartas_mano_no_cuatro_comodin,Color,Carta,Tienes_color,Tienes_simbolo,'azul'), message(Cual_sim, destroy))),
        button(rojo,and(message(@prolog,cartas_mano_no_cuatro_comodin,Color,Carta,Tienes_color,Tienes_simbolo,'rojo'), message(Cual_sim, destroy))),
        button(verde,and(message(@prolog,cartas_mano_no_cuatro_comodin,Color,Carta,Tienes_color,Tienes_simbolo,'verde'), message(Cual_sim, destroy)))
    ]),

    send(Cual_sim, default_button, amarillo),
    send(Cual_sim, default_button, azul),
    send(Cual_sim, default_button, rojo),
    send(Cual_sim, default_button, verde),
    send(Cual_sim, open).

%-----------------------------------------------------------------------------------------------------------------------------------------------

comidin(Color,Carta,Tienes_color,Tienes_simbolo):- new(Cual_sim, dialog('Color repetida')),

send_list(Cual_sim, append,
    [
        new(Color_colocado, new(Color_colocado, menu(que_color_se_repite_mas_en_tu_mano))),
        button(amarillo,and(message(@prolog,cartas_mano_no_cuatro_comodin,Color,Carta,Tienes_color,Tienes_simbolo,'amarillo'), message(Cual_sim, destroy))),
        button(azul,and(message(@prolog,cartas_mano_no_cuatro_comodin,Color,Carta,Tienes_color,Tienes_simbolo,'azul'), message(Cual_sim, destroy))),
        button(rojo,and(message(@prolog,cartas_mano_no_cuatro_comodin,Color,Carta,Tienes_color,Tienes_simbolo,'rojo'), message(Cual_sim, destroy))),
        button(verde,and(message(@prolog,cartas_mano_no_cuatro_comodin,Color,Carta,Tienes_color,Tienes_simbolo,'verde'), message(Cual_sim, destroy)))
    ]),

    send(Cual_sim, default_button, amarillo),
    send(Cual_sim, default_button, azul),
    send(Cual_sim, default_button, rojo),
    send(Cual_sim, default_button, verde),
    send(Cual_sim, open).

ninguno(Color,Carta,Tienes_color,Tienes_simbolo):- new(Cual_sim, dialog('Color repetida')),

send_list(Cual_sim, append,
    [
        new(Color_colocado, new(Color_colocado, menu(que_color_se_repite_mas_en_tu_mano))),
        button(ninguno,and(message(@prolog,ninguno,Color,Carta,Tienes_color,Tienes_simbolo,'ninguno'), message(Cual_sim, destroy)))
    ]),

    send(Cual_sim, default_button, ninguno),
    send(Cual_sim, open).   