    if(keyboard_check_released(rightKey)){
		if(ds_grid_get(gameController.gameMap, (x/32)+1, y/32) == 1){
	        x += 32;
	        steps--;
		}
	}
   if(keyboard_check_released(leftKey)){
	   if(ds_grid_get(gameController.gameMap, (x/32)-1, y/32) == 1){
	        x -= 32;
	        steps--;
	   }
   }
    if(keyboard_check_released(upKey)){
		if(ds_grid_get(gameController.gameMap, (x/32), (y/32)-1) == 1){
	        y -= 32;
	        steps--;
		}
	}
    if(keyboard_check_pressed(downKey)){
		if(ds_grid_get(gameController.gameMap, (x/32), (y/32)+1) == 1){
	        y += 32;
	        steps--;
		}
    }
	
    show_debug_message("pos val = " + string(ds_grid_get(gameController.gameMap, x/32, y/32)));
	/*    if(keyboard_check(rightKey)){
        x += 32;
        steps--;
    }else if(keyboard_check(leftKey)){
        x -= 32;
        steps--;
    }else if(keyboard_check(upKey)){
        y -= 32;
        steps--;
    }else if(keyboard_check(downKey)){
        y += 32;
        steps--;
    }
    show_debug_message("steps = " + string(steps));*/