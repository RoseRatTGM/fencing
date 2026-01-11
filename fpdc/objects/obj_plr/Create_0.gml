///@desc 
inpArr=[];
hPos=[rW*.5,rH*.5]; //hand position
hQuadrant=[1,1]; //which quadrant is your hand in?
active=0; //is the held item being used?
item=0; //which item held?
dmg=1;

depth=-99;

state_combat=function(){
	var xDir=inpArr[0];
	var yDir=inpArr[1];
	var use=inpArr[2];
	//inputs
	
	hQuadrant[0]=1+xDir;
	hQuadrant[1]=1+yDir;
	//hand position
	hPos[0]=lerp(hPos[0],(rW*.5*hQuadrant[0]),.75);
	hPos[0]=clamp(hPos[0],rW*.1,rW*.9);
	hPos[1]=lerp(hPos[1],(rH*.5*hQuadrant[1]),.75);
	hPos[1]=clamp(hPos[1],rH*.1,rH*.9);
	//visual position
	
	if(use&&!active){
		active=15;
	}//use item/attack
}

state=state_combat;