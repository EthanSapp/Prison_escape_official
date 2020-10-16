image_speed = 0;

if (keyboard_check(ord("D")) && !place_meeting(x + 30, y , O_collision)) {
	x += 5;
	sprite_index = S_player_right;
	image_speed = 1;
	global.dir = 0;
}

if (keyboard_check(ord("A")) && !place_meeting(x + 5, y , O_collision)) {
	x -= 5;
	sprite_index = S_player_left;
	image_speed = 1;
	global.dir = 180;
} 

if (keyboard_check(ord("W")) && !place_meeting(x , y - 20, O_collision)) {
	y -= 5;
	sprite_index = S_player_back;
	image_speed = 1;
	global.dir = 90
} 

if (keyboard_check(ord("S")) && !place_meeting(x , y + 10, O_collision)) {
	y += 5;
	sprite_index = S_player_front;
	image_speed = 1;
	global.dir = 270;
} 


if (global.playerHP <= 0){
	instance_destroy();
	room_goto(R_death);
}

x = clamp (x , 15, room_width - 15);
y = clamp(y, 40, room_height - 40);

if (mouse_check_button_pressed(mb_left)){
	var inst = instance_create_layer(x, y,  "bullets_layer", O_bullet);
	inst.direction = global.dir;
}
