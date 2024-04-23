/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(oPlayer)){
	exit;
}
if(canShoot){
	instance_create_layer(x,y+(random_range(-5,5)),"Instances",oFireball);
	canShoot = false;
	if(numConseqShots != 5){
		alarm[0] = 5;
	}
	else{
		alarm[0] = 60;
		numConseqShots = 0;
	}
	numConseqShots ++;
}

if(!isDead && !spawnDemon){
	instance_create_layer(x-50, irandom_range(60,room_height-100),"Instances",oDemon,{range:350, direction:point_direction(x,y,oPlayer.x,oPlayer.y-5), speed:2, homing: true});
	spawnDemon = true;
	alarm[1] = 60;
}

if(flag == 1){
	audio_play_sound(oAudioManager.BossDeathSFX, 20, false);
	instance_destroy(oBossTextBox);
	instance_change(oDemoness_Dead,true);
}

if(bossHealth <= 0 && flag = 0){
	audio_stop_all();
	canShoot = false;
	isDead = true;
	oPlayer.canAttack = false;
	sprite_index = sDemonessDefeated;
	instance_create_layer(0,0,"Instances",oBossTextBox);
	if(instance_exists(oDemon)){
		instance_destroy(oDemon);
	}
	if(instance_exists(o_BulletEnemy)){
		instance_destroy(o_BulletEnemy);
	}
	if(instance_exists(oFireball)){
		instance_destroy(oFireball);
	}
}
//burst














































































































