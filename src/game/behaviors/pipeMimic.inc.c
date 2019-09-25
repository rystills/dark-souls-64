struct ObjectHitbox sPipeMimicHitbox = {
    /* interactType:      */ 0,
    /* downOffset:        */ 0,
    /* damageOrCoinValue: */ 0,
    /* health:            */ 0,
    /* numLootCoins:      */ 0,
    /* radius:            */ 50,
    /* height:            */ 50,
    /* hurtboxRadius:     */ 50,
    /* hurtboxHeight:     */ 50,
};

void bhv_pipeMimic_init(void) {
	set_object_hitbox(o, &sPipeMimicHitbox);
}

void bhv_pipeMimic_loop(void) {
	// if mario enters the inside of the pipe mimic
	if (is_point_within_radius_of_mario(o->oPosX, o->oPosY-100, o->oPosZ, 130) != 0) {
		// TODO: attack mario (automatic death?)
		o->oFaceAngleYaw += 1000;
	}
}