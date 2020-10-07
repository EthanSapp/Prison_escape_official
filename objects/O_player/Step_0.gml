image_speed = 0;

if (keyboard_check(ord("D")) && !place_meeting(x + 5, y, O_collision)) {
	x += 5;
	sprite_index = S_player_right;
	image_speed = 1;
	global.dir = 0;
}

if (keyboard_check(ord("A")) && !place_meeting(x - 5, y, O_collision)) {
	x -= 5;
	sprite_index = S_player_left;
	image_speed = 1;
	global.dir = 180;
} 

if (keyboard_check(ord("W")) && !place_meeting(x, y - 5 , O_collision)) {
	y -= 5;
	sprite_index = S_player_back;
	image_speed = 1;
	global.dir = 90
} 

if (keyboard_check(ord("S")) && !place_meeting(x , y + 5, O_collision)) {
	y += 5;
	sprite_index = S_player_front;
	image_speed = 1;
	global.dir = 270;
} 
x = clamp (x , 0, room_width);
y = clamp(y, 0, room_height);

if (mouse_check_button_pressed(mb_left)){
	var inst = instance_create_layer(x, y - 35, "bullets_layer", O_bullet);
	inst.direction = global.dir;
}
