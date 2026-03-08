// Evento Step de obj_enemigo (el enemigo que seguirá al jugador)

// Velocidad del enemigo (ajusta según sea necesario)
var v= 0.5;

// Obtener la dirección hacia el jugador
var dir_x = obj_yo.x - x;
var dir_y = obj_yo.y - y;

// Normalizar la dirección para mantener la misma velocidad en todas las direcciones
var length = sqrt(dir_x * dir_x + dir_y * dir_y);
if (length > 0) {
    dir_x /= length;
    dir_y /= length;
}

// Mover el enemigo hacia el jugador
x += dir_x * v;
y += dir_y * v;



if place_meeting(x,y,obj_yo){ 
	audio_play_sound(snd_game_over_arcade_6435,0,false);
	with(obj_yo)
	{
	x = 51;
	y = 127;
	}
	
}


