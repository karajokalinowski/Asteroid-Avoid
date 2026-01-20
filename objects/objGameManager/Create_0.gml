#macro START_X 128
#macro START_Y 288
#macro ASTEROID_START_X 440
#macro ASTEROID_TIMER 200
#macro STAR_SPEED 10
#macro GAME_STATE_PAUSED 1
#macro GAME_STATE_UNPAUSED 2
#macro GAME_STATE_DEAD 3

// GameManager Create Event
game_width  = 360;
game_height = 640;
asteroid_timer = ASTEROID_TIMER;
music_started = false;
window_set_fullscreen(true);


global.player_score = 0;
global.star_timer = STAR_SPEED;
global.game_state = GAME_STATE_PAUSED;
global.previous_score = -1;
global.previous_high_score = highscore_value(1);
highscore_add("Player", -1);

randomize();


for (var currentX = 0; currentX < game_width; currentX++) {
	var numStars;
	numStars = floor(random(2));
	for (var t = 0; t < numStars; t++) {
		var created_layer;
		created_layer = instance_create_layer(currentX,random(game_height),"Instances", objStarHalo);
		if (floor(random(5)) > 0) {
			created_layer.sprite_index = SpriteStarHaloMid;
		}
	}
}