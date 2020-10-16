/// @description Insert description here
// You can write your code in this editor
direction = 0;

globalvar starting_spd;

starting_spd = 0;

globalvar spd;

spd = 2.5;

hp = 3;

attackCounter = 0;

attackDelay = 0.5;

global.cop_attack = false;

global.cop_attack = noone;

enum states {
	idle,
	wander,
	alert,
	attack
}

state = states.idle;

counter = 0;

my_dir = irandom_range(0,359);
moveX = lengthdir_x(spd, my_dir);
moveY = lengthdir_y(spd, my_dir);