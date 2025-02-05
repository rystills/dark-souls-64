/* Generated by modconv 2 */

pipeMimic_ambient_light:
.byte 0x66, 0x66, 0x66, 0x00, 0x66, 0x66, 0x66, 0x00
pipeMimic_diffuse_light:
.byte 0xff, 0xff, 0xff, 0x00, 0xff, 0xff, 0xff, 0x00
.byte 0x28, 0x28, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00

pipeMimic_texture_0:
.incbin "actors/pipeMimic/pipeMimic.rgba16"

pipeMimic_texture_1:
.incbin "actors/pipeMimic/chain.rgba16"

pipeMimic_vertex_0: /* 8 vertices out of 15 */
vertex    203,      0,      0,   1504,  -1842,   0x62, 0xb0, 0x00, 0xff
vertex    143,      0,   -143,   1759,  -1842,   0x45, 0xb0, 0xbb, 0xff
vertex    143,     87,   -143,   1759,  -2574,   0x59, 0x00, 0xa7, 0xff
vertex    203,     87,      0,   1504,  -2574,   0x7f, 0x00, 0x00, 0xff
vertex      0,      0,   -203,   2015,  -1842,   0x00, 0xb0, 0x9e, 0xff
vertex      0,     87,   -203,   2015,  -2574,   0x00, 0x00, 0x81, 0xff
vertex   -143,      0,   -143,   2272,  -1842,   0xbb, 0xb0, 0xbb, 0xff
vertex   -143,     87,   -143,   2272,  -2574,   0xa7, 0x00, 0xa7, 0xff

pipeMimic_vertex_1: /* 9 vertices out of 15 */
vertex   -143,     87,   -143,   2272,  -2574,   0xa7, 0x00, 0xa7, 0xff
vertex      0,     87,   -203,   2015,  -2574,   0x00, 0x00, 0x81, 0xff
vertex      0,      0,   -203,   2015,  -1842,   0x00, 0xb0, 0x9e, 0xff
vertex   -143,      0,   -143,    223,  -1842,   0xbb, 0xb0, 0xbb, 0xff
vertex   -203,      0,      0,    479,  -1842,   0x9e, 0xb0, 0x00, 0xff
vertex   -203,     87,      0,    479,  -2574,   0x81, 0x00, 0x00, 0xff
vertex   -143,     87,   -143,    223,  -2574,   0xa7, 0x00, 0xa7, 0xff
vertex   -143,      0,    143,    736,  -1842,   0xbb, 0xb0, 0x45, 0xff
vertex   -143,     87,    143,    736,  -2574,   0xa7, 0x00, 0x59, 0xff

pipeMimic_vertex_2: /* 8 vertices out of 15 */
vertex   -143,      0,    143,    736,  -1842,   0xbb, 0xb0, 0x45, 0xff
vertex      0,      0,    203,    991,  -1842,   0x00, 0xb0, 0x62, 0xff
vertex      0,     87,    203,    991,  -2574,   0x00, 0x00, 0x7f, 0xff
vertex   -143,     87,    143,    736,  -2574,   0xa7, 0x00, 0x59, 0xff
vertex    143,      0,    143,   1247,  -1842,   0x45, 0xb0, 0x45, 0xff
vertex    143,     87,    143,   1247,  -2574,   0x59, 0x00, 0x59, 0xff
vertex    203,      0,      0,   1504,  -1842,   0x62, 0xb0, 0x00, 0xff
vertex    203,     87,      0,   1504,  -2574,   0x7f, 0x00, 0x00, 0xff

pipeMimic_vertex_3: /* 9 vertices out of 15 */
vertex    203,     87,      0,   1504,  -2574,   0x7f, 0x00, 0x00, 0xff
vertex    143,     87,    143,   1247,  -2574,   0x59, 0x00, 0x59, 0xff
vertex    143,      0,    143,   1247,  -1842,   0x45, 0xb0, 0x45, 0xff
vertex    143,     87,   -143,    267,  -1780,   0x00, 0x7f, 0x00, 0xff
vertex    103,     87,   -103,    470,  -1577,   0x00, 0x7f, 0x00, 0xff
vertex    146,     87,      0,    992,  -1793,   0x00, 0x7f, 0x00, 0xff
vertex    203,     87,      0,    992,  -2080,   0x00, 0x7f, 0x00, 0xff
vertex      0,     87,   -203,    -32,  -1056,   0x00, 0x7f, 0x00, 0xff
vertex      0,     87,   -146,    254,  -1056,   0x00, 0x7f, 0x00, 0xff

