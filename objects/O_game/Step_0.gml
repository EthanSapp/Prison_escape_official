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


if (room == R_game){
	if (keyboard_check_pressed(vk_space)){
		global.paused = !global.paused;
		if(!sprite_exists(screen_shot)){
			screen_shot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);
		}
	}
	
	if (global.paused){
		instance_deactivate_all(1);
	} else {
		if(sprite_exists(screen_shot)){
			sprite_delete(screen_shot);
		}
		instance_activate_all();
	}
}