
getControls();

//x movement
moveDir = rightKey - leftKey //neato

//get x speed
xSpeed = moveDir * moveSpeed;

//x collisions
var _subPixel = 0.5;
if place_meeting(x + xSpeed, y,  oWall){
	
	//scoot up to wall precisely
	var _pixelCheck = _subPixel * sign(xSpeed);
	while(!place_meeting(x + _pixelCheck, y, oWall)){
		x += _pixelCheck;
	}
	
	xSpeed = 0;
}

x += xSpeed;

//y movement
ySpeed += grav;

//jump
// to fly, remove the jumpmax
if(jumpKeyBuffered && jumpCount < jumpMax){
	//reset buffer
	jumpKeyBuffered = false;
	jumpKeyBufferTimer = 0;
	if(!isFlying){
		jumpCount++;
	}
	
	//set the jump hold timer
	jumpHoldTimer = jumpHoldFrames;
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

if (ySpeed >= 0 && place_meeting(x,y+1,oWall)){
	onGround = true;
	jumpCount = 0;
}
else{
	onGround = false;
	if(jumpCount == 0){
		jumpCount = 1;
	}
}
y += ySpeed;







































































































