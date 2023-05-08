//Janela de menu
draw_set_font(ft_menu)

var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();

draw_sprite(spr_logo, -1,((gui_largura / 2) - 125),20);

draw_set_color(c_gray);
draw_roundrect_ext(((gui_largura / 2) + 120), ((gui_altura / 2) + 210), ((gui_largura / 2) - 150), ((gui_altura / 2) + 30),25,25,0);

//Escreve opcoes do menu
for(var i = 0;i < array_length(opcoes);i++) {
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	if(index == i) {draw_set_color(c_ltgray) }else {draw_set_color(c_black)}  
	draw_text((gui_largura / 2),(((gui_altura / 2) + 50*i) + 70), opcoes[i]);
}

//Mensagem de teclas
draw_set_font(ft_instrucoes)
draw_set_color(c_gray);
draw_roundrect_ext(((gui_largura / 2) + 135), ((gui_altura / 2) + 190), ((gui_largura / 2) +450), ((gui_altura / 2) + 220),10,10,0);
draw_set_color(c_black);
draw_set_valign(fa_left);
draw_set_halign(fa_bottom);
draw_text(((gui_largura / 2)+460),((gui_altura / 2)+200), "Use as SETAS e o ENTER para navegar no menu.");

//Alerta de sair
if(sair) {
	draw_set_font(ft_menu);
	draw_set_color(c_gray)
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);

	draw_roundrect_ext(192, 40, 800, 440,25,25,0);

	draw_set_color(c_black)

	draw_text((gui_largura / 2),((gui_altura / 2)), "Deseja mesmo sair?");
	
	draw_set_font(ft_instrucoes);
	draw_text((gui_largura / 2),((gui_altura / 2) + 50), "Tecle ESC para retroceder");
	draw_text((gui_largura / 2),((gui_altura / 2) + 80), "Tecle ENTER para confirmar");
}

draw_set_font(-1);
draw_set_color(-1);
draw_set_valign(-1);
draw_set_halign(-1);