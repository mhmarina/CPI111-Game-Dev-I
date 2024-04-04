/// @description Insert description here
// You can write your code in this editor
if(i < array_length(dialogue) - 1){
	i++;
}

else{
	if(room == Level1){
	oGameManager.level1Score = oGameManager.myScore;
	oGameManager.playerHealth = oGameManager.maxHealth;
	}
	if(room == Level2){
	oGameManager.level2Score = oGameManager.myScore;
		if(oGameManager.level2Score > 1){
			oGameManager.maxHealth = oGameManager.maxHealth + (oGameManager.myScore / 3)
		}
	oGameManager.playerHealth = oGameManager.maxHealth;
	}
	if(room == Level3){
		instance_destroy(oCamera);
		instance_destroy(oGameManager);
		room_goto(victoryscene);
	}
	room_goto_next();
}	
















































































































