/// @description Insert description here
// You can write your code in this editor
if(i < array_length(dialogue) - 1){
	i++;
}

else{
	if(room == Level1){
	oGameManager.level1Score = oGameManager.myScore;
	oGameManager.playerHealth = oGameManager.maxHealth;
	room_goto_next();
}
	if(room == Level2){
	oGameManager.level2Score = oGameManager.myScore;
	if(oGameManager.level2Score > 1){
		oGameManager.maxHealth = oGameManager.maxHealth * (oGameManager.myScore/2);
	}
	oGameManager.playerHealth = oGameManager.maxHealth;
	room_goto_next();
}	
}
















































































































