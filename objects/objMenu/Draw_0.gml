draw_sprite_stretched(sprMenuBox,0,x-margin,y-margin,widthFull,heightFull)

draw_set_color(c_black);
draw_set_font(fText);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _desc = !(description == -1);
for (l = 0; l < (optionsCount + _desc); l++)
{
	draw_set_color(c_black);
	if (l == 0) and (_desc)
	{
		draw_text(x,y,description)
	}
	else
	{
		var _str = options[l-_desc][0]
		if(hover == 1 - _desc)
		{
			draw_set_color(c_yellow);
			_str = hoverMarker+_str;
		}
		draw_text(x,y + 1 * heightLine,_str);
	}
}