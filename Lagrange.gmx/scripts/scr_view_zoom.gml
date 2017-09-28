//scr_view_zoom(amount, view)
aspect_view = 1; //Square view
var amount = argument[0]; //-ve = zoom in, use as multiplier
var view = argument[1];  // View 0 = main view
var cur_zoom = round(view_wview/room_width *10)/10; // Percentage 0.1 - 1.0
var view_size = view_wview[view]; 
var move_up = 0;
var move_left = 0;
// Room height/width = 9000 (1.0)
// Minimum = 900 (0.1)
var mouse_x_val = mouse_x;
var mouse_y_val = mouse_y;

// Limit zooming
if (cur_zoom <= 0.1) exit;
if (cur_zoom >= 1) exit;

// Get the offset
var offset = cur_zoom + 0.1*amount; //Adjusts zoom percentage within 0.1 - 1.0
// Zoom in offset results in -= 900px to view size
// Zoom out offset results in += 900 px to view size

// Scale the view
offset *= room_width;
view_wview[view] = offset;
view_hview[view] = offset;

// Px offset to apply to view x/y origin (top left)
// Check if moving view in response to mouse x/y

//Adjust the view position based on the scale, zoom in towards mouse x,y
view_xview[view] = 4500 - offset/2;   // Zooms to centre
view_yview[view] = 4500 - offset/2;

