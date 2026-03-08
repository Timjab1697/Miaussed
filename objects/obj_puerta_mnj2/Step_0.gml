if (instance_exists(obj_controlador)) {

if obj_controlador.puntos >= 46 
{
	
	state=1;
	
	mask_index=spr_nocolicion;
	if instance_exists(obj_controlador_huellas)
	{
	 obj_controlador_huellas.mj2 =true;
	}
}
}

image_index=state;