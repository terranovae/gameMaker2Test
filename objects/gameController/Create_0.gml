randomize();
//create empty map
mapSize = 30;
gameMap = ds_grid_create(mapSize, mapSize);
heroList = ds_list_create();
heroOrderList = ds_list_create();
mapGen();
//general game data
turnOrder = 0;
//heroOrder = ds_grid_create(1,0); //width: 0 = objectID, 1 = object Turn Value
