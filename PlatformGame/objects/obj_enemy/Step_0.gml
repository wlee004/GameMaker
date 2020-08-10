/// @description ENEMY STATES

// TEMP KEY INPUT FOR DEBUGGING (REMOVE AFTER FINSIHING TESTING)
key_left = keyboard_check(ord("J"));
key_right = keyboard_check(ord("L"));


/*** ADJUST ENEMY SPRITE ***************************************************************/
if(hsp != 0)
{
	image_xscale = sign(hsp);
}

/*** GRAVITY ***************************************************************************/
vsp += grav;

/*** WALL COLLISION ********************************************************************/

// HORIZONTAL COLLISION FOR WALL
if(place_meeting(x+hsp,y,obj_wall))
{
	while(!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

// VERTICAL COLLISION FOR WALL
if(place_meeting(x,y+vsp,obj_wall))
{
	while(!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

/*** STATE CHANGE ***********************************************************************/

switch (state)
{
	case ENEMYSTATE.IDLE: scr_enemy_idle(); break;
}
