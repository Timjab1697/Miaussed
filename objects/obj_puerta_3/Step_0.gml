if (instance_exists(obj_controlardor_minijuego_3)) {

if obj_controlardor_minijuego_3.puntos >= 30 
{
	
	state=1;
	mask_index=spr_nocolicion;
	if instance_exists(obj_controlador_huellas)
	{
	 obj_controlador_huellas.mj3 =true;
	}
}
}

image_index=state;