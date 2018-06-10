
playerControls();  //sets player controls (change later in menu)
switch(heroState){
    case 0: //waiting for turn
        
        //show_debug_message("steps = " + string(steps));

        abilityUsed = false;
		steps = heroSpeed;
        heroState = 2;     
        break;
        
		case 1: //set hero information (GUI stuff, center camera)
            heroState = 2;
        break;
    
    case 2: //move hero/select ability to use (show move area)
		show_debug_message("SHITFUCKCUNTCICLEBUTT");
		//view_camera[0] = camera_create_view(x-300, y-300, 600, 600, 0, self, 1, 1, -1, -1)
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