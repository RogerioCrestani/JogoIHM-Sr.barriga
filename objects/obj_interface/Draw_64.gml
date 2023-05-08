//Mostrar status do jogo
draw_set_font(ft_jogo);
draw_set_valign(fa_center);
draw_set_halign(fa_right);


//Escreve vida
var largura_vida = 200;
var quantidade_vida = (obj_sr_barriga.vida / obj_sr_barriga.vida_max) * largura_vida;
var x1 = 940;
var y1 = 50; 
var x2 = x1 - quantidade_vida;
var y2 = y1 + 20;
draw_set_color(c_red);
draw_text(940, 30, "Vida")
draw_rectangle(x1,y1,x2,y2,0)
draw_set_color(c_black);
draw_rectangle(942,48,738,72,1)
draw_rectangle(950,5,730,75,1)


//Escreve informacoes
draw_rectangle(951,75,729,165,0)
draw_set_color(c_yellow);
draw_text(940, 105, "Cofre " + string(pontos) + "$")
draw_text(940, 150, "Tempo " + string(tempo))

//Modo pausa
if(pause) {
	start_tempo = false;
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_color(c_dkgrey);
	draw_roundrect_ext(92, 40, 900, 440,25,25,0);
	draw_set_color(c_ltgrey);
	
	draw_text( display_get_gui_width() / 2,  display_get_gui_height() / 2, "JOGO EM PAUSA");
	draw_set_font(ft_instrucoes)
	
	draw_text(display_get_gui_width() / 2,  display_get_gui_height() / 2 + 100, "Tecle ESC para voltar para o jogo");
	draw_text(display_get_gui_width() / 2,  display_get_gui_height() / 2 + 120, "Tecle ENTER para ir ao menu");
}else {
	start_tempo = true;
}

//Conta o tempo
if (start_tempo == true) {
	tempo_aux += 1;
	if(tempo_aux == 10) {
		tempo += 1;
		tempo_aux = 0;
	}
}

draw_set_valign(-1);
draw_set_halign(-1);
draw_set_font(-1);
draw_set_color(-1);