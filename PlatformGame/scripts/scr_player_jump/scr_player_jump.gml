//sprite_index = spr_jump;

if(onground)
{
	vsp = jumpvalue;
	state = PLAYERSTATE.IDLE;
}

if(!onground) && (onwall != 0)
{
	state = PLAYERSTATE.WALLJUMP;
}


