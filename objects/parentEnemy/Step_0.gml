/// @desc do state machine
if (!global.gamePaused)
{
	if (enemyScript[state] != -1) //script_execute(enemyScript[state]);
	{
		WingWormWander(); //this is a very bad fix to prevent an error when using script execute as shown above. 
	}
	
	//if touching player start battle
	if (instance_exists(objPlayer)) && (position_meeting(objPlayer.x,objPlayer.y,id))
	{
		if (!instance_exists(objTransition))
		{
			with (objPlayer) state = PlayerStateTransition;
			StartBattle(objWingWormBattle); //this works but the enemy is immediatly deleted since we change to the battle screen
			instance_destroy();
		}
	
	}
	
	depth = -bbox_bottom;
}