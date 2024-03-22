function controlsSetup(){
	bufferTime = 3;
	jumpKeyBuffered = 0;
	jumpKeyBufferTimer = 0;
}

//in step event
function getControls(){
	//Directional Inputs
	//return 1s or 0s
	rightKey = keyboard_check(ord("D")) || keyboard_check(vk_right);
	leftKey = keyboard_check(ord("A")) || keyboard_check(vk_left);
	downKey = keyboard_check(ord("S")) || keyboard_check(vk_down);
	attackKey = mouse_check_button(mb_left);
	//action input
	jumpKeyPressed = keyboard_check_pressed(vk_space);
	jumpKey = keyboard_check(vk_space);
	runKey = keyboard_check(vk_shift);
	
	//jump key buffering
	if(jumpKeyPressed){
		jumpKeyBufferTimer = bufferTime;
	}
	if(jumpKeyBufferTimer > 0){
		jumpKeyBuffered = 1;
		jumpKeyBufferTimer--;
	}
	else{
		jumpKeyBuffered = 0;
	}
}