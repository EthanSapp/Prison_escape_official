if (!global.paused) exit;
if(global.paused = true){
	var c = c_black;
	var gwidth =  global.view_width, gheight =  global.view_height;
	var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
	var x_buffer = 25, y_buffer = 100;
	var start_y = (gheight / 2) - ((((ds_height - 1) / 2)  * y_buffer)), start_x = gwidth / 2;



	draw_rectangle_color( 0, 0, cx + gwidth, cy + gheight, c, c, c, c, false);


	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);

	var ltx = start_x - x_buffer, lty, xoffset; 
	var yy = 0

	repeat(ds_height){
		lty = start_y + (yy*y_buffer);
		draw_set_font(F_hit);
	
		c = c_red;
		xoffset = 0;
	
		if ( yy == menu_option[page]){
			c = c_white;
			xoffset = -(x_buffer * 1.5);
		}
	
		draw_text_color(ltx + xoffset, lty, ds_grid[# 0, yy], c, c, c, c, 1);
	
		yy++;
	}
	

	draw_line(start_x, start_y - y_buffer, start_x, lty + y_buffer);
}