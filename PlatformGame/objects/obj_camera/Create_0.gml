/// @description Camera Variables Set-Up


playerCam = view_camera [0];

viewWidthHalf = camera_get_view_width(playerCam) *.5;
viewHeightHalf = camera_get_view_height(playerCam) * .6;

xMoveTo = xstart;
yMoveTo = ystart;