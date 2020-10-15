if (!global.paused) exit;
if (global.paused = true){
	input_up_p = keyboard_check_pressed(global.key_up);
	input_down_p = keyboard_check_pressed(global.key_down);
	input_shift_p = keyboard_check_pressed(global.key_shift);

	var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

	var ochange = input_down_p - input_up_p;

	if (ochange != 0){
		menu_option[page] += ochange;
	
		if (menu_option[page] > ds_height - 1) {
			menu_option[page] = 0;
		}
	
		if (menu_option[page] < 0) {
			menu_option[page] = ds_height - 1;
		}
	
	}

	if (input_shift_p) {
		switch(ds_grid[# 1, menu_option[page]]){
			case menu_element_type.script_runner:
			break;
		}
	}
}