/// @description step
///--------------------------------------------------------------------------------
/// Version History
/// 1.0 AT Initial Version
///================================================================================

if (keyboard_check(vk_escape)) {
	game_end();
}

var blueCount = 0;
var whiteCount = 0;

if (instance_exists(objBrick)) {
	with (objBrick) {
		if (myColour == c_blue) blueCount++;
		if (myColour == c_white) whiteCount++;
	}
}

window_set_caption("Blue:"+string(blueCount)+" - "+string(whiteCount)+":White");