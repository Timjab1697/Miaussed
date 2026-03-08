if dialogo_vez=false 
{
if place_meeting(x,y,obj_yo){
	
	instance_create_layer(x,y,"patitas",obj_dialog_mimi_salud);
	dialogo_vez=true;
}
}