/// @description Insert description here
// You can write your code in this editor
if(i < array_length(dialogue) - 1){
	i++;
}

else{
	if(room == Level3){
		oDemoness.flag = 1;
	}
	if(room == cutscene){
		instance_create_layer(0,0,"Instances",oValkTextBox);
		instance_destroy(self);
	}
}
















































































































