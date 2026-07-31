.class public final synthetic Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 6
    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    const/16 v3, 0xe

    .line 10
    .line 11
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 12
    .line 13
    const/16 v5, 0x12

    .line 14
    .line 15
    const/4 v6, 0x4

    .line 16
    const/4 v7, 0x2

    .line 17
    const/high16 v8, 0x41000000    # 8.0f

    .line 18
    .line 19
    const/16 v9, 0x10

    .line 20
    .line 21
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    .line 23
    const/4 v11, 0x1

    .line 24
    const/4 v12, 0x0

    .line 25
    packed-switch v0, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    move-object/from16 v0, p1

    .line 29
    .line 30
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .line 31
    .line 32
    move-object/from16 v1, p2

    .line 33
    .line 34
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 35
    .line 36
    move-object/from16 v2, p3

    .line 37
    .line 38
    check-cast v2, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    and-int/lit8 v4, v2, 0x6

    .line 48
    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    move-object v4, v1

    .line 52
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 53
    .line 54
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move v6, v7

    .line 62
    :goto_0
    or-int/2addr v2, v6

    .line 63
    :cond_1
    and-int/lit8 v4, v2, 0x13

    .line 64
    .line 65
    if-eq v4, v5, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v11, v12

    .line 69
    :goto_1
    and-int/lit8 v4, v2, 0x1

    .line 70
    .line 71
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 72
    .line 73
    invoke-virtual {v1, v4, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    and-int/2addr v2, v3

    .line 80
    invoke-static {v0, v1, v2}, Lnet/thunderbird/feature/mail/message/reader/api/ui/component/organism/AttachmentCardKt;->AttachmentThumbnailPlaceholder(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/runtime/Composer;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 85
    .line 86
    .line 87
    :goto_2
    return-object v10

    .line 88
    :pswitch_0
    move-object/from16 v0, p1

    .line 89
    .line 90
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .line 91
    .line 92
    move-object/from16 v1, p2

    .line 93
    .line 94
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 95
    .line 96
    move-object/from16 v2, p3

    .line 97
    .line 98
    check-cast v2, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    and-int/lit8 v4, v2, 0x6

    .line 108
    .line 109
    if-nez v4, :cond_5

    .line 110
    .line 111
    move-object v4, v1

    .line 112
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 113
    .line 114
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_4

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    move v6, v7

    .line 122
    :goto_3
    or-int/2addr v2, v6

    .line 123
    :cond_5
    and-int/lit8 v4, v2, 0x13

    .line 124
    .line 125
    if-eq v4, v5, :cond_6

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_6
    move v11, v12

    .line 129
    :goto_4
    and-int/lit8 v4, v2, 0x1

    .line 130
    .line 131
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 132
    .line 133
    invoke-virtual {v1, v4, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_7

    .line 138
    .line 139
    and-int/2addr v2, v3

    .line 140
    invoke-static {v0, v1, v2}, Lnet/thunderbird/feature/mail/message/reader/api/ui/component/organism/AttachmentCardKt;->AttachmentThumbnailPlaceholder(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/runtime/Composer;I)V

    .line 141
    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 145
    .line 146
    .line 147
    :goto_5
    return-object v10

    .line 148
    :pswitch_1
    move-object/from16 v0, p1

    .line 149
    .line 150
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .line 151
    .line 152
    move-object/from16 v1, p2

    .line 153
    .line 154
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 155
    .line 156
    move-object/from16 v2, p3

    .line 157
    .line 158
    check-cast v2, Ljava/lang/Integer;

    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    and-int/lit8 v0, v2, 0x11

    .line 168
    .line 169
    if-eq v0, v9, :cond_8

    .line 170
    .line 171
    move v12, v11

    .line 172
    :cond_8
    and-int/lit8 v0, v2, 0x1

    .line 173
    .line 174
    move-object v5, v1

    .line 175
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 176
    .line 177
    invoke-virtual {v5, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_9

    .line 182
    .line 183
    const/4 v6, 0x0

    .line 184
    const/4 v7, 0x3

    .line 185
    const/4 v2, 0x0

    .line 186
    const-wide/16 v3, 0x0

    .line 187
    .line 188
    invoke-static/range {v2 .. v7}, Lcom/fsck/k9/sasl/OAuthBearer;->CircularProgressIndicator-iJQMabo(Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    .line 189
    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_9
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 193
    .line 194
    .line 195
    :goto_6
    return-object v10

    .line 196
    :pswitch_2
    move-object/from16 v0, p1

    .line 197
    .line 198
    check-cast v0, Ljava/lang/String;

    .line 199
    .line 200
    move-object/from16 v1, p2

    .line 201
    .line 202
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 203
    .line 204
    move-object/from16 v2, p3

    .line 205
    .line 206
    check-cast v2, Ljava/lang/Integer;

    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    and-int/lit8 v0, v2, 0x11

    .line 216
    .line 217
    if-eq v0, v9, :cond_a

    .line 218
    .line 219
    move v12, v11

    .line 220
    :cond_a
    and-int/lit8 v0, v2, 0x1

    .line 221
    .line 222
    move-object v5, v1

    .line 223
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 224
    .line 225
    invoke-virtual {v5, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_b

    .line 230
    .line 231
    sget-object v2, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Attachment:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 232
    .line 233
    const/16 v6, 0x180

    .line 234
    .line 235
    const/16 v7, 0xa

    .line 236
    .line 237
    const/4 v3, 0x0

    .line 238
    const/4 v4, 0x0

    .line 239
    invoke-static/range {v2 .. v7}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 240
    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_b
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 244
    .line 245
    .line 246
    :goto_7
    return-object v10

    .line 247
    :pswitch_3
    move-object/from16 v0, p1

    .line 248
    .line 249
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 250
    .line 251
    move-object/from16 v1, p2

    .line 252
    .line 253
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 254
    .line 255
    move-object/from16 v2, p3

    .line 256
    .line 257
    check-cast v2, Ljava/lang/Integer;

    .line 258
    .line 259
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    and-int/lit8 v0, v2, 0x11

    .line 267
    .line 268
    if-eq v0, v9, :cond_c

    .line 269
    .line 270
    move v12, v11

    .line 271
    :cond_c
    and-int/lit8 v0, v2, 0x1

    .line 272
    .line 273
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 274
    .line 275
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_d

    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 283
    .line 284
    .line 285
    :goto_8
    return-object v10

    .line 286
    :pswitch_4
    move-object/from16 v0, p1

    .line 287
    .line 288
    check-cast v0, Lcom/skydoves/landscapist/components/ImagePluginComponent;

    .line 289
    .line 290
    move-object/from16 v1, p2

    .line 291
    .line 292
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 293
    .line 294
    move-object/from16 v2, p3

    .line 295
    .line 296
    check-cast v2, Ljava/lang/Integer;

    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    invoke-static {v0, v1, v2}, Lcom/skydoves/landscapist/coil3/ComposableSingletons$CoilImageKt;->$r8$lambda$rGKl70t_f_lKAV73Sryl_F_TvsQ(Lcom/skydoves/landscapist/components/ImagePluginComponent;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    return-object v0

    .line 307
    :pswitch_5
    move-object/from16 v0, p1

    .line 308
    .line 309
    check-cast v0, Lcom/skydoves/landscapist/components/ImagePluginComponent;

    .line 310
    .line 311
    move-object/from16 v1, p2

    .line 312
    .line 313
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 314
    .line 315
    move-object/from16 v2, p3

    .line 316
    .line 317
    check-cast v2, Ljava/lang/Integer;

    .line 318
    .line 319
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    invoke-static {v0, v1, v2}, Lcom/skydoves/landscapist/coil3/ComposableSingletons$CoilImageKt;->$r8$lambda$GyqtKUKF1N9_cktub7kaGH6IFaU(Lcom/skydoves/landscapist/components/ImagePluginComponent;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    return-object v0

    .line 328
    :pswitch_6
    move-object/from16 v0, p1

    .line 329
    .line 330
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 331
    .line 332
    move-object/from16 v3, p2

    .line 333
    .line 334
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 335
    .line 336
    move-object/from16 v8, p3

    .line 337
    .line 338
    check-cast v8, Ljava/lang/Integer;

    .line 339
    .line 340
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 341
    .line 342
    .line 343
    move-result v8

    .line 344
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    and-int/lit8 v9, v8, 0x6

    .line 348
    .line 349
    if-nez v9, :cond_f

    .line 350
    .line 351
    move-object v9, v3

    .line 352
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 353
    .line 354
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v9

    .line 358
    if-eqz v9, :cond_e

    .line 359
    .line 360
    goto :goto_9

    .line 361
    :cond_e
    move v6, v7

    .line 362
    :goto_9
    or-int/2addr v8, v6

    .line 363
    :cond_f
    and-int/lit8 v6, v8, 0x13

    .line 364
    .line 365
    if-eq v6, v5, :cond_10

    .line 366
    .line 367
    move v5, v11

    .line 368
    goto :goto_a

    .line 369
    :cond_10
    move v5, v12

    .line 370
    :goto_a
    and-int/lit8 v6, v8, 0x1

    .line 371
    .line 372
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 373
    .line 374
    invoke-virtual {v3, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    if-eqz v5, :cond_13

    .line 379
    .line 380
    const/high16 v5, 0x3f800000    # 1.0f

    .line 381
    .line 382
    invoke-interface {v0, v4, v5}, Landroidx/compose/foundation/layout/RowScope;->weight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 383
    .line 384
    .line 385
    move-result-object v13

    .line 386
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 387
    .line 388
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 393
    .line 394
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    const/16 v17, 0x0

    .line 398
    .line 399
    const/16 v18, 0xb

    .line 400
    .line 401
    const/4 v14, 0x0

    .line 402
    const/4 v15, 0x0

    .line 403
    const/high16 v16, 0x41000000    # 8.0f

    .line 404
    .line 405
    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 414
    .line 415
    if-ne v5, v6, :cond_11

    .line 416
    .line 417
    new-instance v5, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 418
    .line 419
    const/16 v6, 0xb

    .line 420
    .line 421
    invoke-direct {v5, v6}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    :cond_11
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 428
    .line 429
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsModifierKt;->lastIdentifier:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 430
    .line 431
    new-instance v6, Landroidx/compose/ui/semantics/ClearAndSetSemanticsElement;

    .line 432
    .line 433
    invoke-direct {v6, v5}, Landroidx/compose/ui/semantics/ClearAndSetSemanticsElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 434
    .line 435
    .line 436
    invoke-interface {v4, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 441
    .line 442
    invoke-static {v5, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    iget-wide v6, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 447
    .line 448
    ushr-long v8, v6, v2

    .line 449
    .line 450
    xor-long/2addr v6, v8

    .line 451
    long-to-int v2, v6

    .line 452
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 453
    .line 454
    .line 455
    move-result-object v6

    .line 456
    invoke-static {v3, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 461
    .line 462
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 466
    .line 467
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 468
    .line 469
    .line 470
    iget-boolean v8, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 471
    .line 472
    if-eqz v8, :cond_12

    .line 473
    .line 474
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 475
    .line 476
    .line 477
    goto :goto_b

    .line 478
    :cond_12
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 479
    .line 480
    .line 481
    :goto_b
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 482
    .line 483
    invoke-static {v3, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 484
    .line 485
    .line 486
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 487
    .line 488
    invoke-static {v3, v6, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 489
    .line 490
    .line 491
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 496
    .line 497
    invoke-static {v3, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 498
    .line 499
    .line 500
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 501
    .line 502
    invoke-static {v3, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 503
    .line 504
    .line 505
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 506
    .line 507
    invoke-static {v3, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 508
    .line 509
    .line 510
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 511
    .line 512
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 517
    .line 518
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    .line 520
    .line 521
    const/high16 v0, 0x40000000    # 2.0f

    .line 522
    .line 523
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 528
    .line 529
    sget-object v4, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 530
    .line 531
    invoke-virtual {v4, v0, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    const v2, 0x3f19999a    # 0.6f

    .line 536
    .line 537
    .line 538
    invoke-static {v0, v2}, Landroidx/compose/ui/draw/ClipKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 543
    .line 544
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 549
    .line 550
    iget-wide v4, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->primary:J

    .line 551
    .line 552
    invoke-static {v0, v4, v5, v1}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-static {v0, v3, v12}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v3, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 560
    .line 561
    .line 562
    goto :goto_c

    .line 563
    :cond_13
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 564
    .line 565
    .line 566
    :goto_c
    return-object v10

    .line 567
    :pswitch_7
    move-object/from16 v0, p1

    .line 568
    .line 569
    check-cast v0, Ljava/lang/Boolean;

    .line 570
    .line 571
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 572
    .line 573
    .line 574
    move-result v0

    .line 575
    move-object/from16 v1, p2

    .line 576
    .line 577
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 578
    .line 579
    move-object/from16 v2, p3

    .line 580
    .line 581
    check-cast v2, Ljava/lang/Integer;

    .line 582
    .line 583
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 584
    .line 585
    .line 586
    move-result v2

    .line 587
    and-int/lit8 v3, v2, 0x6

    .line 588
    .line 589
    if-nez v3, :cond_15

    .line 590
    .line 591
    move-object v3, v1

    .line 592
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 593
    .line 594
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    if-eqz v3, :cond_14

    .line 599
    .line 600
    goto :goto_d

    .line 601
    :cond_14
    move v6, v7

    .line 602
    :goto_d
    or-int/2addr v2, v6

    .line 603
    :cond_15
    and-int/lit8 v3, v2, 0x13

    .line 604
    .line 605
    if-eq v3, v5, :cond_16

    .line 606
    .line 607
    move v3, v11

    .line 608
    goto :goto_e

    .line 609
    :cond_16
    move v3, v12

    .line 610
    :goto_e
    and-int/2addr v2, v11

    .line 611
    move-object v7, v1

    .line 612
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 613
    .line 614
    invoke-virtual {v7, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 615
    .line 616
    .line 617
    move-result v1

    .line 618
    if-eqz v1, :cond_18

    .line 619
    .line 620
    if-eqz v0, :cond_17

    .line 621
    .line 622
    const v0, 0xf41e16c

    .line 623
    .line 624
    .line 625
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 626
    .line 627
    .line 628
    sget-object v4, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->CheckCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 629
    .line 630
    const/4 v8, 0x0

    .line 631
    const/16 v9, 0xe

    .line 632
    .line 633
    const/4 v5, 0x0

    .line 634
    const/4 v6, 0x0

    .line 635
    invoke-static/range {v4 .. v9}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 639
    .line 640
    .line 641
    goto :goto_f

    .line 642
    :cond_17
    const v0, 0xf432442

    .line 643
    .line 644
    .line 645
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 649
    .line 650
    .line 651
    goto :goto_f

    .line 652
    :cond_18
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 653
    .line 654
    .line 655
    :goto_f
    return-object v10

    .line 656
    :pswitch_8
    move-object/from16 v0, p1

    .line 657
    .line 658
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 659
    .line 660
    move-object/from16 v1, p2

    .line 661
    .line 662
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 663
    .line 664
    move-object/from16 v2, p3

    .line 665
    .line 666
    check-cast v2, Ljava/lang/Integer;

    .line 667
    .line 668
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 669
    .line 670
    .line 671
    move-result v2

    .line 672
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    and-int/lit8 v0, v2, 0x11

    .line 676
    .line 677
    if-eq v0, v9, :cond_19

    .line 678
    .line 679
    move v0, v11

    .line 680
    goto :goto_10

    .line 681
    :cond_19
    move v0, v12

    .line 682
    :goto_10
    and-int/2addr v2, v11

    .line 683
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 684
    .line 685
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 686
    .line 687
    .line 688
    move-result v0

    .line 689
    if-eqz v0, :cond_1a

    .line 690
    .line 691
    const/4 v0, 0x0

    .line 692
    invoke-static {v0, v1, v12}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeScreenKt;->WelcomeMessageItem(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 693
    .line 694
    .line 695
    goto :goto_11

    .line 696
    :cond_1a
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 697
    .line 698
    .line 699
    :goto_11
    return-object v10

    .line 700
    :pswitch_9
    move-object/from16 v0, p1

    .line 701
    .line 702
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 703
    .line 704
    move-object/from16 v1, p2

    .line 705
    .line 706
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 707
    .line 708
    move-object/from16 v2, p3

    .line 709
    .line 710
    check-cast v2, Ljava/lang/Integer;

    .line 711
    .line 712
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 717
    .line 718
    .line 719
    and-int/lit8 v0, v2, 0x11

    .line 720
    .line 721
    if-eq v0, v9, :cond_1b

    .line 722
    .line 723
    move v12, v11

    .line 724
    :cond_1b
    and-int/lit8 v0, v2, 0x1

    .line 725
    .line 726
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 727
    .line 728
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 729
    .line 730
    .line 731
    move-result v0

    .line 732
    if-eqz v0, :cond_1c

    .line 733
    .line 734
    const v0, 0x7f1201b9

    .line 735
    .line 736
    .line 737
    invoke-static {v1, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v13

    .line 741
    invoke-static {v1}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    invoke-static {v4, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 746
    .line 747
    .line 748
    move-result-object v14

    .line 749
    const/16 v21, 0x0

    .line 750
    .line 751
    const/16 v22, 0x3c

    .line 752
    .line 753
    const-wide/16 v15, 0x0

    .line 754
    .line 755
    const/16 v17, 0x0

    .line 756
    .line 757
    const/16 v18, 0x0

    .line 758
    .line 759
    const/16 v19, 0x0

    .line 760
    .line 761
    move-object/from16 v20, v1

    .line 762
    .line 763
    invoke-static/range {v13 .. v22}, Lkotlin/math/MathKt;->TextBodySmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 764
    .line 765
    .line 766
    goto :goto_12

    .line 767
    :cond_1c
    move-object/from16 v20, v1

    .line 768
    .line 769
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 770
    .line 771
    .line 772
    :goto_12
    return-object v10

    .line 773
    :pswitch_a
    move-object/from16 v0, p1

    .line 774
    .line 775
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 776
    .line 777
    move-object/from16 v1, p2

    .line 778
    .line 779
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 780
    .line 781
    move-object/from16 v2, p3

    .line 782
    .line 783
    check-cast v2, Ljava/lang/Integer;

    .line 784
    .line 785
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 786
    .line 787
    .line 788
    move-result v2

    .line 789
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 790
    .line 791
    .line 792
    and-int/lit8 v0, v2, 0x11

    .line 793
    .line 794
    if-eq v0, v9, :cond_1d

    .line 795
    .line 796
    move v12, v11

    .line 797
    :cond_1d
    and-int/lit8 v0, v2, 0x1

    .line 798
    .line 799
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 800
    .line 801
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 802
    .line 803
    .line 804
    move-result v0

    .line 805
    if-eqz v0, :cond_1e

    .line 806
    .line 807
    const v0, 0x7f1201b8

    .line 808
    .line 809
    .line 810
    invoke-static {v1, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v13

    .line 814
    invoke-static {v1}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    invoke-static {v4, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 819
    .line 820
    .line 821
    move-result-object v14

    .line 822
    const/16 v21, 0x0

    .line 823
    .line 824
    const/16 v22, 0x3c

    .line 825
    .line 826
    const-wide/16 v15, 0x0

    .line 827
    .line 828
    const/16 v17, 0x0

    .line 829
    .line 830
    const/16 v18, 0x0

    .line 831
    .line 832
    const/16 v19, 0x0

    .line 833
    .line 834
    move-object/from16 v20, v1

    .line 835
    .line 836
    invoke-static/range {v13 .. v22}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->TextBodyLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 837
    .line 838
    .line 839
    goto :goto_13

    .line 840
    :cond_1e
    move-object/from16 v20, v1

    .line 841
    .line 842
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 843
    .line 844
    .line 845
    :goto_13
    return-object v10

    .line 846
    :pswitch_b
    move-object/from16 v0, p1

    .line 847
    .line 848
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 849
    .line 850
    move-object/from16 v1, p2

    .line 851
    .line 852
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 853
    .line 854
    move-object/from16 v2, p3

    .line 855
    .line 856
    check-cast v2, Ljava/lang/Integer;

    .line 857
    .line 858
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 859
    .line 860
    .line 861
    move-result v2

    .line 862
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 863
    .line 864
    .line 865
    and-int/lit8 v0, v2, 0x11

    .line 866
    .line 867
    if-eq v0, v9, :cond_1f

    .line 868
    .line 869
    move v12, v11

    .line 870
    :cond_1f
    and-int/lit8 v0, v2, 0x1

    .line 871
    .line 872
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 873
    .line 874
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 875
    .line 876
    .line 877
    move-result v0

    .line 878
    if-eqz v0, :cond_20

    .line 879
    .line 880
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 881
    .line 882
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 887
    .line 888
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 889
    .line 890
    .line 891
    invoke-static {v8}, Landroidx/compose/foundation/layout/SizeKt;->requiredHeight-3ABfNKs(F)Landroidx/compose/ui/Modifier;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 896
    .line 897
    .line 898
    goto :goto_14

    .line 899
    :cond_20
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 900
    .line 901
    .line 902
    :goto_14
    return-object v10

    .line 903
    :pswitch_c
    move-object/from16 v0, p1

    .line 904
    .line 905
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 906
    .line 907
    move-object/from16 v1, p2

    .line 908
    .line 909
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 910
    .line 911
    move-object/from16 v2, p3

    .line 912
    .line 913
    check-cast v2, Ljava/lang/Integer;

    .line 914
    .line 915
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 916
    .line 917
    .line 918
    move-result v2

    .line 919
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 920
    .line 921
    .line 922
    and-int/lit8 v0, v2, 0x11

    .line 923
    .line 924
    if-eq v0, v9, :cond_21

    .line 925
    .line 926
    move v12, v11

    .line 927
    :cond_21
    and-int/lit8 v0, v2, 0x1

    .line 928
    .line 929
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 930
    .line 931
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 932
    .line 933
    .line 934
    move-result v0

    .line 935
    if-eqz v0, :cond_22

    .line 936
    .line 937
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 938
    .line 939
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 944
    .line 945
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 946
    .line 947
    .line 948
    invoke-static {v8}, Landroidx/compose/foundation/layout/SizeKt;->requiredHeight-3ABfNKs(F)Landroidx/compose/ui/Modifier;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 953
    .line 954
    .line 955
    goto :goto_15

    .line 956
    :cond_22
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 957
    .line 958
    .line 959
    :goto_15
    return-object v10

    .line 960
    :pswitch_d
    move-object/from16 v0, p1

    .line 961
    .line 962
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 963
    .line 964
    move-object/from16 v1, p2

    .line 965
    .line 966
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 967
    .line 968
    move-object/from16 v2, p3

    .line 969
    .line 970
    check-cast v2, Ljava/lang/Integer;

    .line 971
    .line 972
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 973
    .line 974
    .line 975
    move-result v2

    .line 976
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 977
    .line 978
    .line 979
    and-int/lit8 v0, v2, 0x11

    .line 980
    .line 981
    if-eq v0, v9, :cond_23

    .line 982
    .line 983
    move v12, v11

    .line 984
    :cond_23
    and-int/lit8 v0, v2, 0x1

    .line 985
    .line 986
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 987
    .line 988
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 989
    .line 990
    .line 991
    move-result v0

    .line 992
    if-eqz v0, :cond_24

    .line 993
    .line 994
    const v0, 0x7f1201a6

    .line 995
    .line 996
    .line 997
    invoke-static {v1, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v13

    .line 1001
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 1002
    .line 1003
    invoke-static {v1}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultHeadlineItemPadding(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v2

    .line 1007
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v14

    .line 1011
    const/16 v20, 0x0

    .line 1012
    .line 1013
    const/16 v21, 0x3c

    .line 1014
    .line 1015
    const-wide/16 v15, 0x0

    .line 1016
    .line 1017
    const/16 v17, 0x0

    .line 1018
    .line 1019
    const/16 v18, 0x0

    .line 1020
    .line 1021
    move-object/from16 v19, v1

    .line 1022
    .line 1023
    invoke-static/range {v13 .. v21}, Lorg/slf4j/helpers/Util;->TextLabelSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 1024
    .line 1025
    .line 1026
    goto :goto_16

    .line 1027
    :cond_24
    move-object/from16 v19, v1

    .line 1028
    .line 1029
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1030
    .line 1031
    .line 1032
    :goto_16
    return-object v10

    .line 1033
    :pswitch_e
    move-object/from16 v0, p1

    .line 1034
    .line 1035
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 1036
    .line 1037
    move-object/from16 v1, p2

    .line 1038
    .line 1039
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1040
    .line 1041
    move-object/from16 v2, p3

    .line 1042
    .line 1043
    check-cast v2, Ljava/lang/Integer;

    .line 1044
    .line 1045
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1046
    .line 1047
    .line 1048
    move-result v2

    .line 1049
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1050
    .line 1051
    .line 1052
    and-int/lit8 v0, v2, 0x11

    .line 1053
    .line 1054
    if-eq v0, v9, :cond_25

    .line 1055
    .line 1056
    move v12, v11

    .line 1057
    :cond_25
    and-int/lit8 v0, v2, 0x1

    .line 1058
    .line 1059
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1060
    .line 1061
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1062
    .line 1063
    .line 1064
    move-result v0

    .line 1065
    if-eqz v0, :cond_26

    .line 1066
    .line 1067
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1068
    .line 1069
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 1074
    .line 1075
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1076
    .line 1077
    .line 1078
    invoke-static {v8}, Landroidx/compose/foundation/layout/SizeKt;->requiredHeight-3ABfNKs(F)Landroidx/compose/ui/Modifier;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v0

    .line 1082
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 1083
    .line 1084
    .line 1085
    goto :goto_17

    .line 1086
    :cond_26
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1087
    .line 1088
    .line 1089
    :goto_17
    return-object v10

    .line 1090
    :pswitch_f
    move-object/from16 v0, p1

    .line 1091
    .line 1092
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 1093
    .line 1094
    move-object/from16 v1, p2

    .line 1095
    .line 1096
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1097
    .line 1098
    move-object/from16 v2, p3

    .line 1099
    .line 1100
    check-cast v2, Ljava/lang/Integer;

    .line 1101
    .line 1102
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1103
    .line 1104
    .line 1105
    move-result v2

    .line 1106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1107
    .line 1108
    .line 1109
    and-int/lit8 v0, v2, 0x11

    .line 1110
    .line 1111
    if-eq v0, v9, :cond_27

    .line 1112
    .line 1113
    move v12, v11

    .line 1114
    :cond_27
    and-int/lit8 v0, v2, 0x1

    .line 1115
    .line 1116
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1117
    .line 1118
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1119
    .line 1120
    .line 1121
    move-result v0

    .line 1122
    if-eqz v0, :cond_28

    .line 1123
    .line 1124
    const v0, 0x7f1201a5

    .line 1125
    .line 1126
    .line 1127
    invoke-static {v1, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v13

    .line 1131
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 1132
    .line 1133
    invoke-static {v1}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultHeadlineItemPadding(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v2

    .line 1137
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v14

    .line 1141
    const/16 v20, 0x0

    .line 1142
    .line 1143
    const/16 v21, 0x3c

    .line 1144
    .line 1145
    const-wide/16 v15, 0x0

    .line 1146
    .line 1147
    const/16 v17, 0x0

    .line 1148
    .line 1149
    const/16 v18, 0x0

    .line 1150
    .line 1151
    move-object/from16 v19, v1

    .line 1152
    .line 1153
    invoke-static/range {v13 .. v21}, Lorg/slf4j/helpers/Util;->TextLabelSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 1154
    .line 1155
    .line 1156
    goto :goto_18

    .line 1157
    :cond_28
    move-object/from16 v19, v1

    .line 1158
    .line 1159
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1160
    .line 1161
    .line 1162
    :goto_18
    return-object v10

    .line 1163
    :pswitch_10
    move-object/from16 v0, p1

    .line 1164
    .line 1165
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;

    .line 1166
    .line 1167
    move-object/from16 v1, p2

    .line 1168
    .line 1169
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1170
    .line 1171
    move-object/from16 v2, p3

    .line 1172
    .line 1173
    check-cast v2, Ljava/lang/Integer;

    .line 1174
    .line 1175
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1176
    .line 1177
    .line 1178
    move-result v2

    .line 1179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1180
    .line 1181
    .line 1182
    and-int/lit8 v0, v2, 0x11

    .line 1183
    .line 1184
    if-eq v0, v9, :cond_29

    .line 1185
    .line 1186
    move v12, v11

    .line 1187
    :cond_29
    and-int/lit8 v0, v2, 0x1

    .line 1188
    .line 1189
    move-object v5, v1

    .line 1190
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1191
    .line 1192
    invoke-virtual {v5, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1193
    .line 1194
    .line 1195
    move-result v0

    .line 1196
    if-eqz v0, :cond_2a

    .line 1197
    .line 1198
    const v0, 0x7f12017c

    .line 1199
    .line 1200
    .line 1201
    invoke-static {v5, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v3

    .line 1205
    const/4 v6, 0x0

    .line 1206
    const/4 v7, 0x5

    .line 1207
    const/4 v2, 0x0

    .line 1208
    const/4 v4, 0x0

    .line 1209
    invoke-static/range {v2 .. v7}, Landroidx/room/util/SchemaInfoUtilKt;->LoadingView(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/Composer;II)V

    .line 1210
    .line 1211
    .line 1212
    goto :goto_19

    .line 1213
    :cond_2a
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1214
    .line 1215
    .line 1216
    :goto_19
    return-object v10

    .line 1217
    :pswitch_11
    move-object/from16 v0, p1

    .line 1218
    .line 1219
    check-cast v0, Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;

    .line 1220
    .line 1221
    move-object/from16 v1, p2

    .line 1222
    .line 1223
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1224
    .line 1225
    move-object/from16 v2, p3

    .line 1226
    .line 1227
    check-cast v2, Ljava/lang/Integer;

    .line 1228
    .line 1229
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1230
    .line 1231
    .line 1232
    move-result v2

    .line 1233
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1234
    .line 1235
    .line 1236
    and-int/lit8 v0, v2, 0x11

    .line 1237
    .line 1238
    if-eq v0, v9, :cond_2b

    .line 1239
    .line 1240
    move v12, v11

    .line 1241
    :cond_2b
    and-int/lit8 v0, v2, 0x1

    .line 1242
    .line 1243
    move-object v7, v1

    .line 1244
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 1245
    .line 1246
    invoke-virtual {v7, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1247
    .line 1248
    .line 1249
    move-result v0

    .line 1250
    if-eqz v0, :cond_2c

    .line 1251
    .line 1252
    const v0, 0x7f12017e

    .line 1253
    .line 1254
    .line 1255
    invoke-static {v7, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v2

    .line 1259
    const/4 v8, 0x0

    .line 1260
    const/16 v9, 0x1e

    .line 1261
    .line 1262
    const/4 v3, 0x0

    .line 1263
    const/4 v4, 0x0

    .line 1264
    const/4 v5, 0x0

    .line 1265
    const/4 v6, 0x0

    .line 1266
    invoke-static/range {v2 .. v9}, Landroidx/appcompat/app/ActionBar;->ErrorView(Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/Composer;II)V

    .line 1267
    .line 1268
    .line 1269
    goto :goto_1a

    .line 1270
    :cond_2c
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1271
    .line 1272
    .line 1273
    :goto_1a
    return-object v10

    .line 1274
    :pswitch_12
    move-object/from16 v0, p1

    .line 1275
    .line 1276
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 1277
    .line 1278
    move-object/from16 v1, p2

    .line 1279
    .line 1280
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1281
    .line 1282
    move-object/from16 v2, p3

    .line 1283
    .line 1284
    check-cast v2, Ljava/lang/Integer;

    .line 1285
    .line 1286
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1287
    .line 1288
    .line 1289
    move-result v2

    .line 1290
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1291
    .line 1292
    .line 1293
    and-int/lit8 v0, v2, 0x11

    .line 1294
    .line 1295
    if-eq v0, v9, :cond_2d

    .line 1296
    .line 1297
    move v12, v11

    .line 1298
    :cond_2d
    and-int/lit8 v0, v2, 0x1

    .line 1299
    .line 1300
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1301
    .line 1302
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1303
    .line 1304
    .line 1305
    move-result v0

    .line 1306
    if-eqz v0, :cond_2e

    .line 1307
    .line 1308
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1309
    .line 1310
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v0

    .line 1314
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 1315
    .line 1316
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1317
    .line 1318
    .line 1319
    invoke-static {v8}, Landroidx/compose/foundation/layout/SizeKt;->requiredHeight-3ABfNKs(F)Landroidx/compose/ui/Modifier;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v0

    .line 1323
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 1324
    .line 1325
    .line 1326
    goto :goto_1b

    .line 1327
    :cond_2e
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1328
    .line 1329
    .line 1330
    :goto_1b
    return-object v10

    .line 1331
    :pswitch_13
    move-object/from16 v0, p1

    .line 1332
    .line 1333
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 1334
    .line 1335
    move-object/from16 v1, p2

    .line 1336
    .line 1337
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1338
    .line 1339
    move-object/from16 v2, p3

    .line 1340
    .line 1341
    check-cast v2, Ljava/lang/Integer;

    .line 1342
    .line 1343
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1344
    .line 1345
    .line 1346
    move-result v2

    .line 1347
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1348
    .line 1349
    .line 1350
    and-int/lit8 v0, v2, 0x11

    .line 1351
    .line 1352
    if-eq v0, v9, :cond_2f

    .line 1353
    .line 1354
    move v12, v11

    .line 1355
    :cond_2f
    and-int/lit8 v0, v2, 0x1

    .line 1356
    .line 1357
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1358
    .line 1359
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1360
    .line 1361
    .line 1362
    move-result v0

    .line 1363
    if-eqz v0, :cond_30

    .line 1364
    .line 1365
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1366
    .line 1367
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v0

    .line 1371
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 1372
    .line 1373
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1374
    .line 1375
    .line 1376
    invoke-static {v8}, Landroidx/compose/foundation/layout/SizeKt;->requiredHeight-3ABfNKs(F)Landroidx/compose/ui/Modifier;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v0

    .line 1380
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 1381
    .line 1382
    .line 1383
    goto :goto_1c

    .line 1384
    :cond_30
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1385
    .line 1386
    .line 1387
    :goto_1c
    return-object v10

    .line 1388
    :pswitch_14
    move-object/from16 v0, p1

    .line 1389
    .line 1390
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 1391
    .line 1392
    move-object/from16 v1, p2

    .line 1393
    .line 1394
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1395
    .line 1396
    move-object/from16 v2, p3

    .line 1397
    .line 1398
    check-cast v2, Ljava/lang/Integer;

    .line 1399
    .line 1400
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1401
    .line 1402
    .line 1403
    move-result v2

    .line 1404
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1405
    .line 1406
    .line 1407
    and-int/lit8 v0, v2, 0x11

    .line 1408
    .line 1409
    if-eq v0, v9, :cond_31

    .line 1410
    .line 1411
    move v12, v11

    .line 1412
    :cond_31
    and-int/lit8 v0, v2, 0x1

    .line 1413
    .line 1414
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1415
    .line 1416
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1417
    .line 1418
    .line 1419
    move-result v0

    .line 1420
    if-eqz v0, :cond_32

    .line 1421
    .line 1422
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1423
    .line 1424
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v0

    .line 1428
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 1429
    .line 1430
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1431
    .line 1432
    .line 1433
    invoke-static {v8}, Landroidx/compose/foundation/layout/SizeKt;->requiredHeight-3ABfNKs(F)Landroidx/compose/ui/Modifier;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v0

    .line 1437
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 1438
    .line 1439
    .line 1440
    goto :goto_1d

    .line 1441
    :cond_32
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1442
    .line 1443
    .line 1444
    :goto_1d
    return-object v10

    .line 1445
    :pswitch_15
    move-object/from16 v0, p1

    .line 1446
    .line 1447
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 1448
    .line 1449
    move-object/from16 v1, p2

    .line 1450
    .line 1451
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1452
    .line 1453
    move-object/from16 v2, p3

    .line 1454
    .line 1455
    check-cast v2, Ljava/lang/Integer;

    .line 1456
    .line 1457
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1458
    .line 1459
    .line 1460
    move-result v2

    .line 1461
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1462
    .line 1463
    .line 1464
    and-int/lit8 v0, v2, 0x11

    .line 1465
    .line 1466
    if-eq v0, v9, :cond_33

    .line 1467
    .line 1468
    move v12, v11

    .line 1469
    :cond_33
    and-int/lit8 v0, v2, 0x1

    .line 1470
    .line 1471
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1472
    .line 1473
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1474
    .line 1475
    .line 1476
    move-result v0

    .line 1477
    if-eqz v0, :cond_34

    .line 1478
    .line 1479
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1480
    .line 1481
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v0

    .line 1485
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 1486
    .line 1487
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1488
    .line 1489
    .line 1490
    invoke-static {v8}, Landroidx/compose/foundation/layout/SizeKt;->requiredHeight-3ABfNKs(F)Landroidx/compose/ui/Modifier;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v0

    .line 1494
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 1495
    .line 1496
    .line 1497
    goto :goto_1e

    .line 1498
    :cond_34
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1499
    .line 1500
    .line 1501
    :goto_1e
    return-object v10

    .line 1502
    :pswitch_16
    move-object/from16 v0, p1

    .line 1503
    .line 1504
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1505
    .line 1506
    move-object/from16 v1, p2

    .line 1507
    .line 1508
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1509
    .line 1510
    move-object/from16 v5, p3

    .line 1511
    .line 1512
    check-cast v5, Ljava/lang/Integer;

    .line 1513
    .line 1514
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1515
    .line 1516
    .line 1517
    move-result v5

    .line 1518
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1519
    .line 1520
    .line 1521
    and-int/lit8 v0, v5, 0x11

    .line 1522
    .line 1523
    if-eq v0, v9, :cond_35

    .line 1524
    .line 1525
    move v0, v11

    .line 1526
    goto :goto_1f

    .line 1527
    :cond_35
    move v0, v12

    .line 1528
    :goto_1f
    and-int/2addr v5, v11

    .line 1529
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1530
    .line 1531
    invoke-virtual {v1, v5, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1532
    .line 1533
    .line 1534
    move-result v0

    .line 1535
    if-eqz v0, :cond_37

    .line 1536
    .line 1537
    const/16 v0, 0x12c

    .line 1538
    .line 1539
    sget-object v5, Landroidx/compose/animation/core/EasingKt;->LinearOutSlowInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 1540
    .line 1541
    invoke-static {v0, v12, v5, v7}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v0

    .line 1545
    invoke-static {v4, v0, v7}, Landroidx/compose/animation/CrossfadeKt;->animateContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/ui/Modifier;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v12

    .line 1549
    const/16 v16, 0x0

    .line 1550
    .line 1551
    const/16 v17, 0xb

    .line 1552
    .line 1553
    const/4 v13, 0x0

    .line 1554
    const/4 v14, 0x0

    .line 1555
    const/high16 v15, 0x41000000    # 8.0f

    .line 1556
    .line 1557
    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v0

    .line 1561
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 1562
    .line 1563
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 1564
    .line 1565
    const/16 v6, 0x30

    .line 1566
    .line 1567
    invoke-static {v5, v4, v1, v6}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v4

    .line 1571
    iget-wide v5, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1572
    .line 1573
    ushr-long v7, v5, v2

    .line 1574
    .line 1575
    xor-long/2addr v5, v7

    .line 1576
    long-to-int v2, v5

    .line 1577
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v5

    .line 1581
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v0

    .line 1585
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1586
    .line 1587
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1588
    .line 1589
    .line 1590
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1591
    .line 1592
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1593
    .line 1594
    .line 1595
    iget-boolean v7, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1596
    .line 1597
    if-eqz v7, :cond_36

    .line 1598
    .line 1599
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1600
    .line 1601
    .line 1602
    goto :goto_20

    .line 1603
    :cond_36
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1604
    .line 1605
    .line 1606
    :goto_20
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1607
    .line 1608
    invoke-static {v1, v4, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1609
    .line 1610
    .line 1611
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1612
    .line 1613
    invoke-static {v1, v5, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1614
    .line 1615
    .line 1616
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v2

    .line 1620
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1621
    .line 1622
    invoke-static {v1, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1623
    .line 1624
    .line 1625
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1626
    .line 1627
    invoke-static {v1, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 1628
    .line 1629
    .line 1630
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1631
    .line 1632
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1633
    .line 1634
    .line 1635
    sget-wide v15, Landroidx/compose/ui/graphics/Color;->White:J

    .line 1636
    .line 1637
    const v24, 0xc00180

    .line 1638
    .line 1639
    .line 1640
    const/16 v25, 0x7b

    .line 1641
    .line 1642
    const/4 v13, 0x0

    .line 1643
    const/4 v14, 0x0

    .line 1644
    const-wide/16 v17, 0x0

    .line 1645
    .line 1646
    const/16 v19, 0x0

    .line 1647
    .line 1648
    const/16 v20, 0x0

    .line 1649
    .line 1650
    const/16 v21, 0x0

    .line 1651
    .line 1652
    sget-object v22, Lapp/k9mail/feature/account/oauth/ui/view/SignInViewKt;->lambda$1800067409:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1653
    .line 1654
    move-object/from16 v23, v1

    .line 1655
    .line 1656
    invoke-static/range {v13 .. v25}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 1657
    .line 1658
    .line 1659
    invoke-static {}, Landroidx/compose/foundation/layout/SizeKt;->requiredWidth-3ABfNKs()Landroidx/compose/ui/Modifier;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v0

    .line 1663
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 1664
    .line 1665
    .line 1666
    const v0, 0x7f120049

    .line 1667
    .line 1668
    .line 1669
    invoke-static {v1, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v13

    .line 1673
    sget-object v19, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 1674
    .line 1675
    invoke-static {v3}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 1676
    .line 1677
    .line 1678
    move-result-wide v17

    .line 1679
    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    .line 1680
    .line 1681
    invoke-static {v2, v3}, Landroidx/sqlite/SQLite;->getSp(D)J

    .line 1682
    .line 1683
    .line 1684
    move-result-wide v20

    .line 1685
    new-instance v29, Landroidx/compose/ui/text/TextStyle;

    .line 1686
    .line 1687
    const-wide/16 v23, 0x0

    .line 1688
    .line 1689
    const v25, 0xffff79

    .line 1690
    .line 1691
    .line 1692
    const-wide/16 v15, 0x0

    .line 1693
    .line 1694
    const/16 v22, 0x0

    .line 1695
    .line 1696
    move-object/from16 v14, v29

    .line 1697
    .line 1698
    invoke-direct/range {v14 .. v25}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    .line 1699
    .line 1700
    .line 1701
    const/16 v32, 0x0

    .line 1702
    .line 1703
    const v33, 0x1fffe

    .line 1704
    .line 1705
    .line 1706
    const/4 v14, 0x0

    .line 1707
    const-wide/16 v17, 0x0

    .line 1708
    .line 1709
    const-wide/16 v19, 0x0

    .line 1710
    .line 1711
    const/16 v21, 0x0

    .line 1712
    .line 1713
    const-wide/16 v22, 0x0

    .line 1714
    .line 1715
    const/16 v24, 0x0

    .line 1716
    .line 1717
    const/16 v25, 0x0

    .line 1718
    .line 1719
    const/16 v26, 0x0

    .line 1720
    .line 1721
    const/16 v27, 0x0

    .line 1722
    .line 1723
    const/16 v28, 0x0

    .line 1724
    .line 1725
    const/16 v31, 0x0

    .line 1726
    .line 1727
    move-object/from16 v30, v1

    .line 1728
    .line 1729
    invoke-static/range {v13 .. v33}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 1730
    .line 1731
    .line 1732
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1733
    .line 1734
    .line 1735
    goto :goto_21

    .line 1736
    :cond_37
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1737
    .line 1738
    .line 1739
    :goto_21
    return-object v10

    .line 1740
    :pswitch_17
    move-object/from16 v0, p1

    .line 1741
    .line 1742
    check-cast v0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;

    .line 1743
    .line 1744
    move-object/from16 v1, p2

    .line 1745
    .line 1746
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1747
    .line 1748
    move-object/from16 v2, p3

    .line 1749
    .line 1750
    check-cast v2, Ljava/lang/Integer;

    .line 1751
    .line 1752
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1753
    .line 1754
    .line 1755
    move-result v2

    .line 1756
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1757
    .line 1758
    .line 1759
    and-int/lit8 v0, v2, 0x11

    .line 1760
    .line 1761
    if-eq v0, v9, :cond_38

    .line 1762
    .line 1763
    move v12, v11

    .line 1764
    :cond_38
    and-int/lit8 v0, v2, 0x1

    .line 1765
    .line 1766
    move-object v5, v1

    .line 1767
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1768
    .line 1769
    invoke-virtual {v5, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1770
    .line 1771
    .line 1772
    move-result v0

    .line 1773
    if-eqz v0, :cond_39

    .line 1774
    .line 1775
    const v0, 0x7f12003c

    .line 1776
    .line 1777
    .line 1778
    invoke-static {v5, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v3

    .line 1782
    const/4 v6, 0x0

    .line 1783
    const/4 v7, 0x5

    .line 1784
    const/4 v2, 0x0

    .line 1785
    const/4 v4, 0x0

    .line 1786
    invoke-static/range {v2 .. v7}, Landroidx/room/util/SchemaInfoUtilKt;->LoadingView(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/Composer;II)V

    .line 1787
    .line 1788
    .line 1789
    goto :goto_22

    .line 1790
    :cond_39
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1791
    .line 1792
    .line 1793
    :goto_22
    return-object v10

    .line 1794
    :pswitch_18
    move-object/from16 v0, p1

    .line 1795
    .line 1796
    check-cast v0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;

    .line 1797
    .line 1798
    move-object/from16 v1, p2

    .line 1799
    .line 1800
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1801
    .line 1802
    move-object/from16 v2, p3

    .line 1803
    .line 1804
    check-cast v2, Ljava/lang/Integer;

    .line 1805
    .line 1806
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1807
    .line 1808
    .line 1809
    move-result v2

    .line 1810
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1811
    .line 1812
    .line 1813
    and-int/lit8 v0, v2, 0x11

    .line 1814
    .line 1815
    if-eq v0, v9, :cond_3a

    .line 1816
    .line 1817
    move v12, v11

    .line 1818
    :cond_3a
    and-int/lit8 v0, v2, 0x1

    .line 1819
    .line 1820
    move-object v7, v1

    .line 1821
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 1822
    .line 1823
    invoke-virtual {v7, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1824
    .line 1825
    .line 1826
    move-result v0

    .line 1827
    if-eqz v0, :cond_3b

    .line 1828
    .line 1829
    const v0, 0x7f12003a

    .line 1830
    .line 1831
    .line 1832
    invoke-static {v7, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v2

    .line 1836
    const/4 v8, 0x0

    .line 1837
    const/16 v9, 0x1e

    .line 1838
    .line 1839
    const/4 v3, 0x0

    .line 1840
    const/4 v4, 0x0

    .line 1841
    const/4 v5, 0x0

    .line 1842
    const/4 v6, 0x0

    .line 1843
    invoke-static/range {v2 .. v9}, Landroidx/appcompat/app/ActionBar;->ErrorView(Ljava/lang/String;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/Composer;II)V

    .line 1844
    .line 1845
    .line 1846
    goto :goto_23

    .line 1847
    :cond_3b
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1848
    .line 1849
    .line 1850
    :goto_23
    return-object v10

    .line 1851
    :pswitch_19
    move-object/from16 v0, p1

    .line 1852
    .line 1853
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1854
    .line 1855
    move-object/from16 v1, p2

    .line 1856
    .line 1857
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1858
    .line 1859
    move-object/from16 v2, p3

    .line 1860
    .line 1861
    check-cast v2, Ljava/lang/Integer;

    .line 1862
    .line 1863
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1864
    .line 1865
    .line 1866
    move-result v2

    .line 1867
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1868
    .line 1869
    .line 1870
    and-int/lit8 v0, v2, 0x11

    .line 1871
    .line 1872
    if-eq v0, v9, :cond_3c

    .line 1873
    .line 1874
    move v12, v11

    .line 1875
    :cond_3c
    and-int/lit8 v0, v2, 0x1

    .line 1876
    .line 1877
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1878
    .line 1879
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1880
    .line 1881
    .line 1882
    move-result v0

    .line 1883
    if-eqz v0, :cond_3d

    .line 1884
    .line 1885
    goto :goto_24

    .line 1886
    :cond_3d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1887
    .line 1888
    .line 1889
    :goto_24
    return-object v10

    .line 1890
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1891
    .line 1892
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1893
    .line 1894
    move-object/from16 v1, p2

    .line 1895
    .line 1896
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1897
    .line 1898
    move-object/from16 v2, p3

    .line 1899
    .line 1900
    check-cast v2, Ljava/lang/Integer;

    .line 1901
    .line 1902
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1903
    .line 1904
    .line 1905
    move-result v2

    .line 1906
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1907
    .line 1908
    .line 1909
    and-int/lit8 v0, v2, 0x11

    .line 1910
    .line 1911
    if-eq v0, v9, :cond_3e

    .line 1912
    .line 1913
    move v12, v11

    .line 1914
    :cond_3e
    and-int/lit8 v0, v2, 0x1

    .line 1915
    .line 1916
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1917
    .line 1918
    invoke-virtual {v1, v0, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1919
    .line 1920
    .line 1921
    move-result v0

    .line 1922
    if-eqz v0, :cond_3f

    .line 1923
    .line 1924
    goto :goto_25

    .line 1925
    :cond_3f
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1926
    .line 1927
    .line 1928
    :goto_25
    return-object v10

    .line 1929
    :pswitch_1b
    move-object/from16 v0, p1

    .line 1930
    .line 1931
    check-cast v0, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 1932
    .line 1933
    move-object/from16 v2, p2

    .line 1934
    .line 1935
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1936
    .line 1937
    move-object/from16 v3, p3

    .line 1938
    .line 1939
    check-cast v3, Ljava/lang/Integer;

    .line 1940
    .line 1941
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1942
    .line 1943
    .line 1944
    move-result v3

    .line 1945
    and-int/lit8 v8, v3, 0x6

    .line 1946
    .line 1947
    if-nez v8, :cond_41

    .line 1948
    .line 1949
    move-object v8, v2

    .line 1950
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 1951
    .line 1952
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1953
    .line 1954
    .line 1955
    move-result v8

    .line 1956
    if-eqz v8, :cond_40

    .line 1957
    .line 1958
    goto :goto_26

    .line 1959
    :cond_40
    move v6, v7

    .line 1960
    :goto_26
    or-int/2addr v3, v6

    .line 1961
    :cond_41
    and-int/lit8 v6, v3, 0x13

    .line 1962
    .line 1963
    if-eq v6, v5, :cond_42

    .line 1964
    .line 1965
    move v5, v11

    .line 1966
    goto :goto_27

    .line 1967
    :cond_42
    move v5, v12

    .line 1968
    :goto_27
    and-int/2addr v3, v11

    .line 1969
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1970
    .line 1971
    invoke-virtual {v2, v3, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1972
    .line 1973
    .line 1974
    move-result v3

    .line 1975
    if-eqz v3, :cond_43

    .line 1976
    .line 1977
    sget v3, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->DividerVerticalPadding:F

    .line 1978
    .line 1979
    const/4 v5, 0x0

    .line 1980
    invoke-static {v4, v5, v3, v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 1981
    .line 1982
    .line 1983
    move-result-object v3

    .line 1984
    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 1985
    .line 1986
    invoke-interface {v3, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1987
    .line 1988
    .line 1989
    move-result-object v3

    .line 1990
    sget v4, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->DividerHeight:F

    .line 1991
    .line 1992
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1993
    .line 1994
    .line 1995
    move-result-object v3

    .line 1996
    iget-wide v4, v0, Landroidx/compose/foundation/contextmenu/ContextMenuColors;->iconColor:J

    .line 1997
    .line 1998
    invoke-static {v3, v4, v5, v1}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v0

    .line 2002
    invoke-static {v0, v2, v12}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 2003
    .line 2004
    .line 2005
    goto :goto_28

    .line 2006
    :cond_43
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2007
    .line 2008
    .line 2009
    :goto_28
    return-object v10

    .line 2010
    :pswitch_1c
    move-object/from16 v0, p1

    .line 2011
    .line 2012
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 2013
    .line 2014
    move-object/from16 v1, p2

    .line 2015
    .line 2016
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2017
    .line 2018
    move-object/from16 v2, p3

    .line 2019
    .line 2020
    check-cast v2, Ljava/lang/Integer;

    .line 2021
    .line 2022
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2023
    .line 2024
    .line 2025
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2026
    .line 2027
    .line 2028
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2029
    .line 2030
    const v2, -0x330fbe2f

    .line 2031
    .line 2032
    .line 2033
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2034
    .line 2035
    .line 2036
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 2037
    .line 2038
    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 2039
    .line 2040
    .line 2041
    move-result-object v0

    .line 2042
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2043
    .line 2044
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2045
    .line 2046
    .line 2047
    move-result-object v2

    .line 2048
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 2049
    .line 2050
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2051
    .line 2052
    .line 2053
    invoke-static {v0, v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2054
    .line 2055
    .line 2056
    move-result-object v0

    .line 2057
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2058
    .line 2059
    .line 2060
    return-object v0

    .line 2061
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
