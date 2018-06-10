var groundLayer = layer_create(1);
var tileMapGrass = layer_tilemap_create(groundLayer, 0, 1, tlstBkrBasic, room_width, room_height);
for(i = 0;i<mapSize;i++){
    for(j = 0;j<mapSize;j++){
		if(ds_grid_get(gameController.gameMap, i, j) == 0){
			tilemap_set_at_pixel(tileMapGrass, 3, i*32, (j+1)*32)
		}else{
			tilemap_set_at_pixel(tileMapGrass, 2, i*32, (j+1)*32)
		}
	}
}