/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(oPlayer)){
	exit;
}

if(x > oPlayer.x){
	face = -1;
}
else{
	face = 1;
}

if(distance_to_object(oPlayer) <= range && enemyCanShoot){
	instance_create_layer(x,y-9,"Instances",o_BulletEnemy);
	enemyCanShoot = false;
	alarm[0] = 45;
} 














































































































