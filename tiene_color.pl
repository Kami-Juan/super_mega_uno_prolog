:- use_module(library(pce)).

tienes_color(Color):- new(Tienes_color, dialog('Tienes color')),
send_list(Tienes_color, append,
        [
            new(Color_tienes,  new(Color_tienes, menu(tienes_el_color_colocador))),
            button(si,and(message(@prolog,si_color_colocado,Color,si), message(Tienes_color, destroy))),
            button(no,and(message(@prolog,no_color_colocado,Color,no), message(Tienes_color, destroy)))
        ]),
        send(Tienes_color, default_button, si),
        send(Tienes_color, default_button, no),
        send(Tienes_color, open).