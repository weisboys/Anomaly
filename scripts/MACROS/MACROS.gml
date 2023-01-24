function MACROS() {
#macro FRAME_RATE 60
#macro TILE_SIZE 16
#macro CARDINAL_DIR round(direction/90)
#macro ROOM_START roomVillage
//transitions
#macro TRANSITION_SPEED 0.04
#macro OUT 0
#macro IN 1

#macro RESOLUTION_W 320
#macro RESOLUTION_H 180

enum ENEMYSTATE 
	{
		IDLE,
		ROAM,
		CHASE
	}
}
