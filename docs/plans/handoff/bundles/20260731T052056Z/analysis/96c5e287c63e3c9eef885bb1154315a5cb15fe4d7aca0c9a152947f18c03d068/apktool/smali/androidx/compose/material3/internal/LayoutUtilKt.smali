.class public abstract Landroidx/compose/material3/internal/LayoutUtilKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final DefaultPlatformTextStyle:Landroidx/compose/ui/text/PlatformTextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/text/PlatformTextStyle;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 4
    .line 5
    invoke-direct {v1}, Landroidx/compose/ui/text/PlatformParagraphStyle;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/text/PlatformTextStyle;-><init>(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Landroidx/compose/material3/internal/LayoutUtilKt;->DefaultPlatformTextStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    .line 13
    .line 14
    return-void
.end method

.method public static final BasicTooltipBox(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/TooltipStateImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move-object/from16 v8, p3

    .line 4
    .line 5
    move-object/from16 v6, p4

    .line 6
    .line 7
    move/from16 v9, p5

    .line 8
    .line 9
    const v0, -0x48d45f10

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v0, v9, 0x6

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    move-object/from16 v0, p0

    .line 20
    .line 21
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x2

    .line 30
    :goto_0
    or-int/2addr v2, v9

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-object/from16 v0, p0

    .line 33
    .line 34
    move v2, v9

    .line 35
    :goto_1
    and-int/lit8 v3, v9, 0x30

    .line 36
    .line 37
    move-object/from16 v5, p1

    .line 38
    .line 39
    if-nez v3, :cond_3

    .line 40
    .line 41
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    const/16 v3, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v3, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v2, v3

    .line 53
    :cond_3
    and-int/lit16 v3, v9, 0x180

    .line 54
    .line 55
    if-nez v3, :cond_6

    .line 56
    .line 57
    and-int/lit16 v3, v9, 0x200

    .line 58
    .line 59
    if-nez v3, :cond_4

    .line 60
    .line 61
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    :goto_3
    if-eqz v3, :cond_5

    .line 71
    .line 72
    const/16 v3, 0x100

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_5
    const/16 v3, 0x80

    .line 76
    .line 77
    :goto_4
    or-int/2addr v2, v3

    .line 78
    :cond_6
    and-int/lit16 v3, v9, 0xc00

    .line 79
    .line 80
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 81
    .line 82
    if-nez v3, :cond_8

    .line 83
    .line 84
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_7

    .line 89
    .line 90
    const/16 v3, 0x800

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_7
    const/16 v3, 0x400

    .line 94
    .line 95
    :goto_5
    or-int/2addr v2, v3

    .line 96
    :cond_8
    and-int/lit16 v3, v9, 0x6000

    .line 97
    .line 98
    if-nez v3, :cond_a

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_9

    .line 106
    .line 107
    const/16 v3, 0x4000

    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_9
    const/16 v3, 0x2000

    .line 111
    .line 112
    :goto_6
    or-int/2addr v2, v3

    .line 113
    :cond_a
    const/high16 v3, 0x30000

    .line 114
    .line 115
    and-int v7, v9, v3

    .line 116
    .line 117
    const/4 v11, 0x0

    .line 118
    if-nez v7, :cond_c

    .line 119
    .line 120
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-eqz v7, :cond_b

    .line 125
    .line 126
    const/high16 v7, 0x20000

    .line 127
    .line 128
    goto :goto_7

    .line 129
    :cond_b
    const/high16 v7, 0x10000

    .line 130
    .line 131
    :goto_7
    or-int/2addr v2, v7

    .line 132
    :cond_c
    const/high16 v7, 0x180000

    .line 133
    .line 134
    and-int/2addr v7, v9

    .line 135
    const/4 v12, 0x1

    .line 136
    if-nez v7, :cond_e

    .line 137
    .line 138
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_d

    .line 143
    .line 144
    const/high16 v7, 0x100000

    .line 145
    .line 146
    goto :goto_8

    .line 147
    :cond_d
    const/high16 v7, 0x80000

    .line 148
    .line 149
    :goto_8
    or-int/2addr v2, v7

    .line 150
    :cond_e
    const/high16 v7, 0xc00000

    .line 151
    .line 152
    and-int/2addr v7, v9

    .line 153
    if-nez v7, :cond_10

    .line 154
    .line 155
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-eqz v7, :cond_f

    .line 160
    .line 161
    const/high16 v7, 0x800000

    .line 162
    .line 163
    goto :goto_9

    .line 164
    :cond_f
    const/high16 v7, 0x400000

    .line 165
    .line 166
    :goto_9
    or-int/2addr v2, v7

    .line 167
    :cond_10
    const/high16 v7, 0x6000000

    .line 168
    .line 169
    and-int/2addr v7, v9

    .line 170
    if-nez v7, :cond_12

    .line 171
    .line 172
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-eqz v7, :cond_11

    .line 177
    .line 178
    const/high16 v7, 0x4000000

    .line 179
    .line 180
    goto :goto_a

    .line 181
    :cond_11
    const/high16 v7, 0x2000000

    .line 182
    .line 183
    :goto_a
    or-int/2addr v2, v7

    .line 184
    :cond_12
    move v13, v2

    .line 185
    const v2, 0x2492493

    .line 186
    .line 187
    .line 188
    and-int/2addr v2, v13

    .line 189
    const v7, 0x2492492

    .line 190
    .line 191
    .line 192
    if-eq v2, v7, :cond_13

    .line 193
    .line 194
    move v2, v12

    .line 195
    goto :goto_b

    .line 196
    :cond_13
    move v2, v11

    .line 197
    :goto_b
    and-int/lit8 v7, v13, 0x1

    .line 198
    .line 199
    invoke-virtual {v6, v7, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_1e

    .line 204
    .line 205
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 210
    .line 211
    if-ne v2, v14, :cond_14

    .line 212
    .line 213
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/GapComposer;)Lkotlinx/coroutines/CoroutineScope;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :cond_14
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 221
    .line 222
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    if-ne v7, v14, :cond_15

    .line 227
    .line 228
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 229
    .line 230
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_15
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 238
    .line 239
    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 240
    .line 241
    invoke-static {v15, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 242
    .line 243
    .line 244
    move-result-object v15

    .line 245
    move/from16 v16, v3

    .line 246
    .line 247
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/GapComposer;)I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 252
    .line 253
    .line 254
    move-result-object v10

    .line 255
    invoke-static {v6, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 260
    .line 261
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 265
    .line 266
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 267
    .line 268
    .line 269
    iget-boolean v11, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 270
    .line 271
    if-eqz v11, :cond_16

    .line 272
    .line 273
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 274
    .line 275
    .line 276
    goto :goto_c

    .line 277
    :cond_16
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 278
    .line 279
    .line 280
    :goto_c
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 281
    .line 282
    invoke-static {v6, v15, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 283
    .line 284
    .line 285
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 286
    .line 287
    invoke-static {v6, v10, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 288
    .line 289
    .line 290
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 291
    .line 292
    iget-boolean v11, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 293
    .line 294
    if-nez v11, :cond_17

    .line 295
    .line 296
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v11

    .line 300
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v12

    .line 304
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v11

    .line 308
    if-nez v11, :cond_18

    .line 309
    .line 310
    :cond_17
    invoke-static {v3, v6, v3, v10}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 311
    .line 312
    .line 313
    :cond_18
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 314
    .line 315
    invoke-static {v6, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Landroidx/compose/material3/TooltipStateImpl;->isVisible()Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-eqz v3, :cond_19

    .line 323
    .line 324
    const v3, -0x70ba143f

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 328
    .line 329
    .line 330
    and-int/lit8 v3, v13, 0xe

    .line 331
    .line 332
    or-int v3, v3, v16

    .line 333
    .line 334
    shr-int/lit8 v4, v13, 0x3

    .line 335
    .line 336
    and-int/lit8 v4, v4, 0x70

    .line 337
    .line 338
    or-int/2addr v3, v4

    .line 339
    shr-int/lit8 v4, v13, 0x6

    .line 340
    .line 341
    and-int/lit16 v4, v4, 0x380

    .line 342
    .line 343
    or-int/2addr v3, v4

    .line 344
    shl-int/lit8 v4, v13, 0xf

    .line 345
    .line 346
    const/high16 v10, 0x380000

    .line 347
    .line 348
    and-int/2addr v4, v10

    .line 349
    or-int/2addr v3, v4

    .line 350
    move-object v4, v7

    .line 351
    move v7, v3

    .line 352
    const/4 v3, 0x0

    .line 353
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/internal/LayoutUtilKt;->TooltipPopup(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/material3/TooltipStateImpl;Lkotlinx/coroutines/CoroutineScope;ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 354
    .line 355
    .line 356
    const/4 v0, 0x0

    .line 357
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 358
    .line 359
    .line 360
    goto :goto_d

    .line 361
    :cond_19
    move-object v4, v7

    .line 362
    const/4 v0, 0x0

    .line 363
    const v2, -0x70b44974

    .line 364
    .line 365
    .line 366
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 370
    .line 371
    .line 372
    :goto_d
    shr-int/lit8 v2, v13, 0x12

    .line 373
    .line 374
    and-int/lit8 v2, v2, 0xe

    .line 375
    .line 376
    or-int/lit16 v2, v2, 0x180

    .line 377
    .line 378
    shr-int/lit8 v3, v13, 0x3

    .line 379
    .line 380
    and-int/lit8 v3, v3, 0x70

    .line 381
    .line 382
    or-int/2addr v2, v3

    .line 383
    shr-int/lit8 v3, v13, 0xc

    .line 384
    .line 385
    and-int/lit16 v3, v3, 0x1c00

    .line 386
    .line 387
    or-int/2addr v2, v3

    .line 388
    shl-int/lit8 v3, v13, 0x3

    .line 389
    .line 390
    const v5, 0xe000

    .line 391
    .line 392
    .line 393
    and-int/2addr v3, v5

    .line 394
    or-int/2addr v2, v3

    .line 395
    shr-int/lit8 v3, v13, 0x9

    .line 396
    .line 397
    const/high16 v5, 0x70000

    .line 398
    .line 399
    and-int/2addr v3, v5

    .line 400
    or-int/2addr v2, v3

    .line 401
    invoke-static {v1, v4, v8, v6, v2}, Landroidx/compose/material3/internal/LayoutUtilKt;->WrappedAnchor(Landroidx/compose/material3/TooltipStateImpl;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 402
    .line 403
    .line 404
    const/4 v2, 0x1

    .line 405
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 406
    .line 407
    .line 408
    and-int/lit16 v3, v13, 0x380

    .line 409
    .line 410
    const/16 v4, 0x100

    .line 411
    .line 412
    if-eq v3, v4, :cond_1b

    .line 413
    .line 414
    and-int/lit16 v3, v13, 0x200

    .line 415
    .line 416
    if-eqz v3, :cond_1a

    .line 417
    .line 418
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    if-eqz v3, :cond_1a

    .line 423
    .line 424
    goto :goto_e

    .line 425
    :cond_1a
    move v11, v0

    .line 426
    goto :goto_f

    .line 427
    :cond_1b
    :goto_e
    move v11, v2

    .line 428
    :goto_f
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    if-nez v11, :cond_1c

    .line 433
    .line 434
    if-ne v0, v14, :cond_1d

    .line 435
    .line 436
    :cond_1c
    new-instance v0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 437
    .line 438
    const/4 v2, 0x3

    .line 439
    invoke-direct {v0, v2, v1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    :cond_1d
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 446
    .line 447
    invoke-static {v1, v0, v6}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;)V

    .line 448
    .line 449
    .line 450
    goto :goto_10

    .line 451
    :cond_1e
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 452
    .line 453
    .line 454
    :goto_10
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    if-eqz v7, :cond_1f

    .line 459
    .line 460
    new-instance v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda27;

    .line 461
    .line 462
    const/4 v6, 0x3

    .line 463
    move-object/from16 v2, p1

    .line 464
    .line 465
    move-object v3, v1

    .line 466
    move-object v4, v8

    .line 467
    move v5, v9

    .line 468
    move-object/from16 v1, p0

    .line 469
    .line 470
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda27;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 471
    .line 472
    .line 473
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 474
    .line 475
    :cond_1f
    return-void
.end method

.method public static final CommonDecorationBox(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition$Attached;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V
    .locals 50

    move-object/from16 v8, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move/from16 v3, p11

    move/from16 v4, p12

    move-object/from16 v9, p13

    move-object/from16 v10, p14

    move-object/from16 v11, p15

    move-object/from16 v13, p17

    move/from16 v14, p18

    move/from16 v15, p19

    .line 1
    sget-object v12, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$3:Landroidx/compose/runtime/NeverEqualPolicy;

    move-object/from16 v20, v12

    sget-object v12, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;->INSTANCE$5:Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    move-object/from16 v21, v12

    const v12, 0x20979528

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v12, v14, 0x6

    move/from16 v16, v12

    if-nez v16, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x4

    goto :goto_0

    :cond_0
    const/4 v12, 0x2

    :goto_0
    or-int/2addr v12, v14

    goto :goto_1

    :cond_1
    move v12, v14

    :goto_1
    and-int/lit8 v16, v14, 0x30

    const/16 v17, 0x10

    const/16 v18, 0x20

    if-nez v16, :cond_3

    move/from16 v16, v12

    move-object/from16 v12, p1

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    move/from16 v19, v18

    goto :goto_2

    :cond_2
    move/from16 v19, v17

    :goto_2
    or-int v16, v16, v19

    goto :goto_3

    :cond_3
    move/from16 v16, v12

    move-object/from16 v12, p1

    :goto_3
    and-int/lit16 v12, v14, 0x180

    const/16 v19, 0x80

    const/16 v24, 0x100

    if-nez v12, :cond_5

    move-object/from16 v12, p2

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    move/from16 v25, v24

    goto :goto_4

    :cond_4
    move/from16 v25, v19

    :goto_4
    or-int v16, v16, v25

    goto :goto_5

    :cond_5
    move-object/from16 v12, p2

    :goto_5
    and-int/lit16 v12, v14, 0xc00

    const/16 v25, 0x400

    move/from16 v26, v12

    if-nez v26, :cond_7

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    const/16 v26, 0x800

    goto :goto_6

    :cond_6
    move/from16 v26, v25

    :goto_6
    or-int v16, v16, v26

    :cond_7
    and-int/lit16 v12, v14, 0x6000

    const/16 v27, 0x2000

    const/16 v28, 0x4000

    if-nez v12, :cond_9

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move/from16 v12, v28

    goto :goto_7

    :cond_8
    move/from16 v12, v27

    :goto_7
    or-int v16, v16, v12

    :cond_9
    const/high16 v12, 0x30000

    and-int v29, v14, v12

    const/high16 v30, 0x10000

    const/high16 v31, 0x20000

    if-nez v29, :cond_b

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    move/from16 v29, v31

    goto :goto_8

    :cond_a
    move/from16 v29, v30

    :goto_8
    or-int v16, v16, v29

    :cond_b
    const/high16 v29, 0x180000

    and-int v32, v14, v29

    const/high16 v33, 0x80000

    const/high16 v34, 0x100000

    if-nez v32, :cond_d

    move/from16 v32, v12

    const/4 v12, 0x0

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    move/from16 v12, v34

    goto :goto_9

    :cond_c
    move/from16 v12, v33

    :goto_9
    or-int v16, v16, v12

    goto :goto_a

    :cond_d
    move/from16 v32, v12

    :goto_a
    const/high16 v12, 0xc00000

    and-int v35, v14, v12

    const/high16 v36, 0x400000

    const/high16 v37, 0x800000

    if-nez v35, :cond_f

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_e

    move/from16 v35, v37

    goto :goto_b

    :cond_e
    move/from16 v35, v36

    :goto_b
    or-int v16, v16, v35

    :cond_f
    const/high16 v35, 0x6000000

    and-int v35, v14, v35

    if-nez v35, :cond_11

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_10

    const/high16 v35, 0x4000000

    goto :goto_c

    :cond_10
    const/high16 v35, 0x2000000

    :goto_c
    or-int v16, v16, v35

    :cond_11
    const/high16 v35, 0x30000000

    and-int v35, v14, v35

    if-nez v35, :cond_13

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_12

    const/high16 v35, 0x20000000

    goto :goto_d

    :cond_12
    const/high16 v35, 0x10000000

    :goto_d
    or-int v16, v16, v35

    :cond_13
    move/from16 v6, v16

    and-int/lit8 v16, v15, 0x6

    if-nez v16, :cond_15

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const/16 v16, 0x4

    goto :goto_e

    :cond_14
    const/16 v16, 0x2

    :goto_e
    or-int v16, v15, v16

    goto :goto_f

    :cond_15
    move/from16 v16, v15

    :goto_f
    and-int/lit8 v35, v15, 0x30

    if-nez v35, :cond_17

    move/from16 v35, v6

    move/from16 v6, p10

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v38

    if-eqz v38, :cond_16

    move/from16 v17, v18

    :cond_16
    or-int v16, v16, v17

    goto :goto_10

    :cond_17
    move/from16 v35, v6

    move/from16 v6, p10

    :goto_10
    move/from16 v17, v12

    and-int/lit16 v12, v15, 0x180

    if-nez v12, :cond_19

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_18

    move/from16 v19, v24

    :cond_18
    or-int v16, v16, v19

    :cond_19
    and-int/lit16 v12, v15, 0xc00

    if-nez v12, :cond_1b

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v25, 0x800

    :cond_1a
    or-int v16, v16, v25

    :cond_1b
    and-int/lit16 v12, v15, 0x6000

    if-nez v12, :cond_1d

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    move/from16 v27, v28

    :cond_1c
    or-int v16, v16, v27

    :cond_1d
    and-int v12, v15, v32

    if-nez v12, :cond_1f

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    move/from16 v30, v31

    :cond_1e
    or-int v16, v16, v30

    :cond_1f
    and-int v12, v15, v29

    if-nez v12, :cond_21

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    move/from16 v33, v34

    :cond_20
    or-int v16, v16, v33

    :cond_21
    and-int v12, v15, v17

    if-nez v12, :cond_23

    move-object/from16 v12, p16

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    move/from16 v36, v37

    :cond_22
    or-int v16, v16, v36

    :goto_11
    move/from16 v24, v16

    goto :goto_12

    :cond_23
    move-object/from16 v12, p16

    goto :goto_11

    :goto_12
    const v16, 0x12492493

    and-int v0, v35, v16

    const v1, 0x12492492

    if-ne v0, v1, :cond_25

    const v0, 0x492493

    and-int v0, v24, v0

    const v1, 0x492492

    if-eq v0, v1, :cond_24

    goto :goto_13

    :cond_24
    const/4 v0, 0x0

    goto :goto_14

    :cond_25
    :goto_13
    const/4 v0, 0x1

    :goto_14
    and-int/lit8 v1, v35, 0x1

    invoke-virtual {v13, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_6d

    shr-int/lit8 v0, v24, 0xc

    and-int/lit8 v0, v0, 0xe

    .line 2
    invoke-static {v9, v13, v0}, Landroidx/work/OperationKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    if-eqz v27, :cond_26

    .line 3
    sget-object v0, Landroidx/compose/material3/internal/InputPhase;->Focused:Landroidx/compose/material3/internal/InputPhase;

    goto :goto_15

    .line 4
    :cond_26
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Landroidx/compose/material3/internal/InputPhase;->UnfocusedEmpty:Landroidx/compose/material3/internal/InputPhase;

    goto :goto_15

    .line 5
    :cond_27
    sget-object v0, Landroidx/compose/material3/internal/InputPhase;->UnfocusedNotEmpty:Landroidx/compose/material3/internal/InputPhase;

    :goto_15
    if-nez v3, :cond_28

    .line 6
    iget-wide v6, v11, Landroidx/compose/material3/TextFieldColors;->disabledLabelColor:J

    goto :goto_16

    :cond_28
    if-eqz v4, :cond_29

    .line 7
    iget-wide v6, v11, Landroidx/compose/material3/TextFieldColors;->errorLabelColor:J

    goto :goto_16

    :cond_29
    if-eqz v27, :cond_2a

    .line 8
    iget-wide v6, v11, Landroidx/compose/material3/TextFieldColors;->focusedLabelColor:J

    goto :goto_16

    .line 9
    :cond_2a
    iget-wide v6, v11, Landroidx/compose/material3/TextFieldColors;->unfocusedLabelColor:J

    .line 10
    :goto_16
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 11
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 13
    iget-object v10, v1, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 14
    iget-object v1, v1, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v29, v1

    .line 15
    invoke-virtual {v10}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v1

    .line 16
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 17
    invoke-static {v1, v2, v3, v4}, Lkotlin/ULong;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 18
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v1

    .line 19
    invoke-static {v1, v2, v3, v4}, Lkotlin/ULong;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 20
    :cond_2b
    invoke-virtual {v10}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v1

    .line 21
    invoke-static {v1, v2, v3, v4}, Lkotlin/ULong;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 22
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v1

    .line 23
    invoke-static {v1, v2, v3, v4}, Lkotlin/ULong;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_2d

    :cond_2c
    const/4 v1, 0x1

    goto :goto_17

    :cond_2d
    const/4 v1, 0x0

    .line 24
    :goto_17
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v2

    const-wide/16 v16, 0x10

    if-eqz v1, :cond_2f

    cmp-long v4, v2, v16

    if-eqz v4, :cond_2e

    goto :goto_18

    :cond_2e
    move-wide v2, v6

    .line 25
    :cond_2f
    :goto_18
    invoke-virtual {v10}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v18

    if-eqz v1, :cond_31

    cmp-long v4, v18, v16

    if-eqz v4, :cond_30

    goto :goto_19

    :cond_30
    move-wide/from16 v30, v6

    goto :goto_1a

    :cond_31
    :goto_19
    move-wide/from16 v30, v18

    :goto_1a
    if-eqz v5, :cond_32

    const/4 v4, 0x1

    :goto_1b
    move/from16 v32, v1

    goto :goto_1c

    :cond_32
    const/4 v4, 0x0

    goto :goto_1b

    .line 26
    :goto_1c
    const-string v1, "TextFieldInputState"

    const/16 v8, 0x30

    invoke-static {v0, v1, v13, v8}, Landroidx/compose/animation/core/ArcSplineKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/Transition;

    move-result-object v0

    iget-object v1, v0, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/wikipedia/settings/BasePreferenceLoader;

    move/from16 v33, v8

    iget-object v8, v0, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-object/from16 v16, v0

    .line 27
    sget-object v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    .line 28
    sget-object v17, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 29
    invoke-virtual {v1}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    move-result-object v18

    .line 30
    check-cast v18, Landroidx/compose/material3/internal/InputPhase;

    move-object/from16 v19, v0

    const v0, -0x559dce72

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 31
    sget-object v34, Landroidx/compose/material3/internal/TextFieldImplKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aget v0, v34, v18

    const/16 v37, 0x0

    move-object/from16 v38, v8

    const/high16 v39, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    if-eq v0, v8, :cond_33

    const/4 v8, 0x2

    if-eq v0, v8, :cond_35

    const/4 v8, 0x3

    if-ne v0, v8, :cond_34

    :cond_33
    move/from16 v0, v39

    :goto_1d
    const/4 v8, 0x0

    goto :goto_1e

    :cond_34
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_35
    if-eqz v4, :cond_33

    move/from16 v0, v37

    goto :goto_1d

    .line 32
    :goto_1e
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 33
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 34
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 35
    check-cast v8, Landroidx/compose/material3/internal/InputPhase;

    move-object/from16 v18, v0

    const v0, -0x559dce72

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 36
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v34, v0

    const/4 v8, 0x1

    if-eq v0, v8, :cond_36

    const/4 v8, 0x2

    if-eq v0, v8, :cond_38

    const/4 v8, 0x3

    if-ne v0, v8, :cond_37

    :cond_36
    move/from16 v0, v39

    :goto_1f
    const/4 v8, 0x0

    goto :goto_20

    :cond_37
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_38
    if-eqz v4, :cond_36

    move/from16 v0, v37

    goto :goto_1f

    .line 37
    :goto_20
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 38
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 39
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-object/from16 v36, v0

    const v0, -0x2a50698e

    .line 40
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 41
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v13, v16

    move-object/from16 v16, v19

    const/high16 v19, 0x30000

    move-object/from16 v14, v18

    move-object/from16 v15, v36

    move-object/from16 v18, p17

    .line 42
    invoke-static/range {v13 .. v19}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v45

    move-object/from16 v16, v13

    move-object/from16 v13, v18

    .line 43
    sget-object v0, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v0, v13}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v8

    .line 44
    sget-object v14, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->SlowEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v14, v13}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v14

    .line 45
    invoke-virtual {v1}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    move-result-object v15

    .line 46
    check-cast v15, Landroidx/compose/material3/internal/InputPhase;

    move-object/from16 v36, v1

    const v1, -0x4128d333

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 47
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v15, v34, v15

    const/4 v1, 0x1

    if-eq v15, v1, :cond_3b

    const/4 v1, 0x2

    if-eq v15, v1, :cond_3a

    const/4 v1, 0x3

    if-ne v15, v1, :cond_39

    :goto_21
    move/from16 v1, v37

    :goto_22
    const/4 v15, 0x0

    goto :goto_23

    :cond_39
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_3a
    if-eqz v4, :cond_3b

    goto :goto_21

    :cond_3b
    move/from16 v1, v39

    goto :goto_22

    .line 48
    :goto_23
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 49
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 50
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v15

    .line 51
    check-cast v15, Landroidx/compose/material3/internal/InputPhase;

    move-object/from16 v41, v1

    const v1, -0x4128d333

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 52
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v34, v1

    const/4 v15, 0x1

    if-eq v1, v15, :cond_3e

    const/4 v15, 0x2

    if-eq v1, v15, :cond_3d

    const/4 v15, 0x3

    if-ne v1, v15, :cond_3c

    :goto_24
    move/from16 v1, v37

    :goto_25
    const/4 v15, 0x0

    goto :goto_26

    :cond_3c
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_3d
    if-eqz v4, :cond_3e

    goto :goto_24

    :cond_3e
    move/from16 v1, v39

    goto :goto_25

    .line 53
    :goto_26
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 54
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    .line 55
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v1

    move-wide/from16 v42, v2

    const v2, -0x3aa6c997

    .line 56
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 57
    sget-object v2, Landroidx/compose/material3/internal/InputPhase;->Focused:Landroidx/compose/material3/internal/InputPhase;

    sget-object v3, Landroidx/compose/material3/internal/InputPhase;->UnfocusedEmpty:Landroidx/compose/material3/internal/InputPhase;

    invoke-interface {v1, v2, v3}, Landroidx/compose/animation/core/Transition$Segment;->isTransitioningTo(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v18

    if-eqz v18, :cond_41

    :cond_3f
    move-object v14, v8

    :cond_40
    :goto_27
    const/4 v1, 0x0

    goto :goto_28

    .line 58
    :cond_41
    invoke-interface {v1, v3, v2}, Landroidx/compose/animation/core/Transition$Segment;->isTransitioningTo(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 59
    sget-object v2, Landroidx/compose/material3/internal/InputPhase;->UnfocusedNotEmpty:Landroidx/compose/material3/internal/InputPhase;

    invoke-interface {v1, v2, v3}, Landroidx/compose/animation/core/Transition$Segment;->isTransitioningTo(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_27

    .line 60
    :goto_28
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v18, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v41

    .line 61
    invoke-static/range {v13 .. v19}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v1

    move-object/from16 v16, v13

    move-object/from16 v13, v18

    .line 62
    invoke-virtual/range {v36 .. v36}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    .line 63
    check-cast v2, Landroidx/compose/material3/internal/InputPhase;

    const v3, -0x4b028119

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 64
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v34, v2

    const/4 v15, 0x1

    if-eq v2, v15, :cond_42

    const/4 v15, 0x2

    if-eq v2, v15, :cond_44

    const/4 v15, 0x3

    if-ne v2, v15, :cond_43

    :cond_42
    move/from16 v2, v39

    :goto_29
    const/4 v15, 0x0

    goto :goto_2a

    :cond_43
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_44
    if-eqz v4, :cond_42

    move/from16 v2, v37

    goto :goto_29

    .line 65
    :goto_2a
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 66
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    .line 67
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 68
    check-cast v2, Landroidx/compose/material3/internal/InputPhase;

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 69
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v34, v2

    const/4 v15, 0x1

    if-eq v2, v15, :cond_45

    const/4 v15, 0x2

    if-eq v2, v15, :cond_47

    const/4 v15, 0x3

    if-ne v2, v15, :cond_46

    :cond_45
    move/from16 v37, v39

    :goto_2b
    const/4 v15, 0x0

    goto :goto_2c

    :cond_46
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    return-void

    :cond_47
    if-eqz v4, :cond_45

    goto :goto_2b

    .line 70
    :goto_2c
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 71
    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 72
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    const v3, 0x7ebca8cb

    .line 73
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 74
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object v15, v2

    move-object/from16 v18, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v8

    .line 75
    invoke-static/range {v13 .. v19}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v8

    move-object/from16 v16, v13

    move-object/from16 v13, v18

    .line 76
    invoke-static {v0, v13}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    .line 77
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 78
    check-cast v2, Landroidx/compose/material3/internal/InputPhase;

    const v3, -0xc5f552

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 79
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v34, v2

    const/4 v15, 0x1

    if-ne v2, v15, :cond_48

    move-wide/from16 v14, v42

    :goto_2d
    const/4 v2, 0x0

    goto :goto_2e

    :cond_48
    move-wide/from16 v14, v30

    goto :goto_2d

    .line 80
    :goto_2e
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 81
    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v2

    .line 82
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 83
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .line 84
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v4, :cond_4a

    if-ne v14, v15, :cond_49

    goto :goto_2f

    :cond_49
    move-object/from16 v2, v21

    goto :goto_30

    .line 85
    :cond_4a
    :goto_2f
    new-instance v4, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    const/4 v14, 0x2

    invoke-direct {v4, v14, v2}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;-><init>(ILjava/lang/Object;)V

    .line 86
    new-instance v14, Landroidx/compose/animation/core/TwoWayConverterImpl;

    move-object/from16 v2, v21

    invoke-direct {v14, v2, v4}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 87
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 88
    :goto_30
    move-object/from16 v17, v14

    check-cast v17, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 89
    invoke-virtual/range {v36 .. v36}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    move-result-object v4

    .line 90
    check-cast v4, Landroidx/compose/material3/internal/InputPhase;

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 91
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v34, v4

    const/4 v14, 0x1

    if-ne v4, v14, :cond_4b

    move-object v4, v15

    move-wide/from16 v14, v42

    :goto_31
    const/4 v3, 0x0

    goto :goto_32

    :cond_4b
    move-object v4, v15

    move-wide/from16 v14, v30

    goto :goto_31

    .line 92
    :goto_32
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 93
    new-instance v3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v3, v14, v15}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 94
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 95
    check-cast v14, Landroidx/compose/material3/internal/InputPhase;

    const v15, -0xc5f552

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 96
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v14, v34, v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4c

    move-object/from16 v18, v3

    move-object v14, v4

    move-wide/from16 v3, v42

    :goto_33
    move-object/from16 v21, v0

    const/4 v0, 0x0

    goto :goto_34

    :cond_4c
    move-object/from16 v18, v3

    move-object v14, v4

    move-wide/from16 v3, v30

    goto :goto_33

    .line 97
    :goto_34
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move/from16 v28, v15

    .line 98
    new-instance v15, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v15, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 99
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    const v3, 0x747961b9

    .line 100
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 101
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object v3, v14

    move-object/from16 v14, v18

    move-object/from16 v18, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v21

    .line 102
    invoke-static/range {v13 .. v19}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v4

    move-object/from16 v16, v13

    move-object/from16 v13, v18

    .line 103
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 104
    check-cast v14, Landroidx/compose/material3/internal/InputPhase;

    const v14, -0x1bb38f5d

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 105
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 106
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    .line 107
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v15

    .line 108
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v15, :cond_4e

    if-ne v14, v3, :cond_4d

    goto :goto_35

    :cond_4d
    const/4 v15, 0x2

    goto :goto_36

    .line 109
    :cond_4e
    :goto_35
    new-instance v14, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    const/4 v15, 0x2

    invoke-direct {v14, v15, v0}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;-><init>(ILjava/lang/Object;)V

    .line 110
    new-instance v0, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v0, v2, v14}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 111
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v14, v0

    .line 112
    :goto_36
    check-cast v14, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 113
    invoke-virtual/range {v36 .. v36}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    .line 114
    check-cast v0, Landroidx/compose/material3/internal/InputPhase;

    const v0, -0x1bb38f5d

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v2, 0x0

    .line 115
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v17, v14

    .line 116
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v14, v6, v7}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 117
    invoke-virtual/range {v38 .. v38}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v18

    .line 118
    check-cast v18, Landroidx/compose/material3/internal/InputPhase;

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 119
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move/from16 v23, v15

    .line 120
    new-instance v15, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v15, v6, v7}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 121
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    const v0, 0x46fc0e6e

    .line 122
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 123
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v18, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v21

    .line 124
    invoke-static/range {v13 .. v19}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v13

    move-object/from16 v7, v18

    .line 125
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4f

    .line 126
    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    .line 127
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 129
    :cond_4f
    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    const/16 v18, 0x0

    if-nez v5, :cond_50

    const v0, -0x70c16e39

    .line 130
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v2, 0x0

    .line 131
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object v4, v10

    move-object v6, v11

    move-object/from16 v9, v18

    move-object/from16 v0, v20

    const/16 v22, 0x4

    const/16 v26, 0x800

    goto :goto_37

    :cond_50
    const/4 v2, 0x0

    const v0, -0x70c16e38

    .line 132
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 133
    new-instance v9, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;

    move-object v15, v4

    move-object/from16 v16, v5

    move-object v6, v11

    move-object/from16 v0, v20

    move-object/from16 v11, v29

    move/from16 v14, v32

    move-object/from16 v12, v45

    const/16 v22, 0x4

    const/16 v26, 0x800

    invoke-direct/range {v9 .. v17}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/animation/core/Transition$TransitionAnimationState;ZLandroidx/compose/animation/core/Transition$TransitionAnimationState;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;)V

    move-object v4, v10

    const v5, -0x402b4ec0

    invoke-static {v5, v9, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    .line 134
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object v9, v5

    :goto_37
    if-nez p11, :cond_51

    .line 135
    iget-wide v10, v6, Landroidx/compose/material3/TextFieldColors;->disabledPlaceholderColor:J

    goto :goto_38

    :cond_51
    if-eqz p12, :cond_52

    .line 136
    iget-wide v10, v6, Landroidx/compose/material3/TextFieldColors;->errorPlaceholderColor:J

    goto :goto_38

    :cond_52
    if-eqz v27, :cond_53

    .line 137
    iget-wide v10, v6, Landroidx/compose/material3/TextFieldColors;->focusedPlaceholderColor:J

    goto :goto_38

    .line 138
    :cond_53
    iget-wide v10, v6, Landroidx/compose/material3/TextFieldColors;->unfocusedPlaceholderColor:J

    .line 139
    :goto_38
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_54

    .line 140
    new-instance v2, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda7;

    const/4 v15, 0x3

    invoke-direct {v2, v1, v15}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/runtime/State;I)V

    .line 141
    sget-object v5, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->calculationBlockNestedLevel:Lcom/caverock/androidsvg/SVG;

    .line 142
    new-instance v5, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-direct {v5, v2, v0}, Landroidx/compose/runtime/DerivedSnapshotState;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/NeverEqualPolicy;)V

    .line 143
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v2, v5

    .line 144
    :cond_54
    check-cast v2, Landroidx/compose/runtime/State;

    if-eqz p5, :cond_55

    .line 145
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_55

    .line 146
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_55

    const v2, -0x70b07c28

    .line 147
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    move-object/from16 v20, v0

    .line 148
    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;

    move-object/from16 v5, p5

    move-object v14, v3

    move-wide v2, v10

    move-object/from16 v11, v20

    move/from16 v12, v22

    move/from16 v15, v23

    move/from16 v13, v26

    move-object/from16 v10, p16

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;-><init>(Landroidx/compose/animation/core/Transition$TransitionAnimationState;JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;)V

    const v1, 0x53c6f2c5

    invoke-static {v1, v0, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/4 v2, 0x0

    .line 149
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v16, v0

    goto :goto_39

    :cond_55
    move-object/from16 v10, p16

    move-object v11, v0

    move-object v14, v3

    move/from16 v12, v22

    move/from16 v15, v23

    move/from16 v13, v26

    const/4 v2, 0x0

    const v0, -0x70aa6c96

    .line 150
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 151
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v16, v18

    :goto_39
    if-nez p11, :cond_56

    .line 152
    iget-wide v0, v6, Landroidx/compose/material3/TextFieldColors;->disabledPrefixColor:J

    goto :goto_3a

    :cond_56
    if-eqz p12, :cond_57

    .line 153
    iget-wide v0, v6, Landroidx/compose/material3/TextFieldColors;->errorPrefixColor:J

    goto :goto_3a

    :cond_57
    if-eqz v27, :cond_58

    .line 154
    iget-wide v0, v6, Landroidx/compose/material3/TextFieldColors;->focusedPrefixColor:J

    goto :goto_3a

    .line 155
    :cond_58
    iget-wide v0, v6, Landroidx/compose/material3/TextFieldColors;->unfocusedPrefixColor:J

    .line 156
    :goto_3a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_59

    .line 157
    new-instance v3, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda7;

    invoke-direct {v3, v8, v12}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/runtime/State;I)V

    .line 158
    sget-object v5, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->calculationBlockNestedLevel:Lcom/caverock/androidsvg/SVG;

    .line 159
    new-instance v5, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-direct {v5, v3, v11}, Landroidx/compose/runtime/DerivedSnapshotState;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/NeverEqualPolicy;)V

    .line 160
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v3, v5

    .line 161
    :cond_59
    move-object v11, v3

    check-cast v11, Landroidx/compose/runtime/State;

    if-eqz p7, :cond_5a

    .line 162
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5a

    const v3, -0x70a53f93

    .line 163
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    move/from16 v25, v2

    move-wide v2, v0

    .line 164
    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedPrefix$1;

    const/4 v6, 0x0

    move-object/from16 v5, p7

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object v1, v8

    move/from16 v8, v25

    move/from16 v15, v28

    move/from16 v48, v35

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedPrefix$1;-><init>(Landroidx/compose/animation/core/Transition$TransitionAnimationState;JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;I)V

    const v2, 0x2427e65f

    invoke-static {v2, v0, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    .line 165
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v17, v0

    goto :goto_3b

    :cond_5a
    move-object/from16 v12, p14

    move-object v13, v6

    move-object v1, v8

    move/from16 v15, v28

    move/from16 v48, v35

    move v8, v2

    const v0, -0x709f7ed6

    .line 166
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 167
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v17, v18

    :goto_3b
    if-nez p11, :cond_5b

    .line 168
    iget-wide v2, v13, Landroidx/compose/material3/TextFieldColors;->disabledSuffixColor:J

    goto :goto_3c

    :cond_5b
    if-eqz p12, :cond_5c

    .line 169
    iget-wide v2, v13, Landroidx/compose/material3/TextFieldColors;->errorSuffixColor:J

    goto :goto_3c

    :cond_5c
    if-eqz v27, :cond_5d

    .line 170
    iget-wide v2, v13, Landroidx/compose/material3/TextFieldColors;->focusedSuffixColor:J

    goto :goto_3c

    .line 171
    :cond_5d
    iget-wide v2, v13, Landroidx/compose/material3/TextFieldColors;->unfocusedSuffixColor:J

    :goto_3c
    if-eqz p8, :cond_5e

    .line 172
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5e

    const v0, -0x709c7433

    .line 173
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 174
    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedPrefix$1;

    const/4 v6, 0x1

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$decoratedPrefix$1;-><init>(Landroidx/compose/animation/core/Transition$TransitionAnimationState;JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;I)V

    const v1, -0x2afd8e2

    invoke-static {v1, v0, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    .line 175
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object v6, v0

    goto :goto_3d

    :cond_5e
    const v0, -0x7096b376

    .line 176
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 177
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v6, v18

    :goto_3d
    const v0, -0x7094085f

    .line 178
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 179
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    if-nez p11, :cond_5f

    .line 180
    iget-wide v0, v13, Landroidx/compose/material3/TextFieldColors;->disabledTrailingIconColor:J

    goto :goto_3e

    :cond_5f
    if-eqz p12, :cond_60

    .line 181
    iget-wide v0, v13, Landroidx/compose/material3/TextFieldColors;->errorTrailingIconColor:J

    goto :goto_3e

    :cond_60
    if-eqz v27, :cond_61

    .line 182
    iget-wide v0, v13, Landroidx/compose/material3/TextFieldColors;->focusedTrailingIconColor:J

    goto :goto_3e

    .line 183
    :cond_61
    iget-wide v0, v13, Landroidx/compose/material3/TextFieldColors;->unfocusedTrailingIconColor:J

    :goto_3e
    if-nez p6, :cond_62

    const v0, -0x708fc380

    .line 184
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 185
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v11, p6

    move-object/from16 v19, v18

    goto :goto_3f

    :cond_62
    const v2, -0x708fc37f

    .line 186
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 187
    new-instance v2, Landroidx/compose/material3/ChipKt$leadingContent$1;

    move-object/from16 v11, p6

    invoke-direct {v2, v0, v1, v11, v15}, Landroidx/compose/material3/ChipKt$leadingContent$1;-><init>(JLkotlin/jvm/functions/Function2;I)V

    const v0, 0x4f8b22f9

    invoke-static {v0, v2, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    .line 188
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v19, v0

    :goto_3f
    if-nez p11, :cond_63

    .line 189
    iget-wide v0, v13, Landroidx/compose/material3/TextFieldColors;->disabledSupportingTextColor:J

    :goto_40
    move-wide v1, v0

    goto :goto_41

    :cond_63
    if-eqz p12, :cond_64

    .line 190
    iget-wide v0, v13, Landroidx/compose/material3/TextFieldColors;->errorSupportingTextColor:J

    goto :goto_40

    :cond_64
    if-eqz v27, :cond_65

    .line 191
    iget-wide v0, v13, Landroidx/compose/material3/TextFieldColors;->focusedSupportingTextColor:J

    goto :goto_40

    .line 192
    :cond_65
    iget-wide v0, v13, Landroidx/compose/material3/TextFieldColors;->unfocusedSupportingTextColor:J

    goto :goto_40

    :goto_41
    if-nez p9, :cond_66

    const v0, -0x708b48fc

    .line 193
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 194
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v0, v18

    goto :goto_42

    :cond_66
    const v0, -0x708b48fb

    .line 195
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 196
    new-instance v0, Landroidx/compose/material3/ButtonKt$Button$2;

    const/4 v5, 0x1

    move-object/from16 v4, p9

    move-object/from16 v3, v29

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ButtonKt$Button$2;-><init>(JLjava/lang/Object;Lkotlin/Function;I)V

    const v1, 0x31e62e50

    invoke-static {v1, v0, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    .line 197
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 198
    :goto_42
    sget-object v1, Landroidx/compose/material3/internal/TextFieldImplKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v15, :cond_6c

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6b

    const v1, -0x7075f34a

    .line 199
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 200
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_67

    .line 201
    new-instance v1, Landroidx/compose/ui/geometry/Size;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 202
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    .line 203
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 204
    :cond_67
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 205
    new-instance v4, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1;

    move-object/from16 v5, p3

    invoke-direct {v4, v1, v5, v12, v10}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;)V

    const/high16 v20, 0x70000000

    const v2, 0x1f7a6892

    invoke-static {v2, v4, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    .line 206
    new-instance v41, Landroidx/compose/material3/TextFieldDefaults$Container$1;

    const/16 v42, 0x0

    const/16 v43, 0x7

    .line 207
    const-class v44, Landroidx/compose/runtime/State;

    const-string/jumbo v46, "value"

    const-string v47, "getValue()Ljava/lang/Object;"

    invoke-direct/range {v41 .. v47}, Landroidx/compose/material3/TextFieldDefaults$Container$1;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v2

    move-object v2, v9

    move-object/from16 v3, v41

    move-object/from16 v4, v45

    const/high16 v21, 0xe000000

    .line 208
    new-instance v9, Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;

    invoke-direct {v9, v3}, Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;-><init>(Landroidx/compose/material3/TextFieldDefaults$Container$1;)V

    move/from16 v3, v48

    and-int/lit16 v8, v3, 0x1c00

    const/16 v15, 0x800

    if-ne v8, v15, :cond_68

    const/16 v28, 0x1

    goto :goto_43

    :cond_68
    const/16 v28, 0x0

    .line 209
    :goto_43
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int v8, v28, v8

    .line 210
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v8, :cond_69

    if-ne v15, v14, :cond_6a

    .line 211
    :cond_69
    new-instance v15, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    const/16 v8, 0xf

    invoke-direct {v15, v5, v4, v1, v8}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 212
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 213
    :cond_6a
    check-cast v15, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v1, v3, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    shl-int/lit8 v4, v24, 0x15

    and-int v4, v4, v21

    or-int/2addr v1, v4

    shl-int/lit8 v3, v3, 0x12

    and-int v3, v3, v20

    or-int/2addr v1, v3

    const v3, 0xe000

    const/16 v40, 0x3

    shr-int/lit8 v4, v24, 0x3

    and-int/2addr v3, v4

    or-int/lit16 v3, v3, 0x180

    move-object v8, v5

    move-object v14, v7

    move-object v13, v12

    move-object v10, v15

    move-object/from16 v5, v17

    move-object/from16 v4, v19

    move/from16 v7, p10

    move-object v12, v0

    move v15, v1

    move-object/from16 v1, v16

    move-object/from16 v0, p2

    move/from16 v16, v3

    move-object/from16 v3, v18

    .line 214
    invoke-static/range {v0 .. v16}, Landroidx/compose/material3/CardKt;->OutlinedTextFieldLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V

    move-object v13, v14

    const/4 v0, 0x0

    .line 215
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto/16 :goto_44

    :cond_6b
    move-object v13, v7

    move v0, v8

    const v1, 0x1d670ac8

    .line 216
    invoke-static {v13, v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lcoil3/network/HttpException;

    move-result-object v0

    .line 217
    throw v0

    :cond_6c
    move-object v12, v0

    move-object v13, v7

    move v0, v8

    move-object v2, v9

    move-object/from16 v1, v16

    move-object/from16 v5, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    const/high16 v20, 0x70000000

    const/high16 v21, 0xe000000

    const v7, -0x708602aa

    .line 218
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 219
    new-instance v7, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$1;

    const/16 v8, 0x8

    move-object/from16 v9, p16

    invoke-direct {v7, v8, v9}, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$1;-><init>(ILkotlin/jvm/functions/Function2;)V

    const v8, -0x671b8a8b

    invoke-static {v8, v7, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    .line 220
    new-instance v41, Landroidx/compose/material3/TextFieldDefaults$Container$1;

    const/16 v42, 0x0

    const/16 v43, 0x6

    .line 221
    const-class v44, Landroidx/compose/runtime/State;

    const-string/jumbo v46, "value"

    const-string v47, "getValue()Ljava/lang/Object;"

    invoke-direct/range {v41 .. v47}, Landroidx/compose/material3/TextFieldDefaults$Container$1;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v41

    .line 222
    new-instance v9, Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;

    invoke-direct {v9, v7}, Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;-><init>(Landroidx/compose/material3/TextFieldDefaults$Container$1;)V

    shr-int/lit8 v7, v48, 0x3

    and-int/lit8 v7, v7, 0x70

    or-int/lit8 v7, v7, 0x6

    shl-int/lit8 v8, v24, 0x15

    and-int v8, v8, v21

    or-int/2addr v7, v8

    shl-int/lit8 v8, v48, 0x12

    and-int v8, v8, v20

    or-int v14, v7, v8

    shr-int/lit8 v7, v24, 0x6

    and-int/lit16 v7, v7, 0x1c00

    or-int/lit8 v15, v7, 0x30

    move-object v0, v2

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    move/from16 v7, p10

    move-object v11, v12

    move-object/from16 v12, p14

    .line 223
    invoke-static/range {v0 .. v15}, Landroidx/compose/material3/CardKt;->TextFieldLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/GapComposer;II)V

    const/4 v15, 0x0

    .line 224
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_44

    .line 225
    :cond_6d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 226
    :goto_44
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_6e

    move-object v1, v0

    new-instance v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v49, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v19}, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/material3/internal/TextFieldType;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition$Attached;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Lkotlin/jvm/functions/Function2;II)V

    move-object/from16 v1, v49

    .line 227
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6e
    return-void
.end method

.method public static final Decoration-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V
    .locals 8

    .line 1
    const v0, 0x17a3cff9

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4, p0, p1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    :goto_0
    or-int/2addr v0, p5

    .line 17
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/16 v1, 0x10

    .line 27
    .line 28
    :goto_1
    or-int/2addr v0, v1

    .line 29
    and-int/lit16 v1, p5, 0x180

    .line 30
    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p4, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const/16 v1, 0x100

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/16 v1, 0x80

    .line 43
    .line 44
    :goto_2
    or-int/2addr v0, v1

    .line 45
    :cond_3
    and-int/lit16 v1, v0, 0x93

    .line 46
    .line 47
    const/16 v2, 0x92

    .line 48
    .line 49
    if-eq v1, v2, :cond_4

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    goto :goto_3

    .line 53
    :cond_4
    const/4 v1, 0x0

    .line 54
    :goto_3
    and-int/lit8 v2, v0, 0x1

    .line 55
    .line 56
    invoke-virtual {p4, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    and-int/lit16 v7, v0, 0x3fe

    .line 63
    .line 64
    move-wide v2, p0

    .line 65
    move-object v4, p2

    .line 66
    move-object v5, p3

    .line 67
    move-object v6, p4

    .line 68
    invoke-static/range {v2 .. v7}, Landroidx/compose/material3/internal/LayoutUtilKt;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 69
    .line 70
    .line 71
    move-wide v1, v2

    .line 72
    move-object v3, v4

    .line 73
    move-object v4, v5

    .line 74
    goto :goto_4

    .line 75
    :cond_5
    move-wide v1, p0

    .line 76
    move-object v3, p2

    .line 77
    move-object v4, p3

    .line 78
    move-object v6, p4

    .line 79
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 80
    .line 81
    .line 82
    :goto_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-eqz p0, :cond_6

    .line 87
    .line 88
    new-instance v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    const/4 v6, 0x2

    .line 91
    move v5, p5

    .line 92
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;-><init>(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;II)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 96
    .line 97
    :cond_6
    return-void
.end method

.method public static final Decoration-Iv8Zu3U(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V
    .locals 3

    .line 1
    const v0, 0x2330c171

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3, p0, p1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    :goto_0
    or-int/2addr v0, p4

    .line 17
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/16 v1, 0x10

    .line 27
    .line 28
    :goto_1
    or-int/2addr v0, v1

    .line 29
    and-int/lit8 v1, v0, 0x13

    .line 30
    .line 31
    const/16 v2, 0x12

    .line 32
    .line 33
    if-eq v1, v2, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/4 v1, 0x0

    .line 38
    :goto_2
    and-int/lit8 v2, v0, 0x1

    .line 39
    .line 40
    invoke-virtual {p3, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    sget-object v1, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 47
    .line 48
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 49
    .line 50
    invoke-direct {v2, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    and-int/lit8 v0, v0, 0x70

    .line 58
    .line 59
    const/16 v2, 0x8

    .line 60
    .line 61
    or-int/2addr v0, v2

    .line 62
    invoke-static {v1, p2, p3, v0}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 67
    .line 68
    .line 69
    :goto_3
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    if-eqz p3, :cond_4

    .line 74
    .line 75
    new-instance v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;

    .line 76
    .line 77
    invoke-direct {v0, p0, p1, p2, p4}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda4;-><init>(JLkotlin/jvm/functions/Function2;I)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 81
    .line 82
    :cond_4
    return-void
.end method

.method public static final ObserveState(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 7

    .line 1
    const v0, -0x6f5c694d

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    :goto_0
    or-int/2addr v0, p4

    .line 17
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x20

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    move v1, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/16 v1, 0x10

    .line 28
    .line 29
    :goto_1
    or-int/2addr v0, v1

    .line 30
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/16 v3, 0x100

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    move v1, v3

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/16 v1, 0x80

    .line 41
    .line 42
    :goto_2
    or-int/2addr v0, v1

    .line 43
    and-int/lit16 v1, v0, 0x93

    .line 44
    .line 45
    const/16 v4, 0x92

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x1

    .line 49
    if-eq v1, v4, :cond_3

    .line 50
    .line 51
    move v1, v6

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    move v1, v5

    .line 54
    :goto_3
    and-int/lit8 v4, v0, 0x1

    .line 55
    .line 56
    invoke-virtual {p3, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_8

    .line 61
    .line 62
    and-int/lit8 v1, v0, 0x70

    .line 63
    .line 64
    if-ne v1, v2, :cond_4

    .line 65
    .line 66
    move v1, v6

    .line 67
    goto :goto_4

    .line 68
    :cond_4
    move v1, v5

    .line 69
    :goto_4
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    or-int/2addr v1, v2

    .line 74
    and-int/lit16 v0, v0, 0x380

    .line 75
    .line 76
    if-ne v0, v3, :cond_5

    .line 77
    .line 78
    move v5, v6

    .line 79
    :cond_5
    or-int v0, v1, v5

    .line 80
    .line 81
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-nez v0, :cond_6

    .line 86
    .line 87
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 88
    .line 89
    if-ne v1, v0, :cond_7

    .line 90
    .line 91
    :cond_6
    new-instance v1, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 92
    .line 93
    const/16 v0, 0xc

    .line 94
    .line 95
    invoke-direct {v1, p0, p1, p2, v0}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_7
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 102
    .line 103
    invoke-static {p0, v1, p3}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;)V

    .line 104
    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_8
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 108
    .line 109
    .line 110
    :goto_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    if-eqz p3, :cond_9

    .line 115
    .line 116
    new-instance v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;

    .line 117
    .line 118
    const/4 v5, 0x5

    .line 119
    move-object v1, p0

    .line 120
    move-object v2, p1

    .line 121
    move-object v3, p2

    .line 122
    move v4, p4

    .line 123
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;II)V

    .line 124
    .line 125
    .line 126
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 127
    .line 128
    :cond_9
    return-void
.end method

.method public static final ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V
    .locals 8

    .line 1
    const v0, -0x28d355e8

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p5, 0x6

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p4, p0, p1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    or-int/2addr v0, p5

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, p5

    .line 24
    :goto_1
    and-int/lit8 v2, p5, 0x30

    .line 25
    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    const/16 v2, 0x20

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/16 v2, 0x10

    .line 38
    .line 39
    :goto_2
    or-int/2addr v0, v2

    .line 40
    :cond_3
    and-int/lit16 v2, p5, 0x180

    .line 41
    .line 42
    if-nez v2, :cond_5

    .line 43
    .line 44
    invoke-virtual {p4, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    const/16 v2, 0x100

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    const/16 v2, 0x80

    .line 54
    .line 55
    :goto_3
    or-int/2addr v0, v2

    .line 56
    :cond_5
    and-int/lit16 v2, v0, 0x93

    .line 57
    .line 58
    const/16 v3, 0x92

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x1

    .line 62
    if-eq v2, v3, :cond_6

    .line 63
    .line 64
    move v2, v5

    .line 65
    goto :goto_4

    .line 66
    :cond_6
    move v2, v4

    .line 67
    :goto_4
    and-int/lit8 v3, v0, 0x1

    .line 68
    .line 69
    invoke-virtual {p4, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_7

    .line 74
    .line 75
    sget-object v2, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 76
    .line 77
    invoke-virtual {p4, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Landroidx/compose/ui/text/TextStyle;

    .line 82
    .line 83
    invoke-virtual {v3, p2}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    sget-object v6, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 88
    .line 89
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    .line 90
    .line 91
    invoke-direct {v7, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    new-array v1, v1, [Landroidx/compose/runtime/ProvidedValue;

    .line 103
    .line 104
    aput-object v6, v1, v4

    .line 105
    .line 106
    aput-object v2, v1, v5

    .line 107
    .line 108
    shr-int/lit8 v0, v0, 0x3

    .line 109
    .line 110
    and-int/lit8 v0, v0, 0x70

    .line 111
    .line 112
    const/16 v2, 0x8

    .line 113
    .line 114
    or-int/2addr v0, v2

    .line 115
    invoke-static {v1, p3, p4, v0}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 116
    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_7
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 120
    .line 121
    .line 122
    :goto_5
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 123
    .line 124
    .line 125
    move-result-object p4

    .line 126
    if-eqz p4, :cond_8

    .line 127
    .line 128
    new-instance v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    const/4 v6, 0x1

    .line 131
    move-wide v1, p0

    .line 132
    move-object v3, p2

    .line 133
    move-object v4, p3

    .line 134
    move v5, p5

    .line 135
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda0;-><init>(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;II)V

    .line 136
    .line 137
    .line 138
    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 139
    .line 140
    :cond_8
    return-void
.end method

.method public static final TooltipPopup(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/material3/TooltipStateImpl;Lkotlinx/coroutines/CoroutineScope;ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 16

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move-object/from16 v6, p5

    .line 10
    .line 11
    move-object/from16 v11, p6

    .line 12
    .line 13
    move/from16 v0, p7

    .line 14
    .line 15
    const v1, -0x5443a8da

    .line 16
    .line 17
    .line 18
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v1, v0, 0x6

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    move-object/from16 v1, p0

    .line 26
    .line 27
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr v7, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object/from16 v1, p0

    .line 39
    .line 40
    move v7, v0

    .line 41
    :goto_1
    and-int/lit8 v8, v0, 0x30

    .line 42
    .line 43
    const/16 v9, 0x20

    .line 44
    .line 45
    if-nez v8, :cond_4

    .line 46
    .line 47
    and-int/lit8 v8, v0, 0x40

    .line 48
    .line 49
    if-nez v8, :cond_2

    .line 50
    .line 51
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    :goto_2
    if-eqz v8, :cond_3

    .line 61
    .line 62
    move v8, v9

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/16 v8, 0x10

    .line 65
    .line 66
    :goto_3
    or-int/2addr v7, v8

    .line 67
    :cond_4
    and-int/lit16 v8, v0, 0x180

    .line 68
    .line 69
    const/16 v10, 0x100

    .line 70
    .line 71
    if-nez v8, :cond_6

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_5

    .line 79
    .line 80
    move v8, v10

    .line 81
    goto :goto_4

    .line 82
    :cond_5
    const/16 v8, 0x80

    .line 83
    .line 84
    :goto_4
    or-int/2addr v7, v8

    .line 85
    :cond_6
    and-int/lit16 v8, v0, 0xc00

    .line 86
    .line 87
    if-nez v8, :cond_8

    .line 88
    .line 89
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-eqz v8, :cond_7

    .line 94
    .line 95
    const/16 v8, 0x800

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_7
    const/16 v8, 0x400

    .line 99
    .line 100
    :goto_5
    or-int/2addr v7, v8

    .line 101
    :cond_8
    and-int/lit16 v8, v0, 0x6000

    .line 102
    .line 103
    if-nez v8, :cond_a

    .line 104
    .line 105
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-eqz v8, :cond_9

    .line 110
    .line 111
    const/16 v8, 0x4000

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_9
    const/16 v8, 0x2000

    .line 115
    .line 116
    :goto_6
    or-int/2addr v7, v8

    .line 117
    :cond_a
    const/high16 v8, 0x30000

    .line 118
    .line 119
    and-int/2addr v8, v0

    .line 120
    const/high16 v12, 0x20000

    .line 121
    .line 122
    if-nez v8, :cond_c

    .line 123
    .line 124
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-eqz v8, :cond_b

    .line 129
    .line 130
    move v8, v12

    .line 131
    goto :goto_7

    .line 132
    :cond_b
    const/high16 v8, 0x10000

    .line 133
    .line 134
    :goto_7
    or-int/2addr v7, v8

    .line 135
    :cond_c
    const/high16 v8, 0x180000

    .line 136
    .line 137
    and-int/2addr v8, v0

    .line 138
    if-nez v8, :cond_e

    .line 139
    .line 140
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-eqz v8, :cond_d

    .line 145
    .line 146
    const/high16 v8, 0x100000

    .line 147
    .line 148
    goto :goto_8

    .line 149
    :cond_d
    const/high16 v8, 0x80000

    .line 150
    .line 151
    :goto_8
    or-int/2addr v7, v8

    .line 152
    :cond_e
    const v8, 0x92493

    .line 153
    .line 154
    .line 155
    and-int/2addr v8, v7

    .line 156
    const v13, 0x92492

    .line 157
    .line 158
    .line 159
    const/4 v14, 0x0

    .line 160
    const/4 v15, 0x1

    .line 161
    if-eq v8, v13, :cond_f

    .line 162
    .line 163
    move v8, v15

    .line 164
    goto :goto_9

    .line 165
    :cond_f
    move v8, v14

    .line 166
    :goto_9
    and-int/lit8 v13, v7, 0x1

    .line 167
    .line 168
    invoke-virtual {v11, v13, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    if-eqz v8, :cond_16

    .line 173
    .line 174
    const v8, 0x7f1209c5

    .line 175
    .line 176
    .line 177
    invoke-static {v8, v11}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    and-int/lit16 v13, v7, 0x380

    .line 182
    .line 183
    if-ne v13, v10, :cond_10

    .line 184
    .line 185
    move v10, v15

    .line 186
    goto :goto_a

    .line 187
    :cond_10
    move v10, v14

    .line 188
    :goto_a
    and-int/lit8 v13, v7, 0x70

    .line 189
    .line 190
    if-eq v13, v9, :cond_12

    .line 191
    .line 192
    and-int/lit8 v9, v7, 0x40

    .line 193
    .line 194
    if-eqz v9, :cond_11

    .line 195
    .line 196
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    if-eqz v9, :cond_11

    .line 201
    .line 202
    goto :goto_b

    .line 203
    :cond_11
    move v9, v14

    .line 204
    goto :goto_c

    .line 205
    :cond_12
    :goto_b
    move v9, v15

    .line 206
    :goto_c
    or-int/2addr v9, v10

    .line 207
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v10

    .line 211
    or-int/2addr v9, v10

    .line 212
    const/high16 v10, 0x70000

    .line 213
    .line 214
    and-int/2addr v10, v7

    .line 215
    if-ne v10, v12, :cond_13

    .line 216
    .line 217
    move v14, v15

    .line 218
    :cond_13
    or-int/2addr v9, v14

    .line 219
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    if-nez v9, :cond_14

    .line 224
    .line 225
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 226
    .line 227
    if-ne v10, v9, :cond_15

    .line 228
    .line 229
    :cond_14
    new-instance v10, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;

    .line 230
    .line 231
    const/4 v9, 0x5

    .line 232
    invoke-direct {v10, v2, v3, v5, v9}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    :cond_15
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 239
    .line 240
    new-instance v9, Landroidx/compose/ui/window/PopupProperties;

    .line 241
    .line 242
    invoke-direct {v9, v4}, Landroidx/compose/ui/window/PopupProperties;-><init>(Z)V

    .line 243
    .line 244
    .line 245
    new-instance v12, Landroidx/compose/material3/ButtonKt$Button$2$1;

    .line 246
    .line 247
    const/4 v13, 0x6

    .line 248
    invoke-direct {v12, v13, v8, v6}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    const v8, -0x4cc0d43c

    .line 252
    .line 253
    .line 254
    invoke-static {v8, v12, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    and-int/lit8 v7, v7, 0xe

    .line 259
    .line 260
    or-int/lit16 v12, v7, 0xc00

    .line 261
    .line 262
    const/4 v13, 0x0

    .line 263
    move-object v7, v10

    .line 264
    move-object v10, v8

    .line 265
    move-object v8, v7

    .line 266
    move-object v7, v1

    .line 267
    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 268
    .line 269
    .line 270
    goto :goto_d

    .line 271
    :cond_16
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 272
    .line 273
    .line 274
    :goto_d
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    if-eqz v8, :cond_17

    .line 279
    .line 280
    new-instance v0, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda1;

    .line 281
    .line 282
    move-object/from16 v1, p0

    .line 283
    .line 284
    move/from16 v7, p7

    .line 285
    .line 286
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/material3/TooltipStateImpl;Lkotlinx/coroutines/CoroutineScope;ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 287
    .line 288
    .line 289
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 290
    .line 291
    :cond_17
    return-void
.end method

.method public static final WrappedAnchor(Landroidx/compose/material3/TooltipStateImpl;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 9

    .line 1
    const v0, 0x6fa740c0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p4, 0x6

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    :goto_0
    or-int/2addr v0, p4

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, p4

    .line 24
    :goto_1
    and-int/lit8 v2, p4, 0x30

    .line 25
    .line 26
    if-nez v2, :cond_4

    .line 27
    .line 28
    and-int/lit8 v2, p4, 0x40

    .line 29
    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    :goto_2
    if-eqz v2, :cond_3

    .line 42
    .line 43
    const/16 v2, 0x20

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    const/16 v2, 0x10

    .line 47
    .line 48
    :goto_3
    or-int/2addr v0, v2

    .line 49
    :cond_4
    and-int/lit16 v2, p4, 0x180

    .line 50
    .line 51
    if-nez v2, :cond_6

    .line 52
    .line 53
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_5

    .line 58
    .line 59
    const/16 v2, 0x100

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_5
    const/16 v2, 0x80

    .line 63
    .line 64
    :goto_4
    or-int/2addr v0, v2

    .line 65
    :cond_6
    and-int/lit16 v2, p4, 0xc00

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    if-nez v2, :cond_8

    .line 69
    .line 70
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_7

    .line 75
    .line 76
    const/16 v2, 0x800

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_7
    const/16 v2, 0x400

    .line 80
    .line 81
    :goto_5
    or-int/2addr v0, v2

    .line 82
    :cond_8
    and-int/lit16 v2, p4, 0x6000

    .line 83
    .line 84
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 85
    .line 86
    if-nez v2, :cond_a

    .line 87
    .line 88
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_9

    .line 93
    .line 94
    const/16 v2, 0x4000

    .line 95
    .line 96
    goto :goto_6

    .line 97
    :cond_9
    const/16 v2, 0x2000

    .line 98
    .line 99
    :goto_6
    or-int/2addr v0, v2

    .line 100
    :cond_a
    const/high16 v2, 0x30000

    .line 101
    .line 102
    and-int/2addr v2, p4

    .line 103
    if-nez v2, :cond_c

    .line 104
    .line 105
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_b

    .line 110
    .line 111
    const/high16 v2, 0x20000

    .line 112
    .line 113
    goto :goto_7

    .line 114
    :cond_b
    const/high16 v2, 0x10000

    .line 115
    .line 116
    :goto_7
    or-int/2addr v0, v2

    .line 117
    :cond_c
    const v2, 0x12493

    .line 118
    .line 119
    .line 120
    and-int/2addr v2, v0

    .line 121
    const v5, 0x12492

    .line 122
    .line 123
    .line 124
    if-eq v2, v5, :cond_d

    .line 125
    .line 126
    move v2, v1

    .line 127
    goto :goto_8

    .line 128
    :cond_d
    move v2, v3

    .line 129
    :goto_8
    and-int/lit8 v5, v0, 0x1

    .line 130
    .line 131
    invoke-virtual {p3, v5, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_12

    .line 136
    .line 137
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 142
    .line 143
    if-ne v2, v5, :cond_e

    .line 144
    .line 145
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/GapComposer;)Lkotlinx/coroutines/CoroutineScope;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_e
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 153
    .line 154
    const v5, 0x7f1209c6

    .line 155
    .line 156
    .line 157
    invoke-static {v5, p3}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    new-instance v6, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$1;

    .line 162
    .line 163
    invoke-direct {v6, p0, v3}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$1;-><init>(Landroidx/compose/material3/TooltipStateImpl;I)V

    .line 164
    .line 165
    .line 166
    invoke-static {v4, p0, v6}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    new-instance v6, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$1;

    .line 171
    .line 172
    invoke-direct {v6, p0, v1}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$1;-><init>(Landroidx/compose/material3/TooltipStateImpl;I)V

    .line 173
    .line 174
    .line 175
    invoke-static {v4, p0, v6}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    new-instance v6, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 180
    .line 181
    const/16 v7, 0xd

    .line 182
    .line 183
    invoke-direct {v6, v5, v2, p0, v7}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 184
    .line 185
    .line 186
    new-instance v5, Landroidx/compose/material3/internal/ParentSemanticsNodeElement;

    .line 187
    .line 188
    invoke-direct {v5, v6}, Landroidx/compose/material3/internal/ParentSemanticsNodeElement;-><init>(Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;)V

    .line 189
    .line 190
    .line 191
    invoke-interface {v4, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    new-instance v5, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 196
    .line 197
    const/16 v6, 0xe

    .line 198
    .line 199
    invoke-direct {v5, v6, v2, p0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v4, v5}, Landroidx/compose/ui/focus/FocusTraversalKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    new-instance v4, Landroidx/compose/runtime/Latch$await$2$2;

    .line 207
    .line 208
    const/4 v5, 0x3

    .line 209
    invoke-direct {v4, v5, p0, p1}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v2, v4}, Landroidx/compose/ui/input/key/Key_androidKt;->onPreviewKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 217
    .line 218
    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/GapComposer;)I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-static {p3, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 235
    .line 236
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 240
    .line 241
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 242
    .line 243
    .line 244
    iget-boolean v8, p3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 245
    .line 246
    if-eqz v8, :cond_f

    .line 247
    .line 248
    invoke-virtual {p3, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 249
    .line 250
    .line 251
    goto :goto_9

    .line 252
    :cond_f
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 253
    .line 254
    .line 255
    :goto_9
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 256
    .line 257
    invoke-static {p3, v3, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 258
    .line 259
    .line 260
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 261
    .line 262
    invoke-static {p3, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 263
    .line 264
    .line 265
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 266
    .line 267
    iget-boolean v5, p3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 268
    .line 269
    if-nez v5, :cond_10

    .line 270
    .line 271
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-nez v5, :cond_11

    .line 284
    .line 285
    :cond_10
    invoke-static {v4, p3, v4, v3}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 286
    .line 287
    .line 288
    :cond_11
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 289
    .line 290
    invoke-static {p3, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 291
    .line 292
    .line 293
    shr-int/lit8 v0, v0, 0xf

    .line 294
    .line 295
    and-int/2addr v0, v6

    .line 296
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {p2, p3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 304
    .line 305
    .line 306
    goto :goto_a

    .line 307
    :cond_12
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 308
    .line 309
    .line 310
    :goto_a
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 311
    .line 312
    .line 313
    move-result-object p3

    .line 314
    if-eqz p3, :cond_13

    .line 315
    .line 316
    new-instance v0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;

    .line 317
    .line 318
    const/16 v5, 0xa

    .line 319
    .line 320
    move-object v1, p0

    .line 321
    move-object v2, p1

    .line 322
    move-object v3, p2

    .line 323
    move v4, p4

    .line 324
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 325
    .line 326
    .line 327
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 328
    .line 329
    :cond_13
    return-void
.end method

.method public static childSemantics$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;-><init>(Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroidx/compose/ui/layout/LayoutIdModifier;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Landroidx/compose/ui/layout/LayoutIdModifier;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v1

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutIdModifier;->layoutId:Ljava/lang/String;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    return-object v1
.end method

.method public static final getMinimizedAlignment(Landroidx/compose/material3/TextFieldLabelPosition$Attached;)Landroidx/compose/ui/Alignment$Horizontal;
    .locals 1

    .line 1
    instance-of v0, p0, Landroidx/compose/material3/TextFieldLabelPosition$Attached;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string v0, "Unknown position: "

    .line 9
    .line 10
    invoke-static {v0, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public static final getString-2EP1pXo(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final minimizedLabelHalfHeight(Landroidx/compose/runtime/GapComposer;)F
    .locals 8

    .line 1
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 12
    .line 13
    iget-wide v0, v0, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 14
    .line 15
    sget-wide v2, Landroidx/compose/material3/tokens/TypeScaleTokens;->BodySmallLineHeight:J

    .line 16
    .line 17
    const-wide v4, 0xff00000000L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr v4, v0

    .line 23
    const-wide v6, 0x100000000L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    cmp-long v4, v4, v6

    .line 29
    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-wide v0, v2

    .line 34
    :goto_0
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Landroidx/compose/ui/unit/Density;

    .line 41
    .line 42
    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/unit/Density;->toDp-GaN1DYA(J)F

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    const/high16 v0, 0x40000000    # 2.0f

    .line 47
    .line 48
    div-float/2addr p0, v0

    .line 49
    return p0
.end method

.method public static final subtractConstraintSafely(II)I
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return p0

    .line 7
    :cond_0
    sub-int/2addr p0, p1

    .line 8
    if-gez p0, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    :cond_1
    return p0
.end method

.method public static final textFieldHorizontalIconPadding(Landroidx/compose/runtime/GapComposer;)F
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/ui/unit/Dp;

    .line 8
    .line 9
    iget p0, p0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    move p0, v1

    .line 19
    :cond_0
    sget v0, Landroidx/compose/material3/tokens/SmallIconButtonTokens;->IconSize:F

    .line 20
    .line 21
    sub-float/2addr p0, v0

    .line 22
    const/high16 v0, 0x40000000    # 2.0f

    .line 23
    .line 24
    div-float/2addr p0, v0

    .line 25
    cmpg-float v0, p0, v1

    .line 26
    .line 27
    if-gez v0, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    return p0
.end method
