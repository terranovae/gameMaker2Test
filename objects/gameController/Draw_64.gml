draw_set_color(c_white);

boxSize = 120;  //heroOrder List
//show list of heroObjects/stats
/*for(i = 0; i < (ds_list_size(heroList));i++){
    if(ds_list_size(heroList) >0) 
        draw_text(24, 20 * i, "gameState" + string(state) + 
        " ID : " + string(heroList[| i]) + 
        " HeroState : " + string(heroList[| i].heroState)
		 +  " steps : " + string(heroList[| i].steps));
}*/

for(j = 0;j<4;j++){
	var order = (listOrder + j)mod(ds_list_size(heroList))
	draw_set_alpha(.7);
    draw_set_colour(heroList[| order].myColour);
    draw_rectangle(1024 - (boxSize * (j+1)), 0, 1024 - (boxSize * (j)), boxSize, false);
	draw_set_alpha(1)
    draw_set_color(c_black);
    draw_rectangle(1024 - (boxSize * (j+1)), 0, 1024 - (boxSize * (j)), boxSize, true);
    draw_text(1024 - (boxSize * (j+1)), 28,  string(heroList[| order]));

}