/// @description Insert description here
// You can write your code in this editor

if(room != cutscene){
	depth = -1900;
	draw_sprite(textBox_Valk,1,display_get_gui_width()/2,80);
	draw_set_color(c_white);
	draw_set_font(Minecraftia);
	draw_text(display_get_gui_width()/2-80, 70, dialogue[i]);

	show_debug_message(display_get_gui_width()); //560
	show_debug_message(display_get_gui_height()); //960
}

if(room == cutscene){
	depth = -1900;
	draw_sprite(textBox_Valk,1,display_get_gui_width()/2,100);
	draw_set_color(c_white);
	draw_set_font(Minecraftia);
	draw_text(display_get_gui_width()/2-80, 90, dialogue[i]);

}










































































































