.class public final Landroidx/compose/material3/TooltipKt$animateTooltip$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $transition:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material3/TooltipKt$animateTooltip$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material3/TooltipKt$animateTooltip$2;->$transition:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/TooltipKt$animateTooltip$2;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    const/16 v3, 0x12

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x4

    .line 11
    const/4 v6, 0x1

    .line 12
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/compose/material3/TooltipKt$animateTooltip$2;->$transition:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Ljava/lang/Void;

    .line 23
    .line 24
    move-object/from16 v1, p2

    .line 25
    .line 26
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 27
    .line 28
    move-object/from16 v2, p3

    .line 29
    .line 30
    check-cast v2, Ljava/lang/Number;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 33
    .line 34
    .line 35
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 36
    .line 37
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-object v7

    .line 45
    :pswitch_0
    move-object/from16 v1, p1

    .line 46
    .line 47
    check-cast v1, Landroidx/compose/material3/TooltipScopeImpl;

    .line 48
    .line 49
    move-object/from16 v2, p2

    .line 50
    .line 51
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 52
    .line 53
    move-object/from16 v9, p3

    .line 54
    .line 55
    check-cast v9, Ljava/lang/Number;

    .line 56
    .line 57
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    and-int/lit8 v10, v9, 0x6

    .line 62
    .line 63
    if-nez v10, :cond_2

    .line 64
    .line 65
    and-int/lit8 v10, v9, 0x8

    .line 66
    .line 67
    if-nez v10, :cond_0

    .line 68
    .line 69
    move-object v10, v2

    .line 70
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 71
    .line 72
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move-object v10, v2

    .line 78
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 79
    .line 80
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    :goto_0
    if-eqz v10, :cond_1

    .line 85
    .line 86
    move v4, v5

    .line 87
    :cond_1
    or-int/2addr v9, v4

    .line 88
    :cond_2
    and-int/lit8 v4, v9, 0x13

    .line 89
    .line 90
    if-eq v4, v3, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move v6, v8

    .line 94
    :goto_1
    and-int/lit8 v3, v9, 0x1

    .line 95
    .line 96
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 97
    .line 98
    invoke-virtual {v2, v3, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    new-instance v3, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 105
    .line 106
    check-cast v0, Ljava/lang/String;

    .line 107
    .line 108
    invoke-direct {v3, v8, v0}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    const v0, -0x3b99a1f7

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 115
    .line 116
    .line 117
    move-result-object v16

    .line 118
    and-int/lit8 v0, v9, 0xe

    .line 119
    .line 120
    const/high16 v3, 0x30000000

    .line 121
    .line 122
    or-int v18, v0, v3

    .line 123
    .line 124
    const/4 v9, 0x0

    .line 125
    const/4 v10, 0x0

    .line 126
    const/4 v11, 0x0

    .line 127
    const-wide/16 v12, 0x0

    .line 128
    .line 129
    const-wide/16 v14, 0x0

    .line 130
    .line 131
    move-object v8, v1

    .line 132
    move-object/from16 v17, v2

    .line 133
    .line 134
    invoke-static/range {v8 .. v18}, Landroidx/compose/material3/TooltipKt;->PlainTooltip-gv3ox5I(Landroidx/compose/material3/TooltipScopeImpl;Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    move-object/from16 v17, v2

    .line 139
    .line 140
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 141
    .line 142
    .line 143
    :goto_2
    return-object v7

    .line 144
    :pswitch_1
    move-object/from16 v1, p1

    .line 145
    .line 146
    check-cast v1, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;

    .line 147
    .line 148
    move-object/from16 v1, p2

    .line 149
    .line 150
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 151
    .line 152
    move-object/from16 v3, p3

    .line 153
    .line 154
    check-cast v3, Ljava/lang/Number;

    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    and-int/lit8 v4, v3, 0x11

    .line 161
    .line 162
    if-eq v4, v2, :cond_5

    .line 163
    .line 164
    move v2, v6

    .line 165
    goto :goto_3

    .line 166
    :cond_5
    move v2, v8

    .line 167
    :goto_3
    and-int/2addr v3, v6

    .line 168
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 169
    .line 170
    invoke-virtual {v1, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_6

    .line 175
    .line 176
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 177
    .line 178
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_6
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 187
    .line 188
    .line 189
    :goto_4
    return-object v7

    .line 190
    :pswitch_2
    move-object/from16 v1, p1

    .line 191
    .line 192
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 193
    .line 194
    iget-wide v3, v1, Landroidx/compose/ui/graphics/Color;->value:J

    .line 195
    .line 196
    move-object/from16 v1, p2

    .line 197
    .line 198
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 199
    .line 200
    move-object/from16 v3, p3

    .line 201
    .line 202
    check-cast v3, Ljava/lang/Number;

    .line 203
    .line 204
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    and-int/lit8 v4, v3, 0x11

    .line 209
    .line 210
    if-eq v4, v2, :cond_7

    .line 211
    .line 212
    move v8, v6

    .line 213
    :cond_7
    and-int/lit8 v2, v3, 0x1

    .line 214
    .line 215
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 216
    .line 217
    invoke-virtual {v1, v2, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_8

    .line 222
    .line 223
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 224
    .line 225
    const/16 v2, 0x30

    .line 226
    .line 227
    sget-object v3, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->INSTANCE:Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;

    .line 228
    .line 229
    invoke-virtual {v3, v0, v1, v2}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->IconBox(Landroid/graphics/drawable/Drawable;Landroidx/compose/runtime/Composer;I)V

    .line 230
    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 234
    .line 235
    .line 236
    :goto_5
    return-object v7

    .line 237
    :pswitch_3
    move-object/from16 v1, p1

    .line 238
    .line 239
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 240
    .line 241
    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    .line 242
    .line 243
    move-object/from16 v9, p2

    .line 244
    .line 245
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 246
    .line 247
    move-object/from16 v10, p3

    .line 248
    .line 249
    check-cast v10, Ljava/lang/Number;

    .line 250
    .line 251
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    and-int/lit8 v11, v10, 0x6

    .line 256
    .line 257
    if-nez v11, :cond_a

    .line 258
    .line 259
    move-object v11, v9

    .line 260
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 261
    .line 262
    invoke-virtual {v11, v1, v2}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 263
    .line 264
    .line 265
    move-result v11

    .line 266
    if-eqz v11, :cond_9

    .line 267
    .line 268
    move v4, v5

    .line 269
    :cond_9
    or-int/2addr v10, v4

    .line 270
    :cond_a
    and-int/lit8 v4, v10, 0x13

    .line 271
    .line 272
    if-eq v4, v3, :cond_b

    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_b
    move v6, v8

    .line 276
    :goto_6
    and-int/lit8 v3, v10, 0x1

    .line 277
    .line 278
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 279
    .line 280
    invoke-virtual {v9, v3, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-eqz v3, :cond_c

    .line 285
    .line 286
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 287
    .line 288
    iget v0, v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->leadingIcon:I

    .line 289
    .line 290
    shl-int/lit8 v3, v10, 0x3

    .line 291
    .line 292
    and-int/lit8 v3, v3, 0x70

    .line 293
    .line 294
    invoke-static {v0, v1, v2, v9, v3}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->IconBox-RPmYEkk(IJLandroidx/compose/runtime/Composer;I)V

    .line 295
    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_c
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 299
    .line 300
    .line 301
    :goto_7
    return-object v7

    .line 302
    :pswitch_4
    move-object/from16 v10, p1

    .line 303
    .line 304
    check-cast v10, Landroidx/compose/ui/Modifier;

    .line 305
    .line 306
    move-object/from16 v1, p2

    .line 307
    .line 308
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 309
    .line 310
    move-object/from16 v2, p3

    .line 311
    .line 312
    check-cast v2, Ljava/lang/Number;

    .line 313
    .line 314
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 315
    .line 316
    .line 317
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 318
    .line 319
    const v2, -0x59518a75

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 323
    .line 324
    .line 325
    sget-object v2, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 326
    .line 327
    invoke-static {v2, v1}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 328
    .line 329
    .line 330
    move-result-object v14

    .line 331
    sget-object v2, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 332
    .line 333
    invoke-static {v2, v1}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    move-object v11, v0

    .line 338
    check-cast v11, Landroidx/compose/animation/core/Transition;

    .line 339
    .line 340
    sget-object v15, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 341
    .line 342
    iget-object v0, v11, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 343
    .line 344
    iget-object v3, v11, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 345
    .line 346
    invoke-virtual {v0}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    check-cast v0, Ljava/lang/Boolean;

    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    const v4, -0x5c966d11

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 360
    .line 361
    .line 362
    const v5, 0x3f4ccccd    # 0.8f

    .line 363
    .line 364
    .line 365
    const/high16 v6, 0x3f800000    # 1.0f

    .line 366
    .line 367
    if-eqz v0, :cond_d

    .line 368
    .line 369
    move v0, v6

    .line 370
    goto :goto_8

    .line 371
    :cond_d
    move v0, v5

    .line 372
    :goto_8
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 373
    .line 374
    .line 375
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 376
    .line 377
    .line 378
    move-result-object v12

    .line 379
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    check-cast v0, Ljava/lang/Boolean;

    .line 384
    .line 385
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 390
    .line 391
    .line 392
    if-eqz v0, :cond_e

    .line 393
    .line 394
    move v5, v6

    .line 395
    :cond_e
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 396
    .line 397
    .line 398
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 399
    .line 400
    .line 401
    move-result-object v13

    .line 402
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 403
    .line 404
    .line 405
    const v0, 0x170ecc34

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 412
    .line 413
    .line 414
    const/high16 v17, 0x30000

    .line 415
    .line 416
    move-object/from16 v16, v1

    .line 417
    .line 418
    invoke-static/range {v11 .. v17}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    iget-object v4, v11, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 423
    .line 424
    invoke-virtual {v4}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    check-cast v4, Ljava/lang/Boolean;

    .line 429
    .line 430
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 431
    .line 432
    .line 433
    move-result v4

    .line 434
    const v5, 0x7b90285b

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 438
    .line 439
    .line 440
    const/4 v7, 0x0

    .line 441
    if-eqz v4, :cond_f

    .line 442
    .line 443
    move v4, v6

    .line 444
    goto :goto_9

    .line 445
    :cond_f
    move v4, v7

    .line 446
    :goto_9
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 447
    .line 448
    .line 449
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 450
    .line 451
    .line 452
    move-result-object v12

    .line 453
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    check-cast v3, Ljava/lang/Boolean;

    .line 458
    .line 459
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 464
    .line 465
    .line 466
    if-eqz v3, :cond_10

    .line 467
    .line 468
    goto :goto_a

    .line 469
    :cond_10
    move v6, v7

    .line 470
    :goto_a
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 471
    .line 472
    .line 473
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 474
    .line 475
    .line 476
    move-result-object v13

    .line 477
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 478
    .line 479
    .line 480
    const v3, -0x10ca9e60

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 487
    .line 488
    .line 489
    move-object/from16 v16, v1

    .line 490
    .line 491
    move-object v14, v2

    .line 492
    invoke-static/range {v11 .. v17}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    move-object/from16 v2, v16

    .line 497
    .line 498
    iget-object v3, v0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 499
    .line 500
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    check-cast v3, Ljava/lang/Number;

    .line 505
    .line 506
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 507
    .line 508
    .line 509
    move-result v11

    .line 510
    iget-object v0, v0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 511
    .line 512
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    check-cast v0, Ljava/lang/Number;

    .line 517
    .line 518
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 519
    .line 520
    .line 521
    move-result v12

    .line 522
    iget-object v0, v1, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 523
    .line 524
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    check-cast v0, Ljava/lang/Number;

    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 531
    .line 532
    .line 533
    move-result v13

    .line 534
    const/4 v15, 0x0

    .line 535
    const v16, 0x1fff8

    .line 536
    .line 537
    .line 538
    const/4 v14, 0x0

    .line 539
    invoke-static/range {v10 .. v16}, Landroidx/compose/ui/graphics/ColorKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFLandroidx/compose/ui/graphics/Shape;I)Landroidx/compose/ui/Modifier;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 544
    .line 545
    .line 546
    return-object v0

    .line 547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
