void bhv_arrowTrapArrow_init(void) {
}

void bhv_arrowTrapArrow_loop(void) {
	o->oForwardVel = 100;
	o->oMoveAngleYaw = -0x4000;
	// play the shooting sound on the frame where the arrows pop out of the wall
	if (o->oPosX < 8200 && o->oPosX >= 8100) {
		PlaySound2(SOUND_OBJECT_MRISHOOT);
	}
	// destroy the arrows after a few seconds
	if (o->oTimer > 90) {
	    mark_object_for_deletion(o);
	}
}