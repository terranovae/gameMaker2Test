//create new map and place enemies.
var groundLayer = layer_create(1);
var tileMapGrass = layer_tilemap_create(groundLayer, 0, 1, tlstBkrBasic, room_width, room_height);
//ds_grid_clear(objGameControl.gameMap, 0);
var monsterCount = 5;
for(j = 0;j<mapSize;j++){
    for(i = 0;i<mapSize;i++){
		tilemap_set_at_pixel(tileMapGrass, 2, i*32, j*32);
        
        if((irandom(100) >= 98) && (monsterCount > 0)){
            monsterCount--;
            newInstance = instance_create_depth(i*32, j*32, -1, objBasicHero);
            ds_list_add(heroList, newInstance);
            show_debug_message( string(i) + " : " + string(j) + " monsterCount : " + string(monsterCount));
        }    
        
    }
}
