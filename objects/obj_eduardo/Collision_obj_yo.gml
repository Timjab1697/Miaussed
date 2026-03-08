if dialogo_vez=false
{
instance_create_layer(x,y,"dialogos",obj_dialog_salud_vic);
dialogo_vez=true
}


if dialogo2_vez=false && obj_controlador_huellas.mj1=true
{
	
instance_create_layer(x,y,"dialogos",obj_dialog_vic2);

dialogo2_vez=true;
}
