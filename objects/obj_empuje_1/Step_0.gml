
//estado 
if sliding == false
{
	startPointx = x;
	startPointy = y;
	
	xspd =0;
	yspd=0;
}


if sliding == true 
{
	var _realDir = faceDir * 90;
	
	var _targetxDist = lengthdir_x(gridSpace, _realDir);
	var _targetyDist = lengthdir_y(gridSpace, _realDir);
	targetx = startPointx + _targetxDist; 
	targety = startPointy + _targetyDist; 
	
	var _targetDist = point_distance(x, y, targetx,targety);
	var _finalspd = min(movespd, _targetDist);
	xspd = lengthdir_x(_finalspd, _realDir);
	yspd = lengthdir_y(_finalspd, _realDir);
	//barrera
	if place_meeting(targetx, targety,obj_texturaBarrera_bloque)
	{
		xspd = 0;
		yspd = 0;
	}
	
}


x += xspd;
y += yspd;




if xspd =0 && yspd==0
{
	sliding = false; 
}


