text_ = "HP";

draw_set_font(F_hit);
draw_set_color(c_red);

if (global.cop_attack == true){
	draw_text(O_player.x, O_player.y - 40, text_);
}