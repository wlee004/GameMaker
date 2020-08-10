// ENEMY DEFUALT BEHAVIOR 
var move = key_right - key_left;

if(move != 0)
{
	hsp = move * walkspeed; 
}
else if(hsp != 0)
{
	hsp += -1 * image_xscale * walkspeed;
}