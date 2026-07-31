.class public abstract Landroidx/compose/material3/SwitchKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final SnapSpec:Landroidx/compose/animation/core/SnapSpec;

.field public static final SwitchHeight:F

.field public static final SwitchWidth:F

.field public static final ThumbDiameter:F

.field public static final ThumbPadding:F

.field public static final UncheckedThumbDiameter:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroidx/compose/material3/tokens/ListTokens;->SelectedHandleWidth:F

    .line 2
    .line 3
    sput v0, Landroidx/compose/material3/SwitchKt;->ThumbDiameter:F

    .line 4
    .line 5
    sget v1, Landroidx/compose/material3/tokens/ListTokens;->UnselectedHandleWidth:F

    .line 6
    .line 7
    sput v1, Landroidx/compose/material3/SwitchKt;->UncheckedThumbDiameter:F

    .line 8
    .line 9
    sget v1, Landroidx/compose/material3/tokens/ListTokens;->TrackWidth:F

    .line 10
    .line 11
    sput v1, Landroidx/compose/material3/SwitchKt;->SwitchWidth:F

    .line 12
    .line 13
    sget v1, Landroidx/compose/material3/tokens/ListTokens;->TrackHeight:F

    .line 14
    .line 15
    sput v1, Landroidx/compose/material3/SwitchKt;->SwitchHeight:F

    .line 16
    .line 17
    sub-float/2addr v1, v0

    .line 18
    const/high16 v0, 0x40000000    # 2.0f

    .line 19
    .line 20
    div-float/2addr v1, v0

    .line 21
    sput v1, Landroidx/compose/material3/SwitchKt;->ThumbPadding:F

    .line 22
    .line 23
    new-instance v0, Landroidx/compose/animation/core/SnapSpec;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, v1}, Landroidx/compose/animation/core/SnapSpec;-><init>(I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroidx/compose/material3/SwitchKt;->SnapSpec:Landroidx/compose/animation/core/SnapSpec;

    .line 30
    .line 31
    return-void
.end method

.method public static final Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/Composer;I)V
    .locals 48

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move/from16 v9, p5

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, -0xfb23c9f

    .line 14
    .line 15
    .line 16
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, v9, 0x6

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    or-int/2addr v0, v9

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v0, v9

    .line 35
    :goto_1
    and-int/lit8 v3, v9, 0x30

    .line 36
    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    const/16 v3, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v3, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v0, v3

    .line 51
    :cond_3
    and-int/lit16 v3, v9, 0x180

    .line 52
    .line 53
    if-nez v3, :cond_5

    .line 54
    .line 55
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    const/16 v3, 0x100

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v3, 0x80

    .line 65
    .line 66
    :goto_3
    or-int/2addr v0, v3

    .line 67
    :cond_5
    or-int/lit16 v0, v0, 0xc00

    .line 68
    .line 69
    and-int/lit16 v3, v9, 0x6000

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    if-nez v3, :cond_7

    .line 73
    .line 74
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_6

    .line 79
    .line 80
    const/16 v3, 0x4000

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    const/16 v3, 0x2000

    .line 84
    .line 85
    :goto_4
    or-int/2addr v0, v3

    .line 86
    :cond_7
    const/high16 v3, 0x30000

    .line 87
    .line 88
    and-int/2addr v3, v9

    .line 89
    if-nez v3, :cond_8

    .line 90
    .line 91
    const/high16 v3, 0x10000

    .line 92
    .line 93
    or-int/2addr v0, v3

    .line 94
    :cond_8
    const/high16 v3, 0x180000

    .line 95
    .line 96
    or-int/2addr v0, v3

    .line 97
    const v3, 0x92493

    .line 98
    .line 99
    .line 100
    and-int/2addr v3, v0

    .line 101
    const v6, 0x92492

    .line 102
    .line 103
    .line 104
    const/4 v10, 0x0

    .line 105
    if-eq v3, v6, :cond_9

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_9
    move v4, v10

    .line 109
    :goto_5
    and-int/lit8 v3, v0, 0x1

    .line 110
    .line 111
    invoke-virtual {v5, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_f

    .line 116
    .line 117
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 118
    .line 119
    .line 120
    and-int/lit8 v3, v9, 0x1

    .line 121
    .line 122
    const v4, -0x70001

    .line 123
    .line 124
    .line 125
    if-eqz v3, :cond_b

    .line 126
    .line 127
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_a

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_a
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 135
    .line 136
    .line 137
    and-int/2addr v0, v4

    .line 138
    move-object/from16 v2, p3

    .line 139
    .line 140
    move-object/from16 p4, v5

    .line 141
    .line 142
    goto/16 :goto_8

    .line 143
    .line 144
    :cond_b
    :goto_6
    sget-object v3, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 145
    .line 146
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Landroidx/compose/material3/ColorScheme;

    .line 151
    .line 152
    iget-object v6, v3, Landroidx/compose/material3/ColorScheme;->defaultSwitchColorsCached:Landroidx/compose/material3/SwitchColors;

    .line 153
    .line 154
    iget-wide v11, v3, Landroidx/compose/material3/ColorScheme;->surface:J

    .line 155
    .line 156
    if-nez v6, :cond_c

    .line 157
    .line 158
    new-instance v13, Landroidx/compose/material3/SwitchColors;

    .line 159
    .line 160
    sget-object v6, Landroidx/compose/material3/tokens/ListTokens;->SelectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 161
    .line 162
    invoke-static {v3, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 163
    .line 164
    .line 165
    move-result-wide v14

    .line 166
    sget-object v6, Landroidx/compose/material3/tokens/ListTokens;->SelectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 167
    .line 168
    invoke-static {v3, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 169
    .line 170
    .line 171
    move-result-wide v16

    .line 172
    sget-wide v18, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 173
    .line 174
    sget-object v6, Landroidx/compose/material3/tokens/ListTokens;->SelectedIconColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 175
    .line 176
    invoke-static {v3, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 177
    .line 178
    .line 179
    move-result-wide v20

    .line 180
    sget-object v6, Landroidx/compose/material3/tokens/ListTokens;->UnselectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 181
    .line 182
    invoke-static {v3, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 183
    .line 184
    .line 185
    move-result-wide v22

    .line 186
    sget-object v6, Landroidx/compose/material3/tokens/ListTokens;->UnselectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 187
    .line 188
    invoke-static {v3, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 189
    .line 190
    .line 191
    move-result-wide v24

    .line 192
    sget-object v6, Landroidx/compose/material3/tokens/ListTokens;->UnselectedFocusTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 193
    .line 194
    invoke-static {v3, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 195
    .line 196
    .line 197
    move-result-wide v26

    .line 198
    sget-object v6, Landroidx/compose/material3/tokens/ListTokens;->UnselectedIconColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 199
    .line 200
    invoke-static {v3, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 201
    .line 202
    .line 203
    move-result-wide v28

    .line 204
    sget-object v6, Landroidx/compose/material3/tokens/ListTokens;->DisabledSelectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 205
    .line 206
    move/from16 v46, v4

    .line 207
    .line 208
    move-object/from16 p4, v5

    .line 209
    .line 210
    invoke-static {v3, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 211
    .line 212
    .line 213
    move-result-wide v4

    .line 214
    sget v6, Landroidx/compose/material3/tokens/ListTokens;->DisabledSelectedHandleOpacity:F

    .line 215
    .line 216
    invoke-static {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 217
    .line 218
    .line 219
    move-result-wide v4

    .line 220
    invoke-static {v4, v5, v11, v12}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 221
    .line 222
    .line 223
    move-result-wide v30

    .line 224
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->DisabledSelectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 225
    .line 226
    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 227
    .line 228
    .line 229
    move-result-wide v4

    .line 230
    sget v6, Landroidx/compose/material3/tokens/ListTokens;->DisabledTrackOpacity:F

    .line 231
    .line 232
    invoke-static {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 233
    .line 234
    .line 235
    move-result-wide v4

    .line 236
    invoke-static {v4, v5, v11, v12}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 237
    .line 238
    .line 239
    move-result-wide v32

    .line 240
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->DisabledSelectedIconColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 241
    .line 242
    invoke-static {v3, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 243
    .line 244
    .line 245
    move-result-wide v4

    .line 246
    sget v2, Landroidx/compose/material3/tokens/ListTokens;->DisabledSelectedIconOpacity:F

    .line 247
    .line 248
    invoke-static {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 249
    .line 250
    .line 251
    move-result-wide v4

    .line 252
    invoke-static {v4, v5, v11, v12}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 253
    .line 254
    .line 255
    move-result-wide v36

    .line 256
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->DisabledUnselectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 257
    .line 258
    invoke-static {v3, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 259
    .line 260
    .line 261
    move-result-wide v4

    .line 262
    sget v2, Landroidx/compose/material3/tokens/ListTokens;->DisabledUnselectedHandleOpacity:F

    .line 263
    .line 264
    invoke-static {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 265
    .line 266
    .line 267
    move-result-wide v4

    .line 268
    invoke-static {v4, v5, v11, v12}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 269
    .line 270
    .line 271
    move-result-wide v38

    .line 272
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->DisabledUnselectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 273
    .line 274
    invoke-static {v3, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 275
    .line 276
    .line 277
    move-result-wide v4

    .line 278
    invoke-static {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 279
    .line 280
    .line 281
    move-result-wide v4

    .line 282
    invoke-static {v4, v5, v11, v12}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 283
    .line 284
    .line 285
    move-result-wide v40

    .line 286
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->DisabledUnselectedTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 287
    .line 288
    invoke-static {v3, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 289
    .line 290
    .line 291
    move-result-wide v4

    .line 292
    invoke-static {v6, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 293
    .line 294
    .line 295
    move-result-wide v4

    .line 296
    invoke-static {v4, v5, v11, v12}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 297
    .line 298
    .line 299
    move-result-wide v42

    .line 300
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->DisabledUnselectedIconColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 301
    .line 302
    invoke-static {v3, v2}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 303
    .line 304
    .line 305
    move-result-wide v4

    .line 306
    sget v2, Landroidx/compose/material3/tokens/ListTokens;->DisabledUnselectedIconOpacity:F

    .line 307
    .line 308
    invoke-static {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 309
    .line 310
    .line 311
    move-result-wide v4

    .line 312
    invoke-static {v4, v5, v11, v12}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 313
    .line 314
    .line 315
    move-result-wide v44

    .line 316
    move-wide/from16 v34, v18

    .line 317
    .line 318
    invoke-direct/range {v13 .. v45}, Landroidx/compose/material3/SwitchColors;-><init>(JJJJJJJJJJJJJJJJ)V

    .line 319
    .line 320
    .line 321
    iput-object v13, v3, Landroidx/compose/material3/ColorScheme;->defaultSwitchColorsCached:Landroidx/compose/material3/SwitchColors;

    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_c
    move/from16 v46, v4

    .line 325
    .line 326
    move-object/from16 p4, v5

    .line 327
    .line 328
    move-object v13, v6

    .line 329
    :goto_7
    and-int v0, v0, v46

    .line 330
    .line 331
    move-object v2, v13

    .line 332
    :goto_8
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 333
    .line 334
    .line 335
    const v3, 0x696ac19a

    .line 336
    .line 337
    .line 338
    move-object/from16 v5, p4

    .line 339
    .line 340
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 348
    .line 349
    if-ne v3, v4, :cond_d

    .line 350
    .line 351
    new-instance v3, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 352
    .line 353
    invoke-direct {v3}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    :cond_d
    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 360
    .line 361
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 362
    .line 363
    .line 364
    if-eqz v7, :cond_e

    .line 365
    .line 366
    sget-object v4, Landroidx/compose/material3/InteractiveComponentSizeKt;->MinimumInteractiveTopAlignmentLine:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 367
    .line 368
    new-instance v4, Landroidx/compose/ui/semantics/Role;

    .line 369
    .line 370
    const/4 v6, 0x2

    .line 371
    invoke-direct {v4, v6}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    .line 372
    .line 373
    .line 374
    invoke-static {v1, v3, v4, v7}, Landroidx/compose/foundation/selection/SelectableKt;->toggleable-O2vRcR0(ZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    goto :goto_9

    .line 379
    :cond_e
    const/4 v6, 0x2

    .line 380
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 381
    .line 382
    :goto_9
    invoke-interface {v8, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;I)Landroidx/compose/ui/Modifier;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    sget v6, Landroidx/compose/material3/SwitchKt;->SwitchWidth:F

    .line 391
    .line 392
    sget v10, Landroidx/compose/material3/SwitchKt;->SwitchHeight:F

    .line 393
    .line 394
    invoke-static {v4, v6, v10}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    sget-object v6, Landroidx/compose/material3/tokens/ListTokens;->HandleShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 399
    .line 400
    invoke-static {v6, v5}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    shl-int/lit8 v10, v0, 0x3

    .line 405
    .line 406
    and-int/lit8 v11, v10, 0x70

    .line 407
    .line 408
    shr-int/lit8 v0, v0, 0x6

    .line 409
    .line 410
    and-int/lit16 v0, v0, 0x380

    .line 411
    .line 412
    or-int/2addr v0, v11

    .line 413
    const v11, 0xe000

    .line 414
    .line 415
    .line 416
    and-int/2addr v10, v11

    .line 417
    or-int/2addr v0, v10

    .line 418
    move-object/from16 v47, v6

    .line 419
    .line 420
    move v6, v0

    .line 421
    move-object v0, v4

    .line 422
    move-object/from16 v4, v47

    .line 423
    .line 424
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/SwitchKt;->SwitchImpl(Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/Composer;I)V

    .line 425
    .line 426
    .line 427
    move-object v4, v2

    .line 428
    goto :goto_a

    .line 429
    :cond_f
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 430
    .line 431
    .line 432
    move-object/from16 v4, p3

    .line 433
    .line 434
    :goto_a
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    if-eqz v6, :cond_10

    .line 439
    .line 440
    new-instance v0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda0;

    .line 441
    .line 442
    move/from16 v1, p0

    .line 443
    .line 444
    move-object v2, v7

    .line 445
    move-object v3, v8

    .line 446
    move v5, v9

    .line 447
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda0;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SwitchColors;I)V

    .line 448
    .line 449
    .line 450
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 451
    .line 452
    :cond_10
    return-void
.end method

.method public static final SwitchImpl(Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v0, p5

    .line 14
    .line 15
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v7, -0x27fd625d

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v7, v6, 0x6

    .line 24
    .line 25
    if-nez v7, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_0

    .line 32
    .line 33
    const/4 v7, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v7, 0x2

    .line 36
    :goto_0
    or-int/2addr v7, v6

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v7, v6

    .line 39
    :goto_1
    and-int/lit8 v9, v6, 0x30

    .line 40
    .line 41
    if-nez v9, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-eqz v9, :cond_2

    .line 48
    .line 49
    const/16 v9, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v9, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v7, v9

    .line 55
    :cond_3
    and-int/lit16 v9, v6, 0x180

    .line 56
    .line 57
    const/4 v10, 0x1

    .line 58
    if-nez v9, :cond_5

    .line 59
    .line 60
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-eqz v9, :cond_4

    .line 65
    .line 66
    const/16 v9, 0x100

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/16 v9, 0x80

    .line 70
    .line 71
    :goto_3
    or-int/2addr v7, v9

    .line 72
    :cond_5
    and-int/lit16 v9, v6, 0xc00

    .line 73
    .line 74
    if-nez v9, :cond_7

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_6

    .line 81
    .line 82
    const/16 v9, 0x800

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    const/16 v9, 0x400

    .line 86
    .line 87
    :goto_4
    or-int/2addr v7, v9

    .line 88
    :cond_7
    and-int/lit16 v9, v6, 0x6000

    .line 89
    .line 90
    if-nez v9, :cond_9

    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-eqz v9, :cond_8

    .line 98
    .line 99
    const/16 v9, 0x4000

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_8
    const/16 v9, 0x2000

    .line 103
    .line 104
    :goto_5
    or-int/2addr v7, v9

    .line 105
    :cond_9
    const/high16 v9, 0x30000

    .line 106
    .line 107
    and-int/2addr v9, v6

    .line 108
    if-nez v9, :cond_b

    .line 109
    .line 110
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-eqz v9, :cond_a

    .line 115
    .line 116
    const/high16 v9, 0x20000

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_a
    const/high16 v9, 0x10000

    .line 120
    .line 121
    :goto_6
    or-int/2addr v7, v9

    .line 122
    :cond_b
    const/high16 v9, 0x180000

    .line 123
    .line 124
    and-int/2addr v9, v6

    .line 125
    if-nez v9, :cond_d

    .line 126
    .line 127
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-eqz v9, :cond_c

    .line 132
    .line 133
    const/high16 v9, 0x100000

    .line 134
    .line 135
    goto :goto_7

    .line 136
    :cond_c
    const/high16 v9, 0x80000

    .line 137
    .line 138
    :goto_7
    or-int/2addr v7, v9

    .line 139
    :cond_d
    const v9, 0x92493

    .line 140
    .line 141
    .line 142
    and-int/2addr v9, v7

    .line 143
    const v11, 0x92492

    .line 144
    .line 145
    .line 146
    if-eq v9, v11, :cond_e

    .line 147
    .line 148
    move v9, v10

    .line 149
    goto :goto_8

    .line 150
    :cond_e
    const/4 v9, 0x0

    .line 151
    :goto_8
    and-int/2addr v7, v10

    .line 152
    invoke-virtual {v0, v7, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_18

    .line 157
    .line 158
    if-eqz v2, :cond_f

    .line 159
    .line 160
    iget-wide v13, v3, Landroidx/compose/material3/SwitchColors;->checkedTrackColor:J

    .line 161
    .line 162
    goto :goto_9

    .line 163
    :cond_f
    iget-wide v13, v3, Landroidx/compose/material3/SwitchColors;->uncheckedTrackColor:J

    .line 164
    .line 165
    :goto_9
    if-eqz v2, :cond_10

    .line 166
    .line 167
    iget-wide v10, v3, Landroidx/compose/material3/SwitchColors;->checkedThumbColor:J

    .line 168
    .line 169
    goto :goto_a

    .line 170
    :cond_10
    iget-wide v10, v3, Landroidx/compose/material3/SwitchColors;->uncheckedThumbColor:J

    .line 171
    .line 172
    :goto_a
    sget-object v7, Landroidx/compose/material3/tokens/ListTokens;->TrackShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 173
    .line 174
    invoke-static {v7, v0}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    sget v9, Landroidx/compose/material3/tokens/ListTokens;->TrackOutlineWidth:F

    .line 179
    .line 180
    move-wide/from16 v16, v13

    .line 181
    .line 182
    if-eqz v2, :cond_11

    .line 183
    .line 184
    iget-wide v12, v3, Landroidx/compose/material3/SwitchColors;->checkedBorderColor:J

    .line 185
    .line 186
    goto :goto_b

    .line 187
    :cond_11
    iget-wide v12, v3, Landroidx/compose/material3/SwitchColors;->uncheckedBorderColor:J

    .line 188
    .line 189
    :goto_b
    invoke-static {v1, v9, v12, v13, v7}, Landroidx/compose/foundation/ImageKt;->border-xT4_qwU(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    move-wide/from16 v13, v16

    .line 194
    .line 195
    invoke-static {v9, v13, v14, v7}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 200
    .line 201
    const/4 v15, 0x0

    .line 202
    invoke-static {v9, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 207
    .line 208
    .line 209
    move-result v12

    .line 210
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    invoke-static {v0, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 219
    .line 220
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 224
    .line 225
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 226
    .line 227
    .line 228
    iget-boolean v15, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 229
    .line 230
    if-eqz v15, :cond_12

    .line 231
    .line 232
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 233
    .line 234
    .line 235
    goto :goto_c

    .line 236
    :cond_12
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 237
    .line 238
    .line 239
    :goto_c
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 240
    .line 241
    invoke-static {v0, v9, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 242
    .line 243
    .line 244
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 245
    .line 246
    invoke-static {v0, v13, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 247
    .line 248
    .line 249
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 250
    .line 251
    iget-boolean v8, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 252
    .line 253
    if-nez v8, :cond_13

    .line 254
    .line 255
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-nez v1, :cond_14

    .line 268
    .line 269
    :cond_13
    invoke-static {v12, v0, v12, v13}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 270
    .line 271
    .line 272
    :cond_14
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 273
    .line 274
    invoke-static {v0, v7, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 275
    .line 276
    .line 277
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 278
    .line 279
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/BiasAlignment;

    .line 280
    .line 281
    sget-object v12, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 282
    .line 283
    invoke-virtual {v12, v7, v8}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    new-instance v8, Landroidx/compose/material3/ThumbElement;

    .line 288
    .line 289
    sget-object v12, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 290
    .line 291
    invoke-static {v12, v0}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    invoke-direct {v8, v4, v2, v12}, Landroidx/compose/material3/ThumbElement;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLandroidx/compose/animation/core/SpringSpec;)V

    .line 296
    .line 297
    .line 298
    invoke-interface {v7, v8}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    sget v8, Landroidx/compose/material3/tokens/ListTokens;->StateLayerSize$1:F

    .line 303
    .line 304
    const/high16 v12, 0x40000000    # 2.0f

    .line 305
    .line 306
    div-float/2addr v8, v12

    .line 307
    move-object/from16 v16, v15

    .line 308
    .line 309
    const/4 v12, 0x4

    .line 310
    const/4 v15, 0x0

    .line 311
    invoke-static {v15, v8, v12}, Landroidx/compose/material3/RippleKt;->ripple-H2RKhps$default(ZFI)Landroidx/compose/material3/RippleNodeFactory;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    invoke-static {v7, v4, v8}, Landroidx/compose/foundation/IndicationKt;->indication(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/IndicationNodeFactory;)Landroidx/compose/ui/Modifier;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    invoke-static {v7, v10, v11, v5}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 324
    .line 325
    invoke-static {v8, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 326
    .line 327
    .line 328
    move-result-object v8

    .line 329
    move-object/from16 v10, v16

    .line 330
    .line 331
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 332
    .line 333
    .line 334
    move-result v11

    .line 335
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 336
    .line 337
    .line 338
    move-result-object v12

    .line 339
    invoke-static {v0, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 344
    .line 345
    .line 346
    iget-boolean v15, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 347
    .line 348
    if-eqz v15, :cond_15

    .line 349
    .line 350
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 351
    .line 352
    .line 353
    goto :goto_d

    .line 354
    :cond_15
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 355
    .line 356
    .line 357
    :goto_d
    invoke-static {v0, v8, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 358
    .line 359
    .line 360
    invoke-static {v0, v12, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 361
    .line 362
    .line 363
    iget-boolean v8, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 364
    .line 365
    if-nez v8, :cond_16

    .line 366
    .line 367
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v8

    .line 371
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 372
    .line 373
    .line 374
    move-result-object v9

    .line 375
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v8

    .line 379
    if-nez v8, :cond_17

    .line 380
    .line 381
    :cond_16
    invoke-static {v11, v0, v11, v13}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 382
    .line 383
    .line 384
    :cond_17
    invoke-static {v0, v7, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 385
    .line 386
    .line 387
    const v1, 0x49acf3f3

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 391
    .line 392
    .line 393
    const/4 v15, 0x0

    .line 394
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 395
    .line 396
    .line 397
    const/4 v1, 0x1

    .line 398
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 402
    .line 403
    .line 404
    goto :goto_e

    .line 405
    :cond_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 406
    .line 407
    .line 408
    :goto_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    if-eqz v8, :cond_19

    .line 413
    .line 414
    new-instance v0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;

    .line 415
    .line 416
    const/4 v7, 0x0

    .line 417
    move-object/from16 v1, p0

    .line 418
    .line 419
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 420
    .line 421
    .line 422
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 423
    .line 424
    :cond_19
    return-void
.end method
