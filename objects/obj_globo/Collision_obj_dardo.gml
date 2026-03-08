if instance_exists(obj_controlardor_minijuego_3){
obj_controlardor_minijuego_3.puntos+=1;
}
instance_destroy(other);
	image_speed= 1;
	instance_destroy();
	audio_play_sound(snd_balloonpop_83760,0,false);

