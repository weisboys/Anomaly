/// @desc do transition
with (objPlayer) state = PlayerStateTransition;

if (leading == OUT) 
{
	percent = min(1, percent + TRANSITION_SPEED);
	if (percent >= 1) //screen fully obscured
	{
		room_goto(target);
		leading = IN;

	}
}
else //leading  == IN
{	
	with (objPlayer) state = PlayerStateFree;
	percent = max(0, percent - TRANSITION_SPEED);
	if (percent <= 0) //screen fully revealed
	{
		instance_destroy();
	}
}