if (global.game_state!= GAME_STATE_UNPAUSED) instance_destroy();
if (x <= objMainCharacter.x - objAsteroid.sprite_width / 2) {
	global.player_score++;
	instance_destroy();
}