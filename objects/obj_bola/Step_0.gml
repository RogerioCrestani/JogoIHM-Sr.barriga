//Movimento da bola
velocidade_horizontal = velocidade * dir;

//Colisão com a parede
if(place_meeting(x+velocidade_horizontal, y, obj_limite_armadilha)) {
	dir = dir * -1
}
x = x + velocidade_horizontal;
