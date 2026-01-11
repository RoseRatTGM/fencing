///@desc initialize
depth=0;
x=rW*.5;

body=[
[0,0,0], //left
[2,1,1], //middle
[0,0,0] //right
//top middle bottom
];
//0=nothing, 1=vulnerable, 2=armor

weap=instance_create_depth(x,y,depth-1,obj_nme_weap);
weapTimer=0; //how many timer loops have happened
weapThresh=8; //how many timer loops to attack
alarm[0]=1;
//weapon
hp=2;
itemCd=0;

process_damage=function(dmg){
	hp-=dmg;
	
	if(hp<=0){
		instance_destroy();
	}
}