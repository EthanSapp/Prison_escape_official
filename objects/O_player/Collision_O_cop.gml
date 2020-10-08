
global.playerHP -= 5;

if (global.playerHP <= 0){
	instance_destroy();
	game_restart();
}

with (O_game){
	alarm[0] = 5;
}