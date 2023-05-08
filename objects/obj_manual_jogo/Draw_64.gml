//Janela manual
draw_set_font(ft_menu)

//Menu do manual
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();

draw_set_color(c_gray)
draw_set_valign(fa_center);
draw_set_halign(fa_center);

draw_roundrect_ext(192, 40, 800, 440,25,25,0);

draw_set_color(c_black)

draw_text((gui_largura / 2),((gui_altura / 2)- 100), "Manual do jogo");

for(var i = 0;i < array_length(opcoes);i++) {
	if(index == i) {draw_set_color(c_ltgray)}else {draw_set_color(c_black)}  

	draw_text((gui_largura / 2),((gui_altura / 2) + 50*i), opcoes[i]);
}

//Janela teclas
if(selecionado == 1) {
	draw_set_valign(-1);
	draw_set_halign(-1);
	draw_set_color(c_gray);
	draw_roundrect_ext(92, 40, 900, 440,25,25,0);
	draw_set_color(c_black);
	
	draw_text(112, 60, "Controles");
	draw_set_font(ft_instrucoes)
	
	draw_text(112, 130, "Para navegar nos menus use:");
	draw_text(132, 150, "Seta para cima: Selecionar acima");
	draw_text(132, 170, "Seta para baixo: Selecionar abaixo");
	draw_text(132, 190, "ENTER: Escolher selecionado");
	draw_text(132, 210, "ESC: Retroceder");
	
	draw_text(112, 250, "Para jogar use:");
	draw_text(132, 270, "Seta para direita: Caminhar para direita");
	draw_text(132, 290, "Seta para esquerda: Caminhar para esquerda");
	draw_text(132, 310, "SPACE: Pular");
	draw_text(132, 330, "ESC: Pausar jogo");
	
	draw_text(112, 410, "Tecle ESC para retroceder");
} else if(selecionado == 2) {
	//Janela itens
	draw_set_valign(-1);
	draw_set_halign(-1);
	draw_set_color(c_gray);
	draw_roundrect_ext(92, 40, 900, 440,25,25,0);
	draw_set_color(c_black);
	
	draw_text(112, 60, "Itens");
	draw_set_font(ft_jogo)
	
	draw_text(112, 130, "Coletaveis");
	draw_sprite_stretched(spr_moeda, 0, 132, 180, 40, 40);
	draw_sprite_stretched(spr_trofeu, 0, 202, 180, 40, 40);
	
	draw_text(112, 230, "Danosos");
	draw_sprite_stretched(spr_bola, 0, 132, 280, 40, 40);
	draw_sprite_stretched(spr_espinhos, 0, 202, 280, 40, 40);
	draw_sprite_stretched(spr_gato, 0, 272, 280, 40, 40);
	draw_sprite_stretched(spr_chaves, 0, 342, 280, 40, 40);
	
	draw_set_font(ft_instrucoes)
	draw_text(112, 410, "Tecle ESC para retroceder");
}

draw_set_font(-1);
draw_set_color(-1)
draw_set_valign(-1);
draw_set_halign(-1);
