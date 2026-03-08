if place_meeting(x, y, obj_yo)
{
	state =1;
}else{
	state=0;
}
if state=1{ 
	
	with(obj_empuje_1)
	{
	x = xstart;
	y = ystart;
	}
	with(obj_empuje_2)
	{
		x  = xstart;
		y = ystart;
	}
}
image_index=state;