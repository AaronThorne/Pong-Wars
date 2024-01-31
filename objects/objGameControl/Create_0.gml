/// @description Setup
///--------------------------------------------------------------------------------
/// Version History
/// 1.0 AT Initial Version
///================================================================================

randomize();

// Create Bricks.
var sprSize = sprite_get_width(sprBrickWhite);
var newBrick, newBall;

for (y = 0; y < (room_height/sprSize); y++) {
	for (x = 0; x < ((room_width/2)/sprSize); x++) {
		newBrick = instance_create_layer(x*sprSize,y*sprSize,"BrickObjects",objBrick);
		newBrick.myColour = c_white;
		newBrick.image_blend = c_white;
		
		newBrick = instance_create_layer((room_width/2)+(x*sprSize),y*sprSize,"BrickObjects",objBrick);
		newBrick.myColour = c_blue;
		newBrick.image_blend = c_blue;
	}
}

// Create Balls.
newBall = instance_create_layer((room_width/4)*3,room_height/2,"BallObjects",objBall);
newBall.myColour = c_blue;
newBall.image_blend = c_navy;
newBall.ballColour = c_navy;

newBall = instance_create_layer((room_width/4)*1,room_height/2,"BallObjects",objBall);
newBall.myColour = c_white;
newBall.image_blend = c_dkgray;
newBall.ballColour = c_dkgray;
