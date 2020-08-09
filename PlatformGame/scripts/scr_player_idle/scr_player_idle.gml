/*** MOVEMENT ***************************************************************************/

grav = defgrav;
//if(onwall != 0 && !onground) grav = grav_wall;

if(onground) sprite_index = spr_player;
else sprite_index = spr_jump;

// CHANGE STATES 
if(key_right - key_left != 0)
{
	state = PLAYERSTATE.RUN;
}

else if(key_jump && onground)
{
	state = PLAYERSTATE.JUMP;
}

else if (key_dash)
{
	state = PLAYERSTATE.DASH;
	alarm[0] = 8;
}



