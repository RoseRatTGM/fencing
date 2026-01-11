///@desc 
var refInp=obj_cam.inpArr;
inpArr=[
refInp[0]-refInp[1], //horizontal input
refInp[2]-refInp[3], //vertical input
refInp[4], //attack/use
];

state();

active=max(active-global.tFactor,0);