pipeMimic_vertex_4: /* 8 vertices out of 15 */
vertex   -143,     87,   -143,    267,   -331,   0x00, 0x7f, 0x00, 0xff
vertex   -103,     87,   -103,    470,   -534,   0x00, 0x7f, 0x00, 0xff
vertex      0,     87,   -146,    254,  -1056,   0x00, 0x7f, 0x00, 0xff
vertex      0,     87,   -203,    -32,  -1056,   0x00, 0x7f, 0x00, 0xff
vertex   -203,     87,      0,    991,    -32,   0x00, 0x7f, 0x00, 0xff
vertex   -146,     87,      0,    991,   -318,   0x00, 0x7f, 0x00, 0xff
vertex   -143,     87,    143,   1716,   -331,   0x00, 0x7f, 0x00, 0xff
vertex   -103,     87,    103,   1513,   -534,   0x00, 0x7f, 0x00, 0xff

pipeMimic_vertex_5: /* 8 vertices out of 15 */
vertex   -146,     87,      0,    991,   -318,   0x00, 0x7f, 0x00, 0xff
vertex   -203,     87,      0,    991,    -32,   0x00, 0x7f, 0x00, 0xff
vertex   -143,     87,    143,   1716,   -331,   0x00, 0x7f, 0x00, 0xff
vertex      0,     87,    203,   2016,  -1055,   0x00, 0x7f, 0x00, 0xff
vertex      0,     87,    146,   1729,  -1055,   0x00, 0x7f, 0x00, 0xff
vertex   -103,     87,    103,   1513,   -534,   0x00, 0x7f, 0x00, 0xff
vertex    143,     87,    143,   1716,  -1780,   0x00, 0x7f, 0x00, 0xff
vertex    103,     87,    103,   1513,  -1577,   0x00, 0x7f, 0x00, 0xff

pipeMimic_vertex_6: /* 9 vertices out of 15 */
vertex    203,     87,      0,    992,  -2080,   0x00, 0x7f, 0x00, 0xff
vertex    146,     87,      0,    992,  -1793,   0x00, 0x7f, 0x00, 0xff
vertex    103,     87,    103,   1513,  -1577,   0x00, 0x7f, 0x00, 0xff
vertex    143,     87,    143,   1716,  -1780,   0x00, 0x7f, 0x00, 0xff
vertex    146,   -147,      0,   1504,   -609,   0x9e, 0x50, 0x00, 0xff
vertex    146,     87,      0,   1504,  -2574,   0x81, 0x00, 0x00, 0xff
vertex    103,     87,   -103,   1759,  -2574,   0xa7, 0x00, 0x59, 0xff
vertex    103,   -147,   -103,   1759,   -609,   0xbb, 0x50, 0x45, 0xff
vertex      0,     87,   -146,   2015,  -2574,   0x00, 0x00, 0x7f, 0xff

pipeMimic_vertex_7: /* 9 vertices out of 15 */
vertex      0,     87,   -146,   2015,  -2574,   0x00, 0x00, 0x7f, 0xff
vertex      0,   -147,   -146,   2015,   -609,   0x00, 0x50, 0x62, 0xff
vertex    103,   -147,   -103,   1759,   -609,   0xbb, 0x50, 0x45, 0xff
vertex      0,   -147,   -146,    -32,   -609,   0x00, 0x50, 0x62, 0xff
vertex      0,     87,   -146,    -32,  -2574,   0x00, 0x00, 0x7f, 0xff
vertex   -103,     87,   -103,    223,  -2574,   0x59, 0x00, 0x59, 0xff
vertex   -103,   -147,   -103,    223,   -609,   0x45, 0x50, 0x45, 0xff
vertex   -146,     87,      0,    480,  -2574,   0x7f, 0x00, 0x00, 0xff
vertex   -146,   -147,      0,    480,   -609,   0x62, 0x50, 0x00, 0xff

