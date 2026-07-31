.class public abstract Landroidx/compose/material3/AndroidMenu_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DefaultMenuProperties:Landroidx/compose/ui/window/PopupProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/window/PopupProperties;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/window/PopupProperties;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/material3/AndroidMenu_androidKt;->DefaultMenuProperties:Landroidx/compose/ui/window/PopupProperties;

    .line 8
    .line 9
    return-void
.end method

.method public static final DropdownMenu-IlH_yew(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    .line 1
    move-object/from16 v0, p12

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v1, 0x66dab59f

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    move/from16 v3, p0

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x2

    .line 22
    :goto_0
    or-int v1, p13, v1

    .line 23
    .line 24
    and-int/lit8 v2, p13, 0x30

    .line 25
    .line 26
    const/16 v4, 0x20

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    move-object/from16 v2, p1

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    move v5, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/16 v5, 0x10

    .line 41
    .line 42
    :goto_1
    or-int/2addr v1, v5

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move-object/from16 v2, p1

    .line 45
    .line 46
    :goto_2
    and-int/lit8 v5, p14, 0x4

    .line 47
    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    or-int/lit16 v1, v1, 0x180

    .line 51
    .line 52
    move-object/from16 v6, p2

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_3
    move-object/from16 v6, p2

    .line 56
    .line 57
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_4

    .line 62
    .line 63
    const/16 v7, 0x100

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v7, 0x80

    .line 67
    .line 68
    :goto_3
    or-int/2addr v1, v7

    .line 69
    :goto_4
    const v7, 0x364b2c00

    .line 70
    .line 71
    .line 72
    or-int/2addr v1, v7

    .line 73
    const v7, 0x12492493

    .line 74
    .line 75
    .line 76
    and-int/2addr v7, v1

    .line 77
    const v8, 0x12492492

    .line 78
    .line 79
    .line 80
    const/4 v9, 0x0

    .line 81
    if-ne v7, v8, :cond_5

    .line 82
    .line 83
    move v7, v9

    .line 84
    goto :goto_5

    .line 85
    :cond_5
    const/4 v7, 0x1

    .line 86
    :goto_5
    and-int/lit8 v8, v1, 0x1

    .line 87
    .line 88
    invoke-virtual {v0, v8, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_f

    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 95
    .line 96
    .line 97
    and-int/lit8 v7, p13, 0x1

    .line 98
    .line 99
    const v8, -0x1f8e001

    .line 100
    .line 101
    .line 102
    if-eqz v7, :cond_7

    .line 103
    .line 104
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_6

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 112
    .line 113
    .line 114
    and-int/2addr v1, v8

    .line 115
    move-object/from16 v18, p5

    .line 116
    .line 117
    move-object/from16 v13, p6

    .line 118
    .line 119
    move-object/from16 v19, p7

    .line 120
    .line 121
    move-wide/from16 v20, p8

    .line 122
    .line 123
    move/from16 v22, p10

    .line 124
    .line 125
    move-object v15, v6

    .line 126
    move-wide/from16 v6, p3

    .line 127
    .line 128
    goto :goto_8

    .line 129
    :cond_7
    :goto_6
    if-eqz v5, :cond_8

    .line 130
    .line 131
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_8
    move-object v5, v6

    .line 135
    :goto_7
    const/4 v6, 0x0

    .line 136
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    int-to-long v10, v7

    .line 141
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    int-to-long v6, v6

    .line 146
    shl-long/2addr v10, v4

    .line 147
    const-wide v12, 0xffffffffL

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    and-long/2addr v6, v12

    .line 153
    or-long/2addr v6, v10

    .line 154
    invoke-static {v0}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    sget v10, Landroidx/compose/material3/MenuDefaults;->ShadowElevation:F

    .line 159
    .line 160
    sget-object v10, Landroidx/compose/material3/tokens/ListTokens;->ContainerShape$3:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 161
    .line 162
    invoke-static {v10, v0}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    sget-object v11, Landroidx/compose/material3/tokens/ListTokens;->ContainerColor$6:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 167
    .line 168
    invoke-static {v11, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 169
    .line 170
    .line 171
    move-result-wide v11

    .line 172
    and-int/2addr v1, v8

    .line 173
    sget v8, Landroidx/compose/material3/MenuDefaults;->ShadowElevation:F

    .line 174
    .line 175
    sget-object v13, Landroidx/compose/material3/AndroidMenu_androidKt;->DefaultMenuProperties:Landroidx/compose/ui/window/PopupProperties;

    .line 176
    .line 177
    move-object/from16 v18, v4

    .line 178
    .line 179
    move-object v15, v5

    .line 180
    move/from16 v22, v8

    .line 181
    .line 182
    move-object/from16 v19, v10

    .line 183
    .line 184
    move-wide/from16 v20, v11

    .line 185
    .line 186
    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 194
    .line 195
    if-ne v4, v5, :cond_9

    .line 196
    .line 197
    new-instance v4, Landroidx/compose/animation/core/MutableTransitionState;

    .line 198
    .line 199
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 200
    .line 201
    invoke-direct {v4, v8}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :cond_9
    check-cast v4, Landroidx/compose/animation/core/MutableTransitionState;

    .line 208
    .line 209
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    iget-object v10, v4, Landroidx/compose/animation/core/MutableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 214
    .line 215
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    iget-object v8, v4, Landroidx/compose/animation/core/MutableTransitionState;->currentState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 219
    .line 220
    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    check-cast v8, Ljava/lang/Boolean;

    .line 225
    .line 226
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    if-nez v8, :cond_b

    .line 231
    .line 232
    iget-object v8, v4, Landroidx/compose/animation/core/MutableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 233
    .line 234
    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    check-cast v8, Ljava/lang/Boolean;

    .line 239
    .line 240
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    if-eqz v8, :cond_a

    .line 245
    .line 246
    goto :goto_9

    .line 247
    :cond_a
    const v1, 0x458e7b43

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 254
    .line 255
    .line 256
    goto :goto_a

    .line 257
    :cond_b
    :goto_9
    const v8, 0x457e4eb4

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    if-ne v8, v5, :cond_c

    .line 268
    .line 269
    sget-wide v10, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    .line 270
    .line 271
    new-instance v8, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 272
    .line 273
    invoke-direct {v8, v10, v11}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 274
    .line 275
    .line 276
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    :cond_c
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 284
    .line 285
    sget-object v10, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 286
    .line 287
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    check-cast v10, Landroidx/compose/ui/unit/Density;

    .line 292
    .line 293
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v11

    .line 297
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v12

    .line 301
    if-nez v11, :cond_d

    .line 302
    .line 303
    if-ne v12, v5, :cond_e

    .line 304
    .line 305
    :cond_d
    new-instance v12, Landroidx/compose/material3/internal/DropdownMenuPositionProvider;

    .line 306
    .line 307
    new-instance v5, Landroidx/compose/material3/AndroidMenu_androidKt$$ExternalSyntheticLambda0;

    .line 308
    .line 309
    invoke-direct {v5, v8, v9}, Landroidx/compose/material3/AndroidMenu_androidKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 310
    .line 311
    .line 312
    invoke-direct {v12, v6, v7, v10, v5}, Landroidx/compose/material3/internal/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;Landroidx/compose/material3/AndroidMenu_androidKt$$ExternalSyntheticLambda0;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    :cond_e
    check-cast v12, Landroidx/compose/material3/internal/DropdownMenuPositionProvider;

    .line 319
    .line 320
    new-instance v14, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;

    .line 321
    .line 322
    move-object/from16 v23, p11

    .line 323
    .line 324
    move-object/from16 v16, v4

    .line 325
    .line 326
    move-object/from16 v17, v8

    .line 327
    .line 328
    invoke-direct/range {v14 .. v23}, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 329
    .line 330
    .line 331
    const v4, -0x36afd328    # -852685.5f

    .line 332
    .line 333
    .line 334
    invoke-static {v4, v14, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    and-int/lit8 v1, v1, 0x70

    .line 339
    .line 340
    or-int/lit16 v1, v1, 0xd80

    .line 341
    .line 342
    const/4 v5, 0x0

    .line 343
    move-object/from16 p6, v0

    .line 344
    .line 345
    move/from16 p7, v1

    .line 346
    .line 347
    move-object/from16 p3, v2

    .line 348
    .line 349
    move-object/from16 p5, v4

    .line 350
    .line 351
    move/from16 p8, v5

    .line 352
    .line 353
    move-object/from16 p2, v12

    .line 354
    .line 355
    move-object/from16 p4, v13

    .line 356
    .line 357
    invoke-static/range {p2 .. p8}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 361
    .line 362
    .line 363
    :goto_a
    move-object v9, v13

    .line 364
    move-object v5, v15

    .line 365
    move-object/from16 v8, v18

    .line 366
    .line 367
    move-object/from16 v10, v19

    .line 368
    .line 369
    move-wide/from16 v11, v20

    .line 370
    .line 371
    move/from16 v13, v22

    .line 372
    .line 373
    goto :goto_b

    .line 374
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 375
    .line 376
    .line 377
    move-object/from16 v8, p5

    .line 378
    .line 379
    move-object/from16 v9, p6

    .line 380
    .line 381
    move-object/from16 v10, p7

    .line 382
    .line 383
    move-wide/from16 v11, p8

    .line 384
    .line 385
    move/from16 v13, p10

    .line 386
    .line 387
    move-object v5, v6

    .line 388
    move-wide/from16 v6, p3

    .line 389
    .line 390
    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    if-eqz v0, :cond_10

    .line 395
    .line 396
    new-instance v2, Landroidx/compose/material3/AndroidMenu_androidKt$$ExternalSyntheticLambda1;

    .line 397
    .line 398
    move-object/from16 v4, p1

    .line 399
    .line 400
    move-object/from16 v14, p11

    .line 401
    .line 402
    move/from16 v15, p13

    .line 403
    .line 404
    move/from16 v16, p14

    .line 405
    .line 406
    invoke-direct/range {v2 .. v16}, Landroidx/compose/material3/AndroidMenu_androidKt$$ExternalSyntheticLambda1;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 407
    .line 408
    .line 409
    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 410
    .line 411
    :cond_10
    return-void
.end method

.method public static final DropdownMenuItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    .line 1
    move-object/from16 v6, p6

    .line 2
    .line 3
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, -0x1fc44f8d

    .line 6
    .line 7
    .line 8
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    move-object/from16 v9, p1

    .line 12
    .line 13
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/16 v0, 0x20

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v0, 0x10

    .line 23
    .line 24
    :goto_0
    or-int v0, p7, v0

    .line 25
    .line 26
    const v1, 0xb6d80

    .line 27
    .line 28
    .line 29
    or-int/2addr v0, v1

    .line 30
    move-object/from16 v13, p5

    .line 31
    .line 32
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const/high16 v1, 0x800000

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/high16 v1, 0x400000

    .line 42
    .line 43
    :goto_1
    or-int/2addr v0, v1

    .line 44
    const/high16 v1, 0x6000000

    .line 45
    .line 46
    or-int/2addr v0, v1

    .line 47
    const v1, 0x2492493

    .line 48
    .line 49
    .line 50
    and-int/2addr v1, v0

    .line 51
    const v2, 0x2492492

    .line 52
    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    if-eq v1, v2, :cond_2

    .line 56
    .line 57
    move v1, v3

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    :goto_2
    and-int/lit8 v2, v0, 0x1

    .line 61
    .line 62
    invoke-virtual {v6, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_6

    .line 67
    .line 68
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 69
    .line 70
    .line 71
    and-int/lit8 v1, p7, 0x1

    .line 72
    .line 73
    const v2, -0x380001

    .line 74
    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 86
    .line 87
    .line 88
    and-int/2addr v0, v2

    .line 89
    move-object/from16 v2, p2

    .line 90
    .line 91
    move/from16 v3, p3

    .line 92
    .line 93
    move-object/from16 v4, p4

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_4
    :goto_3
    sget v1, Landroidx/compose/material3/MenuDefaults;->ShadowElevation:F

    .line 97
    .line 98
    sget-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 99
    .line 100
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Landroidx/compose/material3/ColorScheme;

    .line 105
    .line 106
    iget-object v4, v1, Landroidx/compose/material3/ColorScheme;->defaultMenuItemColorsCached:Landroidx/compose/material3/MenuItemColors;

    .line 107
    .line 108
    if-nez v4, :cond_5

    .line 109
    .line 110
    new-instance v14, Landroidx/compose/material3/MenuItemColors;

    .line 111
    .line 112
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 113
    .line 114
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 115
    .line 116
    .line 117
    move-result-wide v15

    .line 118
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 119
    .line 120
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v17

    .line 124
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 125
    .line 126
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v19

    .line 130
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 131
    .line 132
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 133
    .line 134
    .line 135
    move-result-wide v4

    .line 136
    sget v7, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLabelTextOpacity:F

    .line 137
    .line 138
    invoke-static {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 139
    .line 140
    .line 141
    move-result-wide v21

    .line 142
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 143
    .line 144
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 145
    .line 146
    .line 147
    move-result-wide v4

    .line 148
    sget v7, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLeadingIconOpacity:F

    .line 149
    .line 150
    invoke-static {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 151
    .line 152
    .line 153
    move-result-wide v23

    .line 154
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 155
    .line 156
    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 157
    .line 158
    .line 159
    move-result-wide v4

    .line 160
    sget v7, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledTrailingIconOpacity:F

    .line 161
    .line 162
    invoke-static {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 163
    .line 164
    .line 165
    move-result-wide v25

    .line 166
    invoke-direct/range {v14 .. v26}, Landroidx/compose/material3/MenuItemColors;-><init>(JJJJJJ)V

    .line 167
    .line 168
    .line 169
    iput-object v14, v1, Landroidx/compose/material3/ColorScheme;->defaultMenuItemColorsCached:Landroidx/compose/material3/MenuItemColors;

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_5
    move-object v14, v4

    .line 173
    :goto_4
    and-int/2addr v0, v2

    .line 174
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 175
    .line 176
    move-object v2, v1

    .line 177
    move-object v4, v14

    .line 178
    :goto_5
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 179
    .line 180
    .line 181
    const v1, 0xffffffe

    .line 182
    .line 183
    .line 184
    and-int v7, v0, v1

    .line 185
    .line 186
    move-object/from16 v0, p0

    .line 187
    .line 188
    move-object v1, v9

    .line 189
    move-object v5, v13

    .line 190
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/CardKt;->DropdownMenuItemContent(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    .line 191
    .line 192
    .line 193
    move-object v10, v2

    .line 194
    move v11, v3

    .line 195
    move-object v12, v4

    .line 196
    goto :goto_6

    .line 197
    :cond_6
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 198
    .line 199
    .line 200
    move-object/from16 v10, p2

    .line 201
    .line 202
    move/from16 v11, p3

    .line 203
    .line 204
    move-object/from16 v12, p4

    .line 205
    .line 206
    :goto_6
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    if-eqz v0, :cond_7

    .line 211
    .line 212
    new-instance v7, Landroidx/compose/material3/AndroidMenu_androidKt$$ExternalSyntheticLambda2;

    .line 213
    .line 214
    move-object/from16 v8, p0

    .line 215
    .line 216
    move-object/from16 v9, p1

    .line 217
    .line 218
    move-object/from16 v13, p5

    .line 219
    .line 220
    move/from16 v14, p7

    .line 221
    .line 222
    invoke-direct/range {v7 .. v14}, Landroidx/compose/material3/AndroidMenu_androidKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;I)V

    .line 223
    .line 224
    .line 225
    iput-object v7, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 226
    .line 227
    :cond_7
    return-void
.end method
