/// @desc initialze globals
randomize();
global.gamePaused = false;
global.textSpeed = .75;
global.targetRoom = -1; 
global.targetX = -1;
global.targetY = -1;
global.targetDirection = -1;

global.iCamera = instance_create_layer(0,0,layer,objCamera);


surface_resize(application_surface, RESOLUTION_W,RESOLUTION_H);

room_goto(ROOM_START);