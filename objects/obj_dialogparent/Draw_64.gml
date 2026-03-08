if(showing_dialog == true) {

    var text_x = 30;
    var text_y = 18;
    var height = 32;
    var border = 5;
    var padding = 32; // Incrementa el padding para más espacio alrededor del texto
    var font_size = 24; // Tamaño de la fuente más grande

    // Asegúrate de que has creado una fuente llamada "fnt_large" con el tamaño adecuado en el editor de fuentes
    var dialog_font = fnt_large;

    // Ajustar la altura del cuadro de texto basada en la altura del mensaje
    height = string_height_ext(current_dialog.message,0, font_size) + padding * 2;

    if(sprite_get_height(current_dialog.sprite) > height) {
        height = sprite_get_height(current_dialog.sprite) + padding * 2;
    }

    text_x = sprite_get_width(current_dialog.sprite) + padding * 2;

    // Dibujar el cuadro del diálogo
    draw_set_alpha(alpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), height, false);

    draw_set_color(c_white);
    draw_rectangle(border, border, display_get_gui_width() - border, height - border, false);

    draw_set_color(c_black);
    draw_rectangle(border * 2, border * 2, display_get_gui_width() - border * 2, height - border * 2, false);

    if(current_dialog.sprite != -1) {
        draw_sprite(current_dialog.sprite, 0, border * 3, border * 3);
    }

    // Dibujar el texto del diálogo con la nueva fuente
    draw_set_font(dialog_font); // Establecer la fuente grande creada
    draw_set_color(c_white);
    draw_text_ext(text_x, text_y, current_dialog.message, -1, display_get_gui_width() - text_x - padding);

    alpha = lerp(alpha, 1, 0.06);
}

draw_set_alpha(1);