//Janela de vitoria
draw_set_font(ft_menu)

var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
draw_set_valign(fa_center);
draw_set_halign(fa_center);

draw_sprite(spr_vitoria, -1,((gui_largura / 2) -250),20);

draw_set_color(c_green);
draw_text((gui_largura / 2),((gui_altura / 2) + 70), "¡¡¡LA VICTORIA!!!");
draw_set_font(ft_instrucoes)
draw_text((gui_largura / 2),((gui_altura / 2) + 120), "Pressione ENTER para voltar ao menu");

draw_set_font(-1);
draw_set_valign(-1);
draw_set_halign(-1);