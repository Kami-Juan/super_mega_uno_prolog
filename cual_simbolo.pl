:- use_module(library(pce)).

si_color_colocado(Color,Tienes_color):- new(Cual_sim, dialog('cual_simbolo')),

send_list(Cual_sim, append,
    [
        new(Color_colocado,  new(Color_colocado, menu(que_simbolo_tienes))),
        button(mas_dos,and(message(@prolog,cartas_mano,Color,'mas_dos',Tienes_color), message(Cual_sim, destroy))),
        button(negar_turno,and(message(@prolog,cartas_mano,Color,'negar_turno',Tienes_color), message(Cual_sim, destroy))),
        button(cambio_direc,and(message(@prolog,cartas_mano,Color,'cambio_direccion',Tienes_color), message(Cual_sim, destroy))),
        button(numero,and(message(@prolog,cartas_mano,Color,'numero',Tienes_color), message(Cual_sim, destroy)))
    ]),

    send(Cual_sim, default_button, mas_dos),
    send(Cual_sim, default_button, negar_turno),
    send(Cual_sim, default_button, cambio_direc),
    send(Cual_sim, default_button, numero),
    send(Cual_sim, open).


no_color_colocado(Color,Tienes_color):- new(Cual_sim, dialog('cual_simbolo')),

send_list(Cual_sim, append,
    [
        new(Color_colocado,  new(Color_colocado, menu(tiene_el_simbolo_colocado))),
        button(si,and(message(@prolog,simbolo_colocado,Color,Tienes_color,si), message(Cual_sim, destroy))),
        button(no,and(message(@prolog,tienes_mas_cuatro_comidin,Color,Tienes_color,no), message(Cual_sim, destroy)))
    ]),

    send(Cual_sim, default_button, si),
    send(Cual_sim, default_button, no),
    send(Cual_sim, open).