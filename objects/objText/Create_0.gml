x1 = RESOLUTION_W/2; 
y1 = RESOLUTION_H-50; //50 pixels above the bottom of screen
x2 = RESOLUTION_W/2;
y2 = RESOLUTION_H; //bottom of screen

x1Target = 0;
x2Target = RESOLUTION_W;

lerpProgress = 0; //between null and 1
global.textSpeed = 0.4;
textProgress = 0; //increase every frame by text speed

responseSelected = 0; 