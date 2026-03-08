/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_collect_points_190037,0,false,1,0,random_range(0.8,1.2));
if instance_exists(obj_controlador){
obj_controlador.puntos+=1;
}
instance_destroy();

