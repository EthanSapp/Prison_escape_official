if (instance_exists(O_player) && global.cop_attack = true){
	_x = O_player.x;
	_y = O_player.y - 45;
	draw_set_color(c_red);
	draw_set_font(F_hit);
	draw_text(_x, _y, text);
} else {
	instance_destroy();
}