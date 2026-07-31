.class public final synthetic Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const-wide v4, 0xffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    const/4 v7, 0x0

    .line 16
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v0, p1

    .line 22
    .line 23
    check-cast v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 24
    .line 25
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 26
    .line 27
    iget-object v1, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 38
    .line 39
    .line 40
    :try_start_0
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 41
    .line 42
    move-object v9, v4

    .line 43
    check-cast v9, Landroidx/appcompat/widget/PopupMenu$1;

    .line 44
    .line 45
    const v10, -0x800001

    .line 46
    .line 47
    .line 48
    const/4 v11, 0x0

    .line 49
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    .line 50
    .line 51
    .line 52
    const v13, 0x7f7fffff    # Float.MAX_VALUE

    .line 53
    .line 54
    .line 55
    const/4 v14, 0x1

    .line 56
    invoke-virtual/range {v9 .. v14}, Landroidx/appcompat/widget/PopupMenu$1;->clipRect-N_I0leg(FFFFI)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Lcom/caverock/androidsvg/SVG;J)V

    .line 63
    .line 64
    .line 65
    return-object v8

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    invoke-static {v1, v2, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Lcom/caverock/androidsvg/SVG;J)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :pswitch_0
    move-object/from16 v0, p1

    .line 72
    .line 73
    check-cast v0, Landroidx/compose/ui/node/TraversableNode;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    check-cast v0, Landroidx/compose/material3/internal/ParentSemanticsNode;

    .line 79
    .line 80
    iput-boolean v7, v0, Landroidx/compose/material3/internal/ParentSemanticsNode;->semanticsConsumed:Z

    .line 81
    .line 82
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 83
    .line 84
    .line 85
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 86
    .line 87
    return-object v0

    .line 88
    :pswitch_1
    move-object/from16 v0, p1

    .line 89
    .line 90
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 91
    .line 92
    return-object v8

    .line 93
    :pswitch_2
    move-object/from16 v0, p1

    .line 94
    .line 95
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 96
    .line 97
    return-object v8

    .line 98
    :pswitch_3
    move-object/from16 v0, p1

    .line 99
    .line 100
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 101
    .line 102
    return-object v8

    .line 103
    :pswitch_4
    move-object/from16 v0, p1

    .line 104
    .line 105
    check-cast v0, Ljava/util/List;

    .line 106
    .line 107
    new-instance v1, Landroidx/compose/material3/TopAppBarState;

    .line 108
    .line 109
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Ljava/lang/Number;

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Ljava/lang/Number;

    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Ljava/lang/Number;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-direct {v1, v3, v4, v0}, Landroidx/compose/material3/TopAppBarState;-><init>(FFF)V

    .line 140
    .line 141
    .line 142
    return-object v1

    .line 143
    :pswitch_5
    move-object/from16 v0, p1

    .line 144
    .line 145
    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    .line 146
    .line 147
    return-object v8

    .line 148
    :pswitch_6
    move-object/from16 v0, p1

    .line 149
    .line 150
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 151
    .line 152
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 153
    .line 154
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->IsContainer:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 155
    .line 156
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 157
    .line 158
    const/4 v3, 0x5

    .line 159
    aget-object v2, v2, v3

    .line 160
    .line 161
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 162
    .line 163
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    return-object v8

    .line 167
    :pswitch_7
    move-object/from16 v0, p1

    .line 168
    .line 169
    check-cast v0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 170
    .line 171
    const/16 v1, 0x1770

    .line 172
    .line 173
    iput v1, v0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->durationMillis:I

    .line 174
    .line 175
    const/high16 v2, 0x42b40000    # 90.0f

    .line 176
    .line 177
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const/16 v3, 0x12c

    .line 182
    .line 183
    invoke-virtual {v0, v2, v3}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    sget-object v4, Landroidx/compose/material3/tokens/MotionTokens;->EasingEmphasizedDecelerateCubicBezier:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 188
    .line 189
    iput-object v4, v3, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->easing:Landroidx/compose/animation/core/Easing;

    .line 190
    .line 191
    const/16 v3, 0x5dc

    .line 192
    .line 193
    invoke-virtual {v0, v2, v3}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 194
    .line 195
    .line 196
    const/high16 v2, 0x43340000    # 180.0f

    .line 197
    .line 198
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    const/16 v3, 0x708

    .line 203
    .line 204
    invoke-virtual {v0, v2, v3}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 205
    .line 206
    .line 207
    const/16 v3, 0xbb8

    .line 208
    .line 209
    invoke-virtual {v0, v2, v3}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 210
    .line 211
    .line 212
    const/high16 v2, 0x43870000    # 270.0f

    .line 213
    .line 214
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    const/16 v3, 0xce4

    .line 219
    .line 220
    invoke-virtual {v0, v2, v3}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 221
    .line 222
    .line 223
    const/16 v3, 0x1194

    .line 224
    .line 225
    invoke-virtual {v0, v2, v3}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 226
    .line 227
    .line 228
    const/high16 v2, 0x43b40000    # 360.0f

    .line 229
    .line 230
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    const/16 v3, 0x12c0

    .line 235
    .line 236
    invoke-virtual {v0, v2, v3}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 240
    .line 241
    .line 242
    return-object v8

    .line 243
    :pswitch_8
    move-object/from16 v0, p1

    .line 244
    .line 245
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 246
    .line 247
    return-object v8

    .line 248
    :pswitch_9
    move-object/from16 v0, p1

    .line 249
    .line 250
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 251
    .line 252
    return-object v8

    .line 253
    :pswitch_a
    move-object/from16 v0, p1

    .line 254
    .line 255
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 256
    .line 257
    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setTraversalGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 258
    .line 259
    .line 260
    return-object v8

    .line 261
    :pswitch_b
    move-object/from16 v0, p1

    .line 262
    .line 263
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 264
    .line 265
    invoke-static {v0, v7}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 266
    .line 267
    .line 268
    return-object v8

    .line 269
    :pswitch_c
    move-object/from16 v0, p1

    .line 270
    .line 271
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 272
    .line 273
    invoke-static {v0, v7}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 274
    .line 275
    .line 276
    return-object v8

    .line 277
    :pswitch_d
    move-object/from16 v0, p1

    .line 278
    .line 279
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 280
    .line 281
    return-object v8

    .line 282
    :pswitch_e
    move-object/from16 v0, p1

    .line 283
    .line 284
    check-cast v0, Ljava/lang/Long;

    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 287
    .line 288
    .line 289
    move-result-wide v0

    .line 290
    new-instance v2, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 291
    .line 292
    invoke-direct {v2, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;-><init>(J)V

    .line 293
    .line 294
    .line 295
    return-object v2

    .line 296
    :pswitch_f
    move-object/from16 v0, p1

    .line 297
    .line 298
    check-cast v0, Landroidx/compose/animation/core/AnimationVector2D;

    .line 299
    .line 300
    iget v2, v0, Landroidx/compose/animation/core/AnimationVector2D;->v1:F

    .line 301
    .line 302
    iget v0, v0, Landroidx/compose/animation/core/AnimationVector2D;->v2:F

    .line 303
    .line 304
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    int-to-long v2, v2

    .line 309
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    int-to-long v6, v0

    .line 314
    shl-long v0, v2, v1

    .line 315
    .line 316
    and-long v2, v6, v4

    .line 317
    .line 318
    or-long/2addr v0, v2

    .line 319
    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    .line 320
    .line 321
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 322
    .line 323
    .line 324
    return-object v2

    .line 325
    :pswitch_10
    move-object/from16 v0, p1

    .line 326
    .line 327
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 328
    .line 329
    iget-wide v2, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 330
    .line 331
    const-wide v6, 0x7fffffff7fffffffL

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    and-long/2addr v6, v2

    .line 337
    const-wide v8, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    cmp-long v6, v6, v8

    .line 343
    .line 344
    if-eqz v6, :cond_0

    .line 345
    .line 346
    new-instance v6, Landroidx/compose/animation/core/AnimationVector2D;

    .line 347
    .line 348
    shr-long v1, v2, v1

    .line 349
    .line 350
    long-to-int v1, v1

    .line 351
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    iget-wide v2, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 356
    .line 357
    and-long/2addr v2, v4

    .line 358
    long-to-int v0, v2

    .line 359
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    invoke-direct {v6, v1, v0}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 364
    .line 365
    .line 366
    goto :goto_0

    .line 367
    :cond_0
    sget-object v6, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->UnspecifiedAnimationVector2D:Landroidx/compose/animation/core/AnimationVector2D;

    .line 368
    .line 369
    :goto_0
    return-object v6

    .line 370
    :pswitch_11
    move-object/from16 v0, p1

    .line 371
    .line 372
    check-cast v0, Landroidx/compose/ui/text/input/ImeAction;

    .line 373
    .line 374
    return-object v8

    .line 375
    :pswitch_12
    move-object/from16 v0, p1

    .line 376
    .line 377
    check-cast v0, Ljava/util/List;

    .line 378
    .line 379
    return-object v8

    .line 380
    :pswitch_13
    move-object/from16 v0, p1

    .line 381
    .line 382
    check-cast v0, Ljava/lang/Long;

    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    return-object v8

    .line 388
    :pswitch_14
    move-object/from16 v0, p1

    .line 389
    .line 390
    check-cast v0, Landroid/content/Context;

    .line 391
    .line 392
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    new-instance v2, Landroid/content/Intent;

    .line 397
    .line 398
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 399
    .line 400
    .line 401
    const-string v3, "android.intent.action.PROCESS_TEXT"

    .line 402
    .line 403
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    const-string v3, "text/plain"

    .line 408
    .line 409
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {v1, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    new-instance v2, Ljava/util/ArrayList;

    .line 418
    .line 419
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 424
    .line 425
    .line 426
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    :goto_1
    if-ge v7, v3, :cond_3

    .line 431
    .line 432
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    move-object v5, v4

    .line 437
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 438
    .line 439
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 444
    .line 445
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 446
    .line 447
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v6

    .line 451
    if-nez v6, :cond_1

    .line 452
    .line 453
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 454
    .line 455
    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 456
    .line 457
    if-eqz v6, :cond_2

    .line 458
    .line 459
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 460
    .line 461
    if-eqz v5, :cond_1

    .line 462
    .line 463
    invoke-virtual {v0, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    move-result v5

    .line 467
    if-nez v5, :cond_2

    .line 468
    .line 469
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 473
    .line 474
    goto :goto_1

    .line 475
    :cond_3
    return-object v2

    .line 476
    :pswitch_15
    move-object/from16 v0, p1

    .line 477
    .line 478
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 479
    .line 480
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->LinkTestMarker:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 481
    .line 482
    invoke-interface {v0, v1, v8}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    return-object v8

    .line 486
    :pswitch_16
    move-object/from16 v0, p1

    .line 487
    .line 488
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 489
    .line 490
    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 491
    .line 492
    instance-of v3, v1, Landroidx/compose/ui/text/LinkAnnotation;

    .line 493
    .line 494
    if-eqz v3, :cond_7

    .line 495
    .line 496
    check-cast v1, Landroidx/compose/ui/text/LinkAnnotation;

    .line 497
    .line 498
    invoke-virtual {v1}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    if-eqz v1, :cond_7

    .line 503
    .line 504
    iget-object v3, v1, Landroidx/compose/ui/text/TextLinkStyles;->style:Landroidx/compose/ui/text/SpanStyle;

    .line 505
    .line 506
    if-nez v3, :cond_4

    .line 507
    .line 508
    iget-object v3, v1, Landroidx/compose/ui/text/TextLinkStyles;->focusedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 509
    .line 510
    if-nez v3, :cond_4

    .line 511
    .line 512
    iget-object v3, v1, Landroidx/compose/ui/text/TextLinkStyles;->hoveredStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 513
    .line 514
    if-nez v3, :cond_4

    .line 515
    .line 516
    iget-object v1, v1, Landroidx/compose/ui/text/TextLinkStyles;->pressedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 517
    .line 518
    if-nez v1, :cond_4

    .line 519
    .line 520
    goto :goto_2

    .line 521
    :cond_4
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 522
    .line 523
    iget-object v3, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 524
    .line 525
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    check-cast v3, Landroidx/compose/ui/text/LinkAnnotation;

    .line 529
    .line 530
    invoke-virtual {v3}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    if-eqz v3, :cond_5

    .line 535
    .line 536
    iget-object v3, v3, Landroidx/compose/ui/text/TextLinkStyles;->style:Landroidx/compose/ui/text/SpanStyle;

    .line 537
    .line 538
    if-nez v3, :cond_6

    .line 539
    .line 540
    :cond_5
    new-instance v8, Landroidx/compose/ui/text/SpanStyle;

    .line 541
    .line 542
    const/16 v26, 0x0

    .line 543
    .line 544
    const v27, 0xffff

    .line 545
    .line 546
    .line 547
    const-wide/16 v9, 0x0

    .line 548
    .line 549
    const-wide/16 v11, 0x0

    .line 550
    .line 551
    const/4 v13, 0x0

    .line 552
    const/4 v14, 0x0

    .line 553
    const/4 v15, 0x0

    .line 554
    const/16 v16, 0x0

    .line 555
    .line 556
    const/16 v17, 0x0

    .line 557
    .line 558
    const-wide/16 v18, 0x0

    .line 559
    .line 560
    const/16 v20, 0x0

    .line 561
    .line 562
    const/16 v21, 0x0

    .line 563
    .line 564
    const/16 v22, 0x0

    .line 565
    .line 566
    const-wide/16 v23, 0x0

    .line 567
    .line 568
    const/16 v25, 0x0

    .line 569
    .line 570
    invoke-direct/range {v8 .. v27}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 571
    .line 572
    .line 573
    move-object v3, v8

    .line 574
    :cond_6
    iget v4, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 575
    .line 576
    iget v5, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 577
    .line 578
    invoke-direct {v1, v4, v5, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    new-array v2, v2, [Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 582
    .line 583
    aput-object v0, v2, v7

    .line 584
    .line 585
    aput-object v1, v2, v6

    .line 586
    .line 587
    invoke-static {v2}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    goto :goto_3

    .line 592
    :cond_7
    :goto_2
    new-array v1, v6, [Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 593
    .line 594
    aput-object v0, v1, v7

    .line 595
    .line 596
    invoke-static {v1}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    :goto_3
    return-object v0

    .line 601
    :pswitch_17
    move-object/from16 v0, p1

    .line 602
    .line 603
    check-cast v0, Ljava/util/List;

    .line 604
    .line 605
    new-instance v1, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 606
    .line 607
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    .line 613
    .line 614
    check-cast v2, Ljava/lang/Boolean;

    .line 615
    .line 616
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    if-eqz v2, :cond_8

    .line 621
    .line 622
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 623
    .line 624
    goto :goto_4

    .line 625
    :cond_8
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 626
    .line 627
    :goto_4
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    check-cast v0, Ljava/lang/Float;

    .line 635
    .line 636
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 637
    .line 638
    .line 639
    move-result v0

    .line 640
    invoke-direct {v1, v2, v0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;-><init>(Landroidx/compose/foundation/gestures/Orientation;F)V

    .line 641
    .line 642
    .line 643
    return-object v1

    .line 644
    :pswitch_18
    move-object/from16 v0, p1

    .line 645
    .line 646
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 647
    .line 648
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getLineEndByOffset()Ljava/lang/Integer;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    if-eqz v1, :cond_9

    .line 653
    .line 654
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    new-instance v3, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 659
    .line 660
    iget-wide v8, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 661
    .line 662
    sget v0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 663
    .line 664
    and-long/2addr v4, v8

    .line 665
    long-to-int v0, v4

    .line 666
    sub-int/2addr v1, v0

    .line 667
    invoke-direct {v3, v7, v1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 668
    .line 669
    .line 670
    :cond_9
    return-object v3

    .line 671
    :pswitch_19
    move-object/from16 v0, p1

    .line 672
    .line 673
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 674
    .line 675
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getLineStartByOffset()Ljava/lang/Integer;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    if-eqz v1, :cond_a

    .line 680
    .line 681
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 682
    .line 683
    .line 684
    move-result v1

    .line 685
    new-instance v3, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 686
    .line 687
    iget-wide v8, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 688
    .line 689
    sget v0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 690
    .line 691
    and-long/2addr v4, v8

    .line 692
    long-to-int v0, v4

    .line 693
    sub-int/2addr v0, v1

    .line 694
    invoke-direct {v3, v0, v7}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 695
    .line 696
    .line 697
    :cond_a
    return-object v3

    .line 698
    :pswitch_1a
    move-object/from16 v0, p1

    .line 699
    .line 700
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 701
    .line 702
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getNextWordOffset()Ljava/lang/Integer;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    if-eqz v1, :cond_b

    .line 707
    .line 708
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 709
    .line 710
    .line 711
    move-result v1

    .line 712
    new-instance v3, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 713
    .line 714
    iget-wide v8, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 715
    .line 716
    sget v0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 717
    .line 718
    and-long/2addr v4, v8

    .line 719
    long-to-int v0, v4

    .line 720
    sub-int/2addr v1, v0

    .line 721
    invoke-direct {v3, v7, v1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 722
    .line 723
    .line 724
    :cond_b
    return-object v3

    .line 725
    :pswitch_1b
    move-object/from16 v0, p1

    .line 726
    .line 727
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    .line 728
    .line 729
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getPreviousWordOffset()Ljava/lang/Integer;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    if-eqz v1, :cond_c

    .line 734
    .line 735
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 736
    .line 737
    .line 738
    move-result v1

    .line 739
    new-instance v3, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 740
    .line 741
    iget-wide v8, v0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selection:J

    .line 742
    .line 743
    sget v0, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 744
    .line 745
    and-long/2addr v4, v8

    .line 746
    long-to-int v0, v4

    .line 747
    sub-int/2addr v0, v1

    .line 748
    invoke-direct {v3, v0, v7}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    .line 749
    .line 750
    .line 751
    :cond_c
    return-object v3

    .line 752
    :pswitch_1c
    move-object/from16 v0, p1

    .line 753
    .line 754
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 755
    .line 756
    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 757
    .line 758
    .line 759
    return-object v8

    .line 760
    nop

    .line 761
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
