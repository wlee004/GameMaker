/// @description PLAYER STATES 

// KEY INPUTS 
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up);
key_dash = keyboard_check_pressed(ord("E"));

/*** Player Status ***********************************************************************/

// CHECK IF PLAYER IS ON GROUND
onground = place_meeting(x,y+1,obj_wall);

// CHECK IF PLAYER IS ON WALL (-1 left wall) (+1 right wall) (0 not on wall)
onwall = place_meeting(x+1,y,obj_wall) - place_meeting(x-1,y,obj_wall);

/*** ADJUST PLAYER SPRITE ***************************************************************/
if(hsp != 0) 
{
	image_xscale = sign(hsp);
}

/*** PLAYER MOVEMENT ********************************************************************/

// temporary vertical movement 
vsp += grav;
vsp = clamp(vsp, -vsp_max, vsp_max);

/*** WALL COLLISION ********************************************************************/

// HORIZONTAL COLLISION
if(place_meeting(x+hsp,y,obj_wall))
{
	while(!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

// VERTICAL COLLISION
if(place_meeting(x,y+vsp,obj_wall))
{
	while(!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

/*** STATE CHANGES ********************************************************************/

switch (state)
{
	case PLAYERSTATE.IDLE: scr_player_idle(); break;
	case PLAYERSTATE.JUMP: scr_player_jump(); break;
	case PLAYERSTATE.RUN: scr_player_run(); break;
	case PLAYERSTATE.WALLJUMP: scr_player_walljump(); break;
	case PLAYERSTATE.DASH: scr_player_dash(); break;
}

show_debug_message(grav)
