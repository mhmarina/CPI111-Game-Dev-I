/// @description Insert description here
// You can write your code in this editor

if(canShoot){
	instance_create_layer(x,y+(random_range(-5,5)),"Instances",oFireball);
	canShoot = false;
	if(numConseqShots != 5){
		alarm[0] = 5;
	}
	else{
		alarm[0] = 90;
		numConseqShots = 0;
	}
	numConseqShots ++;
}

if(irandom_range(0,500) == 60){
	instance_create_layer(x-50, irandom_range(10,room_height-60),"Instances",oDemon,{range:350});
}

//burst














































































































