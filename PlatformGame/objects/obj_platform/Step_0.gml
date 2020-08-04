x += horizontal_speed * dir;

//allows platform to only move to a certain point
//once it reaches end, turns direction
if (x <= position_from || x >= position_to){
	dir *= -1;
}
