void bhv_unstablePlatform_init(void) {
}

void bhv_unstablePlatform_loop(void) {
	switch (o->oAction) {
        case 0:
            if (gMarioObject->platform == o) {
                o->oAction++;
                //o->OBJECT_FIELD_S32(0x1B) = RandomSign() * 0x80;
            }
            break;
        case 1:
            obj_update_floor_height();
            if (o->oTimer > 1) {
                o->oAction++;
                PlaySound2(SOUND_GENERAL_PLATFORM);
            }
            break;
        case 2:
            //if (o->oAngleVelPitch < 0x400)
            //    o->oAngleVelPitch += 0x80;
            //if (o->oAngleVelRoll > -0x400 && o->oAngleVelRoll < 0x400)
            //    o->oAngleVelRoll += o->OBJECT_FIELD_S32(0x1B); // acceleraration?
            o->oGravity = -1.0f;
            //obj_rotate_face_angle_using_vel();
            obj_move_using_fvel_and_gravity();
            if (o->oPosY < o->oFloorHeight - 2000.0f) {
                o->oAction++;
                mark_object_for_deletion(o);
            }
            break;
        case 3:
            break;
    }
    //if (o->parentObj->oAction == 3)
     //   mark_object_for_deletion(o);
}