if (global.game_state != GAME_STATE_PAUSED) {
	if (speed > -3 || objMainCharacter.sprite_index == SpriteAstronautDead) speed -= 0.2;
	if (global.game_state == GAME_STATE_UNPAUSED) {
		if (mouse_check_button_pressed(mb_left)) {
			audio_play_sound(sndJetpack,1,false);
		}
		if (mouse_check_button(mb_left)) {
			if (speed < 1) speed = 1;
			speed = speed + 0.4;
			if (speed > 10) speed = 10;
		}
		if (speed > 0) sprite_index = SpriteAstronautFlame;
		else sprite_index = SpriteAstronautStill;
	}
	if (y <= -sprite_height || y > room_height) {
		global.game_state = GAME_STATE_PAUSED;
		with (objHelpText) {
			visible = true;
		}
		objMainCharacter.x = START_X;
		objMainCharacter.y = START_Y;
		objMainCharacter.speed = 0;
		sprite_index = SpriteAstronautFlame;
		highscore_add("Player", global.player_score);
		global.previous_score = global.player_score;
		global.player_score = 0;
		
		
	}
}
else if (mouse_check_button_pressed(mb_left)) {
	global.game_state = GAME_STATE_UNPAUSED;
	with (objHelpText) {
		visible = false;
	}
	audio_play_sound(sndJetpack,1,false);
	global.previous_high_score = highscore_value(1);
}