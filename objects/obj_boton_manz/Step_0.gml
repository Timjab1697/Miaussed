if place_meeting(x,y,obj_empuje_2) || place_meeting(x,y,obj_yo)
{
	state=1;
	if instance_exists(obj_controlador_huellas)
	{
	 obj_controlador_huellas.mj1 =true;
	}
	if instance_exists(obj_eduardo)
	obj_eduardo.completo_nminijuego=true;
}else{
	state=0;
}
	
	
image_index= state;
	