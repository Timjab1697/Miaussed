right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up); 
down_key = keyboard_check(vk_down);
interactKeypressed = keyboard_check_pressed(vk_space);

if (keyboard_check(vk_left)) {
    direccion_personaje = LEFT;
} else if (keyboard_check(vk_right)) {
    direccion_personaje = RIGHT;
} else if (keyboard_check(vk_up)) {
    direccion_personaje = UP;
} else if (keyboard_check(vk_down)) {
    direccion_personaje = DOWN;
}









//bloque empuje 
if interactKeypressed == true 
{ 
	audio_play_sound(snd_whoosh_clothing_drag_42291,0,false);
	var _checkdir = face * 90;
	
	var _checkx = x + lengthdir_x(interactDist, _checkdir);
	var _checky = y + lengthdir_y(interactDist, _checkdir);
	var _pushblockinst = instance_place(_checkx, _checky, obj_empuje_1)
	var _pushblockinst2 = instance_place(_checkx, _checky, obj_empuje_2)
	if instance_exists(_pushblockinst) && _pushblockinst.sliding ==false 
	{
		_pushblockinst.sliding =true; 
		_pushblockinst.faceDir = face; 
	}
	if instance_exists(_pushblockinst2) && _pushblockinst2.sliding ==false 
	{
		_pushblockinst2.sliding =true; 
		_pushblockinst2.faceDir = face; 
	}
} 

//disparar 
if room=rm_minijuego_3

{
	
if (variable_global == undefined) 
{
    variable_global = false;
}


if (keyboard_check_pressed(vk_space) && !variable_global) {
    
    instance_create_layer(x, y, "globos", obj_dardo);
    audio_play_sound(snd_knife_throw_88751,0,false);
    variable_global = true;
	
    switch (direccion_personaje) {
        case LEFT:
            obj_dardo.direction = 180; // Izquierda
            break;
        case RIGHT:
            obj_dardo.direction = 0; // Derecha
            break;
        case UP:
            obj_dardo.direction = 90; // Arriba
            break;
        case DOWN:
            obj_dardo.direction = 270; // Abajo
            break;
    }
	
}


if (keyboard_check_released(vk_space)) {
 
    variable_global = false;
}

	
	
	
	
	
	
	
	
	
	
}





xspd = (right_key - left_key) * move_spd;
yspd= ( down_key-up_key ) * move_spd; 


//set sprite 
mask_index= sprite[DOWN];
if yspd==0
{
if xspd > 0 {face = RIGHT};
if xspd < 0 {face = LEFT};
}
if xspd > 0 && face == LEFT{face=RIGHT};
if xspd < 0 && face == RIGHT{face=LEFT};



if xspd ==0
{
if yspd > 0 {face = DOWN};
if yspd < 0 {face = UP};
}
if yspd > 0 && face == UP{face=DOWN};
if yspd < 0 && face == DOWN{face=UP};

sprite_index = sprite[face];
//sonidos


//coliciones 

if place_meeting(x+xspd, y, obj_texturaBarrera_prueba)==true
{
	xspd=0
}
if place_meeting(x, y+yspd, obj_texturaBarrera_prueba)==true
{
	yspd=0
}

if place_meeting(x+xspd, y, obj_barrera_der_7PX)==true
{
	xspd=0
}
if place_meeting(x, y+yspd, obj_barrera_der_7PX)==true
{
	yspd=0
}
if place_meeting(x+xspd, y, obj_barrera_izq_7PX)==true
{
	xspd=0
}
if place_meeting(x, y+yspd, obj_barrera_izq_7PX)==true
{
	yspd=0
}
if place_meeting(x+xspd, y, obj_barrera_sup_8px)==true
{
	xspd=0
}
if place_meeting(x, y+yspd, obj_barrera_sup_8px)==true
{
	yspd=0
}
if place_meeting(x+xspd, y, obj_barrera_inf_8px)==true
{
	xspd=0
}
if place_meeting(x, y+yspd, obj_barrera_inf_8px)==true
{
	yspd=0
}
if place_meeting(x+xspd, y, obj_empuje_1)==true
{
	xspd=0
}
if place_meeting(x, y+yspd, obj_empuje_1)==true
{
	yspd=0
}
if place_meeting(x+xspd, y, obj_empuje_2)==true
{
	xspd=0
}
if place_meeting(x, y+yspd, obj_empuje_2)==true
{
	yspd=0
}


//colisiones con objetos 
if place_meeting(x+xspd, y, obj_barrera_arbol)==true
{
	xspd=0
}
if place_meeting(x, y+yspd, obj_barrera_arbol)==true
{
	yspd=0
}
if place_meeting(x+xspd, y, obj_barrera_mesa_1)==true
{
	xspd=0
}
if place_meeting(x, y+yspd, obj_barrera_mesa_1)==true
{
	yspd=0
}
if place_meeting(x+xspd, y, obj_barrera_mesa_2)==true
{
	xspd=0
}
if place_meeting(x, y+yspd, obj_barrera_mesa_2)==true
{
	yspd=0
}
if place_meeting(x+xspd, y, obj_barrera_planta)==true
{
	xspd=0
}
if place_meeting(x, y+yspd, obj_barrera_planta)==true
{
	yspd=0
}
if place_meeting(x+xspd, y, obj_barrera_cama)==true
{
	xspd=0
}
if place_meeting(x, y+yspd, obj_barrera_cama)==true
{
	yspd=0
}
if place_meeting(x+xspd, y, obj_barrera_silla_1)==true
{
	xspd=0
}
if place_meeting(x, y+yspd, obj_barrera_silla_1)==true
{
	yspd=0
}
if place_meeting(x+xspd, y, obj_barrera_silla_2)==true
{
	xspd=0
}
if place_meeting(x, y+yspd, obj_barrera_silla_2)==true
{
	yspd=0
}
if place_meeting(x+xspd, y, obj_barrera_tv)==true
{
	xspd=0
}
if place_meeting(x, y+yspd, obj_barrera_tv)==true
{
	yspd=0
}


//move
x += xspd; 
y+=yspd;




//animacion

if xspd == 0 && yspd == 0 
{
	image_index=0;
}





