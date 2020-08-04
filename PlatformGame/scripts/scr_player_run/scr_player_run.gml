if(onground) sprite_index = spr_run;
else sprite_index = spr_jump;

// HORIZONTAL MOVEMENT 
walljumpdelay = max(walljumpdelay-1,0);
if(walljumpdelay == 0)
{
	var move = key_right - key_left;
	if(move != 0 && is_dashing == false)
	{
		hsp += move * accel * walkspeed; 
		hsp = clamp(hsp, -maxspeed, maxspeed);
	}
}

if(hsp > decel)
{
	hsp -= decel; 
}
else if (hsp < -decel)
{
	hsp += decel; 
}
else
	hsp = 0;
	
	
// STATE CHANGE 
if(hsp == 0)
{
	state = PLAYERSTATE.IDLE;
}
else if(key_jump && onground)
{
	state = PLAYERSTATE.JUMP;
}
else if(key_dash)
{
	state = PLAYERSTATE.DASH;
	alarm[0] = 8;
}