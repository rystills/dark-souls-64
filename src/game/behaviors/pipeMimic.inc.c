void bhv_pipeMimic_init(void) {
    // use gravity to record state the mimic is stationary
	o->oGravity = 0;
}

void bhv_pipeMimic_loop(void) {
	// if mario enters the inside of the pipe mimic, start the death sequence
	if (o->oGravity == 0 && is_point_within_radius_of_mario(o->oPosX, o->oPosY-100, o->oPosZ, 110) != 0)
        o->oGravity = 1;
    if (o->oGravity == 1) {
        if (gMarioStates[0].health >= 0x100) {
            gMarioStates[0].hurtCounter = 25;
            gMarioStates[0].action = ACT_TWIRLING;
            spawn_object_relative(0, RandomU16()/325 - 100, 100, RandomU16()/325 - 100, o, RandomU16() >= 32768 ? MODEL_RED_FLAME : MODEL_BLUE_FLAME, bhvFlame);
        }
        else {
            o->oGravity = 2;
            gMarioStates[0].action = ACT_WATER_DEATH; 
        }
    }
}