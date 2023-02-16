function StartBattle(enemy){
	
	RoomTransition(TRANS_TYPE.BATTLE,roomBattle);
	
	instance_create_depth(163,49,1,objWingWormBattle);
	
}