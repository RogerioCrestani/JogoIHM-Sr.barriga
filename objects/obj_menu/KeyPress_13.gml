if(index == 0) {
	room_goto(rm_jogo);
	audio_stop_sound(som_menu);
	audio_play_sound(som_jogo, 1, 1);
} else if(index == 1) {
	room_goto(rm_manual);
	audio_stop_sound(som_menu)
} else if(index == 2) {
	if(sair) {
		game_end();
	}else {
		sair = true;
	}
}else {}	

audio_play_sound(som_confirmacao, 1, 0)