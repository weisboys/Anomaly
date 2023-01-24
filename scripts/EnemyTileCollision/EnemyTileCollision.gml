function EnemyTileCollision(){
	var _collision = false;
	
	//Horizontal tiles
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed, y))
	{
		x -= x mod TILE_SIZE; //the very left of whatever tile we're in
		if (sign(hSpeed)==1) x += TILE_SIZE - 1; //15 pixels to the right
		hSpeed = 0;
		_collision = true;
	}
	
	//Horizontal Move Commit
	x += hSpeed;


	//Vertical tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed))
	{
		y -= y mod TILE_SIZE; //the very top of whatever tile we're in
		if (sign(vSpeed)==1) y += TILE_SIZE - 1;
		vSpeed = 0;
		_collision = true;
	}
	
	//Vertical Move Commit
	y += vSpeed;

	return _collision;
}