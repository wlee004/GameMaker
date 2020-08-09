// wall jump sprite 

if (!onground && onwall != 0)
{
	// change gravity
	grav = grav_wall
	//sprite_index = spr_walljump
	image_xscale = onwall;
	var side = bbox_left;
	if(onwall == 1) side = bbox_right;
	dust++;
	if((dust > 2) && (vsp > 0)) with(instance_create_layer(side,bbox_top,"Player",obj_dust))
	{
		other.dust = 0;
		hspeed = -other.onwall*0.5;
	}
}

if (key_jump)
{
	hsp = -onwall * hsp_wjump;
	vsp = vsp_wjump;
}


if(onground)
{
	state = PLAYERSTATE.IDLE;
}
else if(!onground && onwall == 0)
{
	state = PLAYERSTATE.JUMP;
}
