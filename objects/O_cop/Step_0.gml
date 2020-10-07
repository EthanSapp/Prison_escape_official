image_speed = 0;


if (distance_to_object(O_player) > 200){
	if (instance_exists(O_player)){
		move_towards_point(O_player.x,O_player.y, starting_spd);
	}
}

if (distance_to_object(O_player) < 200){
	if (instance_exists(O_player)){
		move_towards_point(O_player.x,O_player.y, spd);
	}
}

if (O_player.x < 0){
	sprite_index = S_cop_right
	image_speed = 1;
} else if (O_player.x > 0){
	sprite_index = S_cop_front;
	image_speed = 1;
} else if (O_player.y > 0){
	sprite_index = S_cop_left;
	image_speed = 1;
} else if (O_player.y < 0){
	sprite_index = S_cop_back;
	image_speed = 0;
}

x = clamp (x , 0, room_width);
y = clamp(y, 0, room_height);
