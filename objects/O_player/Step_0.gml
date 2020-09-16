/// @description Insert description here

if (keyboard_check(ord("D")) && !place_meeting(x + 5, y, O_collision)) {
	x += 5;
	sprite_index = S_player_right;
} 

if (keyboard_check(ord("A")) && !place_meeting(x - 10, y, O_collision)) {
	x -= 5;
	sprite_index = S_player_left;
}

if (keyboard_check(ord("W")) && !place_meeting(x, y - 5, O_collision)) {
	y -= 5;
	sprite_index = S_player_back;
} 

if (keyboard_check(ord("S")) && !place_meeting(x , y + 5, O_collision)) {
	y += 5;
	sprite_index = S_player_front;
} 
x = clamp (x , 0, room_width);
y = clamp(y, 0, room_height);

/*hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));

yinput =  keyboard_check(ord("W")) - keyboard_check(ord("S"));

if (hinput != 0){
	global.dir = point_direction(0,0,hinput,0);
switch (global.dir) {
	case 0:
	sprite_index = S_player_right;
	break;
	
	case 180:
	sprite_index = S_player_left;
	break;

}
} else {
  image_index = 0;
}

if (yinput != 0){
	global.dir = point_direction(0,0, yinput, 0);
	
switch (global.dir){
	case 90:
	sprite_index = S_player_front;
	break;
	
	case 270:
	sprite_index = S_player_back;
	break;
}
} else {
  image_index = 0;
}*/