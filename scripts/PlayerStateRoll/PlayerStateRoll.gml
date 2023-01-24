function PlayerStateRoll(){

	//movement
	hSpeed = lengthdir_x(speedRoll, direction);
	vSpeed = lengthdir_y(speedRoll, direction);
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedRoll); //get the largest of either 0 or moveDistanceRemaining
	var _collided = PlayerCollision();
	
	//update sprites
	sprite_index = sprRoll;
	var _totalFrames = sprite_get_number(sprite_index)/4;
	image_index = (CARDINAL_DIR * _totalFrames) + min(((1 - (moveDistanceRemaining / distanceRoll)) * (_totalFrames)), _totalFrames - 1);
	
	//change state
	if (moveDistanceRemaining <= 0)
	{
		state = PlayerStateFree;
	}
	
if (_collided)
{
	state = PlayerStateFree;
	ScreenShake(4, 30)
}
	
}