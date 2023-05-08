if(!obj_interface.pause) {
	//Teclas para controlar o personagem
	tecla_esquerda = keyboard_check(vk_left);
	tecla_direita = keyboard_check(vk_right);
	tecla_pular = keyboard_check(vk_space);
	
	//Velocidades	
	velocidade_vertical = velocidade_vertical + gravidade;
	velocidade_horizontal = (tecla_direita - tecla_esquerda) * velocidade;

	//Colisão com a parede
	if(place_meeting(x+velocidade_horizontal, y, obj_parede)) {
		while(!place_meeting(x+sign(velocidade_horizontal), y, obj_parede)) {
			x = x + sign(velocidade_horizontal);
		}
		velocidade_horizontal = 0;
	}
	x = x + velocidade_horizontal;
	if(place_meeting(x, y+velocidade_vertical, obj_parede)) {
		while(!place_meeting(x, y+sign(velocidade_vertical), obj_parede)) {
			y = y + sign(velocidade_vertical);
		}
		velocidade_vertical = 0;
	}
	y = y + velocidade_vertical;
	
	
	//Pulo
	no_chao = place_meeting(x,y+1,obj_parede);
	if(tecla_pular) {
		if(no_chao) {
			velocidade_vertical = velocidade_vertical - 7;
		}
	}

	//Troca de sprites
	if(velocidade_horizontal != 0) {
		sprite_index = spr_sr_barriga_correndo;
	}else {
		sprite_index = spr_sr_barriga_parado;
	}

	//Game over
	if(vida <= 0) {
		instance_destroy();
		room_goto(rm_derrota);
	}
}
