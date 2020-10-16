if (distance_to_object(O_player) <= 96){
	if (keyboard_check_pressed(ord("R"))){
		if (!instance_exists(O_key)){
			var spawn_rate = irandom_range(1,5);
			if (spawn_rate % 2 = 0){
				instance_create_layer(O_chest.x + 64, O_chest.y + 64, "instances", O_key);
			} 
		instance_destroy();
		} else {
			instance_destroy(O_key);
		}
	}
}