//create new map and place enemies.

ds_grid_clear(gameController.gameMap, 0);


//design the dungeon onto gameController ds_grid
dungeonFloorGen();



//places Tiles using gameContrller ds_grid
drawFloorTiles();


//place monsters in dungeon
placeMonsters();
