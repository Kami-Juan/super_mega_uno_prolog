:- use_module(library(pce)).

cartas_mano_no_cuatro_comodin( Color,Carta,Tienes_color,Tienes_simbolo,Color_no_repetido ):- new(Color_rep, dialog('Color repetida')),

send_list(Color_rep, append,
    [
        new(Color_colocado, new(Color_colocado, menu(que_cartas_te_quedan_en_tu_mano))),
        button(mas_de_dos,and(message(@prolog,carta_no_simbolo,Color,Carta,Tienes_color,Tienes_simbolo,Color_no_repetido,'mas_de_dos'), message(Color_rep, destroy))),
        button(dos,and(message(@prolog,carta_no_simbolo,Color,Carta,Tienes_color,Tienes_simbolo,Color_no_repetido,'dos'), message(Color_rep, destroy))),
        button(uno,and(message(@prolog,carta_no_simbolo,Color,Carta,Tienes_color,Tienes_simbolo,Color_no_repetido,'uno'), message(Color_rep, destroy)))
    ]),

    send(Color_rep, default_button, mas_de_dos),
    send(Color_rep, default_button, dos),
    send(Color_rep, default_button, uno),
    send(Color_rep, open).