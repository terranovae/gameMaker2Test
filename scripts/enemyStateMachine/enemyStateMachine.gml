
playerControls();  //sets player controls (change later in menu)
switch(heroState){
    case 0: //waiting for turn
        
        //show_debug_message("steps = " + string(steps));
		
        abilityUsed = false;
		steps = heroSpeed;
		show_debug_message("BUTT" + string(butt));
        heroState = 2;     
        butt++
        break;
        
		case 1: //set hero information (GUI stuff, center camera)
            heroState = 2;
        break;
    
    case 2: //move hero/select ability to use (show move area)
		show_debug_message("SHITFUCKCUNTCICLEBUTT");
		if(steps <= 0){
                
				heroState = 4;
            }else{
				playerMovement();
			}
            
        break;

    case 3: //use ability
            steps = floor(steps/2);
            abilityUsed = 1;
            heroState = 2;
        break;
	case 4: //restState

        break;
    }