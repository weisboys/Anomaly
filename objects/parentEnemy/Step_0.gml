/// @desc do state machine
if (!global.gamePaused)
{
	if (enemyScript[state] != -1) //script_execute(enemyScript[state]);
	{
		WingWormWander(); //this is a very bad fix to prevent an error when using script execute as shown above. 
	}
	depth = -bbox_bottom;
}