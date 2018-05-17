//if current turn to play, makes a move, then attacks
if(myTurn){ 
    if(playerControlled){
        playerStateMachine();
    }else{
        enemyStateMachine();
    }
    //objGameControl.turnOrder++;
}