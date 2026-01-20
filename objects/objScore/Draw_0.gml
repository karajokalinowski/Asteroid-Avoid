draw_set_font(FontScore);
draw_set_halign(fa_center);
if (global.game_state != GAME_STATE_PAUSED) {
	if (global.player_score > highscore_value(1)) {
		draw_set_colour(c_yellow);
	}
	else {
		draw_set_colour(c_red);
	}
	draw_text(room_width/2,y,string(global.player_score));
	draw_set_colour(c_red);
}