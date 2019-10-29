#define sx 11569
#define sy 5215
#define sz 2917
#define bulletSpacing 1600

extern u16 sCurrentMusic;

static struct ObjectHitbox sSmoughMassHitbox = {
    /* interactType:      */ INTERACT_BOUNCE_TOP,
    /* downOffset:        */ 0,
    /* damageOrCoinValue: */ 1,
    /* health:            */ 10,
    /* numLootCoins:      */ 0,
    /* radius:            */ 158,
    /* height:            */ 110,
    /* hurtboxRadius:     */ 92,
    /* hurtboxHeight:     */ 88,
};

void bhv_smoughMass_init(void) {
	set_object_hitbox(o, &sSmoughMassHitbox);
	o->oTimer = -2;
}

void bhv_smoughMass_loop(void) {
	s32 i;
	struct Object *particle;

	// become active when the boss music begins to play
	if (sCurrentMusic != SEQ_LEVEL_BOSS_KOOPA_FINAL && o->oTimer < 0) 
		o->oTimer = -2;
	else if (o->oTimer < 0)
		o->oTimer = 71;

	else if (o->oTimer == 130) {
		// choose a random location in a square centered around the arena (~1900 diameter = ~2700 max distance due to diagonal length of square)
		o->oTimer = 0;
		o->oPosX = sx + RandomU16() / 17 - 1927;
		o->oPosY = 5015;
		o->oPosZ = sz + RandomU16() / 17 - 1927;
		// process damage if we got hit before burrowing
		if (o->oInteractStatus != 0 && !(o->oInteractStatus & INT_STATUS_ATTACKED_MARIO)) {
			--o->oHealth;
		}
		o->oInteractStatus = 0;
		
	}
	// warp to end cake shortly after being defeated
	else if (o->oTimer == 160)
		initiate_warp(COURSE_CAKE_END, 1, 0x1F, 0);

	// attack 3 times after resurfacing
	else if (o->oTimer == 20 || o->oTimer == 45 || o->oTimer == 70) {
		o->oMoveAngleYaw = angle_to_object(o, gMarioObject) - bulletSpacing;
	    for (i = 0; i < 3; ++i) {
		    particle = spawn_object(o, MODEL_PURPLE_MARBLE, bhvMrIParticle);
		    particle->oPosY += 50.0f;
		    particle->oPosX += sins(o->oMoveAngleYaw) * 90.0f;
		    particle->oPosZ += coss(o->oMoveAngleYaw) * 90.0f;
		    o->oMoveAngleYaw += bulletSpacing;
	    }
	    o->oMoveAngleYaw = 0;
	    PlaySound2(SOUND_OBJECT_MRISHOOT);
	}
	
	// transition into/out of the ground
	else if (o->oTimer <= 10)
		o->oPosY += 20;
	else if (o->oTimer >= 120)
		o->oPosY -= 20;

	if (o->oInteractStatus != 0 && o->oTimer < 131) {
		// when interacting: if we got hit at 1 hp, die immediately. otherwise, apply damage and reset interact status after burrowing
		if (!(o->oInteractStatus & INT_STATUS_ATTACKED_MARIO)) {
			PlaySound2(SOUND_OBJECT_BOWSERTAILPICKUP);
			if (o->oHealth == 1) {
				o->oTimer = 131;
				func_802491FC(0);
	        	// spawn purple particles on death (copied from MrI) 
	        	for (i = 0; i < 10; i++)
	        		spawn_object(o, MODEL_PURPLE_MARBLE, bhvPurpleParticle);
	        	// move into the ground during death
	        	o->oPosY = 5015;
	        }
        }
        if (o->oTimer < 119)
        	o->oTimer = 119;
	}

	// fudge the timings a bit so that sounds from the same bank obstruct each other as little as possible
	if (o->oTimer == 118)
		PlaySound(SOUND_OBJECT_PIRANHAPLANTAPPEAR);
}