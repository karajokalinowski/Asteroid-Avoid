if (global.game_state == GAME_STATE_UNPAUSED) {
	if (sprite_index != SpriteAstronautDead) {
		sprite_index = SpriteAstronautDead;
		audio_play_sound(sndAsteroid, 1, false);
		global.game_state = GAME_STATE_DEAD;
	}
}