var monsterCount = 2;
for(i = 0;i<mapSize;i++){
    for(j = 0;j<mapSize;j++){        
        if((irandom(100) >= 80) && (monsterCount > 0)&&(ds_grid_get(gameController.gameMap, i, j) == 1)){
            monsterCount--;
            newInstance = instance_create_depth((i)*32, (j)*32, -1, objBasicHero);
            ds_list_add(heroList, newInstance);
            show_debug_message( string(i) + " : " + string(j) + " monsterCount : " + string(monsterCount));
        }    
        
    }
}