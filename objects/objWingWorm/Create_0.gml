 event_inherited();

state = ENEMYSTATE.ROAM;

//enemy sprites
sprMove = sprWingWorm;

//enemy functions
enemyScript[ENEMYSTATE.ROAM] = WingWormWander();