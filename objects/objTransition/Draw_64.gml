if (type == TRANS_TYPE.SLIDE)
{
	draw_set_color(c_black);
	draw_rectangle(0,0,width,percent * heightHalf,false);
	draw_rectangle(0,height,width,height-(percent * heightHalf),false);
}

if (type == TRANS_TYPE.FADE)
{
	draw_set_color(c_black);
	draw_set_alpha(percent);
	draw_rectangle(0,0,width,height,false);	
	draw_set_alpha(100);
}

if (type == TRANS_TYPE.BATTLE)
{
	draw_set_color(c_teal);
	//draw_rectangle(0,0,width,percent * heightHalf,false);
	//draw_rectangle(0,height,width,height-(percent * heightHalf),false);

	var gridX = width;
	var gridY = height;
	instance_create_depth(gridX,gridY, 0, objBattleTransitionSqaure);
	
}