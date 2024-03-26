/// @description Insert description here
// You can write your code in this editor



if(room == Level1){
	oGameManager.level1Score = oGameManager.myScore;
	oGameManager.playerHealth = oGameManager.maxHealth;
	room_goto_next();
}
if(room == Level2){
	oGameManager.level2Score = oGameManager.myScore;
	oGameManager.playerHealth = oGameManager.maxHealth;
	room_goto_previous();
}