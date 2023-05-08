if(index == 0) {
	selecionado = 1;
} else if(index == 1) {
	selecionado = 2
} else if(index == 2){
	room_goto(rm_menu);
} else{}	

audio_play_sound(som_confirmacao, 1, 0)