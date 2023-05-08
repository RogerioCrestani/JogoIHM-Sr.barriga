index--;
if(index < 0) {
	index = array_length(opcoes) - 1;
}	

audio_play_sound(som_mudanca_opcao, 1, 0)