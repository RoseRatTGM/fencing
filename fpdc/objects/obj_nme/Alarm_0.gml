///@desc move weapon
if(weapTimer>=weapThresh){
	with(weap){
		if(image_index!=1){
			image_xscale=1-(image_index);
			sprite_index=spr_nme_sword_attack;
			image_index=0;
		}
	}
	weapTimer=irandom(weapThresh/4);
}//attack
else{
	var dir=choose(-1,0,1);
	//choose direction to move
	weap.image_index+=dir;
	weap.image_index=clamp(weap.image_index,0,2);
	//move
}//move sword
alarm[0]=irandom(90)+10;
weapTimer++;
//reset