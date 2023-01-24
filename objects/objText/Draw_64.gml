/// @desc Draw Textbox
NineSlicedBoxStretched(sprTextBoxBg, x1, y1, x2, y2, background);
draw_set_font(fText);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

var _print = string_copy(textMessage,1,textProgress);

//if there's responses to show
if (responses[0] != -1) and (textProgress >= string_length(textMessage))
{
	for (var i = 0; i < array_length(responses); i++)
	{
		_print += "\n";
		if (i == responseSelected) _print += "> ";
		_print += responses[i];
		if (i == responseSelected) _print += " <";
		
	}
}

draw_text((x1+x2)/2, y1+8, _print);
draw_set_color(c_white);
draw_text((x1+x2)/2, y1+7, _print); //offset bg text