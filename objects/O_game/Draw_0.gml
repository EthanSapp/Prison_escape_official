cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);

switch(room){
case R_cells:
	draw_set_color(c_red);
	draw_set_font(F_game);
	draw_text(cx + 8, cy + 12, "HP: " + string(global.playerHP));
	break;
	
case R_start:
	draw_set_color(c_red);
	draw_set_font(F_start);
	draw_text(225, 350, "Press Enter To Play");
	draw_text(300, 150, "Prison Escape");
	break;
}

draw_set_alpha(1);