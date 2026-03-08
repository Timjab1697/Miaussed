// obj_text_input - Draw GUI Event
draw_set_color(c_white);
draw_rectangle(1200, 500, 300, 250, false); // Dibujar el cuadro
draw_set_color(c_black);
draw_text(300,400 , input_text); // Dibujar el texto ingresado
if (input_active) {
	draw_text(300,250, "por favor, ingresa un nombre para tu gato");
    draw_text(300,500, "Press Enter to confirm");
}
