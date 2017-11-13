:- use_module(library(pce)).

tienes_mas_cuatro_comidin(Color,Tienes_color,Tienes_simbolo):- new(Cual_sim, dialog('cual_simbolo')),

send_list(Cual_sim, append,
    [
        new(Color_colocado,  new(Color_colocado, menu(que_simbolo_tienes))),
        button(mas_cuatro,and(message(@prolog,mas_cuatro,Color,'mas_cuatro',Tienes_color,Tienes_simbolo), message(Cual_sim, destroy))),
        button(comidin,and(message(@prolog,comidin,Color,'comidin',Tienes_color,Tienes_simbolo), message(Cual_sim, destroy))),
        button(ninguno,and(message(@prolog,ninguno,Color,'ninguno',Tienes_color,Tienes_simbolo), message(Cual_sim, destroy)))
    ]),

    send(Cual_sim, default_button, mas_cuatro),
    send(Cual_sim, default_button, comidin),
    send(Cual_sim, default_button, ninguno),
    send(Cual_sim, open).

%---------------------------------------------------------------------------------------------------------------------- 

simbolo_colocado(Color,Tienes_color,Tienes_simbolo):- new(Sim_col, dialog('cual_simbolo')),

send_list(Sim_col, append,
    [
        new(Color_colocado,  new(Color_colocado, menu(que_simbolo_tienes))),
        button(mas_dos,and(message(@prolog,cartas_mano_no,Color,'mas_dos',Tienes_color,Tienes_simbolo), message(Sim_col, destroy))),
        button(negar_turno,and(message(@prolog,cartas_mano_no,Color,'negar_turno',Tienes_color,Tienes_simbolo), message(Sim_col, destroy))),
        button(cambio_direc,and(message(@prolog,cartas_mano_no,Color,'cambio_direccion',Tienes_color,Tienes_simbolo), message(Sim_col, destroy))),
        button(numero,and(message(@prolog,cartas_mano_no,Color,'numero',Tienes_color,Tienes_simbolo), message(Sim_col, destroy)))
    ]),

    send(Sim_col, default_button, mas_dos),
    send(Sim_col, default_button, negar_turno),
    send(Sim_col, default_button, cambio_direc),
    send(Sim_col, default_button, numero),
    send(Sim_col, open).