global.paused = true;
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

global.key_revert = ord("x");
global.key_shift = vk_shift;
global.key_left = vk_left;
global.key_right = vk_right;
global.key_up = vk_up;
global.key_down = vk_down;

display_set_gui_size(global.view_width, global.view_height);

enum menu_page {
	main,
	height
}

enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

//create menu pages
ds_menu_main = create_menu_page(
	["RESUME", menu_element_type.script_runner, resume_game],
	["EXIT", menu_element_type.script_runner, exit_game]
);

page = 0;
menu_pages = [ds_menu_main]

var i = 0, array_len = array_length_1d(menu_pages);
repeat(array_len){
	menu_option[i] = 0;
	i++
}