xp = cx + 790
yp = cy + 540;

draw_set_alpha(0.3);
draw_rectangle(xp, yp, xp + width, yp + height, false);

draw_set_color(c_blue);
draw_set_alpha(0.8);
var enemyCount;
enemyCount = instance_number(O_cop);
for (i = 0; i < enemyCount; i ++){
	copId = instance_find(O_cop, i)
	var wherex = xp + copId.x * (xscale);
	var wherey = yp + copId.y * (yscale);
	draw_circle(wherex, wherey, 3, false);
}

if (instance_exists(O_player)){
	//playerId = instance_find(O_player, 1);
	draw_set_color(c_red);
	draw_set_alpha(0.8);
	playerx_ = xp + O_player.x * (xscale);
	playery_ = yp + O_player.y * (yscale);
	draw_circle(playerx_, playery_ ,3 , false);
}

draw_set_color(c_gray);
draw_set_alpha(.8);
var wallCount;
wallCount = instance_number(O_collision);
for (i = 0; i < wallCount; i++) {
	wallId = instance_find(O_collision, i);
	var wherex = xp + wallId.x * (xscale);
	var wherey = yp + wallId.y * (yscale);
	draw_circle(wherex, wherey, 3, false);
}
