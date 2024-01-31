/// @description Ball To Brick
///--------------------------------------------------------------------------------
/// Version History
/// 1.0 AT Initial Version
///================================================================================

if (other.myColour != self.myColour) {
	other.myColour = self.myColour;

	move_bounce_solid(false);
}
