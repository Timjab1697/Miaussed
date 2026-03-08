         
if instance_exists(obj_controlador_huellas)
{
	if obj_controlador_huellas.mj1=true && obj_controlador_huellas.mj2=true && obj_controlador_huellas.mj3=true  
	{
		obj_huellas.sprite_index=spr_patitas;
		frame=1;
	}
	else 
	frame=0;
}


image_index=frame;