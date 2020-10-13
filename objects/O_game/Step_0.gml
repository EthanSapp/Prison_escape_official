if (room == R_start && keyboard_check_pressed(vk_enter)){
	room_goto(R_game);
} else if (room == R_start && keyboard_check_pressed(vk_escape)){
	game_end();
}

if (room == R_game && keyboard_check_pressed(vk_escape)){
	game_end();
}

if (room = R_death && keyboard_check_pressed(vk_enter)){
	room_goto(R_start);
} else if (room = R_death && keyboard_check_pressed(vk_escape)){
	game_end();
}