image_speed = 0;



global.cop_attack = false;

global.rand_hit = irandom_range(3,8);
if (global.rand_hit > global.playerHP){
	instance_destroy();
	room_goto(R_death);
}


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

if (distance_to_object(O_player) <= 15 && global.playerHP >= 0) {
	if (instance_exists(O_player)){
		move_towards_point(O_player.x,O_player.y, starting_spd);
		attackCounter += 0.5; 
		if (attackCounter == (room_speed*attackDelay)){
			global.playerHP -= global.rand_hit;
			attackCounter = 0;
			global.cop_attack = true
		}
	} else {
		attackCounter = 0;
		global.cop_attack = false;
	}
}

if (O_player.x > O_cop.x){
	sprite_index = S_cop_right
	image_speed = 1;
} else if (O_player.x > O_cop.x){
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
