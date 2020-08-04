// wall jump sprite 

if (!onground && onwall != 0)
{
	//sprite_index = spr_walljump
	image_xscale = onwall;
	var side = bbox_left;
	if(onwall == 1) side = bbox_right;
	dust++;
	if((dust > 2) && (vsp > 0)) with (instance_create_layer(side,bbox_top,"Player",obj_dust));
}

