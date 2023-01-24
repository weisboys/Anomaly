event_inherited(); 

//unique enemy variables
state = ENEMYSTATE.IDLE;
hSpeed = 0;
vSpeed = 0;
xTo = xstart
yTo = ystart;
dir = 0;
timePassed = 0;
waitDuration = 60;
wait = 0;

//enemy sprites
sprMove = sprWingWorm;

//enemy functions
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.CHASE] = -1;
enemyScript[ENEMYSTATE.ROAM] = -1;