pipeMimic_vertex_8: /* 7 vertices out of 15 */
vertex   -146,   -147,      0,    480,   -609,   0x62, 0x50, 0x00, 0xff
vertex   -146,     87,      0,    480,  -2574,   0x7f, 0x00, 0x00, 0xff
vertex   -103,     87,    103,    736,  -2574,   0x59, 0x00, 0xa7, 0xff
vertex   -103,   -147,    103,    736,   -609,   0x45, 0x50, 0xbb, 0xff
vertex      0,     87,    146,    991,  -2574,   0x00, 0x00, 0x81, 0xff
vertex      0,   -147,    146,    991,   -609,   0x00, 0x50, 0x9e, 0xff
vertex    103,     87,    103,   1247,  -2574,   0xa7, 0x00, 0xa7, 0xff

pipeMimic_vertex_9: /* 10 vertices out of 15 */
vertex    103,     87,    103,   1247,  -2574,   0xa7, 0x00, 0xa7, 0xff
vertex    103,   -147,    103,   1247,   -609,   0xbb, 0x50, 0xbb, 0xff
vertex      0,   -147,    146,    991,   -609,   0x00, 0x50, 0x9e, 0xff
vertex    146,     87,      0,   1504,  -2574,   0x81, 0x00, 0x00, 0xff
vertex    146,   -147,      0,   1504,   -609,   0x9e, 0x50, 0x00, 0xff
vertex      0,   -147,   -146,    254,  -1056,   0x00, 0x50, 0x62, 0xff
vertex   -103,   -147,   -103,    470,   -534,   0x45, 0x50, 0x45, 0xff
vertex   -146,   -147,      0,    991,   -318,   0x62, 0x50, 0x00, 0xff
vertex   -103,   -147,    103,   1513,   -534,   0x45, 0x50, 0xbb, 0xff
vertex      0,   -147,    146,   1729,  -1055,   0x00, 0x50, 0x9e, 0xff

pipeMimic_vertex_10: /* 9 vertices out of 15 */
vertex      0,   -147,    146,   1729,  -1055,   0x00, 0x50, 0x9e, 0xff
vertex    103,   -147,    103,   1513,  -1577,   0xbb, 0x50, 0xbb, 0xff
vertex    146,   -147,      0,    992,  -1793,   0x9e, 0x50, 0x00, 0xff
vertex   -146,   -147,      0,    991,   -318,   0x62, 0x50, 0x00, 0xff
vertex      0,   -147,   -146,    254,  -1056,   0x00, 0x50, 0x62, 0xff
vertex    103,   -147,   -103,    470,  -1577,   0xbb, 0x50, 0x45, 0xff
vertex    175,   -157,      0,   1504,   -526,   0x7f, 0x00, 0x00, 0xff
vertex     87,   -157,   -151,   1845,   -526,   0x3f, 0x00, 0x93, 0xff
vertex     87,      0,   -151,   1845,  -1842,   0x22, 0x96, 0xc5, 0xff

pipeMimic_vertex_11: /* 10 vertices out of 15 */
vertex     87,      0,   -151,   1845,  -1842,   0x22, 0x96, 0xc5, 0xff
vertex    175,      0,      0,   1504,  -1842,   0x45, 0x96, 0x00, 0xff
vertex    175,   -157,      0,   1504,   -526,   0x7f, 0x00, 0x00, 0xff
vertex     87,   -157,   -151,   1845,   -526,   0x3f, 0x00, 0x93, 0xff
vertex    -87,   -157,   -151,   2186,   -526,   0xc1, 0x00, 0x93, 0xff
vertex    -87,      0,   -151,   2186,  -1842,   0xde, 0x96, 0xc5, 0xff
vertex    -87,   -157,   -151,    138,   -526,   0xc1, 0x00, 0x93, 0xff
vertex   -175,   -157,      0,    479,   -526,   0x81, 0x00, 0x00, 0xff
vertex   -175,      0,      0,    479,  -1842,   0xbb, 0x96, 0x00, 0xff
vertex    -87,      0,   -151,    138,  -1842,   0xde, 0x96, 0xc5, 0xff

