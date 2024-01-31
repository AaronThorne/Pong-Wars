/// @description Update
///--------------------------------------------------------------------------------
/// Version History
/// 1.0 AT Initial Version
///================================================================================

#macro checkdist 20

objectUp = collision_line(x,y,x,y-checkdist,objBrick,false,true);
objectDown = collision_line(x,y,x,y+checkdist,objBrick,false,true);
objectRight = collision_line(x,y,x+checkdist,y,objBrick,false,true);
objectLeft = collision_line(x,y,x-checkdist,y,objBrick,false,true);

if (objectUp != noone) {
	if (objectUp.myColour != myColour) {
		objectUp.solid = true;
	}
}

if (objectDown != noone) {
	if (objectDown.myColour != myColour) {
		objectDown.solid = true;
	}
}

if (objectRight != noone) {
	if (objectRight.myColour != myColour) {
		objectRight.solid = true;
	}
}

if (objectLeft != noone) {
	if (objectLeft.myColour != myColour) {
		objectLeft.solid = true;
	}
}
