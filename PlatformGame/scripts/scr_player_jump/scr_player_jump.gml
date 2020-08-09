//sprite_index = spr_jump;

if(onground || onplatform)
{
	vsp = jumpvalue;
	state = PLAYERSTATE.IDLE;
}

if(!onground) && (onwall != 0)
{
	state = PLAYERSTATE.WALLJUMP;
}