pipeMimic_vertex_12: /* 8 vertices out of 15 */
vertex   -175,   -157,      0,    479,   -526,   0x81, 0x00, 0x00, 0xff
vertex    -87,   -157,    151,    821,   -526,   0xc1, 0x00, 0x6d, 0xff
vertex    -87,      0,    151,    821,  -1842,   0xde, 0x96, 0x3b, 0xff
vertex   -175,      0,      0,    479,  -1842,   0xbb, 0x96, 0x00, 0xff
vertex     87,   -157,    151,   1162,   -526,   0x3f, 0x00, 0x6d, 0xff
vertex     87,      0,    151,   1162,  -1842,   0x22, 0x96, 0x3b, 0xff
vertex    175,   -157,      0,   1504,   -526,   0x7f, 0x00, 0x00, 0xff
vertex    175,      0,      0,   1504,  -1842,   0x45, 0x96, 0x00, 0xff

pipeMimic_vertex_13: /* 9 vertices out of 15 */
vertex    175,      0,      0,   1504,  -1842,   0x45, 0x96, 0x00, 0xff
vertex     87,      0,    151,   1162,  -1842,   0x22, 0x96, 0x3b, 0xff
vertex     87,   -157,    151,   1162,   -526,   0x3f, 0x00, 0x6d, 0xff
vertex      0,      0,   -203,    -32,  -1056,   0x00, 0xb0, 0x9e, 0xff
vertex    143,      0,   -143,    267,  -1780,   0x45, 0xb0, 0xbb, 0xff
vertex     87,      0,   -151,    227,  -1497,   0x22, 0x96, 0xc5, 0xff
vertex    -87,      0,   -151,    227,   -614,   0xde, 0x96, 0xc5, 0xff
vertex    175,      0,      0,    992,  -1938,   0x45, 0x96, 0x00, 0xff
vertex    203,      0,      0,    992,  -2080,   0x62, 0xb0, 0x00, 0xff

pipeMimic_vertex_14: /* 7 vertices out of 15 */
vertex    175,      0,      0,    992,  -1938,   0x45, 0x96, 0x00, 0xff
vertex    203,      0,      0,    992,  -2080,   0x62, 0xb0, 0x00, 0xff
vertex    143,      0,    143,   1716,  -1780,   0x45, 0xb0, 0x45, 0xff
vertex     87,      0,    151,   1756,  -1497,   0x22, 0x96, 0x3b, 0xff
vertex      0,      0,    203,   2016,  -1055,   0x00, 0xb0, 0x62, 0xff
vertex    -87,      0,    151,   1756,   -614,   0xde, 0x96, 0x3b, 0xff
vertex   -143,      0,    143,   1716,   -331,   0xbb, 0xb0, 0x45, 0xff

pipeMimic_vertex_15: /* 7 vertices out of 15 */
vertex    -87,      0,    151,   1756,   -614,   0xde, 0x96, 0x3b, 0xff
vertex      0,      0,    203,   2016,  -1055,   0x00, 0xb0, 0x62, 0xff
vertex   -175,      0,      0,    991,   -173,   0xbb, 0x96, 0x00, 0xff
vertex   -143,      0,    143,   1716,   -331,   0xbb, 0xb0, 0x45, 0xff
vertex   -203,      0,      0,    991,    -32,   0x9e, 0xb0, 0x00, 0xff
vertex   -143,      0,   -143,    267,   -331,   0xbb, 0xb0, 0xbb, 0xff
vertex    -87,      0,   -151,    227,   -614,   0xde, 0x96, 0xc5, 0xff

