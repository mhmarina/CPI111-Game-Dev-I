/// @description Insert description here
// You can write your code in this editor
if(oGameManager.playerHealth <= oGameManager.maxHealth - 75){
	oGameManager.playerHealth += 75;
}
else{
	oGameManager.playerHealth = oGameManager.maxHealth;
}

audio_play_sound(oAudioManager.HealthpickupSFX,10,false);
oGameManager.myScore += 5;
instance_destroy(self);













































































































