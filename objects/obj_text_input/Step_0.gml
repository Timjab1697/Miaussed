// obj_text_input - Step Event
if (input_active) {
    for (var i = ord("A"); i <= ord("Z"); i++) {
        if (keyboard_check_pressed(i)) {
            if (string_length(input_text) < max_length) {
                input_text += chr(i);
            }
        }
    }
    for (var i = ord("a"); i <= ord("z"); i++) {
        if (keyboard_check_pressed(i)) {
            if (string_length(input_text) < max_length) {
                input_text += chr(i);
            }
        }
    }
    if (keyboard_check_pressed(vk_space)) {
        if (string_length(input_text) < max_length) {
            input_text += " ";
        }
    }
    if (keyboard_check_pressed(vk_backspace)) {
        if (string_length(input_text) > 0) {
            input_text = string_delete(input_text, string_length(input_text), 1);
        }
    }
    if (keyboard_check_pressed(vk_enter)) {
        input_active = false;
        global.gato_name = input_text; // Guardar el texto en una variable global
    }
}