pipeMimic_vertex_16: /* 8 vertices out of 15 */
vertex   -143,      0,   -143,    267,   -331,   0xbb, 0xb0, 0xbb, 0xff
vertex      0,      0,   -203,    -32,  -1056,   0x00, 0xb0, 0x9e, 0xff
vertex    -87,      0,   -151,    227,   -614,   0xde, 0x96, 0xc5, 0xff
vertex    134,   -157,     68,    -32,  -1061,   0xff, 0xff, 0xff, 0xff
vertex    155,   -157,    103,   3702,     -9,   0xff, 0xff, 0xff, 0xff
vertex    171,   -157,     88,   3702,  -1043,   0xff, 0xff, 0xff, 0xff
vertex    124,   -157,     85,    -32,    -27,   0xff, 0xff, 0xff, 0xff
vertex    170,   -157,    129,   6136,     -9,   0xff, 0xff, 0xff, 0xff

pipeMimic_vertex_17: /* 7 vertices out of 15 */
vertex    171,   -157,     88,   3702,  -1043,   0xff, 0xff, 0xff, 0xff
vertex    170,   -157,    129,   6136,     -9,   0xff, 0xff, 0xff, 0xff
vertex    192,   -157,    127,   6136,  -1043,   0xff, 0xff, 0xff, 0xff
vertex    160,   -157,    167,   8570,     -9,   0xff, 0xff, 0xff, 0xff
vertex    183,   -157,    164,   8570,  -1043,   0xff, 0xff, 0xff, 0xff
vertex    160,   -157,    197,  11004,  -1043,   0xff, 0xff, 0xff, 0xff
vertex    144,   -157,    188,  11004,     -9,   0xff, 0xff, 0xff, 0xff

pipeMimic_vertex_18: /* 8 vertices out of 15 */
vertex    133,   -157,    218,  13439,  -1043,   0xff, 0xff, 0xff, 0xff
vertex    160,   -157,    197,  11004,  -1043,   0xff, 0xff, 0xff, 0xff
vertex    144,   -157,    188,  11004,     -9,   0xff, 0xff, 0xff, 0xff
vertex    116,   -157,    209,  13439,     -9,   0xff, 0xff, 0xff, 0xff
vertex    105,   -157,    247,  15873,     -9,   0xff, 0xff, 0xff, 0xff
vertex    125,   -157,    243,  15873,  -1043,   0xff, 0xff, 0xff, 0xff
vertex    132,   -157,    273,  18307,  -1043,   0xff, 0xff, 0xff, 0xff
vertex    113,   -157,    279,  18307,     -9,   0xff, 0xff, 0xff, 0xff

pipeMimic_vertex_19: /* 3 vertices out of 3 */
vertex    105,   -157,    247,  15873,     -9,   0xff, 0xff, 0xff, 0xff
vertex    132,   -157,    273,  18307,  -1043,   0xff, 0xff, 0xff, 0xff
vertex    125,   -157,    243,  15873,  -1043,   0xff, 0xff, 0xff, 0xff

/* Render order: 1 */

