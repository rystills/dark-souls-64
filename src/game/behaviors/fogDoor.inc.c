void bhv_fogDoor_init(void) {

}

void bhv_fogDoor_transitionCompleteCheck(s32 sp18) {
    set_obj_animation_and_sound_state(sp18);
    if (func_8029F788()) {
        o->oAction = 0;
        // switch to boss music upon finishing fog door transition
        func_802491FC(0);
        set_background_music(0x0002, SEQ_LEVEL_BOSS_KOOPA_FINAL);
    }
}

void bhv_fogDoor_transitionUpdate(void) {
	if (o->oTimer == 8)
        PlaySound2(SOUND_OBJECT_DIVINGINWATER);
}

void bhv_fogDoor_loop(void) {
	// begin entering the fog door
    if (obj_clear_interact_status_flag(0x20000))
        obj_change_action(1);
    
    if (o->oAction == 0)
    	set_obj_animation_and_sound_state(0);
    else {
    	// disable interaction upon entering the fog door
    	o->oInteractType = 0;
    	bhv_fogDoor_transitionCompleteCheck(1);
    	bhv_fogDoor_transitionUpdate();
    }        
    load_object_collision_model();
}