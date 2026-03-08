if place_snapped(32,32)
{
	if hspeed==0
	{
		if random(3) <1 && place_free(x-1,y)
		{
			hspeed =-v;
			vspeed= 0;
		}
		if random(3) <1 && place_free(x+1,y)
		{
			hspeed =v;
			vspeed= 0;
		}
	}
	else 
	{
		if random(3) <1 && place_free(x,y-1)
		{
			hspeed=0;
			vspeed= -v;
		}
		if random(3) <1 && place_free(x,y+1)
		{
			hspeed=0;
			vspeed= v;
		}
	}
}



if place_meeting(x,y,obj_yo){ 
	audio_play_sound(snd_game_over_arcade_6435,0,false);
	with(obj_yo)
	{
	x = 51;
	y = 127;
	}
	
}


