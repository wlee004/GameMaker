/// @description PLAYER VARIABLES

// PLAYER STATUS 
onground = false;
onwall = 0;

// PLAYER MOVEMENT VARIABLES
hsp = 0;
vsp = 0;
grav = .25;
defgrav = .25;
maxspeed = 2;
walkspeed = 2;
accel = 0.75;
decel = 0.5;
jumpvalue = -5;

// DASHING VARIABLES
is_dashing = false;
dash_speed = 5;
dash_counter = 0;
dash_delay = 0;

// WALL JUMPING VARIABLES
dust = 0;
walljumpdelay = 0;
walljumpdelay_max = 3;
grav_wall = 0.03;
hsp_wjump = 2; 
vsp_wjump = -5;
vsp_max_wall = 3;
vsp_max = 20;

// PLAYER STATE
state = PLAYERSTATE.IDLE;

enum PLAYERSTATE
{
	IDLE,
	RUN,
	JUMP,
	WALLJUMP,
	DASH,
	ATTACK_SLASH,
	ATTACK_COMBO
}

