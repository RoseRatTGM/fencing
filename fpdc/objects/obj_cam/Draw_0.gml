/// @desc show hitboxes (debug)
if(!surface_exists(surf)){
	surf=surface_create(display_get_gui_width(),display_get_gui_height());
}//make sure there is a surface to draw to
draw_surface(surf,0,0);
//draw surf

#region debug mode
if(debug){
	with(all){
		draw_set_color(c_red);
		draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
	}//draw hitboxes
}
#endregion