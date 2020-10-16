image_speed = 0;



global.cop_attack = false;

global.rand_hit = irandom_range(3,8);
if (global.rand_hit > global.playerHP){
	instance_destroy();
	room_goto(R_death);
}
if (!place_meeting(x, y, O_collision)){
	
	//state machine decides if it should be idle, wander, atack, etc.
	if (state == states.idle){
		counter += 1;
	
		if (counter >= room_speed * 3){
			var change = choose(0,1)
			switch(change){
				case 0: state = states.wander;
				case 1: counter = 0;
				break;
			}
		}
		if (collision_circle(x, y, 200, O_player, false, false)){
			state = states.alert;
		}
	
		sprite_index = S_cop_front;
		image_speed = 0;
	
	} else if ( state == states.wander){
		counter += 1;
	
		x += moveX;
		y += moveY;
	
		if (counter >= room_speed * 3){
			var change = choose(0,1);
			switch(change){
				case 0:
				state = states.idle;
				my_dir = irandom_range(0,359);
				moveX = lengthdir_x(spd / 2, my_dir);
				moveY = lengthdir_y(spd / 2, my_dir);
				counter = 0;
			}
		}
		if (collision_circle(x, y, 200, O_player, false, false)){
			state = states.alert;
		}
	
		sprite_index = S_cop_right;
		image_xscale = sign(moveX);
		image_speed = 1;


	} else if (state == states.alert){
		my_dir = point_direction(x, y, O_player.x, O_player.y);
		moveX = lengthdir_x(spd, my_dir);
		moveY = lengthdir_y(spd, my_dir);
	
		x += moveX;
		y += moveY;
	
		if (!collision_circle(x, y, 200, O_player, false, false)){
			state = states.idle;
		}
	
		if (collision_circle(x, y, 20, O_player, false, false)){
			state = states.attack;
		}
	
		sprite_index = S_cop_attack_right;
		//image_xscale = sign(moveX);
		image_speed = 1;
	
	
	} else if (state == states.attack){
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
	
		if (image_index > image_number - 1){
			state = states.alert;
		}
	
		//sprite_index = S_cop_attack_right;
		//image_xscale = sign(moveX);
		//image_speed = 1;
	
	}
} else if (place_meeting(x, y, O_collision)){
	if (x > O_collision){
		x += 10;
		state = states.idle;
	} else if (x < O_collision){
		x -= 10;
		state = states.idle;
	} else if (y < O_collision){
		y += 10;
		state = states.idle;
	} else if (y > O_collision){
		y -= 10;
		state = states.idle;
	} 
}
/*if (distance_to_object(O_player) > 200){
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
}*/

if (O_player.x > O_cop.x){
	sprite_index = S_cop_right
	image_speed = 1;
} else if (O_player.x > O_cop.x){
	sprite_index = S_cop_front;
	image_speed = 1;
} else if (O_player.y > 0){
	sprite_index = S_cop_left;
	image_speed = 1;
} else if (O_player.y > 0){
	sprite_index = S_cop_back;
	image_speed = 0;
}

x = clamp (x , 15, room_width - 15);
y = clamp(y, 40, room_height - 40);
