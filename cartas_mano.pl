:- use_module(library(pce)).

cartas_mano( Color, Simbolo, Tienes_color ):- new(Cartas_mano, dialog('Cartas en la mano')),

send_list(Cartas_mano, append,
    [
      new(Cartas_en_mano,  new(Cartas_en_mano, menu(cuantas_cartas_te_quedan_en_tu_mano))),
      button(mas_de_dos,and(message(@prolog,guardar,Color, Simbolo, Tienes_color,'mas_de_dos'), message(Cartas_mano, destroy))),
      button(dos,and(message(@prolog,guardar,Color, Simbolo, Tienes_color,'dos'), message(Cartas_mano, destroy))),
      button(uno,and(message(@prolog,guardar,Color, Simbolo, Tienes_color,'uno'), message(Cartas_mano, destroy)))
    ]),

    send(Cartas_mano, default_button, mas_de_dos),
    send(Cartas_mano, default_button, dos),
    send(Cartas_mano, default_button, uno),
    send(Cartas_mano, open).

%------------------------------------------------------------------------------------------------------- 

cartas_mano_no( Color, Simbolo, Tienes_color, Tienes_simbolo ):- new(Cartas_mano, dialog('Cartas en la mano')),

send_list(Cartas_mano, append,
    [
      new(Cartas_en_mano,  new(Cartas_en_mano, menu(cuantas_cartas_te_quedan_en_tu_mano))),
      button(mas_de_dos,and(message(@prolog,guardar_no,Color, Simbolo, Tienes_color,'mas_de_dos',Tienes_simbolo), message(Cartas_mano, destroy))),
      button(dos,and(message(@prolog,guardar_no,Color, Simbolo, Tienes_color,'dos',Tienes_simbolo), message(Cartas_mano, destroy))),
      button(uno,and(message(@prolog,guardar_no,Color, Simbolo, Tienes_color,'uno',Tienes_simbolo), message(Cartas_mano, destroy)))
    ]),

    send(Cartas_mano, default_button, mas_de_dos),
    send(Cartas_mano, default_button, dos),
    send(Cartas_mano, default_button, uno),
    send(Cartas_mano, open).    