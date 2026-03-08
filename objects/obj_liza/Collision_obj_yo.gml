if dialogo_vez=false
{
instance_create_layer(x,y,"dialogos",obj_dialog_salud_Liz);
dialogo_vez=true
}

if dialogo2_vez=false && obj_controlador_huellas.mj2=true
{
	if dialogo_vez=true 
instance_destroy(obj_dialog_salud_Liz);
	
instance_create_layer(x,y,"dialogos",obj_dialog_Liz_2);

dialogo2_vez=true;
}
