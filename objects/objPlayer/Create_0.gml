state = PlayerStateFree; //refrencing script, not calling it yet
lastState = state;
skipStepEvent = false;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0; //prevent auto animation
hSpeed = 0;
vSpeed = 0;
speedWalk = 1.5;
speedRoll = 3.0;
distanceRoll = 52;

sprRoll = sprPlayerRoll;
sprRun = sprPlayerRun;
sprIdle = sprPlayer;
localFrame = 0;

if (global.targetX != -1)
{
	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
}