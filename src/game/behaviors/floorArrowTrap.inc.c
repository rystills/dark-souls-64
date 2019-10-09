void bhv_floorArrowTrap_init(void) {
}

void bhv_floorArrowTrap_loop(void) {
    int i;
    switch (o->oAction) {
        case 0:
            if (gMarioObject->platform == o) {
                o->oAction = 2;
                PlaySound2(SOUND_GENERAL_SWITCH1);
                o->oGravity = -.25f;
            }
            break;
        case 2:
            o->oGravity -= .25f;
            obj_move_using_fvel_and_gravity();
            if (o->oGravity < -3.0f) {
                o->oGravity = 0;
                o->oAction++;
                for (i = 0; i < 3; ++i)
                    spawn_object_relative(0, 2420 + 1000*i, 400, 0, o, MODEL_ARROWTRAPARROW, bhvArrowTrapArrow);
                mark_object_for_deletion(o);
            }
            break;
        case 3:
            break;
    }
}