// DASH
grav = 0;
hsp = dash_speed * image_xscale;
vsp = 0;

show_debug_message(hsp)

 // Dash Animation 
var dash = instance_create_depth(x,y,depth + 1,obj_dash); 
dash.image_xscale = image_xscale;