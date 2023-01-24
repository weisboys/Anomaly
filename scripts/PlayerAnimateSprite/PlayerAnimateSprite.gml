function PlayerAnimateSprite() {
//Update sprite
var _totalFrames = sprite_get_number(sprite_index) / 4;
image_index = localFrame + (CARDINAL_DIR * _totalFrames);
localFrame += sprite_get_speed(sprite_index) / 175; //FRAMERATE instead of 175 for default

//If animation would loop on next game step
if (localFrame >= _totalFrames)
{
	animationEnd = true;
	localFrame -= _totalFrames;
}else animationEnd = false;
}