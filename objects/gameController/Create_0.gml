
randomize();
//create empty map
setGlobals();
mapSize = 20;
gameMap = ds_grid_create(mapSize, mapSize);
heroList = ds_list_create();
state = 0;
listOrder= 0;

mapGen();


//general game data
turnOrder = 0;
//heroOrder = ds_grid_create(1,0); //width: 0 = objectID, 1 = object Turn Value
