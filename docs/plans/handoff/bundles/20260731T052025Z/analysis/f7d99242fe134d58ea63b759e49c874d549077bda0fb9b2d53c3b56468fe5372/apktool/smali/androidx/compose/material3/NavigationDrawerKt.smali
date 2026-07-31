.class public abstract Landroidx/compose/material3/NavigationDrawerKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    and-int/lit8 v0, v0, 0x4

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Landroidx/compose/animation/core/EasingKt;->FastOutSlowInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static final NavigationDrawerItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/DefaultDrawerItemsColor;Landroidx/compose/runtime/Composer;I)V
    .locals 33

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v15, p3

    .line 4
    .line 5
    move/from16 v6, p9

    .line 6
    .line 7
    move-object/from16 v12, p8

    .line 8
    .line 9
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v1, -0x22cab3e2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v1, v6, 0x6

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    move-object/from16 v1, p0

    .line 23
    .line 24
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v3, v2

    .line 33
    :goto_0
    or-int/2addr v3, v6

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object/from16 v1, p0

    .line 36
    .line 37
    move v3, v6

    .line 38
    :goto_1
    and-int/lit8 v4, v6, 0x30

    .line 39
    .line 40
    if-nez v4, :cond_3

    .line 41
    .line 42
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    const/16 v4, 0x20

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v4, 0x10

    .line 52
    .line 53
    :goto_2
    or-int/2addr v3, v4

    .line 54
    :cond_3
    and-int/lit16 v4, v6, 0x180

    .line 55
    .line 56
    move-object/from16 v7, p2

    .line 57
    .line 58
    if-nez v4, :cond_5

    .line 59
    .line 60
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    const/16 v4, 0x100

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/16 v4, 0x80

    .line 70
    .line 71
    :goto_3
    or-int/2addr v3, v4

    .line 72
    :cond_5
    and-int/lit16 v4, v6, 0xc00

    .line 73
    .line 74
    if-nez v4, :cond_7

    .line 75
    .line 76
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_6

    .line 81
    .line 82
    const/16 v4, 0x800

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    const/16 v4, 0x400

    .line 86
    .line 87
    :goto_4
    or-int/2addr v3, v4

    .line 88
    :cond_7
    and-int/lit16 v4, v6, 0x6000

    .line 89
    .line 90
    move-object/from16 v5, p4

    .line 91
    .line 92
    if-nez v4, :cond_9

    .line 93
    .line 94
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_8

    .line 99
    .line 100
    const/16 v4, 0x4000

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_8
    const/16 v4, 0x2000

    .line 104
    .line 105
    :goto_5
    or-int/2addr v3, v4

    .line 106
    :cond_9
    const/high16 v4, 0x30000

    .line 107
    .line 108
    and-int/2addr v4, v6

    .line 109
    if-nez v4, :cond_b

    .line 110
    .line 111
    move-object/from16 v4, p5

    .line 112
    .line 113
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_a

    .line 118
    .line 119
    const/high16 v8, 0x20000

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_a
    const/high16 v8, 0x10000

    .line 123
    .line 124
    :goto_6
    or-int/2addr v3, v8

    .line 125
    goto :goto_7

    .line 126
    :cond_b
    move-object/from16 v4, p5

    .line 127
    .line 128
    :goto_7
    const/high16 v8, 0x180000

    .line 129
    .line 130
    and-int/2addr v8, v6

    .line 131
    if-nez v8, :cond_c

    .line 132
    .line 133
    const/high16 v8, 0x80000

    .line 134
    .line 135
    or-int/2addr v3, v8

    .line 136
    :cond_c
    const/high16 v8, 0xc00000

    .line 137
    .line 138
    and-int/2addr v8, v6

    .line 139
    if-nez v8, :cond_d

    .line 140
    .line 141
    const/high16 v8, 0x400000

    .line 142
    .line 143
    or-int/2addr v3, v8

    .line 144
    :cond_d
    const/high16 v8, 0x6000000

    .line 145
    .line 146
    or-int/2addr v3, v8

    .line 147
    const v8, 0x2492493

    .line 148
    .line 149
    .line 150
    and-int/2addr v8, v3

    .line 151
    const v9, 0x2492492

    .line 152
    .line 153
    .line 154
    const/4 v10, 0x0

    .line 155
    if-eq v8, v9, :cond_e

    .line 156
    .line 157
    const/4 v8, 0x1

    .line 158
    goto :goto_8

    .line 159
    :cond_e
    move v8, v10

    .line 160
    :goto_8
    and-int/lit8 v9, v3, 0x1

    .line 161
    .line 162
    invoke-virtual {v12, v9, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_13

    .line 167
    .line 168
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 169
    .line 170
    .line 171
    and-int/lit8 v8, v6, 0x1

    .line 172
    .line 173
    const v9, -0x1f80001

    .line 174
    .line 175
    .line 176
    if-eqz v8, :cond_10

    .line 177
    .line 178
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-eqz v8, :cond_f

    .line 183
    .line 184
    goto :goto_9

    .line 185
    :cond_f
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 186
    .line 187
    .line 188
    and-int/2addr v3, v9

    .line 189
    move-object/from16 v8, p6

    .line 190
    .line 191
    move v9, v3

    .line 192
    move-object/from16 v3, p7

    .line 193
    .line 194
    goto :goto_a

    .line 195
    :cond_10
    :goto_9
    sget-object v8, Landroidx/compose/material3/tokens/ListTokens;->ActiveIndicatorShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 196
    .line 197
    invoke-static {v8, v12}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    sget-object v11, Landroidx/compose/material3/NavigationDrawerItemDefaults;->ItemPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 202
    .line 203
    sget-object v11, Landroidx/compose/material3/tokens/ListTokens;->ActiveIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 204
    .line 205
    invoke-static {v11, v12}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 206
    .line 207
    .line 208
    move-result-wide v25

    .line 209
    sget-wide v27, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 210
    .line 211
    sget-object v11, Landroidx/compose/material3/tokens/ListTokens;->ActiveIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 212
    .line 213
    invoke-static {v11, v12}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 214
    .line 215
    .line 216
    move-result-wide v17

    .line 217
    sget-object v11, Landroidx/compose/material3/tokens/ListTokens;->InactiveIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 218
    .line 219
    invoke-static {v11, v12}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 220
    .line 221
    .line 222
    move-result-wide v19

    .line 223
    sget-object v11, Landroidx/compose/material3/tokens/ListTokens;->ActiveLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 224
    .line 225
    invoke-static {v11, v12}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 226
    .line 227
    .line 228
    move-result-wide v21

    .line 229
    sget-object v11, Landroidx/compose/material3/tokens/ListTokens;->InactiveLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 230
    .line 231
    invoke-static {v11, v12}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 232
    .line 233
    .line 234
    move-result-wide v23

    .line 235
    new-instance v16, Landroidx/compose/material3/DefaultDrawerItemsColor;

    .line 236
    .line 237
    move-wide/from16 v29, v21

    .line 238
    .line 239
    move-wide/from16 v31, v23

    .line 240
    .line 241
    invoke-direct/range {v16 .. v32}, Landroidx/compose/material3/DefaultDrawerItemsColor;-><init>(JJJJJJJJ)V

    .line 242
    .line 243
    .line 244
    and-int/2addr v3, v9

    .line 245
    move v9, v3

    .line 246
    move-object/from16 v3, v16

    .line 247
    .line 248
    :goto_a
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 256
    .line 257
    if-ne v11, v13, :cond_11

    .line 258
    .line 259
    new-instance v11, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;

    .line 260
    .line 261
    const/16 v13, 0xa

    .line 262
    .line 263
    invoke-direct {v11, v13}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    :cond_11
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 270
    .line 271
    invoke-static {v15, v10, v11}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    sget v13, Landroidx/compose/material3/tokens/ListTokens;->ActiveIndicatorHeight:F

    .line 276
    .line 277
    invoke-static {v11, v13, v2}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    sget-object v11, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 282
    .line 283
    invoke-interface {v2, v11}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    shr-int/lit8 v9, v9, 0x3

    .line 288
    .line 289
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    const v2, -0x19d6e142

    .line 293
    .line 294
    .line 295
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 296
    .line 297
    .line 298
    if-eqz v0, :cond_12

    .line 299
    .line 300
    iget-wide v13, v3, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedContainerColor:J

    .line 301
    .line 302
    goto :goto_b

    .line 303
    :cond_12
    iget-wide v13, v3, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedContainerColor:J

    .line 304
    .line 305
    :goto_b
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 306
    .line 307
    invoke-direct {v2, v13, v14}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 308
    .line 309
    .line 310
    invoke-static {v2, v12}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 315
    .line 316
    .line 317
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 322
    .line 323
    iget-wide v13, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 324
    .line 325
    new-instance v0, Landroidx/compose/material3/NavigationDrawerKt$NavigationDrawerItem$2;

    .line 326
    .line 327
    move-object v2, v5

    .line 328
    move-object v5, v1

    .line 329
    move-object v1, v2

    .line 330
    move-object v2, v3

    .line 331
    move/from16 v3, p1

    .line 332
    .line 333
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/NavigationDrawerKt$NavigationDrawerItem$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/DefaultDrawerItemsColor;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 334
    .line 335
    .line 336
    move-object/from16 v16, v2

    .line 337
    .line 338
    const v1, -0x45ead74c

    .line 339
    .line 340
    .line 341
    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    and-int/lit8 v1, v9, 0x7e

    .line 346
    .line 347
    move-wide v5, v13

    .line 348
    const/16 v14, 0x3c8

    .line 349
    .line 350
    const/4 v3, 0x0

    .line 351
    move-object v4, v8

    .line 352
    const-wide/16 v7, 0x0

    .line 353
    .line 354
    const/4 v9, 0x0

    .line 355
    const/4 v10, 0x0

    .line 356
    move v13, v1

    .line 357
    move-object v2, v11

    .line 358
    move-object/from16 v1, p2

    .line 359
    .line 360
    move-object v11, v0

    .line 361
    move/from16 v0, p1

    .line 362
    .line 363
    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/SurfaceKt;->Surface-d85dljk(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 364
    .line 365
    .line 366
    move-object v7, v4

    .line 367
    move-object/from16 v8, v16

    .line 368
    .line 369
    goto :goto_c

    .line 370
    :cond_13
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 371
    .line 372
    .line 373
    move-object/from16 v7, p6

    .line 374
    .line 375
    move-object/from16 v8, p7

    .line 376
    .line 377
    :goto_c
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 378
    .line 379
    .line 380
    move-result-object v10

    .line 381
    if-eqz v10, :cond_14

    .line 382
    .line 383
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda2;

    .line 384
    .line 385
    move-object/from16 v1, p0

    .line 386
    .line 387
    move/from16 v2, p1

    .line 388
    .line 389
    move-object/from16 v3, p2

    .line 390
    .line 391
    move-object/from16 v5, p4

    .line 392
    .line 393
    move-object/from16 v6, p5

    .line 394
    .line 395
    move/from16 v9, p9

    .line 396
    .line 397
    move-object v4, v15

    .line 398
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/DefaultDrawerItemsColor;I)V

    .line 399
    .line 400
    .line 401
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 402
    .line 403
    :cond_14
    return-void
.end method
