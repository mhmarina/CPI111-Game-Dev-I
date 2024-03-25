/// @description Insert description here
// You can write your code in this editor
if(!place_meeting(x+16,y+1,oWall) || !place_meeting(x-16,y+1,oWall)){
	if(direction == 0){
		direction = 180;
		
	}
	else if(direction == 180){
		direction = 0;
	}
}

if(direction == 0){
	face = 1;
}

if(direction == 180){
	face = -1;
}
















































































































