if (global.star_timer <= 0) {
	global.star_timer = STAR_SPEED;
	var numStars;
	numStars = floor(random(2));
	for (var t = 0; t < numStars; t++) {
		var created_layer;
		created_layer = instance_create_layer(game_width - 2,random(game_height),"Instances", objStarHalo);
		if (floor(random(5)) > 0) {
			created_layer.sprite_index = SpriteStarHaloMid;
		}
	}
}
else {
	global.star_timer--;
}
if (global.game_state == GAME_STATE_UNPAUSED) {
	if (asteroid_timer <= 0) {
		var numAsteroids;
		numAsteroids = floor(random(2) + 3);
		instance_create_layer(ASTEROID_START_X,0,"Instances", objAsteroidTracker);
		for (var t = 0; t < numAsteroids; t++) {
			var created_layer;
			created_layer = instance_create_layer(ASTEROID_START_X,random(game_height),"Instances", objAsteroid);
		}
		asteroid_timer = ASTEROID_TIMER;
	}
	else {
		asteroid_timer--;
	}
}

if (!music_started && audio_system_is_available()) {
	audio_play_sound(sndMusic,0,true);	
	if (os_browser != browser_not_a_browser) audio_play_sound(sndJetpack,1,false);
	music_started = true;
}