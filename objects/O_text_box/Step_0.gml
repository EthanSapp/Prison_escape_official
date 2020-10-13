if (instance_exists(O_player) && (attack == true)){
	x = O_player.x;
	y = O_player. y - 45;
	draw_set_color(c_red);
	draw_set_font(F_game);
	draw_text(x, y, text);
} else {
	instance_destroy();
}
