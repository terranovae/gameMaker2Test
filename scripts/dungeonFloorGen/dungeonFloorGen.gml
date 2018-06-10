//uses ds_grid from gameController and builds a dungeon by drawing hallways.
//build map, draw a collection of lines.
var mapPosX = floor(mapSize/2);
var mapPosY = floor(mapSize/2);
 mapPosX = 15;
 mapPosY = 15;
for(numLines = 200; numLines >=0; numLines--){
	var ranDir = irandom_range(0, 3);
	var ranDist = irandom_range(1, 4);
	while(ranDist > 0){
		if(ranDir == 0){
			mapPosX++;
			if(mapPosX >= mapSize-1){
				mapPosX = mapSize-1;
				ranDist = 0;
			}
		}else if (ranDir == 1){
			mapPosY++;
			if(mapPosY >= mapSize-1){
				mapPosY = mapSize-1;
				ranDist = 0;
			}
		}else if (ranDir == 2){
			mapPosX--;
			if(mapPosX <= 1){
				mapPosX = 1;
				ranDist = 0;
			}
		}else if (ranDir == 3){
			mapPosY--;
			if(mapPosY <= 1){
				mapPosY = 1;
				ranDist = 0;
			}
		}
	ds_grid_set(gameController.gameMap, mapPosX, mapPosY, 1)
	ranDist--;
	}
}