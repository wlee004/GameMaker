/// @description Update Camera Position

//Update camera destination
if (instance_exists(obj_player))
{
	xMoveTo = obj_player.x
	yMoveTo = obj_player.y
}

//Update object position
x += (xMoveTo - x) / 5
y += (yMoveTo - y) / 25

//Update Camera View
camera_set_view_pos(playerCam,x-viewWidthHalf,y-viewHeightHalf)