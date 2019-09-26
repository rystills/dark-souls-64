void bhv_bonfire_init(void) {
    // use gravity to record state since the bonfire is stationary
	o->oGravity = 0;
	o->oInteractionSubtype = INT_SUBTYPE_NPC;
}

void bhv_bonfire_loop(void) {
	// check if mario interacted with the bonfire
	if (o->oInteractStatus == INT_STATUS_INTERACTED) {
		// end the interaction now that we're ready to process it
        set_mario_npc_dialog(0);
        o->oInteractStatus = 0;

        if (o->oGravity == 0) {
        	// first time using this bonfire: light it
        	spawn_object_relative(0, 0, 0, 0, o, MODEL_RED_FLAME, bhvBonfireFlame);
        	o->oGravity = 1;
        	play_sound(SOUND_CH6_HOWLINGWIND, gDefaultSoundArgs);
        	set_mario_action(&gMarioStates[0],ACT_PLACING_DOWN,0);
        }
        else {
        	// bonfire already lit: rest at it
        	gMarioStates[0].healCounter = 25;
        	PlaySound2(SOUND_GENERAL_HEARTSPIN);
        	set_mario_action(&gMarioStates[0],ACT_SLEEPING,0);
        }
    }
}


//u8 starFlags;
//starFlags = save_file_get_star_flags(gCurrSaveFileNum - 1, -1);
//EXTRA ARG