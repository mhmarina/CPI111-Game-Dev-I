
getControls();

if(oGameManager.playerHealth <= 0){
	instance_create_layer(x,y,"Instances",oExplosion);
	instance_destroy(self);
}

if(cheatKey && room != room_last){
	oGameManager.playerHealth = oGameManager.maxHealth;
	room_goto_next();
}

if(restartKey){
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
}

if(previousKey && room != OpeningCutscene){
	oGameManager.playerHealth = oGameManager.maxHealth;
	room_goto_previous();
}

if(cheatKey && room == Level3){
	instance_destroy(oCamera);
}

if(cheatKey && room == victoryscene){
	instance_destroy(oGameManager);
}


if(flyKey){
	isFlying = !isFlying;
}
if(place_meeting(x,y,o_BulletEnemy) || place_meeting(x,y,oFireball)){
	if(isFlying){
		sprite_index = damagedAndFlyingSpr;
		isDamaged = true;
		alarm[0] = 1;
	}
	else{
		sprite_index = damagedSpr;
		isDamaged = true;
		alarm[0] = 1;
	}	
}

//attack
if(attackKey && canAttack){
	audio_play_sound(oAudioManager.PlayerShootingSFX, 10, false);
	canAttack = false;
	instance_create_layer(x+(8*face), y-17, "Instances", o_BulletPlayer);
	alarm[1] = attackTimer;
}

//crouching
if(downKey && onGround && !attackKey){
	crouching = true;
}
else{
	crouching = false;
}

//x movement
moveDir = rightKey - leftKey //neato
//infer face:
if(moveDir != 0){
	face = moveDir;
}

//get x speed
xSpeed = moveDir * moveSpeed[runType];
runType = runKey;

//x collisions
var _subPixel = 0.5;
if place_meeting(x + xSpeed, y,  oWall){
	//if slope
	if(!place_meeting(x + xSpeed, y - abs(xSpeed) - 1, oWall)){
		while(place_meeting(x+xSpeed, y, oWall)){
			y -= _subPixel;
		}
	}
	//if no slope
	else{
		//scoot up to wall precisely
		var _pixelCheck = _subPixel * sign(xSpeed);
		while(!place_meeting(x + _pixelCheck, y, oWall)){
		x += _pixelCheck;
		}
	xSpeed = 0;
	}
}

//go down slope:
//check if not jumping
//clip to bottom wall
if(ySpeed >= 0 && !place_meeting(x+xSpeed, y + 1, oWall) && place_meeting(x+xSpeed, y+abs(xSpeed)+1, oWall)){
	while(!place_meeting(x+xSpeed, y + _subPixel, oWall)){
		y += _subPixel;
	}
}

x += xSpeed;

//flight controls
if(isFlying){
	ySpeed = 8;
	if(upKey && !place_meeting(x,y-ySpeed,oWall)){
		y -= ySpeed;
	}
	if(downKey && !place_meeting(x,y+ySpeed,oWall)){
		y += ySpeed;
	}
}

//y movement
//gravity
else{
	if(coyoteHangTimer > 0){
	coyoteHangTimer --;
	}
	else{
		//apply gravity to player
		ySpeed += grav;
		//we're no longer on ground
		setOnGround(false);
	}

	//jump
	// to fly, remove the jumpmax
	if(jumpKeyBuffered && jumpCount < jumpMax){
		//reset buffer
		jumpKeyBuffered = false;
		jumpKeyBufferTimer = 0;
		if(!isFlying){
			audio_play_sound(oAudioManager.PlayerJumpSFX,10,false);
			jumpCount++;
		}
	
		//set the jump hold timer
		jumpHoldTimer = jumpHoldFrames;
	
		//tell ourselves we are no longer jumping
		setOnGround(false);
	}

	//cut off jump by releasing button
	if(!jumpKey){
		jumpHoldTimer = 0;
	}

	if(jumpHoldTimer > 0){
		//constantly set y speed to be jumping speed
		ySpeed = jumpSpeed;
		jumpHoldTimer--;
	}

	if(ySpeed > termVel){ySpeed = termVel} //cap ySpeed @ termVal

	var _subPixel = .5;

	if (place_meeting(x, y+ySpeed, oWall)){
		var _pixelCheck = _subPixel * sign(ySpeed);

		while !place_meeting(x,y+_pixelCheck,oWall){
			y += _pixelCheck;
		}
	
		//bonk code
		if (ySpeed < 0){
			jumpHoldTimer = 0;
		}
		ySpeed = 0;
	}

	//set if on the ground
	if (ySpeed >= 0 && place_meeting(x,y+1,oWall)){
		setOnGround(true);	
	}
	y += ySpeed;
}

//sprite control
if(!isDamaged){
	if(!isFlying){
		if (abs(xSpeed) > 0){
			sprite_index = walkSpr;
		}
		if(abs(xSpeed) >= moveSpeed[1]){
			sprite_index = runSpr;
		}
		if(xSpeed == 0){
			sprite_index = idleSpr;
		}
		if(attackKey){
			sprite_index = attackSpr;
		}
		if(!onGround){
			sprite_index = jumpSpr;
		}
	mask_index = idleSpr;
	if(crouching){
		sprite_index = crouchSpr;
		mask_index = crouchSpr;
		}
	}

	else{
		if(isFlying){
			sprite_index = flySpr;
		}
		if(attackKey && isFlying){
			sprite_index = flyAndAttackSpr;
		}
	}
}






































































































