/// @description Insert description here
// You can write your code in this editor
if(other.homing){
	instance_create_layer(oPlayer.x,oPlayer.y,"Instances",oHeart);
}
else{
	instance_create_layer(other.x,other.y-7,"Instances",oHeart);
}
audio_play_sound(oAudioManager.DemonDeadSFX, 20, false);
instance_destroy(other);
instance_destroy(self);











































































































