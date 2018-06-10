//Finds shortest path to player, returns which direction to go (0-3)

var listDirect = argument0;		//heap to store direction can go
var listVal = argument1;		//heap to store cost of direction
var target = argument2;			//Object we are chasing
var steps = argument3;			//how many steps enemy can go.

var pathList = ds_list_create();
var prevList = ds_list_create();

var xPos = x/TILE_SIZE;
var yPos = y/TILE_SIZE;

var doneLoop = 1;

while(doneLoop){
	if(ds_grid_get(gameController.gameMap, xPos + 1, yPos) == 1){
		heapAdd(listVal, listDirect, point_distance(xPos+1, yPos, target.x, target.y), [xPos +1, yPos]);
		ds_list_add(pathList, xPos + 1, yPos);
		ds_list_add(prevList, xPos + 1, yPos);
	}
	if(ds_grid_get(gameController.gameMap, xPos - 1, yPos) == 1){
		heapAdd(listVal, listDirect, point_distance(xPos+1, yPos, target.x, target.y), [xPos +1, yPos]);
		ds_list_add(pathList, xPos - 1, yPos);
		ds_list_add(prevList, xPos - 1, yPos);
	}
	if(ds_grid_get(gameController.gameMap, xPos, yPos + 1) == 1){
		heapAdd(listVal, listDirect, point_distance(xPos+1, yPos, target.x, target.y), [xPos +1, yPos]);
		ds_list_add(pathList, xPos, yPos + 1);
		ds_list_add(prevList, xPos, yPos + 1);
	}
	if(ds_grid_get(gameController.gameMap, xPos, yPos - 1) == 1){
		heapAdd(listVal, listDirect, point_distance(xPos+1, yPos, target.x, target.y), [xPos +1, yPos]);
		ds_list_add(pathList, xPos, yPos - 1);
		ds_list_add(prevList, xPos, yPos - 1);
	}
	
}