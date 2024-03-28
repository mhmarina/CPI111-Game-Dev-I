/// @description Insert description here
// You can write your code in this editor
depth = -1600;
draw_sprite(UI_layout,-1,930,520);
draw_text(820,500,oGameManager.myScore);
draw_set_color(c_white);
draw_set_font(Minecraftia);
draw_healthbar(700,480,850,490,oGameManager.playerHealth/3,c_black,c_red,c_green,1,true,true);

if(room == Level3){
	draw_sprite(sBossIcon,1,930,100);
	draw_healthbar(400,40,850,50,oDemoness.bossHealth/10,c_black,c_grey,c_red,1,true,true);
}






































































