glabel pipeMimic_dl_opaque
gsSPClearGeometryMode G_LIGHTING
/* #LIGHTING 02 - Default */
gsDPPipeSync
gsSPSetGeometryMode G_LIGHTING
gsSPNumLights NUMLIGHTS_1
gsSPLight pipeMimic_diffuse_light, 1
gsSPLight pipeMimic_ambient_light, 2
gsDPSetCombineModeLERP G_CCMUX_TEXEL0, G_CCMUX_0, G_CCMUX_SHADE, G_CCMUX_0, G_ACMUX_0, G_ACMUX_0, G_ACMUX_0, G_ACMUX_SHADE, G_CCMUX_TEXEL0, G_CCMUX_0, G_CCMUX_SHADE, G_CCMUX_0, G_ACMUX_0, G_ACMUX_0, G_ACMUX_0, G_ACMUX_SHADE
gsDPSetTextureFilter G_TF_BILERP
gsDPSetTextureLUT G_TT_NONE
gsDPLoadTextureBlock pipeMimic_texture_0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP | G_TX_NOMIRROR,  G_TX_WRAP | G_TX_NOMIRROR, 5, 5, G_TX_NOLOD, G_TX_NOLOD
gsSPTexture -1, -1, 0, 0, 1
gsDPTileSync
gsSPVertex pipeMimic_vertex_0, 8, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 2, 3, 0, 0x00
gsSP1Triangle 1, 4, 5, 0x00
gsSP1Triangle 5, 2, 1, 0x00
gsSP1Triangle 4, 6, 7, 0x00
gsSPVertex pipeMimic_vertex_1, 9, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 3, 4, 5, 0x00
gsSP1Triangle 5, 6, 3, 0x00
gsSP1Triangle 4, 7, 8, 0x00
gsSP1Triangle 8, 5, 4, 0x00
gsSPVertex pipeMimic_vertex_2, 8, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 2, 3, 0, 0x00
gsSP1Triangle 1, 4, 5, 0x00
gsSP1Triangle 5, 2, 1, 0x00
gsSP1Triangle 4, 6, 7, 0x00
gsSPVertex pipeMimic_vertex_3, 9, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 3, 4, 5, 0x00
gsSP1Triangle 5, 6, 3, 0x00
gsSP1Triangle 7, 8, 4, 0x00
gsSP1Triangle 4, 3, 7, 0x00
gsSPVertex pipeMimic_vertex_4, 8, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 2, 3, 0, 0x00
gsSP1Triangle 4, 5, 1, 0x00
gsSP1Triangle 1, 0, 4, 0x00
gsSP1Triangle 6, 7, 5, 0x00
gsSPVertex pipeMimic_vertex_5, 8, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 3, 4, 5, 0x00
gsSP1Triangle 5, 2, 3, 0x00
gsSP1Triangle 6, 7, 4, 0x00
gsSP1Triangle 4, 3, 6, 0x00
gsSPVertex pipeMimic_vertex_6, 9, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 2, 3, 0, 0x00
gsSP1Triangle 4, 5, 6, 0x00
gsSP1Triangle 6, 7, 4, 0x00
gsSP1Triangle 7, 6, 8, 0x00
gsSPVertex pipeMimic_vertex_7, 9, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 3, 4, 5, 0x00
gsSP1Triangle 5, 6, 3, 0x00
gsSP1Triangle 6, 5, 7, 0x00
gsSP1Triangle 7, 8, 6, 0x00
gsSPVertex pipeMimic_vertex_8, 7, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 2, 3, 0, 0x00
gsSP1Triangle 3, 2, 4, 0x00
gsSP1Triangle 4, 5, 3, 0x00
gsSP1Triangle 5, 4, 6, 0x00
gsSPVertex pipeMimic_vertex_9, 10, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 1, 0, 3, 0x00
gsSP1Triangle 3, 4, 1, 0x00
gsSP1Triangle 5, 6, 7, 0x00
gsSP1Triangle 7, 8, 9, 0x00
gsSPVertex pipeMimic_vertex_10, 9, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 3, 0, 2, 0x00
gsSP1Triangle 4, 3, 2, 0x00
gsSP1Triangle 5, 4, 2, 0x00
gsSP1Triangle 6, 7, 8, 0x00
gsSPVertex pipeMimic_vertex_11, 10, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 3, 4, 5, 0x00
gsSP1Triangle 5, 0, 3, 0x00
gsSP1Triangle 6, 7, 8, 0x00
gsSP1Triangle 8, 9, 6, 0x00
gsSPVertex pipeMimic_vertex_12, 8, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 2, 3, 0, 0x00
gsSP1Triangle 1, 4, 5, 0x00
gsSP1Triangle 5, 2, 1, 0x00
gsSP1Triangle 4, 6, 7, 0x00
gsSPVertex pipeMimic_vertex_13, 9, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 3, 4, 5, 0x00
gsSP1Triangle 5, 6, 3, 0x00
gsSP1Triangle 7, 5, 4, 0x00
gsSP1Triangle 4, 8, 7, 0x00
gsSPVertex pipeMimic_vertex_14, 7, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 2, 3, 0, 0x00
gsSP1Triangle 4, 5, 3, 0x00
gsSP1Triangle 3, 2, 4, 0x00
gsSP1Triangle 4, 6, 5, 0x00
gsSPVertex pipeMimic_vertex_15, 7, 0
gsSP1Triangle 0, 1, 1, 0x00
gsSP1Triangle 2, 0, 3, 0x00
gsSP1Triangle 3, 4, 2, 0x00
gsSP1Triangle 2, 4, 5, 0x00
gsSP1Triangle 5, 6, 2, 0x00
gsSPVertex pipeMimic_vertex_16, 8, 0
gsSP1Triangle 0, 1, 1, 0x00
gsSP1Triangle 1, 2, 0, 0x00
gsSPTexture -1, -1, 0, 0, 0
gsDPPipeSync
gsDPSetCombineModeLERP G_CCMUX_0, G_CCMUX_0, G_CCMUX_0, G_CCMUX_SHADE, G_ACMUX_0, G_ACMUX_0, G_ACMUX_0, G_ACMUX_SHADE, G_CCMUX_0, G_CCMUX_0, G_CCMUX_0, G_CCMUX_SHADE, G_ACMUX_0, G_ACMUX_0, G_ACMUX_0, G_ACMUX_SHADE
gsSPSetGeometryMode G_LIGHTING
gsDPSetTextureLUT G_TT_NONE
gsSPEndDisplayList

