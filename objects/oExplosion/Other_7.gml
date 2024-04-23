/// @description Insert description here
// You can write your code in this editor
oGameManager.playerHealth = oGameManager.maxHealth;
if(room == Level1){
	oGameManager.myScore = 0;
}
if(room == Level2){
	oGameManager.myScore = oGameManager.level1Score;
}
if(room == Level3){
	oGameManager.myScore = oGameManager.level2Score;
}
room_restart();





























































































































