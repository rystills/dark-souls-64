void bhv_arrowTrapArrow_init(void) {
}

void bhv_arrowTrapArrow_loop(void) {
	o->oForwardVel = 100;
	o->oMoveAngleYaw = -0x4000;
	if (o->oTimer > 80) {
	    mark_object_for_deletion(o);
	}
}