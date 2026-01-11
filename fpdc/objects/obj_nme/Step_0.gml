///@desc player use items on enemy
itemCd=max(itemCd-global.tFactor,0);

with(obj_plr){
	var cQuad=other.body[hQuadrant[0],hQuadrant[1]];
	if(cQuad>0&&active&&!other.itemCd){ //if aligned with body
		other.itemCd=30;
		if(cQuad>1){ //if armored
			repeat(irandom(4)+1){
				with(instance_create_depth(hPos[0],hPos[1],depth-1,obj_particle)){
					sprite_index=spr_spark;
				}
			}
		}
		else{
			switch(item){
				case 0: //sword
					with(other){
						process_damage(other.dmg);
					}
				break;
			}//effect of item
		}
	}
}