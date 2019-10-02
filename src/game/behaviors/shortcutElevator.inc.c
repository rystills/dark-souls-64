#define elevatorSpeed 10
#define elevatorMaxY 1500
#define elevatorMinY 0
void bhv_shortcutElevator_init(void) {
	// once we've unlocked the elevator, it will always run
	o->oAction =  (save_file_get_flags() & SAVE_FLAG_MOAT_DRAINED) ? 1 : 0;
}

void bhv_shortcutElevator_loop(void) {
	// move down
	if (o->oAction == 1) {
		PlaySound(SOUND_ENVIRONMENT_ELEVATOR1);
		o->oPosY -= elevatorSpeed;
		if (o->oPosY <= elevatorMinY) {
			o->oPosY = elevatorMinY;
			o->oAction = 2;
		}
	}
	// move up
	else if (o->oAction == 2) {
		PlaySound(SOUND_ENVIRONMENT_ELEVATOR1);
		o->oPosY += elevatorSpeed;
		if (o->oPosY >= elevatorMaxY) {
			o->oPosY = elevatorMaxY;
			o->oAction = 1;
		}
	}

	// activate once mario stands on us
	else {
		if (obj_is_mario_on_platform()) {
			// use the moat drain flag to store the elevator state, so once mario unlocks it, it becomes a permanent shortcut
			o->oAction = 1;
			save_file_set_flags(SAVE_FLAG_MOAT_DRAINED);
		}
	}
}