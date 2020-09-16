/// @description Insert description here
// You can write your code in this editor

if (distance_to_object(O_player) <= 200){
	if (instance_exists(O_player)){
		move_towards_point(O_player.x,O_player.y, spd);
	}
}

x = clamp (x , 0, room_width);
y = clamp(y, 0, room_height);