/* Render order: 4 */

glabel pipeMimic_dl_alpha
gsSPClearGeometryMode G_LIGHTING
gsDPSetDepthSource G_ZS_PIXEL
gsSPVertex pipeMimic_vertex_16, 8, 0
/* #LAYER_4 03 - Default */
gsDPPipeSync
gsDPSetCombineModeLERP G_CCMUX_TEXEL0, G_CCMUX_0, G_CCMUX_SHADE, G_CCMUX_0, G_ACMUX_TEXEL0, G_ACMUX_0, G_ACMUX_SHADE, G_ACMUX_0, G_CCMUX_TEXEL0, G_CCMUX_0, G_CCMUX_SHADE, G_CCMUX_0, G_ACMUX_TEXEL0, G_ACMUX_0, G_ACMUX_SHADE, G_ACMUX_0
gsDPSetTextureFilter G_TF_BILERP
gsDPSetTextureLUT G_TT_NONE
gsDPLoadTextureBlock pipeMimic_texture_1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP | G_TX_NOMIRROR,  G_TX_WRAP | G_TX_NOMIRROR, 6, 5, G_TX_NOLOD, G_TX_NOLOD
gsSPTexture -1, -1, 0, 0, 1
gsDPTileSync
gsSP1Triangle 3, 4, 5, 0x00
gsSP1Triangle 4, 3, 6, 0x00
gsSP1Triangle 7, 5, 4, 0x00
gsSPVertex pipeMimic_vertex_17, 7, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 1, 3, 4, 0x00
gsSP1Triangle 1, 4, 2, 0x00
gsSP1Triangle 5, 4, 3, 0x00
gsSP1Triangle 3, 6, 5, 0x00
gsSPVertex pipeMimic_vertex_18, 8, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSP1Triangle 2, 3, 0, 0x00
gsSP1Triangle 3, 4, 5, 0x00
gsSP1Triangle 3, 5, 0, 0x00
gsSP1Triangle 6, 4, 7, 0x00
gsSPVertex pipeMimic_vertex_19, 3, 0
gsSP1Triangle 0, 1, 2, 0x00
gsSPTexture -1, -1, 0, 0, 0
gsDPPipeSync
gsDPSetCombineModeLERP G_CCMUX_0, G_CCMUX_0, G_CCMUX_0, G_CCMUX_SHADE, G_ACMUX_0, G_ACMUX_0, G_ACMUX_0, G_ACMUX_SHADE, G_CCMUX_0, G_CCMUX_0, G_CCMUX_0, G_CCMUX_SHADE, G_ACMUX_0, G_ACMUX_0, G_ACMUX_0, G_ACMUX_SHADE
gsSPSetGeometryMode G_LIGHTING
gsDPSetTextureLUT G_TT_NONE
gsSPEndDisplayList
