// Movimento
    var _h = keyboard_check(vk_right) - keyboard_check(vk_left);
    var _v = keyboard_check(vk_down) - keyboard_check(vk_up);

    x += _h * move_spd;
    y += _v * move_spd;

    // Limites da tela
    x = clamp(x, 0, room_width);
    y = clamp(y, 0, room_height);


// Troca de Sprites
if (_h != 0) {
    // Define o sprite de movimento (ajusta para o nome do teu sprite)
    sprite_index = sPlayerWalk; 
    
    // Inverte o sprite horizontalmente (1 = direita, -1 = esquerda)
    image_xscale = _h; 
} else {
    // Volta para o sprite parado se não houver input horizontal
    sprite_index = sPlayerIdle; 
}
