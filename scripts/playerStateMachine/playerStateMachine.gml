playerControls();

state = 0;
switch(state){
    case 0: //waiting for turn
        
        //show_debug_message("steps = " + string(steps));
		
        abilityUsed = false;
		steps = heroSpeed;
        state = 2;   //set by objGameControl        
        
        break;
        
/*    case 1: //set hero information (GUI stuff, center camera)
            
        break;*/
    
    case 2: //move hero/select ability to use (show move area)
		show_debug_message("SHITFUCKCUNTICICLEBUTT");
		if(steps <= 0){
                turnTimer = 0;
                state = 0;
            }else{
				playerMovement();
			}
            
        break;

    case 3: //use ability
            steps = floor(steps/2);
            abilityUsed = 1;
            state = 2;
        break;
    }