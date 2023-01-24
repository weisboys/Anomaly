/// @desc Cause room transition
if (instance_exists(objPlayer)) && (position_meeting(objPlayer.x,objPlayer.y,id)) 
{
	if (!instance_exists(objTransition))
	{
		global.targetRoom = targetRoom;
		global.targetX = targetX;
		global.targetY = targetY;
		global.targetDirection = objPlayer.direction;
		with (objPlayer) state = PlayerStateTransition;
		RoomTransition(TRANS_TYPE.FADE,targetRoom);
		instance_destroy();
	}
	
}