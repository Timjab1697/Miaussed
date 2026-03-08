if dialogo_vez=false 
{
if place_meeting(x,y,obj_yo){
	
	instance_create_layer(x,y,"patitas",obj_dialog_salud_milan);
	dialogo_vez=true;
}


if dialogo2_vez=false  &&  obj_controlador_huellas.mj3=true
{
	
instance_create_layer(x,y,"dialogos",obj_dialog_milan_2);

dialogo2_vez=true;
}

}