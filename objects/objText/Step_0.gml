lerpProgress += (1 - lerpProgress);
textProgress += global.textSpeed;

x1 = lerp(x1,x1Target,lerpProgress);
x2 = lerp(x2,x2Target,lerpProgress);

//Cycle through responses
keyUp = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
keyDown = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
responseSelected += (keyDown - keyUp);
var _max = array_length(responses)-1;
var _min = 0;
if (responseSelected > _max) responseSelected = _min;
if (responseSelected > _min) responseSelected = _max;

if (keyboard_check_pressed(vk_space))
{
	var _messageLength = string_length(textMessage);
	if (textProgress >= _messageLength)
	{
		
		if (responses[0] != -1)
		{
			with (originInstance) DialogResponses(other.responseScripts[other.responseSelected]);
		}
		
		//end text
		instance_destroy();
		if(instance_exists(objTextQueued))
		{
			with (objTextQueued) ticket--; //subtract 1 ticket for every TextQueued
		}
		else
		{
			with(objPlayer) 
				{
					state = lastState
					skipStepEvent = true //skip a frame to prevent endlessly opening text boxes
				}
		}
	}
	else
	{
		if (textProgress > 2)
		{
			textProgress = _messageLength;
		}
	}
	
}