draw_set_font(FontMenuScore);
draw_set_halign(fa_left);
if (global.game_state == GAME_STATE_PAUSED && highscore_value(1) > -1) {
	if (global.previous_score > global.previous_high_score) {
		draw_set_colour(c_yellow);
	}
	else {
		draw_set_colour(c_red);
	}
	draw_text(x,y,string(highscore_value(1)));
	draw_set_colour(c_red);
}