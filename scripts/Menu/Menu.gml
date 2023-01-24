function Menu(_x,_y,_options,_description)
{
	with (instance_create_depth(_x,_y,-999,objMenu))
	{
		options = _options;
		description = _description;
		optionsCount = array_length(_options) //How many options are there?
		hoverMarker = "* ";
		
		//Size setup
		margin = 8;
		draw_set_font(fText);
		
		width = 1;
		if (_description != -1) width = max(width,string_width(_description));
		for (var i = 0; i < optionsCount; i++)
		{
			width = max(width, string_width(_options[i][0]));
		}
		width += string_width(hoverMarker);
		heightLine = 17;
		height = heightLine * (optionsCount + !(description == -1));
		
		widthFull = width + margin * 2;
		heightFull = height + margin *2;
		
	}
}
