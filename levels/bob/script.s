script_func_local_1:
    object /*model*/ MODEL_PIPEMIMIC, /*pos*/ 277,  140,  -1663, /*angle*/ 0, 135, 0,  /*behParam*/ 0x00000000, /*beh*/ bhvPipeMimic
    object /*model*/ MODEL_BONFIRE, /*pos*/ 277,  40,  -1263, /*angle*/ 0, 135, 0,  /*behParam*/ 0x00000000, /*beh*/ bhvBonfire
    return

glabel level_bob_entry
    init_level
    load_mio0         /*seg*/ 0x07, /*romStart*/ _bob_segment_7SegmentRomStart, /*romEnd*/ _bob_segment_7SegmentRomEnd
    load_mio0_texture /*seg*/ 0x09, /*romStart*/ _generic_mio0SegmentRomStart, /*romEnd*/ _generic_mio0SegmentRomEnd
    load_mio0         /*seg*/ 0x0A, /*romStart*/ _wdw_skybox_mio0SegmentRomStart, /*romEnd*/ _wdw_skybox_mio0SegmentRomEnd
    load_mio0         /*seg*/ 0x05, /*romStart*/ _group3_mio0SegmentRomStart, /*romEnd*/ _group3_mio0SegmentRomEnd
    load_raw          /*seg*/ 0x0C, /*romStart*/ _group3_geoSegmentRomStart,  /*romEnd*/ _group3_geoSegmentRomEnd
    load_mio0         /*seg*/ 0x06, /*romStart*/ _group14_mio0SegmentRomStart, /*romEnd*/ _group14_mio0SegmentRomEnd
    load_raw          /*seg*/ 0x0D, /*romStart*/ _group14_geoSegmentRomStart,  /*romEnd*/ _group14_geoSegmentRomEnd
    load_mio0         /*seg*/ 0x08, /*romStart*/ _common0_mio0SegmentRomStart, /*romEnd*/ _common0_mio0SegmentRomEnd
    load_raw          /*seg*/ 0x0F, /*romStart*/ _common0_geoSegmentRomStart,  /*romEnd*/ _common0_geoSegmentRomEnd
    alloc_level_pool
    mario /*model*/ MODEL_MARIO, /*behParam*/ 0x00000001, /*beh*/ bhvMario
    jump_link /*target*/ script_func_global_1
    jump_link /*target*/ script_func_global_4
    jump_link /*target*/ script_func_global_15
    load_model_from_geo /*model*/ MODEL_BOB_BUBBLY_TREE,      /*geo*/ bubbly_tree_geo
    load_model_from_geo /*model*/ MODEL_BOB_CHAIN_CHOMP_GATE, /*geo*/ bob_geo_000440
    load_model_from_geo /*model*/ MODEL_BOB_SEESAW_PLATFORM,  /*geo*/ bob_geo_000458
    load_model_from_geo /*model*/ MODEL_BOB_BARS_GRILLS,      /*geo*/ bob_geo_000470
    load_model_from_geo /*model*/ MODEL_PIPEMIMIC,            /*geo*/ pipeMimic_geo
    load_model_from_geo /*model*/ MODEL_BONFIRE,            /*geo*/ bonfire_geo

    area /*index*/ 1, /*geo*/ bob_geo_000488
        object /*model*/ MODEL_NONE, /*pos*/ 0,  500,  0, /*angle*/ 0, 135, 0,  /*behParam*/ 0x000A0000, /*beh*/ bhvWarps74
        object /*model*/ MODEL_NONE, /*pos*/   583,  2683, -5387, /*angle*/ 0, -154, 0, /*behParam*/ 0x000B0000, /*beh*/ bhvFadingWarp
        object /*model*/ MODEL_NONE, /*pos*/  1680,  3835, -5523, /*angle*/ 0, -153, 0, /*behParam*/ 0x000C0000, /*beh*/ bhvFadingWarp
        object /*model*/ MODEL_NONE, /*pos*/ -6612,  1024, -3351, /*angle*/ 0, 107, 0,  /*behParam*/ 0x000D0000, /*beh*/ bhvFadingWarp
        object /*model*/ MODEL_NONE, /*pos*/  1980,   768,  6618, /*angle*/ 0, -151, 0, /*behParam*/ 0x000E0000, /*beh*/ bhvFadingWarp
        jump_link /*target*/ script_func_local_1
        warp_node /*id*/ 0x0A, /*destLevel*/ 0x09, /*destArea*/ 0x01, /*destNode*/ 0x0A, /*unk6*/ 0x0000
        warp_node /*id*/ 0x0B, /*destLevel*/ 0x09, /*destArea*/ 0x01, /*destNode*/ 0x0C, /*unk6*/ 0x0000
        warp_node /*id*/ 0x0C, /*destLevel*/ 0x09, /*destArea*/ 0x01, /*destNode*/ 0x0B, /*unk6*/ 0x0000
        warp_node /*id*/ 0x0D, /*destLevel*/ 0x09, /*destArea*/ 0x01, /*destNode*/ 0x0E, /*unk6*/ 0x0000
        warp_node /*id*/ 0x0E, /*destLevel*/ 0x09, /*destArea*/ 0x01, /*destNode*/ 0x0D, /*unk6*/ 0x0000
        warp_node /*id*/ 0xF0, /*destLevel*/ 0x06, /*destArea*/ 0x01, /*destNode*/ 0x32, /*unk6*/ 0x0000
        warp_node /*id*/ 0xF1, /*destLevel*/ 0x06, /*destArea*/ 0x01, /*destNode*/ 0x64, /*unk6*/ 0x0000
        terrain /*terrainData*/ bob_collision
        macro_objects /*objList*/ bob_seg7_macro_objs	
        show_dialog /*unk2*/ 0x00, /*dialogid*/ 0x00
        set_background_music /*unk2*/ 0x0000, /*seq*/ SEQ_LEVEL_UNDERGROUND
        terrain_type /*terrainType*/ TERRAIN_GRASS
    end_area

    free_level_pool
    mario_pos /*area*/ 1, /*yaw*/ 135, /*pos*/ 0, 500, 0
    call /*arg*/ 0, /*func*/ lvl_init_or_update
    call_loop /*arg*/ 1, /*func*/ lvl_init_or_update
    clear_level
    sleep_before_exit /*frames*/ 1
    exit
