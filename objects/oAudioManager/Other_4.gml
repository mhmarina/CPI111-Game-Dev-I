/// @description Insert description here
// You can write your code in this editor

if(room == MainMenu){
	audio_stop_all();
	audio_play_sound(TitleMusic,10,true);
}

if((room == Level1 || room == Level2) && !audio_is_playing(LevelsMusic)){
	audio_stop_all();
	audio_play_sound(LevelsMusic, 10, true);
}

if(room == cutscene){
	audio_stop_all();
	audio_play_sound(CutSceneSFX, 10, false);
}

if(room == Level3 && !audio_is_playing(BossMusic)){
	audio_stop_all();
	audio_play_sound(BossMusic, 1, true);
}

if(room == OpeningCutscene){
	audio_stop_all();
}

















































































































