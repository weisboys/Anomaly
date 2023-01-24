// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
	
//Calculate Movement
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

//Move
PlayerCollision();

//Update Sprite Index
var _oldSprite = sprite_index; //var is a temp variable
if (inputMagnitude != 0)
{
	direction = inputDirection;
	sprite_index = sprPlayerRun;
} else sprite_index = sprPlayer;
if (_oldSprite != sprite_index) localFrame = 0;

//Update Image Index
PlayerAnimateSprite();

//Interact key logic
if (keyActivate)
	{
		//1. check for entity to activate
		//2. if there is nothing of if theres something with no script, roll
		//3. Else there is something and has a script, so activate it
		//4. If it's an npc, face towards us
		
		var _activateX = lengthdir_x(10, direction);
		var _activateY = lengthdir_y(10, direction);
		activate = instance_position(x+_activateX,y+_activateY,parentEntity);
		
		if (activate == noone or activate.entityActivateScript == -1)
		{
			//state = PlayerStateRoll;
			//moveDistanceRemaining = distanceRoll;
			state = PlayerStateFree;
		}
		else //There's something to activate and it has a script
		{
			ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
			//npc face player
			if (activate.entityNPC)
			{
				with (activate)
				{
					direction = point_direction(x,y,other.x,other.y);
					image_index = CARDINAL_DIR;
				}
			}
		
		}
		
		
	}
}