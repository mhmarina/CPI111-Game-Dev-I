/// @description Insert description here
// You can write your code in this editor

dialogue = [];
i = 0;
if(room == OpeningCutscene){
	dialogue[0] = "I must take back my home."
	dialogue[1] = "I must defeat \nthe Demoness!"
}
if(room == Level1){
	dialogue[0] = "Level 1 Cleared!";
	dialogue[1] = "The heavens will soon\nbe ours once more.";
}
if(room == Level2){
	dialogue[0] = "I am flying again!";
	dialogue[1] = "Let's soar our way \nto victory!";
}
if(room == cutscene){
	dialogue[0] = "no, you'll regret this...";
	dialogue[1] = "I'LL KILL YOU!!";
}
if(room == Level3){
	audio_play_sound(oAudioManager.VictoryMusic, 10, true);
	dialogue[0] = "VICTORY!!!"
}












































































































