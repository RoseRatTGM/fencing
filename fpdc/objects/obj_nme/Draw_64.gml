///@desc debug
var dW=display_get_gui_width();
var dH=display_get_gui_height();

var amt=3;
for(var i=0;i<amt;i++){
	for(var j=0;j<amt;j++){
		if(obj_plr.hPos[0]>dW*(i/amt)&&obj_plr.hPos[0]<dW*((i+1)/amt)){
			if(obj_plr.hPos[1]>dH*(j/amt)&&obj_plr.hPos[1]<dH*((j+1)/amt)){
				if(obj_cam.debug){
					draw_set_alpha(.1);
					draw_rectangle_color(dW*(i/amt),dH*(j/amt),dW*((i+1)/amt),dH*((j+1)/amt),c_red,c_red,c_red,c_red,false);
					draw_set_alpha(1);
				}//show quadrant (debug)
			}
		}
	}
}