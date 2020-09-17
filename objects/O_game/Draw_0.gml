var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

switch(room){
case R_game:
	draw_set_color(c_red);
	draw_set_font(F_game);
	draw_text(cx + 8, cy + 64, "HP: " + string(global.playerHP));
}