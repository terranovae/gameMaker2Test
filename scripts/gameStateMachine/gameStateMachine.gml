
switch(state){
    case 0: //check if current hero can move
			if(heroList[| listOrder].canMove == true){
				
				state = 1;
			}
        break;
        
    case 1: //move hero, send to AlistOrder or Player
			if(heroList[| listOrder].myTurn == false){
				heroList[| listOrder].myTurn = true;
				heroList[| listOrder].heroState = 0;
			}
			
			if(heroList[| listOrder].heroState == 4)state = 2;
        break;
    
    case 2:	//take Damage from environment/status effects
           //check current tile, take damage.
		   heroList[| listOrder].myTurn = false;
		   state = 3;
        break;

    case 3:	//next hero, or restart list
		listOrder++;
		if(listOrder >= ds_list_size(heroList))listOrder = 0;
		state = 0;
        break;
    }