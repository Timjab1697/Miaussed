if dialogo_vez=false 
{
if place_meeting(x,y,obj_yo){
	
	instance_create_layer(x,y,"patitas",obj_dialog_salud_Liz);
	dialogo_vez=true;
}


if dialogo2_vez=false  &&  obj_controlador_huellas.mj2=true
{
	
instance_create_layer(x,y,"dialogos",obj_dialog_Liz_2);

dialogo2_vez=true;
}

}