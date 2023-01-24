function WingWormWander(){

sprite_index = sprMove;

//Destination or Give up
if ((x = xTo) and (y = yTo)) or (timePassed > enemyRoamDistance / enemySpeed) 
{
	hSpeed = 0;
	vSpeed = 0;
	
	//End move animation
	if (image_index < 1)
	{
		image_speed = 0.0;
		image_index = 0;
	}
	
	//Set new destination
	if (++wait >= waitDuration)//'++wait' add one to Wait and return Wait
	{
		wait = 0;
		timePassed = 0;
		dir = point_direction(x,y,xstart,ystart) + irandom_range(-45,45);
		xTo = x + lengthdir_x(enemyRoamDistance,dir);
		yTo = y + lengthdir_y(enemyRoamDistance,dir);
	}
	
}
else
//Move to Destination
	{

		timePassed++;
		image_speed = 1.0;
		var _distanceToGo = point_distance(x,y,xTo,yTo); //How far do we have to go?
		var _speedThisFrame = enemySpeed;
		if (_distanceToGo < enemySpeed) _speedThisFrame = _distanceToGo; //Prevents overshooting destination
		dir = point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(_speedThisFrame,dir);
		vSpeed = lengthdir_y(_speedThisFrame,dir);
		if (hSpeed != 0) image_xscale = sign(hSpeed);
		
		//Collide and move
		EnemyTileCollision(); 

	}



}