/*** MOVEMENT ***************************************************************************/

grav = defgrav;
if(onwall != 0 && !onground) grav = grav_wall;

if(onground) sprite_index = spr_player;
else if(onplatform) sprite_index = spr_player;
else sprite_index = spr_jump;


// CHANGE STATES 
if(key_right - key_left != 0)
{
	state = PLAYERSTATE.RUN;
}

if((key_jump && onground) || (key_jump && onplatform))
{
	state = PLAYERSTATE.JUMP;
}

if (key_dash)
{
	state = PLAYERSTATE.DASH;
	alarm[0] = 8;
}
if (onwall != 0) && (!onground) && (key_jump)
{
	state = PLAYERSTATE.WALLJUMP;
}
