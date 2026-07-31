.class public abstract Landroidx/compose/foundation/text/BasicTextKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final AltShift:I = 0x9

.field public static final CtrlShift:I = 0xa

.field public static final ShiftMeta:I = 0xc

.field public static final ValidatingEmptyOffsetMappingIdentity:Landroidx/navigation/NavOptions$Builder;

.field public static final defaultKeyMapping:Landroidx/appcompat/widget/PopupMenu$1;

.field public static final handwritingPointerIcon:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

.field public static final platformDefaultKeyMapping:Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/appcompat/widget/PopupMenu$1;

    .line 8
    .line 9
    const/16 v2, 0x15

    .line 10
    .line 11
    invoke-direct {v1, v2, v0}, Landroidx/appcompat/widget/PopupMenu$1;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Landroidx/compose/foundation/text/BasicTextKt;->defaultKeyMapping:Landroidx/appcompat/widget/PopupMenu$1;

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/compose/foundation/text/BasicTextKt;->platformDefaultKeyMapping:Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;

    .line 23
    .line 24
    new-instance v0, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    .line 25
    .line 26
    const/16 v1, 0x3fe

    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Landroidx/compose/foundation/text/BasicTextKt;->handwritingPointerIcon:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    .line 32
    .line 33
    new-instance v0, Landroidx/navigation/NavOptions$Builder;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-direct {v0, v1, v1}, Landroidx/navigation/NavOptions$Builder;-><init>(II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Landroidx/compose/foundation/text/BasicTextKt;->ValidatingEmptyOffsetMappingIdentity:Landroidx/navigation/NavOptions$Builder;

    .line 40
    .line 41
    return-void
.end method

.method public static final BasicText-CL7eQgs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/GapComposer;II)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v5, p2

    .line 4
    .line 5
    move/from16 v6, p6

    .line 6
    .line 7
    move/from16 v7, p7

    .line 8
    .line 9
    move-object/from16 v14, p9

    .line 10
    .line 11
    move/from16 v15, p10

    .line 12
    .line 13
    const v0, -0x5013ac4b

    .line 14
    .line 15
    .line 16
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, v15, 0x6

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v0, v3

    .line 33
    :goto_0
    or-int/2addr v0, v15

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v0, v15

    .line 36
    :goto_1
    and-int/lit8 v4, v15, 0x30

    .line 37
    .line 38
    const/16 v16, 0x20

    .line 39
    .line 40
    if-nez v4, :cond_3

    .line 41
    .line 42
    move-object/from16 v4, p1

    .line 43
    .line 44
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_2

    .line 49
    .line 50
    move/from16 v8, v16

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v8, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v8

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    move-object/from16 v4, p1

    .line 58
    .line 59
    :goto_3
    and-int/lit16 v8, v15, 0x180

    .line 60
    .line 61
    if-nez v8, :cond_5

    .line 62
    .line 63
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_4

    .line 68
    .line 69
    const/16 v8, 0x100

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_4
    const/16 v8, 0x80

    .line 73
    .line 74
    :goto_4
    or-int/2addr v0, v8

    .line 75
    :cond_5
    and-int/lit16 v8, v15, 0xc00

    .line 76
    .line 77
    if-nez v8, :cond_7

    .line 78
    .line 79
    move-object/from16 v8, p3

    .line 80
    .line 81
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-eqz v9, :cond_6

    .line 86
    .line 87
    const/16 v9, 0x800

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_6
    const/16 v9, 0x400

    .line 91
    .line 92
    :goto_5
    or-int/2addr v0, v9

    .line 93
    goto :goto_6

    .line 94
    :cond_7
    move-object/from16 v8, p3

    .line 95
    .line 96
    :goto_6
    and-int/lit16 v9, v15, 0x6000

    .line 97
    .line 98
    if-nez v9, :cond_9

    .line 99
    .line 100
    move/from16 v9, p4

    .line 101
    .line 102
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    if-eqz v10, :cond_8

    .line 107
    .line 108
    const/16 v10, 0x4000

    .line 109
    .line 110
    goto :goto_7

    .line 111
    :cond_8
    const/16 v10, 0x2000

    .line 112
    .line 113
    :goto_7
    or-int/2addr v0, v10

    .line 114
    goto :goto_8

    .line 115
    :cond_9
    move/from16 v9, p4

    .line 116
    .line 117
    :goto_8
    const/high16 v10, 0x30000

    .line 118
    .line 119
    and-int/2addr v10, v15

    .line 120
    if-nez v10, :cond_b

    .line 121
    .line 122
    move/from16 v10, p5

    .line 123
    .line 124
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    if-eqz v11, :cond_a

    .line 129
    .line 130
    const/high16 v11, 0x20000

    .line 131
    .line 132
    goto :goto_9

    .line 133
    :cond_a
    const/high16 v11, 0x10000

    .line 134
    .line 135
    :goto_9
    or-int/2addr v0, v11

    .line 136
    goto :goto_a

    .line 137
    :cond_b
    move/from16 v10, p5

    .line 138
    .line 139
    :goto_a
    const/high16 v11, 0x180000

    .line 140
    .line 141
    and-int/2addr v11, v15

    .line 142
    if-nez v11, :cond_d

    .line 143
    .line 144
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    if-eqz v11, :cond_c

    .line 149
    .line 150
    const/high16 v11, 0x100000

    .line 151
    .line 152
    goto :goto_b

    .line 153
    :cond_c
    const/high16 v11, 0x80000

    .line 154
    .line 155
    :goto_b
    or-int/2addr v0, v11

    .line 156
    :cond_d
    const/high16 v11, 0xc00000

    .line 157
    .line 158
    and-int/2addr v11, v15

    .line 159
    if-nez v11, :cond_f

    .line 160
    .line 161
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    if-eqz v11, :cond_e

    .line 166
    .line 167
    const/high16 v11, 0x800000

    .line 168
    .line 169
    goto :goto_c

    .line 170
    :cond_e
    const/high16 v11, 0x400000

    .line 171
    .line 172
    :goto_c
    or-int/2addr v0, v11

    .line 173
    :cond_f
    const/high16 v11, 0x6000000

    .line 174
    .line 175
    and-int/2addr v11, v15

    .line 176
    if-nez v11, :cond_11

    .line 177
    .line 178
    move-object/from16 v11, p8

    .line 179
    .line 180
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v12

    .line 184
    if-eqz v12, :cond_10

    .line 185
    .line 186
    const/high16 v12, 0x4000000

    .line 187
    .line 188
    goto :goto_d

    .line 189
    :cond_10
    const/high16 v12, 0x2000000

    .line 190
    .line 191
    :goto_d
    or-int/2addr v0, v12

    .line 192
    goto :goto_e

    .line 193
    :cond_11
    move-object/from16 v11, p8

    .line 194
    .line 195
    :goto_e
    const/high16 v12, 0x30000000

    .line 196
    .line 197
    or-int/2addr v0, v12

    .line 198
    and-int/lit8 v12, p11, 0x6

    .line 199
    .line 200
    const/4 v13, 0x0

    .line 201
    if-nez v12, :cond_14

    .line 202
    .line 203
    and-int/lit8 v12, p11, 0x8

    .line 204
    .line 205
    if-nez v12, :cond_12

    .line 206
    .line 207
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    goto :goto_f

    .line 212
    :cond_12
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v12

    .line 216
    :goto_f
    if-eqz v12, :cond_13

    .line 217
    .line 218
    const/4 v12, 0x4

    .line 219
    goto :goto_10

    .line 220
    :cond_13
    move v12, v3

    .line 221
    :goto_10
    or-int v12, p11, v12

    .line 222
    .line 223
    goto :goto_11

    .line 224
    :cond_14
    move/from16 v12, p11

    .line 225
    .line 226
    :goto_11
    const v17, 0x12492493

    .line 227
    .line 228
    .line 229
    and-int v2, v0, v17

    .line 230
    .line 231
    const v13, 0x12492492

    .line 232
    .line 233
    .line 234
    const/4 v9, 0x1

    .line 235
    if-ne v2, v13, :cond_16

    .line 236
    .line 237
    and-int/lit8 v2, v12, 0x3

    .line 238
    .line 239
    if-eq v2, v3, :cond_15

    .line 240
    .line 241
    goto :goto_12

    .line 242
    :cond_15
    const/4 v2, 0x0

    .line 243
    goto :goto_13

    .line 244
    :cond_16
    :goto_12
    move v2, v9

    .line 245
    :goto_13
    and-int/lit8 v13, v0, 0x1

    .line 246
    .line 247
    invoke-virtual {v14, v13, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-eqz v2, :cond_26

    .line 252
    .line 253
    invoke-static {v7, v6}, Landroidx/compose/foundation/text/BasicTextKt;->validateMinMaxLines(II)V

    .line 254
    .line 255
    .line 256
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->LocalSelectionRegistrar:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 257
    .line 258
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    check-cast v2, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 263
    .line 264
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 265
    .line 266
    if-eqz v2, :cond_1b

    .line 267
    .line 268
    const v13, 0x5eab0cd5

    .line 269
    .line 270
    .line 271
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 272
    .line 273
    .line 274
    sget-object v13, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 275
    .line 276
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v13

    .line 280
    check-cast v13, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 281
    .line 282
    const/16 v25, 0x0

    .line 283
    .line 284
    iget-wide v10, v13, Landroidx/compose/foundation/text/selection/TextSelectionColors;->backgroundColor:J

    .line 285
    .line 286
    new-array v13, v9, [Ljava/lang/Object;

    .line 287
    .line 288
    aput-object v2, v13, v25

    .line 289
    .line 290
    new-instance v9, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 291
    .line 292
    move/from16 v26, v0

    .line 293
    .line 294
    const/4 v0, 0x6

    .line 295
    invoke-direct {v9, v0, v2}, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;

    .line 299
    .line 300
    move/from16 v4, v25

    .line 301
    .line 302
    invoke-direct {v0, v4}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 303
    .line 304
    .line 305
    new-instance v4, Landroidx/cardview/widget/CardView$1;

    .line 306
    .line 307
    const/16 v6, 0xc

    .line 308
    .line 309
    invoke-direct {v4, v6, v9, v0}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    if-nez v0, :cond_18

    .line 321
    .line 322
    if-ne v6, v3, :cond_17

    .line 323
    .line 324
    goto :goto_14

    .line 325
    :cond_17
    const/4 v0, 0x1

    .line 326
    goto :goto_15

    .line 327
    :cond_18
    :goto_14
    new-instance v6, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;

    .line 328
    .line 329
    const/4 v0, 0x1

    .line 330
    invoke-direct {v6, v2, v0}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;I)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    :goto_15
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 337
    .line 338
    const/4 v9, 0x0

    .line 339
    invoke-static {v13, v4, v6, v14, v9}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    check-cast v4, Ljava/lang/Number;

    .line 344
    .line 345
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 346
    .line 347
    .line 348
    move-result-wide v0

    .line 349
    invoke-virtual {v14, v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v6

    .line 357
    or-int/2addr v4, v6

    .line 358
    invoke-virtual {v14, v10, v11}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    or-int/2addr v4, v6

    .line 363
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    if-nez v4, :cond_19

    .line 368
    .line 369
    if-ne v6, v3, :cond_1a

    .line 370
    .line 371
    :cond_19
    new-instance v18, Landroidx/compose/foundation/text/modifiers/SelectionController;

    .line 372
    .line 373
    move-wide/from16 v19, v0

    .line 374
    .line 375
    move-object/from16 v21, v2

    .line 376
    .line 377
    move-wide/from16 v22, v10

    .line 378
    .line 379
    invoke-direct/range {v18 .. v23}, Landroidx/compose/foundation/text/modifiers/SelectionController;-><init>(JLandroidx/compose/foundation/text/selection/SelectionRegistrarImpl;J)V

    .line 380
    .line 381
    .line 382
    move-object/from16 v6, v18

    .line 383
    .line 384
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    :cond_1a
    check-cast v6, Landroidx/compose/foundation/text/modifiers/SelectionController;

    .line 388
    .line 389
    const/4 v4, 0x0

    .line 390
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 391
    .line 392
    .line 393
    move-object v11, v6

    .line 394
    goto :goto_16

    .line 395
    :cond_1b
    move/from16 v26, v0

    .line 396
    .line 397
    const/4 v4, 0x0

    .line 398
    const v0, 0x5eb28b71

    .line 399
    .line 400
    .line 401
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 405
    .line 406
    .line 407
    const/4 v11, 0x0

    .line 408
    :goto_16
    sget-object v0, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->EmptyInlineContent:Lkotlin/Pair;

    .line 409
    .line 410
    move-object/from16 v1, p0

    .line 411
    .line 412
    iget-object v0, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 413
    .line 414
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    .line 419
    .line 420
    if-eqz v2, :cond_1e

    .line 421
    .line 422
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    const/4 v6, 0x0

    .line 427
    :goto_17
    if-ge v6, v4, :cond_1e

    .line 428
    .line 429
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v9

    .line 433
    check-cast v9, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 434
    .line 435
    iget-object v10, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 436
    .line 437
    instance-of v10, v10, Landroidx/compose/ui/text/StringAnnotation;

    .line 438
    .line 439
    if-eqz v10, :cond_1c

    .line 440
    .line 441
    iget-object v10, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    .line 442
    .line 443
    const-string v13, "androidx.compose.foundation.text.inlineContent"

    .line 444
    .line 445
    invoke-virtual {v13, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v10

    .line 449
    if-eqz v10, :cond_1c

    .line 450
    .line 451
    iget v10, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 452
    .line 453
    iget v9, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 454
    .line 455
    const/4 v13, 0x0

    .line 456
    invoke-static {v13, v0, v10, v9}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    .line 457
    .line 458
    .line 459
    move-result v9

    .line 460
    if-eqz v9, :cond_1d

    .line 461
    .line 462
    const/4 v4, 0x1

    .line 463
    goto :goto_18

    .line 464
    :cond_1c
    const/4 v13, 0x0

    .line 465
    :cond_1d
    add-int/lit8 v6, v6, 0x1

    .line 466
    .line 467
    goto :goto_17

    .line 468
    :cond_1e
    const/4 v13, 0x0

    .line 469
    move v4, v13

    .line 470
    :goto_18
    invoke-static {v1}, Lcoil3/util/UtilsKt;->hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 475
    .line 476
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    move-object v10, v2

    .line 481
    check-cast v10, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 482
    .line 483
    if-nez v4, :cond_20

    .line 484
    .line 485
    if-nez v0, :cond_20

    .line 486
    .line 487
    const v0, 0x5eb64fb6

    .line 488
    .line 489
    .line 490
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 491
    .line 492
    .line 493
    const/4 v0, 0x0

    .line 494
    invoke-static {v1, v5, v10, v0, v14}, Landroidx/compose/foundation/text/BasicText_androidKt;->BackgroundTextMeasurement(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Landroidx/compose/runtime/GapComposer;)V

    .line 495
    .line 496
    .line 497
    move-object v2, v10

    .line 498
    const/4 v10, 0x0

    .line 499
    const/4 v12, 0x0

    .line 500
    const/4 v9, 0x0

    .line 501
    move/from16 v25, v13

    .line 502
    .line 503
    const/4 v13, 0x0

    .line 504
    move-object/from16 v0, p1

    .line 505
    .line 506
    move/from16 v4, p4

    .line 507
    .line 508
    move/from16 v6, p6

    .line 509
    .line 510
    move-object v3, v8

    .line 511
    const/4 v15, 0x1

    .line 512
    move-object v8, v2

    .line 513
    move-object v2, v5

    .line 514
    move/from16 v5, p5

    .line 515
    .line 516
    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-CL7eQgs(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/AutoSizeStepBased;)Landroidx/compose/ui/Modifier;

    .line 517
    .line 518
    .line 519
    move-result-object v8

    .line 520
    sget-object v0, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    .line 521
    .line 522
    iget-wide v1, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 523
    .line 524
    ushr-long v3, v1, v16

    .line 525
    .line 526
    xor-long/2addr v1, v3

    .line 527
    long-to-int v1, v1

    .line 528
    invoke-static {v14, v8}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 537
    .line 538
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 542
    .line 543
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 544
    .line 545
    .line 546
    iget-boolean v5, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 547
    .line 548
    if-eqz v5, :cond_1f

    .line 549
    .line 550
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 551
    .line 552
    .line 553
    goto :goto_19

    .line 554
    :cond_1f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 555
    .line 556
    .line 557
    :goto_19
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 558
    .line 559
    invoke-static {v14, v0, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 560
    .line 561
    .line 562
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 563
    .line 564
    invoke-static {v14, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 565
    .line 566
    .line 567
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 568
    .line 569
    invoke-static {v14, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 570
    .line 571
    .line 572
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 573
    .line 574
    invoke-static {v14, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 575
    .line 576
    .line 577
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 582
    .line 583
    invoke-static {v14, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 587
    .line 588
    .line 589
    const/4 v0, 0x0

    .line 590
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 591
    .line 592
    .line 593
    move-object v13, v14

    .line 594
    goto/16 :goto_1b

    .line 595
    .line 596
    :cond_20
    move-object v8, v10

    .line 597
    move v0, v13

    .line 598
    const/4 v15, 0x1

    .line 599
    const v1, 0x5ec5cfb6

    .line 600
    .line 601
    .line 602
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 603
    .line 604
    .line 605
    and-int/lit8 v1, v26, 0xe

    .line 606
    .line 607
    const/4 v2, 0x4

    .line 608
    if-ne v1, v2, :cond_21

    .line 609
    .line 610
    move v9, v15

    .line 611
    goto :goto_1a

    .line 612
    :cond_21
    move v9, v0

    .line 613
    :goto_1a
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    if-nez v9, :cond_22

    .line 618
    .line 619
    if-ne v1, v3, :cond_23

    .line 620
    .line 621
    :cond_22
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 626
    .line 627
    .line 628
    :cond_23
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 629
    .line 630
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString;

    .line 635
    .line 636
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v5

    .line 640
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v6

    .line 644
    if-nez v5, :cond_24

    .line 645
    .line 646
    if-ne v6, v3, :cond_25

    .line 647
    .line 648
    :cond_24
    new-instance v6, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;

    .line 649
    .line 650
    const/4 v3, 0x2

    .line 651
    invoke-direct {v6, v1, v3}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 655
    .line 656
    .line 657
    :cond_25
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 658
    .line 659
    shr-int/lit8 v1, v26, 0x3

    .line 660
    .line 661
    and-int/lit16 v1, v1, 0x38e

    .line 662
    .line 663
    shr-int/lit8 v3, v26, 0xc

    .line 664
    .line 665
    const v5, 0xe000

    .line 666
    .line 667
    .line 668
    and-int/2addr v3, v5

    .line 669
    or-int/2addr v1, v3

    .line 670
    shl-int/lit8 v3, v26, 0x9

    .line 671
    .line 672
    const/high16 v7, 0x70000

    .line 673
    .line 674
    and-int/2addr v3, v7

    .line 675
    or-int/2addr v1, v3

    .line 676
    shl-int/lit8 v3, v26, 0x6

    .line 677
    .line 678
    const/high16 v7, 0x380000

    .line 679
    .line 680
    and-int/2addr v7, v3

    .line 681
    or-int/2addr v1, v7

    .line 682
    const/high16 v7, 0x1c00000

    .line 683
    .line 684
    and-int/2addr v7, v3

    .line 685
    or-int/2addr v1, v7

    .line 686
    const/high16 v7, 0xe000000

    .line 687
    .line 688
    and-int/2addr v7, v3

    .line 689
    or-int/2addr v1, v7

    .line 690
    const/high16 v7, 0x70000000

    .line 691
    .line 692
    and-int/2addr v3, v7

    .line 693
    or-int/2addr v1, v3

    .line 694
    shr-int/lit8 v3, v26, 0x15

    .line 695
    .line 696
    and-int/lit16 v3, v3, 0x380

    .line 697
    .line 698
    const/16 v24, 0xc

    .line 699
    .line 700
    shl-int/lit8 v7, v12, 0xc

    .line 701
    .line 702
    and-int/2addr v5, v7

    .line 703
    or-int v15, v3, v5

    .line 704
    .line 705
    move-object/from16 v0, p1

    .line 706
    .line 707
    move-object/from16 v5, p2

    .line 708
    .line 709
    move/from16 v7, p5

    .line 710
    .line 711
    move/from16 v9, p7

    .line 712
    .line 713
    move v3, v4

    .line 714
    move-object v12, v6

    .line 715
    move-object v10, v8

    .line 716
    move-object v13, v14

    .line 717
    move/from16 v6, p4

    .line 718
    .line 719
    move/from16 v8, p6

    .line 720
    .line 721
    move-object/from16 v4, p8

    .line 722
    .line 723
    move v14, v1

    .line 724
    move-object v1, v2

    .line 725
    move-object/from16 v2, p3

    .line 726
    .line 727
    invoke-static/range {v0 .. v15}, Landroidx/compose/foundation/text/BasicTextKt;->LayoutWithLinksAndInlineContent-11Od_4g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 728
    .line 729
    .line 730
    const/4 v4, 0x0

    .line 731
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 732
    .line 733
    .line 734
    goto :goto_1b

    .line 735
    :cond_26
    move-object v13, v14

    .line 736
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 737
    .line 738
    .line 739
    :goto_1b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 740
    .line 741
    .line 742
    move-result-object v13

    .line 743
    if-eqz v13, :cond_27

    .line 744
    .line 745
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;

    .line 746
    .line 747
    const/4 v12, 0x1

    .line 748
    move-object/from16 v1, p0

    .line 749
    .line 750
    move-object/from16 v2, p1

    .line 751
    .line 752
    move-object/from16 v3, p2

    .line 753
    .line 754
    move-object/from16 v4, p3

    .line 755
    .line 756
    move/from16 v5, p4

    .line 757
    .line 758
    move/from16 v6, p5

    .line 759
    .line 760
    move/from16 v7, p6

    .line 761
    .line 762
    move/from16 v8, p7

    .line 763
    .line 764
    move-object/from16 v9, p8

    .line 765
    .line 766
    move/from16 v10, p10

    .line 767
    .line 768
    move/from16 v11, p11

    .line 769
    .line 770
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/lang/Object;III)V

    .line 771
    .line 772
    .line 773
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 774
    .line 775
    :cond_27
    return-void
.end method

.method public static final BasicText-RWo7tUw(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/foundation/text/AutoSizeStepBased;Landroidx/compose/runtime/GapComposer;II)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v0, p8

    .line 6
    .line 7
    move-object/from16 v14, p9

    .line 8
    .line 9
    move/from16 v15, p10

    .line 10
    .line 11
    move/from16 v9, p11

    .line 12
    .line 13
    const v2, -0x3e089999

    .line 14
    .line 15
    .line 16
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v2, v15, 0x6

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v2, 0x2

    .line 32
    :goto_0
    or-int/2addr v2, v15

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v2, v15

    .line 35
    :goto_1
    and-int/lit8 v3, v15, 0x30

    .line 36
    .line 37
    const/16 v16, 0x20

    .line 38
    .line 39
    if-nez v3, :cond_3

    .line 40
    .line 41
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    move/from16 v3, v16

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
    and-int/lit16 v3, v15, 0x180

    .line 54
    .line 55
    if-nez v3, :cond_5

    .line 56
    .line 57
    move-object/from16 v3, p2

    .line 58
    .line 59
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_4

    .line 64
    .line 65
    const/16 v4, 0x100

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/16 v4, 0x80

    .line 69
    .line 70
    :goto_3
    or-int/2addr v2, v4

    .line 71
    goto :goto_4

    .line 72
    :cond_5
    move-object/from16 v3, p2

    .line 73
    .line 74
    :goto_4
    and-int/lit8 v4, v9, 0x8

    .line 75
    .line 76
    if-eqz v4, :cond_7

    .line 77
    .line 78
    or-int/lit16 v2, v2, 0xc00

    .line 79
    .line 80
    :cond_6
    move-object/from16 v5, p3

    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_7
    and-int/lit16 v5, v15, 0xc00

    .line 84
    .line 85
    if-nez v5, :cond_6

    .line 86
    .line 87
    move-object/from16 v5, p3

    .line 88
    .line 89
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_8

    .line 94
    .line 95
    const/16 v6, 0x800

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_8
    const/16 v6, 0x400

    .line 99
    .line 100
    :goto_5
    or-int/2addr v2, v6

    .line 101
    :goto_6
    and-int/lit8 v6, v9, 0x10

    .line 102
    .line 103
    if-eqz v6, :cond_a

    .line 104
    .line 105
    or-int/lit16 v2, v2, 0x6000

    .line 106
    .line 107
    :cond_9
    move/from16 v7, p4

    .line 108
    .line 109
    goto :goto_8

    .line 110
    :cond_a
    and-int/lit16 v7, v15, 0x6000

    .line 111
    .line 112
    if-nez v7, :cond_9

    .line 113
    .line 114
    move/from16 v7, p4

    .line 115
    .line 116
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-eqz v10, :cond_b

    .line 121
    .line 122
    const/16 v10, 0x4000

    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_b
    const/16 v10, 0x2000

    .line 126
    .line 127
    :goto_7
    or-int/2addr v2, v10

    .line 128
    :goto_8
    and-int/lit8 v10, v9, 0x20

    .line 129
    .line 130
    const/high16 v11, 0x30000

    .line 131
    .line 132
    if-eqz v10, :cond_d

    .line 133
    .line 134
    or-int/2addr v2, v11

    .line 135
    :cond_c
    move/from16 v11, p5

    .line 136
    .line 137
    goto :goto_a

    .line 138
    :cond_d
    and-int/2addr v11, v15

    .line 139
    if-nez v11, :cond_c

    .line 140
    .line 141
    move/from16 v11, p5

    .line 142
    .line 143
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    if-eqz v12, :cond_e

    .line 148
    .line 149
    const/high16 v12, 0x20000

    .line 150
    .line 151
    goto :goto_9

    .line 152
    :cond_e
    const/high16 v12, 0x10000

    .line 153
    .line 154
    :goto_9
    or-int/2addr v2, v12

    .line 155
    :goto_a
    and-int/lit8 v12, v9, 0x40

    .line 156
    .line 157
    const/high16 v13, 0x180000

    .line 158
    .line 159
    if-eqz v12, :cond_10

    .line 160
    .line 161
    or-int/2addr v2, v13

    .line 162
    :cond_f
    move/from16 v13, p6

    .line 163
    .line 164
    goto :goto_c

    .line 165
    :cond_10
    and-int/2addr v13, v15

    .line 166
    if-nez v13, :cond_f

    .line 167
    .line 168
    move/from16 v13, p6

    .line 169
    .line 170
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 171
    .line 172
    .line 173
    move-result v17

    .line 174
    if-eqz v17, :cond_11

    .line 175
    .line 176
    const/high16 v17, 0x100000

    .line 177
    .line 178
    goto :goto_b

    .line 179
    :cond_11
    const/high16 v17, 0x80000

    .line 180
    .line 181
    :goto_b
    or-int v2, v2, v17

    .line 182
    .line 183
    :goto_c
    and-int/lit16 v1, v9, 0x80

    .line 184
    .line 185
    const/high16 v17, 0xc00000

    .line 186
    .line 187
    if-eqz v1, :cond_13

    .line 188
    .line 189
    or-int v2, v2, v17

    .line 190
    .line 191
    :cond_12
    move/from16 v17, v1

    .line 192
    .line 193
    move/from16 v1, p7

    .line 194
    .line 195
    goto :goto_e

    .line 196
    :cond_13
    and-int v17, v15, v17

    .line 197
    .line 198
    if-nez v17, :cond_12

    .line 199
    .line 200
    move/from16 v17, v1

    .line 201
    .line 202
    move/from16 v1, p7

    .line 203
    .line 204
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 205
    .line 206
    .line 207
    move-result v18

    .line 208
    if-eqz v18, :cond_14

    .line 209
    .line 210
    const/high16 v18, 0x800000

    .line 211
    .line 212
    goto :goto_d

    .line 213
    :cond_14
    const/high16 v18, 0x400000

    .line 214
    .line 215
    :goto_d
    or-int v2, v2, v18

    .line 216
    .line 217
    :goto_e
    const/high16 v18, 0x6000000

    .line 218
    .line 219
    or-int v18, v2, v18

    .line 220
    .line 221
    and-int/lit16 v1, v9, 0x200

    .line 222
    .line 223
    if-eqz v1, :cond_15

    .line 224
    .line 225
    const/high16 v18, 0x36000000

    .line 226
    .line 227
    or-int v18, v2, v18

    .line 228
    .line 229
    goto :goto_11

    .line 230
    :cond_15
    const/high16 v2, 0x30000000

    .line 231
    .line 232
    and-int/2addr v2, v15

    .line 233
    if-nez v2, :cond_18

    .line 234
    .line 235
    const/high16 v2, 0x40000000    # 2.0f

    .line 236
    .line 237
    and-int/2addr v2, v15

    .line 238
    if-nez v2, :cond_16

    .line 239
    .line 240
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    goto :goto_f

    .line 245
    :cond_16
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    :goto_f
    if-eqz v2, :cond_17

    .line 250
    .line 251
    const/high16 v2, 0x20000000

    .line 252
    .line 253
    goto :goto_10

    .line 254
    :cond_17
    const/high16 v2, 0x10000000

    .line 255
    .line 256
    :goto_10
    or-int v18, v18, v2

    .line 257
    .line 258
    :cond_18
    :goto_11
    const v2, 0x12492493

    .line 259
    .line 260
    .line 261
    and-int v2, v18, v2

    .line 262
    .line 263
    const v0, 0x12492492

    .line 264
    .line 265
    .line 266
    const/4 v9, 0x1

    .line 267
    move/from16 v19, v10

    .line 268
    .line 269
    const/4 v10, 0x0

    .line 270
    if-eq v2, v0, :cond_19

    .line 271
    .line 272
    move v0, v9

    .line 273
    goto :goto_12

    .line 274
    :cond_19
    move v0, v10

    .line 275
    :goto_12
    and-int/lit8 v2, v18, 0x1

    .line 276
    .line 277
    invoke-virtual {v14, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_29

    .line 282
    .line 283
    const/4 v0, 0x0

    .line 284
    if-eqz v4, :cond_1a

    .line 285
    .line 286
    move-object/from16 v18, v0

    .line 287
    .line 288
    goto :goto_13

    .line 289
    :cond_1a
    move-object/from16 v18, v5

    .line 290
    .line 291
    :goto_13
    if-eqz v6, :cond_1b

    .line 292
    .line 293
    move v4, v9

    .line 294
    goto :goto_14

    .line 295
    :cond_1b
    move v4, v7

    .line 296
    :goto_14
    if-eqz v19, :cond_1c

    .line 297
    .line 298
    move v5, v9

    .line 299
    goto :goto_15

    .line 300
    :cond_1c
    move v5, v11

    .line 301
    :goto_15
    if-eqz v12, :cond_1d

    .line 302
    .line 303
    const v2, 0x7fffffff

    .line 304
    .line 305
    .line 306
    move v6, v2

    .line 307
    goto :goto_16

    .line 308
    :cond_1d
    move v6, v13

    .line 309
    :goto_16
    if-eqz v17, :cond_1e

    .line 310
    .line 311
    move v7, v9

    .line 312
    goto :goto_17

    .line 313
    :cond_1e
    move/from16 v7, p7

    .line 314
    .line 315
    :goto_17
    if-eqz v1, :cond_1f

    .line 316
    .line 317
    move-object v13, v0

    .line 318
    goto :goto_18

    .line 319
    :cond_1f
    move-object/from16 v13, p8

    .line 320
    .line 321
    :goto_18
    invoke-static {v7, v6}, Landroidx/compose/foundation/text/BasicTextKt;->validateMinMaxLines(II)V

    .line 322
    .line 323
    .line 324
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->LocalSelectionRegistrar:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 325
    .line 326
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    check-cast v1, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 331
    .line 332
    if-eqz v1, :cond_24

    .line 333
    .line 334
    const v0, 0x153e95a3

    .line 335
    .line 336
    .line 337
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 338
    .line 339
    .line 340
    sget-object v0, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 341
    .line 342
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    check-cast v0, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 347
    .line 348
    iget-wide v11, v0, Landroidx/compose/foundation/text/selection/TextSelectionColors;->backgroundColor:J

    .line 349
    .line 350
    new-array v0, v9, [Ljava/lang/Object;

    .line 351
    .line 352
    aput-object v1, v0, v10

    .line 353
    .line 354
    new-instance v2, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 355
    .line 356
    const/4 v9, 0x6

    .line 357
    invoke-direct {v2, v9, v1}, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    new-instance v9, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;

    .line 361
    .line 362
    invoke-direct {v9, v10}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 363
    .line 364
    .line 365
    new-instance v10, Landroidx/cardview/widget/CardView$1;

    .line 366
    .line 367
    const/16 v3, 0xc

    .line 368
    .line 369
    invoke-direct {v10, v3, v2, v9}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 381
    .line 382
    if-nez v2, :cond_21

    .line 383
    .line 384
    if-ne v3, v9, :cond_20

    .line 385
    .line 386
    goto :goto_19

    .line 387
    :cond_20
    const/4 v2, 0x0

    .line 388
    goto :goto_1a

    .line 389
    :cond_21
    :goto_19
    new-instance v3, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;

    .line 390
    .line 391
    const/4 v2, 0x0

    .line 392
    invoke-direct {v3, v1, v2}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    :goto_1a
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 399
    .line 400
    invoke-static {v0, v10, v3, v14, v2}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    check-cast v0, Ljava/lang/Number;

    .line 405
    .line 406
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 407
    .line 408
    .line 409
    move-result-wide v2

    .line 410
    invoke-virtual {v14, v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v10

    .line 418
    or-int/2addr v0, v10

    .line 419
    invoke-virtual {v14, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 420
    .line 421
    .line 422
    move-result v10

    .line 423
    or-int/2addr v0, v10

    .line 424
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v10

    .line 428
    if-nez v0, :cond_22

    .line 429
    .line 430
    if-ne v10, v9, :cond_23

    .line 431
    .line 432
    :cond_22
    new-instance v0, Landroidx/compose/foundation/text/modifiers/SelectionController;

    .line 433
    .line 434
    move-object/from16 p3, v0

    .line 435
    .line 436
    move-object/from16 p6, v1

    .line 437
    .line 438
    move-wide/from16 p4, v2

    .line 439
    .line 440
    move-wide/from16 p7, v11

    .line 441
    .line 442
    invoke-direct/range {p3 .. p8}, Landroidx/compose/foundation/text/modifiers/SelectionController;-><init>(JLandroidx/compose/foundation/text/selection/SelectionRegistrarImpl;J)V

    .line 443
    .line 444
    .line 445
    move-object/from16 v10, p3

    .line 446
    .line 447
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    :cond_23
    move-object v0, v10

    .line 451
    check-cast v0, Landroidx/compose/foundation/text/modifiers/SelectionController;

    .line 452
    .line 453
    const/4 v2, 0x0

    .line 454
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 455
    .line 456
    .line 457
    :goto_1b
    move-object v11, v0

    .line 458
    goto :goto_1c

    .line 459
    :cond_24
    move v2, v10

    .line 460
    const v1, 0x1546143f    # 4.0001753E-26f

    .line 461
    .line 462
    .line 463
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 467
    .line 468
    .line 469
    goto :goto_1b

    .line 470
    :goto_1c
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 471
    .line 472
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    move-object v3, v0

    .line 477
    check-cast v3, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 478
    .line 479
    sget-object v0, Landroidx/compose/foundation/text/BasicText_androidKt;->LocalBackgroundTextMeasurementExecutor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 480
    .line 481
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 486
    .line 487
    if-eqz v0, :cond_25

    .line 488
    .line 489
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    invoke-static {v1}, Landroidx/compose/foundation/text/BasicText_androidKt;->shouldPrefetch(I)Z

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    if-eqz v1, :cond_25

    .line 498
    .line 499
    const v1, 0x4ac313f6    # 6392315.0f

    .line 500
    .line 501
    .line 502
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 503
    .line 504
    .line 505
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 506
    .line 507
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    check-cast v1, Landroidx/compose/ui/unit/LayoutDirection;

    .line 512
    .line 513
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 514
    .line 515
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 520
    .line 521
    :try_start_0
    new-instance v9, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .line 523
    move-object/from16 p6, p0

    .line 524
    .line 525
    move-object/from16 p4, p2

    .line 526
    .line 527
    move-object/from16 p5, v1

    .line 528
    .line 529
    move-object/from16 p7, v2

    .line 530
    .line 531
    move-object/from16 p8, v3

    .line 532
    .line 533
    move-object/from16 p3, v9

    .line 534
    .line 535
    :try_start_1
    invoke-direct/range {p3 .. p8}, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;Ljava/lang/String;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 536
    .line 537
    .line 538
    move-object/from16 v1, p3

    .line 539
    .line 540
    move-object/from16 v3, p8

    .line 541
    .line 542
    :try_start_2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 543
    .line 544
    .line 545
    :catch_0
    :goto_1d
    const/4 v2, 0x0

    .line 546
    goto :goto_1e

    .line 547
    :catch_1
    move-object/from16 v3, p8

    .line 548
    .line 549
    goto :goto_1d

    .line 550
    :goto_1e
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 551
    .line 552
    .line 553
    goto :goto_1f

    .line 554
    :cond_25
    const/4 v2, 0x0

    .line 555
    const v0, 0x4adbba47    # 7200035.5f

    .line 556
    .line 557
    .line 558
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 562
    .line 563
    .line 564
    :goto_1f
    if-nez v11, :cond_26

    .line 565
    .line 566
    if-nez v18, :cond_26

    .line 567
    .line 568
    if-eqz v13, :cond_27

    .line 569
    .line 570
    :cond_26
    move-object/from16 v0, p0

    .line 571
    .line 572
    goto :goto_20

    .line 573
    :cond_27
    const v0, 0x1554c093

    .line 574
    .line 575
    .line 576
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 580
    .line 581
    .line 582
    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;

    .line 583
    .line 584
    move-object/from16 v1, p0

    .line 585
    .line 586
    move-object/from16 v2, p2

    .line 587
    .line 588
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZII)V

    .line 589
    .line 590
    .line 591
    move-object/from16 v20, v1

    .line 592
    .line 593
    move-object v1, v0

    .line 594
    move-object/from16 v0, v20

    .line 595
    .line 596
    invoke-interface {v8, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    move-object/from16 v3, v18

    .line 601
    .line 602
    goto :goto_21

    .line 603
    :goto_20
    const v1, 0x154aedf1

    .line 604
    .line 605
    .line 606
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 607
    .line 608
    .line 609
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 610
    .line 611
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 615
    .line 616
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    check-cast v3, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 621
    .line 622
    const/4 v10, 0x0

    .line 623
    const/4 v12, 0x0

    .line 624
    const/4 v9, 0x0

    .line 625
    move v15, v2

    .line 626
    move-object v0, v8

    .line 627
    move-object/from16 v2, p2

    .line 628
    .line 629
    move-object v8, v3

    .line 630
    move-object/from16 v3, v18

    .line 631
    .line 632
    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-CL7eQgs(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/AutoSizeStepBased;)Landroidx/compose/ui/Modifier;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 637
    .line 638
    .line 639
    :goto_21
    sget-object v0, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    .line 640
    .line 641
    iget-wide v8, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 642
    .line 643
    ushr-long v10, v8, v16

    .line 644
    .line 645
    xor-long/2addr v8, v10

    .line 646
    long-to-int v2, v8

    .line 647
    invoke-static {v14, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 652
    .line 653
    .line 654
    move-result-object v8

    .line 655
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 656
    .line 657
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    .line 659
    .line 660
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 661
    .line 662
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 663
    .line 664
    .line 665
    iget-boolean v10, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 666
    .line 667
    if-eqz v10, :cond_28

    .line 668
    .line 669
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 670
    .line 671
    .line 672
    goto :goto_22

    .line 673
    :cond_28
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 674
    .line 675
    .line 676
    :goto_22
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 677
    .line 678
    invoke-static {v14, v0, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 679
    .line 680
    .line 681
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 682
    .line 683
    invoke-static {v14, v8, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 684
    .line 685
    .line 686
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 687
    .line 688
    invoke-static {v14, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 689
    .line 690
    .line 691
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 692
    .line 693
    invoke-static {v14, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 694
    .line 695
    .line 696
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 701
    .line 702
    invoke-static {v14, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 703
    .line 704
    .line 705
    const/4 v0, 0x1

    .line 706
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 707
    .line 708
    .line 709
    move v8, v7

    .line 710
    move-object v9, v13

    .line 711
    move v7, v6

    .line 712
    move v6, v5

    .line 713
    move v5, v4

    .line 714
    move-object v4, v3

    .line 715
    goto :goto_23

    .line 716
    :cond_29
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 717
    .line 718
    .line 719
    move/from16 v8, p7

    .line 720
    .line 721
    move-object/from16 v9, p8

    .line 722
    .line 723
    move-object v4, v5

    .line 724
    move v5, v7

    .line 725
    move v6, v11

    .line 726
    move v7, v13

    .line 727
    :goto_23
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 728
    .line 729
    .line 730
    move-result-object v13

    .line 731
    if-eqz v13, :cond_2a

    .line 732
    .line 733
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;

    .line 734
    .line 735
    const/4 v12, 0x0

    .line 736
    move-object/from16 v1, p0

    .line 737
    .line 738
    move-object/from16 v2, p1

    .line 739
    .line 740
    move-object/from16 v3, p2

    .line 741
    .line 742
    move/from16 v10, p10

    .line 743
    .line 744
    move/from16 v11, p11

    .line 745
    .line 746
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/lang/Object;III)V

    .line 747
    .line 748
    .line 749
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 750
    .line 751
    :cond_2a
    return-void
.end method

.method public static final CommonContextMenuArea(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 7

    const v0, -0x249e1dc7

    .line 131
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    and-int/2addr v0, v3

    invoke-virtual {p2, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, -0x3c28fe3f

    .line 132
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 133
    new-instance v0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;->showTextContextMenuOnSecondaryClick(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 134
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->toolbarRequester:Landroidx/cardview/widget/CardView$1;

    .line 135
    new-instance v5, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;

    invoke-direct {v5, v3, p0, v2}, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    new-instance v6, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v4}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;I)V

    .line 136
    invoke-static {v0, v1, v5, v2, v6}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;->textContextMenuToolbarHandler(Landroidx/compose/ui/Modifier;Landroidx/cardview/widget/CardView$1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v1, 0x30

    .line 137
    invoke-static {v0, p1, p2, v1}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider_androidKt;->ProvideDefaultPlatformTextContextMenuProviders(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 138
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_2

    .line 139
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 140
    :goto_2
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3, v3}, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 141
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method

.method public static final CommonContextMenuArea(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 9

    .line 1
    const v0, 0x5b67725a

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p3, 0x6

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, p3

    .line 24
    :goto_1
    and-int/lit8 v2, p3, 0x30

    .line 25
    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, v0, 0x13

    .line 41
    .line 42
    const/16 v3, 0x12

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    const/4 v5, 0x0

    .line 46
    if-eq v2, v3, :cond_4

    .line 47
    .line 48
    move v2, v4

    .line 49
    goto :goto_3

    .line 50
    :cond_4
    move v2, v5

    .line 51
    :goto_3
    and-int/lit8 v3, v0, 0x1

    .line 52
    .line 53
    invoke-virtual {p2, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_6

    .line 58
    .line 59
    const v2, -0x34c94080

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEnabled()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_5

    .line 70
    .line 71
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_5
    new-instance v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-direct {v2, p0, v3, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 78
    .line 79
    .line 80
    invoke-static {v2}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;->showTextContextMenuOnSecondaryClick(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-object v6, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->toolbarRequester:Landroidx/cardview/widget/CardView$1;

    .line 85
    .line 86
    new-instance v7, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;

    .line 87
    .line 88
    invoke-direct {v7, v1, p0, v3}, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 89
    .line 90
    .line 91
    new-instance v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;

    .line 92
    .line 93
    invoke-direct {v8, p0, v3, v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 94
    .line 95
    .line 96
    new-instance v3, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;

    .line 97
    .line 98
    invoke-direct {v3, p0, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v6, v7, v8, v3}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;->textContextMenuToolbarHandler(Landroidx/compose/ui/Modifier;Landroidx/cardview/widget/CardView$1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    :goto_4
    and-int/lit8 v0, v0, 0x70

    .line 106
    .line 107
    invoke-static {v1, p1, p2, v0}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider_androidKt;->ProvideDefaultPlatformTextContextMenuProviders(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 111
    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 115
    .line 116
    .line 117
    :goto_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    if-eqz p2, :cond_7

    .line 122
    .line 123
    new-instance v0, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    invoke-direct {v0, p0, p1, p3, v4}, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 126
    .line 127
    .line 128
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 129
    .line 130
    :cond_7
    return-void
.end method

.method public static final ContextMenuArea(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 4

    const v0, -0x38eb05b1

    .line 80
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x7e

    .line 81
    invoke-static {p0, p1, p2, v0}, Landroidx/compose/foundation/text/BasicTextKt;->CommonContextMenuArea(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 83
    :goto_2
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3, v3}, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 84
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method

.method public static final ContextMenuArea(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 4

    .line 1
    const v0, 0x7c0599e6

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p3, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int/2addr v0, p3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p3

    .line 23
    :goto_1
    and-int/lit8 v1, p3, 0x30

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/16 v1, 0x10

    .line 37
    .line 38
    :goto_2
    or-int/2addr v0, v1

    .line 39
    :cond_3
    and-int/lit8 v1, v0, 0x13

    .line 40
    .line 41
    const/16 v2, 0x12

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-eq v1, v2, :cond_4

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    goto :goto_3

    .line 48
    :cond_4
    move v1, v3

    .line 49
    :goto_3
    and-int/lit8 v2, v0, 0x1

    .line 50
    .line 51
    invoke-virtual {p2, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    and-int/lit8 v0, v0, 0x7e

    .line 58
    .line 59
    invoke-static {p0, p1, p2, v0}, Landroidx/compose/foundation/text/BasicTextKt;->CommonContextMenuArea(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 60
    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 64
    .line 65
    .line 66
    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    if-eqz p2, :cond_6

    .line 71
    .line 72
    new-instance v0, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    invoke-direct {v0, p0, p1, p3, v3}, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 78
    .line 79
    :cond_6
    return-void
.end method

.method public static final CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/SolidColor;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V
    .locals 71

    move-object/from16 v3, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v14, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move/from16 v15, p8

    move/from16 v2, p9

    move-object/from16 v5, p11

    move-object/from16 v4, p12

    move/from16 v6, p13

    move-object/from16 v7, p15

    move/from16 v8, p16

    move/from16 v9, p17

    .line 1
    iget-wide v12, v3, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    move-wide/from16 v16, v12

    iget-object v12, v3, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    iget-object v13, v3, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    move-object/from16 v18, v12

    const v12, 0x1d9f981

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v12, v8, 0x6

    move/from16 v19, v12

    if-nez v19, :cond_1

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x4

    goto :goto_0

    :cond_0
    const/16 v19, 0x2

    :goto_0
    or-int v19, v8, v19

    goto :goto_1

    :cond_1
    move/from16 v19, v8

    :goto_1
    and-int/lit8 v21, v8, 0x30

    const/16 v22, 0x10

    if-nez v21, :cond_3

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v21, 0x20

    goto :goto_2

    :cond_2
    move/from16 v21, v22

    :goto_2
    or-int v19, v19, v21

    :cond_3
    const/16 v21, 0x20

    and-int/lit16 v12, v8, 0x180

    const/16 v24, 0x80

    const/16 v25, 0x100

    if-nez v12, :cond_5

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move/from16 v12, v25

    goto :goto_3

    :cond_4
    move/from16 v12, v24

    :goto_3
    or-int v19, v19, v12

    :cond_5
    and-int/lit16 v12, v8, 0xc00

    const/16 v26, 0x400

    if-nez v12, :cond_7

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x800

    goto :goto_4

    :cond_6
    move/from16 v12, v26

    :goto_4
    or-int v19, v19, v12

    :cond_7
    and-int/lit16 v12, v8, 0x6000

    const/16 v27, 0x2000

    if-nez v12, :cond_9

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x4000

    goto :goto_5

    :cond_8
    move/from16 v12, v27

    :goto_5
    or-int v19, v19, v12

    :cond_9
    const/high16 v12, 0x30000

    and-int v28, v8, v12

    const/high16 v29, 0x20000

    const/high16 v30, 0x10000

    move-object/from16 v11, p5

    if-nez v28, :cond_b

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    move/from16 v31, v29

    goto :goto_6

    :cond_a
    move/from16 v31, v30

    :goto_6
    or-int v19, v19, v31

    :cond_b
    const/high16 v31, 0x180000

    and-int v32, v8, v31

    if-nez v32, :cond_d

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    const/high16 v32, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v32, 0x80000

    :goto_7
    or-int v19, v19, v32

    :cond_d
    const/high16 v32, 0xc00000

    and-int v32, v8, v32

    move-object/from16 v11, p7

    if-nez v32, :cond_f

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_e

    const/high16 v32, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v32, 0x400000

    :goto_8
    or-int v19, v19, v32

    :cond_f
    const/high16 v32, 0x6000000

    and-int v32, v8, v32

    if-nez v32, :cond_11

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v32

    if-eqz v32, :cond_10

    const/high16 v32, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v32, 0x2000000

    :goto_9
    or-int v19, v19, v32

    :cond_11
    const/high16 v32, 0x30000000

    and-int v32, v8, v32

    if-nez v32, :cond_13

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v32

    if-eqz v32, :cond_12

    const/high16 v32, 0x20000000

    goto :goto_a

    :cond_12
    const/high16 v32, 0x10000000

    :goto_a
    or-int v19, v19, v32

    :cond_13
    and-int/lit8 v32, v9, 0x6

    move/from16 v11, p10

    if-nez v32, :cond_15

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v32

    if-eqz v32, :cond_14

    const/16 v32, 0x4

    goto :goto_b

    :cond_14
    const/16 v32, 0x2

    :goto_b
    or-int v32, v9, v32

    goto :goto_c

    :cond_15
    move/from16 v32, v9

    :goto_c
    and-int/lit8 v33, v9, 0x30

    if-nez v33, :cond_17

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_16

    move/from16 v22, v21

    :cond_16
    or-int v32, v32, v22

    :cond_17
    move/from16 v22, v12

    and-int/lit16 v12, v9, 0x180

    if-nez v12, :cond_19

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    move/from16 v24, v25

    :cond_18
    or-int v32, v32, v24

    :cond_19
    and-int/lit16 v12, v9, 0xc00

    if-nez v12, :cond_1b

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v26, 0x800

    :cond_1a
    or-int v32, v32, v26

    :cond_1b
    and-int/lit16 v12, v9, 0x6000

    const/4 v11, 0x0

    if-nez v12, :cond_1d

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_1c

    const/16 v27, 0x4000

    :cond_1c
    or-int v32, v32, v27

    :cond_1d
    and-int v12, v9, v22

    if-nez v12, :cond_1f

    move-object/from16 v12, p14

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    goto :goto_d

    :cond_1e
    move/from16 v29, v30

    :goto_d
    or-int v32, v32, v29

    :goto_e
    move/from16 v22, v11

    goto :goto_f

    :cond_1f
    move-object/from16 v12, p14

    goto :goto_e

    :goto_f
    or-int v11, v32, v31

    const v24, 0x12492493

    and-int v1, v19, v24

    const v6, 0x12492492

    if-ne v1, v6, :cond_21

    const v1, 0x92493

    and-int/2addr v1, v11

    const v6, 0x92492

    if-eq v1, v6, :cond_20

    goto :goto_10

    :cond_20
    move/from16 v1, v22

    goto :goto_11

    :cond_21
    :goto_10
    const/4 v1, 0x1

    :goto_11
    and-int/lit8 v6, v19, 0x1

    invoke-virtual {v7, v6, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v1, p16, 0x1

    if-eqz v1, :cond_23

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_12

    .line 2
    :cond_22
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    :cond_23
    :goto_12
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 3
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 4
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v1, v6, :cond_24

    .line 5
    new-instance v1, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v1}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 6
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 7
    :cond_24
    check-cast v1, Landroidx/compose/ui/focus/FocusRequester;

    .line 8
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_25

    .line 9
    sget-object v8, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt;->inputMethodManagerFactory:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;

    .line 10
    new-instance v8, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    .line 11
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 13
    :cond_25
    check-cast v8, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    .line 14
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v6, :cond_26

    .line 15
    new-instance v9, Landroidx/compose/ui/text/input/TextInputService;

    invoke-direct {v9, v8}, Landroidx/compose/ui/text/input/TextInputService;-><init>(Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    .line 16
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 17
    :cond_26
    check-cast v9, Landroidx/compose/ui/text/input/TextInputService;

    move-object/from16 v25, v8

    .line 18
    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 19
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    .line 20
    check-cast v8, Landroidx/compose/ui/unit/Density;

    move-object/from16 v26, v8

    .line 21
    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 22
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    .line 23
    check-cast v8, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-object/from16 v27, v8

    .line 24
    sget-object v8, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 25
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move-object/from16 v29, v9

    .line 26
    iget-wide v8, v8, Landroidx/compose/foundation/text/selection/TextSelectionColors;->backgroundColor:J

    .line 27
    sget-object v12, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFocusManager:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 28
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    .line 29
    check-cast v12, Landroidx/compose/ui/focus/FocusOwner;

    move-object/from16 v30, v12

    .line 30
    sget-object v12, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalWindowInfo:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 31
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    .line 32
    check-cast v12, Landroidx/compose/ui/platform/WindowInfo;

    move-object/from16 v31, v12

    .line 33
    sget-object v12, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalSoftwareKeyboardController:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 34
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    .line 35
    check-cast v12, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    const/4 v14, 0x1

    if-ne v2, v14, :cond_27

    if-nez v15, :cond_27

    .line 36
    iget-boolean v14, v5, Landroidx/compose/ui/text/input/ImeOptions;->singleLine:Z

    if-eqz v14, :cond_27

    .line 37
    sget-object v14, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_13

    :cond_27
    sget-object v14, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_13
    const v2, -0xcbd7bf2

    .line 38
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/Object;

    aput-object v14, v15, v22

    .line 39
    sget-object v2, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->Saver:Landroidx/cardview/widget/CardView$1;

    .line 40
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v5

    move/from16 v32, v5

    .line 41
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v32, :cond_29

    if-ne v5, v6, :cond_28

    goto :goto_14

    :cond_28
    move/from16 v32, v11

    goto :goto_15

    .line 42
    :cond_29
    :goto_14
    new-instance v5, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;

    move/from16 v32, v11

    const/16 v11, 0xb

    invoke-direct {v5, v11, v14}, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 43
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 44
    :goto_15
    check-cast v5, Lkotlin/jvm/functions/Function0;

    move/from16 v11, v22

    invoke-static {v15, v2, v5, v7, v11}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 45
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 46
    iget-object v5, v2, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->orientation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 47
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/gestures/Orientation;

    if-eq v5, v14, :cond_2b

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 49
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v14, v1, :cond_2a

    .line 50
    const-string v1, "only single-line, non-wrap text fields can scroll horizontally"

    goto :goto_16

    .line 51
    :cond_2a
    const-string v1, "single-line, non-wrap text fields can only scroll horizontally"

    .line 52
    :goto_16
    const-string v2, "Mismatching scroller orientation; "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    and-int/lit8 v11, v19, 0xe

    const/4 v5, 0x4

    if-ne v11, v5, :cond_2c

    const/4 v14, 0x1

    goto :goto_17

    :cond_2c
    const/4 v14, 0x0

    :goto_17
    const v23, 0xe000

    and-int v15, v19, v23

    const/16 v5, 0x4000

    if-ne v15, v5, :cond_2d

    const/4 v5, 0x1

    goto :goto_18

    :cond_2d
    const/4 v5, 0x0

    :goto_18
    or-int/2addr v5, v14

    .line 54
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v5, :cond_2f

    if-ne v14, v6, :cond_2e

    goto :goto_19

    :cond_2e
    move-object/from16 v33, v1

    move-object/from16 v38, v2

    move-object/from16 v15, v18

    goto/16 :goto_1b

    .line 55
    :cond_2f
    :goto_19
    invoke-static {v0, v13}, Landroidx/compose/foundation/text/BasicTextKt;->filterWithValidation(Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v5

    iget-object v14, v5, Landroidx/compose/ui/text/input/TransformedText;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    if-eqz v18, :cond_30

    move-object/from16 v33, v1

    move-object/from16 v15, v18

    .line 56
    iget-wide v0, v15, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 57
    sget v18, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    move-wide/from16 v34, v0

    shr-long v0, v34, v21

    long-to-int v0, v0

    invoke-interface {v14, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v0

    const-wide v36, 0xffffffffL

    move-object/from16 v38, v2

    and-long v1, v34, v36

    long-to-int v1, v1

    .line 58
    invoke-interface {v14, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v1

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 61
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 62
    iget-object v5, v5, Landroidx/compose/ui/text/input/TransformedText;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 63
    invoke-direct {v1, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 64
    new-instance v39, Landroidx/compose/ui/text/SpanStyle;

    const/16 v57, 0x0

    const v58, 0xefff

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const-wide/16 v54, 0x0

    sget-object v56, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-direct/range {v39 .. v58}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    move-object/from16 v5, v39

    .line 65
    invoke-virtual {v1, v5, v2, v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 66
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    .line 67
    new-instance v1, Landroidx/compose/ui/text/input/TransformedText;

    invoke-direct {v1, v0, v14}, Landroidx/compose/ui/text/input/TransformedText;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/input/OffsetMapping;)V

    move-object v14, v1

    goto :goto_1a

    :cond_30
    move-object/from16 v33, v1

    move-object/from16 v38, v2

    move-object/from16 v15, v18

    move-object v14, v5

    .line 68
    :goto_1a
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 69
    :goto_1b
    move-object v0, v14

    check-cast v0, Landroidx/compose/ui/text/input/TransformedText;

    move-object v1, v13

    .line 70
    iget-object v13, v0, Landroidx/compose/ui/text/input/TransformedText;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 71
    iget-object v5, v0, Landroidx/compose/ui/text/input/TransformedText;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 72
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 73
    iget v14, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    const/16 v24, 0x1

    or-int/lit8 v14, v14, 0x1

    .line 74
    iput v14, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 75
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v34, v0

    .line 76
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 77
    sget-object v18, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-nez v14, :cond_32

    if-ne v0, v6, :cond_31

    goto :goto_1c

    :cond_31
    move-object/from16 v14, p3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v11

    move-object v6, v13

    move-object/from16 v35, v15

    move-object/from16 v13, v18

    move-object/from16 v12, v26

    move-object/from16 v3, v30

    move-object/from16 v59, v31

    move/from16 v15, p8

    move-object v11, v1

    move-wide/from16 v69, v16

    move-object/from16 v17, v27

    move-wide/from16 v26, v69

    goto :goto_1d

    .line 78
    :cond_32
    :goto_1c
    new-instance v0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    move-object v14, v12

    .line 79
    new-instance v12, Landroidx/compose/foundation/text/TextDelegate;

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v11

    move-object v5, v14

    move-object/from16 v3, v30

    move-object/from16 v59, v31

    const/4 v6, 0x4

    move-object/from16 v14, p3

    move-object v11, v1

    move-object v1, v15

    move/from16 v15, p8

    move-wide/from16 v69, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v27

    move-wide/from16 v26, v69

    .line 80
    invoke-direct/range {v12 .. v18}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;)V

    move-object/from16 v35, v1

    move-object v1, v12

    move-object v6, v13

    move-object/from16 v12, v16

    move-object/from16 v13, v18

    .line 81
    invoke-direct {v0, v1, v2, v5}, Landroidx/compose/foundation/text/LegacyTextFieldState;-><init>(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V

    .line 82
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 83
    :goto_1d
    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 84
    iput-object v10, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChangeOriginal:Lkotlin/jvm/functions/Function1;

    .line 85
    iput-wide v8, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->selectionBackgroundColor:J

    .line 86
    iget-object v0, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->keyboardActionRunner:Landroidx/compose/foundation/text/KeyboardActionRunner;

    .line 87
    iput-object v4, v0, Landroidx/compose/foundation/text/KeyboardActionRunner;->keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    .line 88
    iput-object v3, v0, Landroidx/compose/foundation/text/KeyboardActionRunner;->focusManager:Landroidx/compose/ui/focus/FocusOwner;

    .line 89
    iput-object v11, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->untransformedText:Landroidx/compose/ui/text/AnnotatedString;

    .line 90
    iget-object v0, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 91
    iget-object v2, v0, Landroidx/compose/foundation/text/TextDelegate;->text:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/text/AnnotatedString;

    .line 92
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 93
    iget-object v2, v0, Landroidx/compose/foundation/text/TextDelegate;->style:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/text/TextStyle;

    .line 94
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 95
    iget-boolean v2, v0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    if-ne v2, v15, :cond_34

    .line 96
    iget-object v2, v0, Landroidx/compose/foundation/text/TextDelegate;->density:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 97
    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 98
    iget-object v2, v0, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 99
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 100
    iget-object v2, v0, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-object/from16 v8, v17

    if-eq v2, v8, :cond_33

    :goto_1e
    move-object/from16 v16, v12

    goto :goto_1f

    :cond_33
    move-object/from16 v16, v12

    goto :goto_20

    :cond_34
    move-object/from16 v8, v17

    goto :goto_1e

    .line 101
    :goto_1f
    new-instance v12, Landroidx/compose/foundation/text/TextDelegate;

    move-object/from16 v17, v8

    move-object/from16 v18, v13

    move-object v13, v6

    .line 102
    invoke-direct/range {v12 .. v18}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;)V

    move-object v0, v12

    .line 103
    :goto_20
    iget-object v2, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    if-eq v2, v0, :cond_35

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->isLayoutResultStale:Z

    goto :goto_21

    :cond_35
    const/4 v2, 0x1

    .line 104
    :goto_21
    iput-object v0, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 105
    iget-object v0, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->processor:Landroidx/cardview/widget/CardView$1;

    .line 106
    iget-object v5, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->inputSession:Landroidx/compose/ui/text/input/TextInputSession;

    .line 107
    iget-object v6, v0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/text/input/EditingBuffer;

    invoke-virtual {v6}, Landroidx/compose/ui/text/input/EditingBuffer;->getComposition-MzsxiRA$ui_text()Landroidx/compose/ui/text/TextRange;

    move-result-object v6

    move-object/from16 v15, v35

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 108
    iget-object v8, v0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 109
    iget-object v8, v8, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 110
    iget-object v8, v8, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    iget-object v9, v11, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 111
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_36

    .line 112
    new-instance v8, Landroidx/compose/ui/text/input/EditingBuffer;

    move-wide/from16 v12, v26

    .line 113
    invoke-direct {v8, v11, v12, v13}, Landroidx/compose/ui/text/input/EditingBuffer;-><init>(Landroidx/compose/ui/text/AnnotatedString;J)V

    .line 114
    iput-object v8, v0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    move v8, v2

    :goto_22
    const/4 v9, 0x0

    goto :goto_23

    :cond_36
    move-wide/from16 v12, v26

    .line 115
    iget-object v8, v0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 116
    iget-wide v8, v8, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 117
    invoke-static {v8, v9, v12, v13}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v8

    if-nez v8, :cond_37

    .line 118
    iget-object v8, v0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/text/input/EditingBuffer;

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v9

    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v11

    invoke-virtual {v8, v9, v11}, Landroidx/compose/ui/text/input/EditingBuffer;->setSelection$ui_text(II)V

    move v9, v2

    const/4 v8, 0x0

    goto :goto_23

    :cond_37
    const/4 v8, 0x0

    goto :goto_22

    :goto_23
    const/4 v11, -0x1

    if-nez v15, :cond_38

    .line 119
    iget-object v15, v0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast v15, Landroidx/compose/ui/text/input/EditingBuffer;

    .line 120
    iput v11, v15, Landroidx/compose/ui/text/input/EditingBuffer;->compositionStart:I

    .line 121
    iput v11, v15, Landroidx/compose/ui/text/input/EditingBuffer;->compositionEnd:I

    move-object/from16 v17, v3

    goto :goto_24

    :cond_38
    move-object/from16 v17, v3

    .line 122
    iget-wide v2, v15, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 123
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v15

    if-nez v15, :cond_39

    .line 124
    iget-object v15, v0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast v15, Landroidx/compose/ui/text/input/EditingBuffer;

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v11

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v2

    invoke-virtual {v15, v11, v2}, Landroidx/compose/ui/text/input/EditingBuffer;->setComposition$ui_text(II)V

    :cond_39
    :goto_24
    const/4 v11, 0x3

    const-wide/16 v2, 0x0

    const/4 v15, 0x0

    if-nez v8, :cond_3b

    if-nez v9, :cond_3a

    if-nez v6, :cond_3a

    goto :goto_25

    :cond_3a
    move-object/from16 v6, p0

    move-object v8, v6

    goto :goto_26

    .line 125
    :cond_3b
    :goto_25
    iget-object v6, v0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/text/input/EditingBuffer;

    const/4 v8, -0x1

    .line 126
    iput v8, v6, Landroidx/compose/ui/text/input/EditingBuffer;->compositionStart:I

    .line 127
    iput v8, v6, Landroidx/compose/ui/text/input/EditingBuffer;->compositionEnd:I

    move-object/from16 v6, p0

    .line 128
    invoke-static {v6, v15, v2, v3, v11}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v8

    .line 129
    :goto_26
    iget-object v9, v0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 130
    iput-object v8, v0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    if-eqz v5, :cond_3c

    .line 131
    invoke-virtual {v5, v9, v8}, Landroidx/compose/ui/text/input/TextInputSession;->updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 132
    :cond_3c
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v5, v20

    if-ne v0, v5, :cond_3d

    .line 133
    new-instance v0, Landroidx/compose/foundation/text/UndoManager;

    .line 134
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 136
    :cond_3d
    check-cast v0, Landroidx/compose/foundation/text/UndoManager;

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 138
    iget-boolean v2, v0, Landroidx/compose/foundation/text/UndoManager;->forceNextSnapshot:Z

    if-nez v2, :cond_3f

    .line 139
    iget-object v2, v0, Landroidx/compose/foundation/text/UndoManager;->lastSnapshot:Ljava/lang/Long;

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_27

    :cond_3e
    const-wide/16 v2, 0x0

    :goto_27
    const-wide/16 v26, 0x1388

    add-long v2, v2, v26

    cmp-long v2, v8, v2

    if-lez v2, :cond_40

    .line 140
    :cond_3f
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/foundation/text/UndoManager;->lastSnapshot:Ljava/lang/Long;

    .line 141
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/UndoManager;->makeSnapshot(Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 142
    :cond_40
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_41

    .line 143
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/GapComposer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    .line 144
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 145
    :cond_41
    move-object v8, v2

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    .line 146
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_42

    .line 147
    new-instance v2, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    invoke-direct {v2}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;-><init>()V

    .line 148
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 149
    :cond_42
    move-object v9, v2

    check-cast v9, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    .line 150
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_43

    .line 151
    new-instance v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;-><init>(Landroidx/compose/foundation/text/UndoManager;)V

    .line 152
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 153
    :cond_43
    check-cast v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    move-object/from16 v3, v19

    .line 154
    iput-object v3, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 155
    iget-object v11, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChange:Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    .line 156
    iput-object v11, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 157
    iput-object v1, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 158
    iget-object v11, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->valueState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 159
    new-instance v11, Landroidx/compose/ui/text/TextRange;

    invoke-direct {v11, v12, v13}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 160
    iput-object v11, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->latestSelection:Landroidx/compose/ui/text/TextRange;

    .line 161
    sget-object v11, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalClipboard:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 162
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/platform/Clipboard;

    .line 163
    iput-object v11, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    .line 164
    iput-object v8, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 165
    sget-object v11, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextToolbar:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 166
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/platform/TextToolbar;

    .line 167
    sget-object v11, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 168
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 169
    iput-object v11, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    move-object/from16 v11, v33

    .line 170
    iput-object v11, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    .line 171
    iget-object v12, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->editable$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 172
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 173
    iget-object v12, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->enabled$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 174
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    const v12, 0x753a5109

    .line 175
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 176
    sget-object v12, Landroidx/compose/foundation/text/selection/SelectedTextType;->EditableText:Landroidx/compose/foundation/text/selection/SelectedTextType;

    .line 177
    iget-object v13, v14, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 178
    iget-object v13, v13, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    const/4 v15, 0x6

    .line 179
    invoke-static {v12, v13, v7, v15}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->rememberPlatformSelectionBehaviors(Landroidx/compose/foundation/text/selection/SelectedTextType;Landroidx/compose/ui/text/intl/LocaleList;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    move-result-object v12

    .line 180
    iput-object v12, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    const/4 v12, 0x0

    .line 181
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 182
    invoke-virtual {v1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    .line 183
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    move/from16 v13, v32

    and-int/lit16 v15, v13, 0x1c00

    move-object/from16 v27, v0

    const/16 v0, 0x800

    if-ne v15, v0, :cond_44

    const/4 v0, 0x1

    goto :goto_28

    :cond_44
    const/4 v0, 0x0

    :goto_28
    or-int/2addr v0, v12

    and-int v12, v13, v23

    move/from16 v23, v0

    const/16 v0, 0x4000

    if-ne v12, v0, :cond_45

    const/4 v0, 0x1

    goto :goto_29

    :cond_45
    const/4 v0, 0x0

    :goto_29
    or-int v0, v23, v0

    move-object/from16 v12, v29

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    or-int v0, v0, v23

    move/from16 v10, v21

    move/from16 v21, v0

    const/4 v0, 0x4

    if-ne v10, v0, :cond_46

    const/16 v23, 0x1

    goto :goto_2a

    :cond_46
    const/16 v23, 0x0

    :goto_2a
    or-int v21, v21, v23

    and-int/lit8 v23, v13, 0x70

    move-object/from16 v33, v11

    xor-int/lit8 v11, v23, 0x30

    move-object/from16 v29, v12

    const/16 v12, 0x20

    move-object/from16 v0, p11

    if-le v11, v12, :cond_47

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_48

    :cond_47
    and-int/lit8 v0, v13, 0x30

    if-ne v0, v12, :cond_49

    :cond_48
    const/4 v0, 0x1

    goto :goto_2b

    :cond_49
    const/4 v0, 0x0

    :goto_2b
    or-int v0, v21, v0

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    or-int v0, v0, v21

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    or-int v0, v0, v21

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    or-int v0, v0, v21

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    or-int v0, v0, v21

    .line 184
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v0, :cond_4b

    if-ne v12, v5, :cond_4a

    goto :goto_2c

    :cond_4a
    move-object v4, v2

    move-object v14, v7

    move-object v2, v8

    move-object/from16 v28, v9

    move-object v0, v12

    move/from16 v32, v13

    move-object/from16 v61, v17

    move-object/from16 v60, v25

    move-object/from16 v13, v33

    move-object/from16 v62, v38

    move-object/from16 v12, p6

    move/from16 v9, p13

    move-object/from16 v25, v3

    move-object v8, v6

    move/from16 v17, v10

    move-object/from16 v3, v29

    move-object v10, v5

    move-object/from16 v5, p11

    goto :goto_2d

    .line 185
    :cond_4b
    :goto_2c
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda5;

    move-object/from16 v12, p6

    move-object v4, v6

    move-object v14, v7

    move/from16 v32, v13

    move-object/from16 v61, v17

    move-object/from16 v60, v25

    move-object/from16 v13, v33

    move-object/from16 v62, v38

    move-object v7, v2

    move-object v6, v3

    move/from16 v17, v10

    move-object/from16 v3, v29

    move/from16 v2, p13

    move-object v10, v5

    move-object/from16 v5, p11

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;ZLandroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;)V

    move-object/from16 v25, v6

    move-object/from16 v28, v9

    move v9, v2

    move-object v2, v8

    move-object v8, v4

    move-object v4, v7

    .line 186
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 187
    :goto_2d
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 188
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v6, v13}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 189
    invoke-static {v7, v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 190
    invoke-static {v0, v9, v12}, Landroidx/compose/foundation/ImageKt;->focusable(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 191
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 192
    invoke-static {v7, v14}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    .line 193
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v29

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    or-int v29, v29, v31

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    or-int v29, v29, v31

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    or-int v29, v29, v31

    move-object/from16 v31, v0

    const/16 v0, 0x20

    if-le v11, v0, :cond_4d

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4c

    goto :goto_2e

    :cond_4c
    move-object/from16 v33, v1

    goto :goto_2f

    :cond_4d
    :goto_2e
    move-object/from16 v33, v1

    and-int/lit8 v1, v32, 0x30

    if-ne v1, v0, :cond_4e

    :goto_2f
    const/4 v0, 0x1

    goto :goto_30

    :cond_4e
    const/4 v0, 0x0

    :goto_30
    or-int v0, v29, v0

    .line 194
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_50

    if-ne v1, v10, :cond_4f

    goto :goto_31

    :cond_4f
    move-object v0, v1

    move-object/from16 v63, v2

    move-object/from16 v29, v3

    move-object/from16 v35, v13

    move-object/from16 v64, v31

    move-object/from16 v1, v33

    move-object v13, v6

    move-object/from16 v31, v7

    goto :goto_32

    .line 195
    :cond_50
    :goto_31
    new-instance v0, Lcoil3/RealImageLoader$execute$result$1;

    move-object v1, v6

    const/4 v6, 0x0

    move-object/from16 v29, v2

    move-object v2, v7

    const/4 v7, 0x4

    move-object/from16 v35, v13

    move-object/from16 v63, v29

    move-object/from16 v64, v31

    move-object v13, v1

    move-object/from16 v1, v33

    invoke-direct/range {v0 .. v7}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    move-object/from16 v31, v2

    move-object/from16 v29, v3

    .line 196
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 197
    :goto_32
    check-cast v0, Lkotlin/jvm/functions/Function2;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v14, v2, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 198
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;I)V

    const v2, 0x845fed

    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1;

    const/4 v5, 0x5

    invoke-direct {v3, v5, v0}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1;-><init>(ILjava/lang/Object;)V

    .line 200
    new-instance v6, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/4 v0, 0x0

    const/4 v5, 0x6

    invoke-direct {v6, v2, v0, v3, v5}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 201
    new-instance v0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda0;

    move v3, v9

    move-object/from16 v5, v25

    move-object/from16 v2, v35

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/focus/FocusRequester;ZLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/OffsetMapping;)V

    move-object/from16 v33, v2

    if-eqz p13, :cond_51

    .line 202
    new-instance v2, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0, v12}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6, v2}, Landroidx/compose/ui/AbsoluteAlignment;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 203
    :cond_51
    iget-object v0, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->mouseSelectionObserver:Lcom/caverock/androidsvg/CSSParser;

    .line 204
    iget-object v2, v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->touchSelectionObserver:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;

    .line 205
    new-instance v3, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1;

    const/4 v7, 0x2

    invoke-direct {v3, v7, v4}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1;-><init>(ILjava/lang/Object;)V

    .line 206
    new-instance v7, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/4 v9, 0x4

    invoke-direct {v7, v0, v2, v3, v9}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    invoke-interface {v6, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 207
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerIcon;->Companion:Landroidx/compose/ui/input/pointer/PointerIcon$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerId;->pointerIconText:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    .line 209
    invoke-static {v0, v2}, Landroidx/compose/ui/input/pointer/PointerId;->pointerHoverIcon$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/AndroidPointerIconType;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 210
    new-instance v0, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, v8, v5, v9}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v13, v0}, Landroidx/compose/ui/draw/ClipKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v20

    .line 211
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x800

    if-ne v15, v2, :cond_52

    const/4 v2, 0x1

    goto :goto_33

    :cond_52
    const/4 v2, 0x0

    :goto_33
    or-int/2addr v0, v2

    move-object/from16 v3, v59

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    move/from16 v15, v17

    if-ne v15, v9, :cond_53

    const/4 v2, 0x1

    goto :goto_34

    :cond_53
    const/4 v2, 0x0

    :goto_34
    or-int/2addr v0, v2

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 212
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_55

    if-ne v2, v10, :cond_54

    goto :goto_35

    :cond_54
    move-object/from16 v59, v3

    goto :goto_36

    .line 213
    :cond_55
    :goto_35
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda6;

    move/from16 v2, p13

    move-object v6, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;ZLandroidx/compose/ui/platform/WindowInfo;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    move-object/from16 v59, v3

    move-object v5, v6

    .line 214
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v2, v0

    .line 215
    :goto_36
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v2}, Landroidx/compose/ui/layout/RulerKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    .line 216
    new-instance v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifier;

    move-object/from16 v2, p0

    move-object v3, v1

    move-object v6, v4

    move-object/from16 v65, v7

    move-object/from16 v9, v29

    move-object/from16 v8, v33

    move-object/from16 v1, v34

    move-object/from16 v7, p11

    move/from16 v4, p13

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifier;-><init>(Landroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/LegacyTextFieldState;ZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/focus/FocusRequester;)V

    move-object v8, v0

    move-object v1, v3

    if-eqz p13, :cond_57

    .line 217
    move-object/from16 v0, v59

    check-cast v0, Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 218
    iget-object v0, v0, Landroidx/compose/ui/platform/LazyWindowInfo;->isWindowFocused$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 219
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 220
    iget-object v0, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->selectionPreviewHighlightRange$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 221
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextRange;

    .line 222
    iget-wide v2, v0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 223
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 224
    iget-object v0, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->deletionPreviewHighlightRange$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 225
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextRange;

    .line 226
    iget-wide v2, v0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 227
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-nez v0, :cond_56

    goto :goto_37

    :cond_56
    const/4 v0, 0x1

    goto :goto_38

    :cond_57
    :goto_37
    const/4 v0, 0x0

    :goto_38
    if-eqz v0, :cond_58

    .line 228
    new-instance v0, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda13;

    move-object v3, v5

    const/4 v5, 0x2

    move-object v2, v1

    move-object v4, v3

    move-object/from16 v3, p0

    move-object/from16 v1, p7

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/feed/wikigames/OnThisDayGameKt$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v1, v2

    move-object/from16 v25, v4

    invoke-static {v13, v0}, Landroidx/compose/ui/AbsoluteAlignment;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v26, v0

    goto :goto_39

    :cond_58
    move-object/from16 v25, v5

    move-object/from16 v26, v13

    .line 229
    :goto_39
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 230
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_59

    if-ne v2, v10, :cond_5a

    .line 231
    :cond_59
    new-instance v2, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;

    const/4 v0, 0x0

    invoke-direct {v2, v6, v0}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 232
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 233
    :cond_5a
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v2, v14}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;)V

    .line 234
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    const/4 v5, 0x4

    if-ne v15, v5, :cond_5b

    const/4 v2, 0x1

    goto :goto_3a

    :cond_5b
    const/4 v2, 0x0

    :goto_3a
    or-int/2addr v0, v2

    const/16 v2, 0x20

    if-le v11, v2, :cond_5c

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    :cond_5c
    and-int/lit8 v3, v32, 0x30

    if-ne v3, v2, :cond_5e

    :cond_5d
    const/4 v2, 0x1

    goto :goto_3b

    :cond_5e
    const/4 v2, 0x0

    :goto_3b
    or-int/2addr v0, v2

    .line 235
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_60

    if-ne v2, v10, :cond_5f

    goto :goto_3c

    :cond_5f
    move-object v11, v7

    goto :goto_3d

    .line 236
    :cond_60
    :goto_3c
    new-instance v0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda7;

    const/4 v5, 0x5

    move-object/from16 v3, p0

    move-object v4, v7

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v11, v4

    .line 237
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v2, v0

    .line 238
    :goto_3d
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v2, v14}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;)V

    move-object v0, v8

    .line 239
    iget-object v8, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChange:Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    move/from16 v15, p9

    const/4 v2, 0x1

    if-ne v15, v2, :cond_61

    const/4 v5, 0x1

    goto :goto_3e

    :cond_61
    const/4 v5, 0x0

    .line 240
    :goto_3e
    iget v9, v11, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    move-object v2, v0

    .line 241
    new-instance v0, Landroidx/compose/foundation/text/TextFieldKeyInputKt$$ExternalSyntheticLambda0;

    move-object/from16 v3, p0

    move/from16 v15, p13

    move-object/from16 v66, v2

    move-object v2, v6

    move/from16 v4, v19

    move-object/from16 v6, v25

    move-object/from16 v7, v27

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/TextFieldKeyInputKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;Lkotlin/jvm/functions/Function1;I)V

    move-object v4, v2

    move-object v5, v6

    .line 242
    new-instance v2, Landroidx/compose/ui/ComposedModifier;

    invoke-direct {v2, v0}, Landroidx/compose/ui/ComposedModifier;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 243
    iget v0, v11, Landroidx/compose/ui/text/input/ImeOptions;->keyboardType:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_62

    goto :goto_3f

    :cond_62
    const/16 v3, 0x8

    if-ne v0, v3, :cond_63

    :goto_3f
    const/4 v8, 0x0

    goto :goto_40

    :cond_63
    const/4 v8, 0x1

    .line 244
    :goto_40
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 245
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v3

    move-object/from16 v6, v60

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v3, v7

    .line 246
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_64

    if-ne v7, v10, :cond_65

    .line 247
    :cond_64
    new-instance v7, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda2;

    const/4 v3, 0x3

    invoke-direct {v7, v8, v6, v3}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda2;-><init>(ZLjava/lang/Object;I)V

    .line 248
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 249
    :cond_65
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v8, v7}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;->stylusHandwriting(ZZLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 250
    sget-object v3, Landroidx/compose/foundation/text/AutofillHighlightKt;->LocalAutofillHighlightBrush:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 251
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Brush;

    .line 252
    sget-object v7, Landroidx/compose/foundation/text/AutofillHighlightKt;->LocalAutofillHighlightColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 253
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Color;

    .line 254
    iget-wide v7, v7, Landroidx/compose/ui/graphics/Color;->value:J

    const v9, 0x4dffeb3b    # 5.3670077E8f

    .line 255
    invoke-static {v9}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v11

    .line 256
    sget v9, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 257
    invoke-static {v7, v8, v11, v12}, Lkotlin/ULong;->equals-impl0(JJ)Z

    move-result v9

    if-nez v9, :cond_66

    .line 258
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 259
    invoke-direct {v3, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 260
    :cond_66
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    .line 261
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_67

    if-ne v8, v10, :cond_68

    .line 262
    :cond_67
    new-instance v8, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    const/16 v7, 0x1d

    invoke-direct {v8, v7, v1, v3}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 263
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 264
    :cond_68
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v8}, Landroidx/compose/ui/draw/ClipKt;->drawWithContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object/from16 v11, p2

    .line 265
    invoke-interface {v11, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 266
    invoke-static {v3, v6, v1, v4}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->legacyTextInputAdapter(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 267
    invoke-interface {v3, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v3, v64

    .line 268
    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 269
    new-instance v3, Landroidx/compose/runtime/Latch$await$2$2;

    move-object/from16 v12, v61

    const/4 v7, 0x2

    invoke-direct {v3, v7, v12, v1}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v3}, Landroidx/compose/ui/input/key/Key_androidKt;->onPreviewKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 270
    new-instance v3, Landroidx/compose/runtime/Latch$await$2$2;

    const/4 v6, 0x1

    invoke-direct {v3, v6, v1, v4}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v3}, Landroidx/compose/ui/input/key/Key_androidKt;->onPreviewKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 271
    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 272
    new-instance v2, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;

    move-object/from16 v7, p6

    move/from16 v24, v6

    move-object/from16 v6, v62

    invoke-direct {v2, v6, v15, v7}, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/TextFieldScrollerPosition;ZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)V

    .line 273
    new-instance v3, Landroidx/compose/ui/ComposedModifier;

    invoke-direct {v3, v2}, Landroidx/compose/ui/ComposedModifier;-><init>(Lkotlin/jvm/functions/Function3;)V

    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v2, v65

    .line 274
    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v2, v66

    .line 275
    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 276
    new-instance v2, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    const/4 v12, 0x0

    invoke-direct {v2, v1, v12}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;I)V

    invoke-static {v0, v2}, Landroidx/compose/ui/layout/RulerKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 277
    new-instance v2, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;

    const/16 v3, 0xc

    move-object/from16 v8, v63

    invoke-direct {v2, v3, v4, v8}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;->addTextContextMenuComponentsWithContext(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v15, :cond_69

    .line 278
    invoke-virtual {v1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 279
    iget-object v2, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->isInTouchMode$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 280
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 281
    move-object/from16 v2, v59

    check-cast v2, Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 282
    iget-object v2, v2, Landroidx/compose/ui/platform/LazyWindowInfo;->isWindowFocused$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 283
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_69

    goto :goto_41

    :cond_69
    move/from16 v24, v12

    :goto_41
    if-eqz v24, :cond_6b

    .line 284
    invoke-static {}, Landroidx/compose/foundation/Magnifier_androidKt;->isPlatformMagnifierSupported$default()Z

    move-result v2

    if-nez v2, :cond_6a

    move-object v2, v13

    goto :goto_42

    .line 285
    :cond_6a
    new-instance v2, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;

    const/4 v9, 0x4

    invoke-direct {v2, v9, v4}, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;-><init>(ILjava/lang/Object;)V

    invoke-static {v13, v2}, Landroidx/compose/ui/AbsoluteAlignment;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :goto_42
    move-object v12, v2

    :goto_43
    move-object v2, v0

    goto :goto_44

    :cond_6b
    move-object v12, v13

    goto :goto_43

    .line 286
    :goto_44
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda2;

    move-object/from16 v7, p0

    move-object/from16 v3, p3

    move-object/from16 v8, p4

    move-object/from16 v67, v2

    move-object v14, v4

    move-object/from16 v18, v16

    move-object/from16 v11, v17

    move-object/from16 v10, v20

    move/from16 v15, v24

    move-object/from16 v9, v26

    move-object/from16 v13, v28

    move-object/from16 v16, p5

    move/from16 v4, p10

    move-object v2, v1

    move-object/from16 v17, v5

    move/from16 v5, p9

    move-object/from16 v1, p14

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/TextStyle;IILandroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;)V

    move-object v4, v14

    const v1, -0x308d4209

    move-object/from16 v14, p15

    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v1, 0x180

    move-object/from16 v2, v67

    invoke-static {v2, v4, v0, v14, v1}, Landroidx/compose/foundation/text/BasicTextKt;->CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    goto :goto_45

    .line 287
    :cond_6c
    const-string v0, "no recompose scope found"

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    return-void

    :cond_6d
    move-object v14, v7

    .line 288
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 289
    :goto_45
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_6e

    move-object v1, v0

    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda3;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v68, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v17}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/SolidColor;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    move-object/from16 v1, v68

    .line 290
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6e
    return-void
.end method

.method public static final CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 8

    .line 1
    const v0, 0x795d8dec

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit16 v1, v0, 0x93

    .line 31
    .line 32
    const/16 v3, 0x92

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    if-eq v1, v3, :cond_2

    .line 36
    .line 37
    move v1, v4

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/4 v1, 0x0

    .line 40
    :goto_2
    and-int/lit8 v3, v0, 0x1

    .line 41
    .line 42
    invoke-virtual {p3, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 49
    .line 50
    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-wide v5, p3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 55
    .line 56
    ushr-long v2, v5, v2

    .line 57
    .line 58
    xor-long/2addr v2, v5

    .line 59
    long-to-int v2, v2

    .line 60
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {p3, p0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 74
    .line 75
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 76
    .line 77
    .line 78
    iget-boolean v7, p3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 79
    .line 80
    if-eqz v7, :cond_3

    .line 81
    .line 82
    invoke-virtual {p3, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 87
    .line 88
    .line 89
    :goto_3
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 90
    .line 91
    invoke-static {p3, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 92
    .line 93
    .line 94
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 95
    .line 96
    invoke-static {p3, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 104
    .line 105
    invoke-static {p3, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 106
    .line 107
    .line 108
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 109
    .line 110
    invoke-static {p3, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 111
    .line 112
    .line 113
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 114
    .line 115
    invoke-static {p3, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 116
    .line 117
    .line 118
    shr-int/lit8 v0, v0, 0x3

    .line 119
    .line 120
    and-int/lit8 v0, v0, 0x7e

    .line 121
    .line 122
    invoke-static {p1, p2, p3, v0}, Landroidx/compose/foundation/text/BasicTextKt;->ContextMenuArea(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_4
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 130
    .line 131
    .line 132
    :goto_4
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    if-eqz p3, :cond_5

    .line 137
    .line 138
    new-instance v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;

    .line 139
    .line 140
    const/4 v5, 0x2

    .line 141
    move-object v1, p0

    .line 142
    move-object v2, p1

    .line 143
    move-object v3, p2

    .line 144
    move v4, p4

    .line 145
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 146
    .line 147
    .line 148
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 149
    .line 150
    :cond_5
    return-void
.end method

.method public static final LayoutWithLinksAndInlineContent-11Od_4g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V
    .locals 29

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
    move-object/from16 v11, p10

    .line 12
    .line 13
    move-object/from16 v0, p13

    .line 14
    .line 15
    move/from16 v1, p14

    .line 16
    .line 17
    move/from16 v7, p15

    .line 18
    .line 19
    const v8, -0x7e46da9f

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    and-int/lit8 v8, v1, 0x6

    .line 26
    .line 27
    if-nez v8, :cond_1

    .line 28
    .line 29
    move-object/from16 v8, p0

    .line 30
    .line 31
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v12

    .line 35
    if-eqz v12, :cond_0

    .line 36
    .line 37
    const/4 v12, 0x4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v12, 0x2

    .line 40
    :goto_0
    or-int/2addr v12, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move-object/from16 v8, p0

    .line 43
    .line 44
    move v12, v1

    .line 45
    :goto_1
    and-int/lit8 v13, v1, 0x30

    .line 46
    .line 47
    if-nez v13, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v13

    .line 53
    if-eqz v13, :cond_2

    .line 54
    .line 55
    const/16 v13, 0x20

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v13, 0x10

    .line 59
    .line 60
    :goto_2
    or-int/2addr v12, v13

    .line 61
    :cond_3
    and-int/lit16 v13, v1, 0x180

    .line 62
    .line 63
    const/16 v16, 0x80

    .line 64
    .line 65
    if-nez v13, :cond_5

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    if-eqz v13, :cond_4

    .line 72
    .line 73
    const/16 v13, 0x100

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    move/from16 v13, v16

    .line 77
    .line 78
    :goto_3
    or-int/2addr v12, v13

    .line 79
    :cond_5
    and-int/lit16 v13, v1, 0xc00

    .line 80
    .line 81
    const/16 v18, 0x400

    .line 82
    .line 83
    const/16 v19, 0x800

    .line 84
    .line 85
    if-nez v13, :cond_7

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    if-eqz v13, :cond_6

    .line 92
    .line 93
    move/from16 v13, v19

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_6
    move/from16 v13, v18

    .line 97
    .line 98
    :goto_4
    or-int/2addr v12, v13

    .line 99
    :cond_7
    and-int/lit16 v13, v1, 0x6000

    .line 100
    .line 101
    const/16 v20, 0x2000

    .line 102
    .line 103
    const/16 v21, 0x4000

    .line 104
    .line 105
    if-nez v13, :cond_9

    .line 106
    .line 107
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    if-eqz v13, :cond_8

    .line 112
    .line 113
    move/from16 v13, v21

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_8
    move/from16 v13, v20

    .line 117
    .line 118
    :goto_5
    or-int/2addr v12, v13

    .line 119
    :cond_9
    const/high16 v13, 0x30000

    .line 120
    .line 121
    and-int/2addr v13, v1

    .line 122
    if-nez v13, :cond_b

    .line 123
    .line 124
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    if-eqz v13, :cond_a

    .line 129
    .line 130
    const/high16 v13, 0x20000

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_a
    const/high16 v13, 0x10000

    .line 134
    .line 135
    :goto_6
    or-int/2addr v12, v13

    .line 136
    :cond_b
    const/high16 v13, 0x180000

    .line 137
    .line 138
    and-int/2addr v13, v1

    .line 139
    if-nez v13, :cond_d

    .line 140
    .line 141
    move/from16 v13, p6

    .line 142
    .line 143
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 144
    .line 145
    .line 146
    move-result v22

    .line 147
    if-eqz v22, :cond_c

    .line 148
    .line 149
    const/high16 v22, 0x100000

    .line 150
    .line 151
    goto :goto_7

    .line 152
    :cond_c
    const/high16 v22, 0x80000

    .line 153
    .line 154
    :goto_7
    or-int v12, v12, v22

    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_d
    move/from16 v13, p6

    .line 158
    .line 159
    :goto_8
    const/high16 v22, 0xc00000

    .line 160
    .line 161
    and-int v22, v1, v22

    .line 162
    .line 163
    move/from16 v10, p7

    .line 164
    .line 165
    if-nez v22, :cond_f

    .line 166
    .line 167
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 168
    .line 169
    .line 170
    move-result v23

    .line 171
    if-eqz v23, :cond_e

    .line 172
    .line 173
    const/high16 v23, 0x800000

    .line 174
    .line 175
    goto :goto_9

    .line 176
    :cond_e
    const/high16 v23, 0x400000

    .line 177
    .line 178
    :goto_9
    or-int v12, v12, v23

    .line 179
    .line 180
    :cond_f
    const/high16 v23, 0x6000000

    .line 181
    .line 182
    and-int v23, v1, v23

    .line 183
    .line 184
    move/from16 v14, p8

    .line 185
    .line 186
    if-nez v23, :cond_11

    .line 187
    .line 188
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 189
    .line 190
    .line 191
    move-result v24

    .line 192
    if-eqz v24, :cond_10

    .line 193
    .line 194
    const/high16 v24, 0x4000000

    .line 195
    .line 196
    goto :goto_a

    .line 197
    :cond_10
    const/high16 v24, 0x2000000

    .line 198
    .line 199
    :goto_a
    or-int v12, v12, v24

    .line 200
    .line 201
    :cond_11
    const/high16 v24, 0x30000000

    .line 202
    .line 203
    and-int v24, v1, v24

    .line 204
    .line 205
    move/from16 v9, p9

    .line 206
    .line 207
    if-nez v24, :cond_13

    .line 208
    .line 209
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 210
    .line 211
    .line 212
    move-result v25

    .line 213
    if-eqz v25, :cond_12

    .line 214
    .line 215
    const/high16 v25, 0x20000000

    .line 216
    .line 217
    goto :goto_b

    .line 218
    :cond_12
    const/high16 v25, 0x10000000

    .line 219
    .line 220
    :goto_b
    or-int v12, v12, v25

    .line 221
    .line 222
    :cond_13
    and-int/lit8 v25, v7, 0x6

    .line 223
    .line 224
    if-nez v25, :cond_15

    .line 225
    .line 226
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v25

    .line 230
    if-eqz v25, :cond_14

    .line 231
    .line 232
    const/16 v17, 0x4

    .line 233
    .line 234
    goto :goto_c

    .line 235
    :cond_14
    const/16 v17, 0x2

    .line 236
    .line 237
    :goto_c
    or-int v17, v7, v17

    .line 238
    .line 239
    goto :goto_d

    .line 240
    :cond_15
    move/from16 v17, v7

    .line 241
    .line 242
    :goto_d
    and-int/lit8 v22, v7, 0x30

    .line 243
    .line 244
    move-object/from16 v15, p11

    .line 245
    .line 246
    if-nez v22, :cond_17

    .line 247
    .line 248
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v25

    .line 252
    if-eqz v25, :cond_16

    .line 253
    .line 254
    const/16 v23, 0x20

    .line 255
    .line 256
    goto :goto_e

    .line 257
    :cond_16
    const/16 v23, 0x10

    .line 258
    .line 259
    :goto_e
    or-int v17, v17, v23

    .line 260
    .line 261
    :cond_17
    and-int/lit16 v1, v7, 0x180

    .line 262
    .line 263
    move/from16 v23, v1

    .line 264
    .line 265
    const/4 v1, 0x0

    .line 266
    if-nez v23, :cond_19

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v23

    .line 272
    if-eqz v23, :cond_18

    .line 273
    .line 274
    const/16 v16, 0x100

    .line 275
    .line 276
    :cond_18
    or-int v17, v17, v16

    .line 277
    .line 278
    :cond_19
    and-int/lit16 v1, v7, 0xc00

    .line 279
    .line 280
    if-nez v1, :cond_1b

    .line 281
    .line 282
    move-object/from16 v1, p12

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v23

    .line 288
    if-eqz v23, :cond_1a

    .line 289
    .line 290
    move/from16 v18, v19

    .line 291
    .line 292
    :cond_1a
    or-int v17, v17, v18

    .line 293
    .line 294
    goto :goto_f

    .line 295
    :cond_1b
    move-object/from16 v1, p12

    .line 296
    .line 297
    :goto_f
    and-int/lit16 v1, v7, 0x6000

    .line 298
    .line 299
    move/from16 v18, v1

    .line 300
    .line 301
    const/4 v1, 0x0

    .line 302
    if-nez v18, :cond_1e

    .line 303
    .line 304
    const v18, 0x8000

    .line 305
    .line 306
    .line 307
    and-int v18, v7, v18

    .line 308
    .line 309
    if-nez v18, :cond_1c

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v18

    .line 315
    goto :goto_10

    .line 316
    :cond_1c
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v18

    .line 320
    :goto_10
    if-eqz v18, :cond_1d

    .line 321
    .line 322
    move/from16 v20, v21

    .line 323
    .line 324
    :cond_1d
    or-int v17, v17, v20

    .line 325
    .line 326
    :cond_1e
    move/from16 v1, v17

    .line 327
    .line 328
    const v17, 0x12492493

    .line 329
    .line 330
    .line 331
    and-int v4, v12, v17

    .line 332
    .line 333
    const v7, 0x12492492

    .line 334
    .line 335
    .line 336
    const/4 v8, 0x0

    .line 337
    if-ne v4, v7, :cond_20

    .line 338
    .line 339
    and-int/lit16 v1, v1, 0x2493

    .line 340
    .line 341
    const/16 v4, 0x2492

    .line 342
    .line 343
    if-eq v1, v4, :cond_1f

    .line 344
    .line 345
    goto :goto_11

    .line 346
    :cond_1f
    move v1, v8

    .line 347
    goto :goto_12

    .line 348
    :cond_20
    :goto_11
    const/4 v1, 0x1

    .line 349
    :goto_12
    and-int/lit8 v4, v12, 0x1

    .line 350
    .line 351
    invoke-virtual {v0, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-eqz v1, :cond_46

    .line 356
    .line 357
    invoke-static {v2}, Lcoil3/util/UtilsKt;->hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 362
    .line 363
    if-eqz v1, :cond_24

    .line 364
    .line 365
    const v1, 0x8ae5063

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 369
    .line 370
    .line 371
    and-int/lit8 v1, v12, 0x70

    .line 372
    .line 373
    const/16 v7, 0x20

    .line 374
    .line 375
    if-ne v1, v7, :cond_21

    .line 376
    .line 377
    const/4 v1, 0x1

    .line 378
    goto :goto_13

    .line 379
    :cond_21
    move v1, v8

    .line 380
    :goto_13
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    if-nez v1, :cond_22

    .line 385
    .line 386
    if-ne v7, v4, :cond_23

    .line 387
    .line 388
    :cond_22
    new-instance v7, Landroidx/compose/foundation/text/TextLinkScope;

    .line 389
    .line 390
    invoke-direct {v7, v2}, Landroidx/compose/foundation/text/TextLinkScope;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    :cond_23
    check-cast v7, Landroidx/compose/foundation/text/TextLinkScope;

    .line 397
    .line 398
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 399
    .line 400
    .line 401
    move-object v1, v7

    .line 402
    goto :goto_14

    .line 403
    :cond_24
    const v1, 0x8af50dc

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 410
    .line 411
    .line 412
    const/4 v1, 0x0

    .line 413
    :goto_14
    invoke-static {v2}, Lcoil3/util/UtilsKt;->hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z

    .line 414
    .line 415
    .line 416
    move-result v7

    .line 417
    if-eqz v7, :cond_28

    .line 418
    .line 419
    const v7, 0x8b25723

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 423
    .line 424
    .line 425
    and-int/lit8 v7, v12, 0x70

    .line 426
    .line 427
    const/16 v8, 0x20

    .line 428
    .line 429
    if-ne v7, v8, :cond_25

    .line 430
    .line 431
    const/4 v7, 0x1

    .line 432
    goto :goto_15

    .line 433
    :cond_25
    const/4 v7, 0x0

    .line 434
    :goto_15
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v8

    .line 438
    or-int/2addr v7, v8

    .line 439
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v8

    .line 443
    if-nez v7, :cond_26

    .line 444
    .line 445
    if-ne v8, v4, :cond_27

    .line 446
    .line 447
    :cond_26
    new-instance v8, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 448
    .line 449
    const/16 v7, 0xb

    .line 450
    .line 451
    invoke-direct {v8, v7, v1, v2}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    :cond_27
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 458
    .line 459
    const/4 v7, 0x0

    .line 460
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 461
    .line 462
    .line 463
    goto :goto_17

    .line 464
    :cond_28
    const v7, 0x8b3d321

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 468
    .line 469
    .line 470
    and-int/lit8 v7, v12, 0x70

    .line 471
    .line 472
    const/16 v8, 0x20

    .line 473
    .line 474
    if-ne v7, v8, :cond_29

    .line 475
    .line 476
    const/4 v7, 0x1

    .line 477
    goto :goto_16

    .line 478
    :cond_29
    const/4 v7, 0x0

    .line 479
    :goto_16
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v8

    .line 483
    if-nez v7, :cond_2a

    .line 484
    .line 485
    if-ne v8, v4, :cond_2b

    .line 486
    .line 487
    :cond_2a
    new-instance v8, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;

    .line 488
    .line 489
    const/16 v7, 0x9

    .line 490
    .line 491
    invoke-direct {v8, v7, v2}, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    :cond_2b
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 498
    .line 499
    const/4 v7, 0x0

    .line 500
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 501
    .line 502
    .line 503
    :goto_17
    if-eqz p3, :cond_33

    .line 504
    .line 505
    if-eqz v5, :cond_2c

    .line 506
    .line 507
    sget-object v7, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->EmptyInlineContent:Lkotlin/Pair;

    .line 508
    .line 509
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 510
    .line 511
    .line 512
    move-result v7

    .line 513
    if-eqz v7, :cond_2d

    .line 514
    .line 515
    :cond_2c
    move-object/from16 v20, v8

    .line 516
    .line 517
    goto/16 :goto_1a

    .line 518
    .line 519
    :cond_2d
    iget-object v7, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 520
    .line 521
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 522
    .line 523
    .line 524
    move-result v7

    .line 525
    move-object/from16 v20, v8

    .line 526
    .line 527
    iget-object v8, v2, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    .line 528
    .line 529
    if-eqz v8, :cond_2f

    .line 530
    .line 531
    new-instance v9, Ljava/util/ArrayList;

    .line 532
    .line 533
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 534
    .line 535
    .line 536
    move-result v10

    .line 537
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 538
    .line 539
    .line 540
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 541
    .line 542
    .line 543
    move-result v10

    .line 544
    const/4 v13, 0x0

    .line 545
    :goto_18
    if-ge v13, v10, :cond_30

    .line 546
    .line 547
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v21

    .line 551
    move-object/from16 v23, v8

    .line 552
    .line 553
    move-object/from16 v8, v21

    .line 554
    .line 555
    check-cast v8, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 556
    .line 557
    move/from16 v21, v10

    .line 558
    .line 559
    iget-object v10, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 560
    .line 561
    move/from16 v25, v13

    .line 562
    .line 563
    iget v13, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 564
    .line 565
    iget v14, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 566
    .line 567
    iget-object v15, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    .line 568
    .line 569
    instance-of v10, v10, Landroidx/compose/ui/text/StringAnnotation;

    .line 570
    .line 571
    if-eqz v10, :cond_2e

    .line 572
    .line 573
    const-string v10, "androidx.compose.foundation.text.inlineContent"

    .line 574
    .line 575
    invoke-virtual {v10, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v10

    .line 579
    if-eqz v10, :cond_2e

    .line 580
    .line 581
    const/4 v10, 0x0

    .line 582
    invoke-static {v10, v7, v14, v13}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    .line 583
    .line 584
    .line 585
    move-result v26

    .line 586
    if-eqz v26, :cond_2e

    .line 587
    .line 588
    new-instance v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 589
    .line 590
    iget-object v8, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 591
    .line 592
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 593
    .line 594
    .line 595
    check-cast v8, Landroidx/compose/ui/text/StringAnnotation;

    .line 596
    .line 597
    iget-object v8, v8, Landroidx/compose/ui/text/StringAnnotation;->value:Ljava/lang/String;

    .line 598
    .line 599
    invoke-direct {v10, v14, v13, v8, v15}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    :cond_2e
    add-int/lit8 v13, v25, 0x1

    .line 606
    .line 607
    move/from16 v14, p8

    .line 608
    .line 609
    move-object/from16 v15, p11

    .line 610
    .line 611
    move/from16 v10, v21

    .line 612
    .line 613
    move-object/from16 v8, v23

    .line 614
    .line 615
    goto :goto_18

    .line 616
    :cond_2f
    sget-object v9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 617
    .line 618
    :cond_30
    new-instance v7, Ljava/util/ArrayList;

    .line 619
    .line 620
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .line 622
    .line 623
    new-instance v8, Ljava/util/ArrayList;

    .line 624
    .line 625
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .line 627
    .line 628
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 629
    .line 630
    .line 631
    move-result v10

    .line 632
    const/4 v13, 0x0

    .line 633
    :goto_19
    if-ge v13, v10, :cond_32

    .line 634
    .line 635
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v14

    .line 639
    check-cast v14, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 640
    .line 641
    iget-object v15, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 642
    .line 643
    move-object/from16 v21, v9

    .line 644
    .line 645
    iget v9, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 646
    .line 647
    iget v14, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 648
    .line 649
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v15

    .line 653
    check-cast v15, Landroidx/compose/foundation/text/InlineTextContent;

    .line 654
    .line 655
    if-eqz v15, :cond_31

    .line 656
    .line 657
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 658
    .line 659
    iget-object v15, v15, Landroidx/compose/foundation/text/InlineTextContent;->placeholder:Landroidx/compose/ui/text/Placeholder;

    .line 660
    .line 661
    invoke-direct {v5, v14, v9, v15}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 668
    .line 669
    sget-object v15, Lorg/wikipedia/donate/donationreminder/DonationReminderScreenKt;->lambda$1933540096:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 670
    .line 671
    invoke-direct {v5, v14, v9, v15}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    :cond_31
    add-int/lit8 v13, v13, 0x1

    .line 678
    .line 679
    move-object/from16 v5, p4

    .line 680
    .line 681
    move-object/from16 v9, v21

    .line 682
    .line 683
    goto :goto_19

    .line 684
    :cond_32
    new-instance v5, Lkotlin/Pair;

    .line 685
    .line 686
    invoke-direct {v5, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    goto :goto_1b

    .line 690
    :goto_1a
    sget-object v5, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->EmptyInlineContent:Lkotlin/Pair;

    .line 691
    .line 692
    :goto_1b
    const/4 v7, 0x0

    .line 693
    goto :goto_1c

    .line 694
    :cond_33
    move-object/from16 v20, v8

    .line 695
    .line 696
    new-instance v5, Lkotlin/Pair;

    .line 697
    .line 698
    const/4 v7, 0x0

    .line 699
    invoke-direct {v5, v7, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 700
    .line 701
    .line 702
    :goto_1c
    iget-object v8, v5, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 703
    .line 704
    move-object v15, v8

    .line 705
    check-cast v15, Ljava/util/List;

    .line 706
    .line 707
    iget-object v5, v5, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 708
    .line 709
    check-cast v5, Ljava/util/List;

    .line 710
    .line 711
    if-eqz p3, :cond_35

    .line 712
    .line 713
    const v8, 0x8b8a5ec

    .line 714
    .line 715
    .line 716
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v8

    .line 723
    if-ne v8, v4, :cond_34

    .line 724
    .line 725
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 726
    .line 727
    .line 728
    move-result-object v8

    .line 729
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 730
    .line 731
    .line 732
    :cond_34
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 733
    .line 734
    const/4 v10, 0x0

    .line 735
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 736
    .line 737
    .line 738
    goto :goto_1d

    .line 739
    :cond_35
    const/4 v10, 0x0

    .line 740
    const v8, 0x8b9fcbc    # 1.11937E-33f

    .line 741
    .line 742
    .line 743
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 747
    .line 748
    .line 749
    move-object v8, v7

    .line 750
    :goto_1d
    if-eqz p3, :cond_38

    .line 751
    .line 752
    const v7, 0x8bb68fd

    .line 753
    .line 754
    .line 755
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 759
    .line 760
    .line 761
    move-result v7

    .line 762
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v9

    .line 766
    if-nez v7, :cond_36

    .line 767
    .line 768
    if-ne v9, v4, :cond_37

    .line 769
    .line 770
    :cond_36
    new-instance v9, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;

    .line 771
    .line 772
    const/4 v7, 0x3

    .line 773
    invoke-direct {v9, v8, v7}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 777
    .line 778
    .line 779
    :cond_37
    move-object v7, v9

    .line 780
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 781
    .line 782
    const/4 v10, 0x0

    .line 783
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 784
    .line 785
    .line 786
    :goto_1e
    move-object/from16 v16, v7

    .line 787
    .line 788
    goto :goto_1f

    .line 789
    :cond_38
    const/4 v10, 0x0

    .line 790
    const v9, 0x8bc7ffc

    .line 791
    .line 792
    .line 793
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 797
    .line 798
    .line 799
    goto :goto_1e

    .line 800
    :goto_1f
    shr-int/lit8 v7, v12, 0x3

    .line 801
    .line 802
    and-int/lit8 v7, v7, 0xe

    .line 803
    .line 804
    invoke-static {v2, v6, v11, v15, v0}, Landroidx/compose/foundation/text/BasicText_androidKt;->BackgroundTextMeasurement(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Landroidx/compose/runtime/GapComposer;)V

    .line 805
    .line 806
    .line 807
    invoke-interface/range {v20 .. v20}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v9

    .line 811
    check-cast v9, Landroidx/compose/ui/text/AnnotatedString;

    .line 812
    .line 813
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    move-result v10

    .line 817
    and-int/lit16 v12, v12, 0x380

    .line 818
    .line 819
    const/16 v13, 0x100

    .line 820
    .line 821
    if-ne v12, v13, :cond_39

    .line 822
    .line 823
    const/4 v12, 0x1

    .line 824
    goto :goto_20

    .line 825
    :cond_39
    const/4 v12, 0x0

    .line 826
    :goto_20
    or-int/2addr v10, v12

    .line 827
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v12

    .line 831
    if-nez v10, :cond_3b

    .line 832
    .line 833
    if-ne v12, v4, :cond_3a

    .line 834
    .line 835
    goto :goto_21

    .line 836
    :cond_3a
    const/4 v10, 0x0

    .line 837
    goto :goto_22

    .line 838
    :cond_3b
    :goto_21
    new-instance v12, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda10;

    .line 839
    .line 840
    const/4 v10, 0x0

    .line 841
    invoke-direct {v12, v1, v3, v10}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda10;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Lkotlin/jvm/functions/Function1;I)V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 845
    .line 846
    .line 847
    :goto_22
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 848
    .line 849
    move/from16 v13, p9

    .line 850
    .line 851
    move-object/from16 v17, p11

    .line 852
    .line 853
    move-object/from16 v18, p12

    .line 854
    .line 855
    move/from16 v27, v7

    .line 856
    .line 857
    move-object v3, v8

    .line 858
    move-object v7, v9

    .line 859
    move v2, v10

    .line 860
    move-object v14, v11

    .line 861
    move-object v9, v12

    .line 862
    const/16 v19, 0x0

    .line 863
    .line 864
    const/16 v22, 0x20

    .line 865
    .line 866
    move/from16 v10, p6

    .line 867
    .line 868
    move/from16 v11, p7

    .line 869
    .line 870
    move/from16 v12, p8

    .line 871
    .line 872
    move-object v8, v6

    .line 873
    move-object/from16 v6, p0

    .line 874
    .line 875
    invoke-static/range {v6 .. v19}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-CL7eQgs(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/AutoSizeStepBased;)Landroidx/compose/ui/Modifier;

    .line 876
    .line 877
    .line 878
    move-result-object v7

    .line 879
    if-nez p3, :cond_3e

    .line 880
    .line 881
    const v3, 0x8ce8017

    .line 882
    .line 883
    .line 884
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 888
    .line 889
    .line 890
    move-result v3

    .line 891
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object v6

    .line 895
    if-nez v3, :cond_3c

    .line 896
    .line 897
    if-ne v6, v4, :cond_3d

    .line 898
    .line 899
    :cond_3c
    new-instance v6, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda11;

    .line 900
    .line 901
    invoke-direct {v6, v1, v2}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/foundation/text/TextLinkScope;I)V

    .line 902
    .line 903
    .line 904
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 905
    .line 906
    .line 907
    :cond_3d
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 908
    .line 909
    new-instance v3, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;

    .line 910
    .line 911
    invoke-direct {v3, v6}, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 915
    .line 916
    .line 917
    goto :goto_23

    .line 918
    :cond_3e
    const v6, 0x8d13291

    .line 919
    .line 920
    .line 921
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 925
    .line 926
    .line 927
    move-result v6

    .line 928
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v8

    .line 932
    if-nez v6, :cond_3f

    .line 933
    .line 934
    if-ne v8, v4, :cond_40

    .line 935
    .line 936
    :cond_3f
    new-instance v8, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda11;

    .line 937
    .line 938
    const/4 v6, 0x1

    .line 939
    invoke-direct {v8, v1, v6}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/foundation/text/TextLinkScope;I)V

    .line 940
    .line 941
    .line 942
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 943
    .line 944
    .line 945
    :cond_40
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 946
    .line 947
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 948
    .line 949
    .line 950
    move-result v6

    .line 951
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v9

    .line 955
    if-nez v6, :cond_41

    .line 956
    .line 957
    if-ne v9, v4, :cond_42

    .line 958
    .line 959
    :cond_41
    new-instance v9, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;

    .line 960
    .line 961
    const/4 v4, 0x5

    .line 962
    invoke-direct {v9, v3, v4}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 963
    .line 964
    .line 965
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 966
    .line 967
    .line 968
    :cond_42
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 969
    .line 970
    new-instance v3, Landroidx/compose/foundation/text/TextMeasurePolicy;

    .line 971
    .line 972
    invoke-direct {v3, v2, v8, v9}, Landroidx/compose/foundation/text/TextMeasurePolicy;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 973
    .line 974
    .line 975
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 976
    .line 977
    .line 978
    :goto_23
    iget-wide v8, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 979
    .line 980
    ushr-long v10, v8, v22

    .line 981
    .line 982
    xor-long/2addr v8, v10

    .line 983
    long-to-int v4, v8

    .line 984
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 985
    .line 986
    .line 987
    move-result-object v6

    .line 988
    invoke-static {v0, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 989
    .line 990
    .line 991
    move-result-object v7

    .line 992
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 993
    .line 994
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 995
    .line 996
    .line 997
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 998
    .line 999
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1000
    .line 1001
    .line 1002
    iget-boolean v9, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1003
    .line 1004
    if-eqz v9, :cond_43

    .line 1005
    .line 1006
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1007
    .line 1008
    .line 1009
    goto :goto_24

    .line 1010
    :cond_43
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1011
    .line 1012
    .line 1013
    :goto_24
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1014
    .line 1015
    invoke-static {v0, v3, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1016
    .line 1017
    .line 1018
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1019
    .line 1020
    invoke-static {v0, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1021
    .line 1022
    .line 1023
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v3

    .line 1027
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1028
    .line 1029
    invoke-static {v0, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1030
    .line 1031
    .line 1032
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1033
    .line 1034
    invoke-static {v0, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 1035
    .line 1036
    .line 1037
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1038
    .line 1039
    invoke-static {v0, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1040
    .line 1041
    .line 1042
    if-nez v1, :cond_44

    .line 1043
    .line 1044
    const v1, -0x19d78e09

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1048
    .line 1049
    .line 1050
    :goto_25
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1051
    .line 1052
    .line 1053
    goto :goto_26

    .line 1054
    :cond_44
    const v3, -0x115988b6

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v1, v2, v0}, Landroidx/compose/foundation/text/TextLinkScope;->LinksComposables(ILandroidx/compose/runtime/GapComposer;)V

    .line 1061
    .line 1062
    .line 1063
    goto :goto_25

    .line 1064
    :goto_26
    if-nez v5, :cond_45

    .line 1065
    .line 1066
    const v1, -0x19d6c7af

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1073
    .line 1074
    .line 1075
    move-object/from16 v1, p1

    .line 1076
    .line 1077
    :goto_27
    const/4 v6, 0x1

    .line 1078
    goto :goto_28

    .line 1079
    :cond_45
    const v1, -0x19d6c7ae

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1083
    .line 1084
    .line 1085
    move-object/from16 v1, p1

    .line 1086
    .line 1087
    move/from16 v3, v27

    .line 1088
    .line 1089
    invoke-static {v1, v5, v0, v3}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->InlineChildren(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;Landroidx/compose/runtime/GapComposer;I)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1093
    .line 1094
    .line 1095
    goto :goto_27

    .line 1096
    :goto_28
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1097
    .line 1098
    .line 1099
    goto :goto_29

    .line 1100
    :cond_46
    move-object v1, v2

    .line 1101
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1102
    .line 1103
    .line 1104
    :goto_29
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    if-eqz v0, :cond_47

    .line 1109
    .line 1110
    move-object v2, v0

    .line 1111
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;

    .line 1112
    .line 1113
    move-object/from16 v3, p2

    .line 1114
    .line 1115
    move/from16 v4, p3

    .line 1116
    .line 1117
    move-object/from16 v5, p4

    .line 1118
    .line 1119
    move-object/from16 v6, p5

    .line 1120
    .line 1121
    move/from16 v7, p6

    .line 1122
    .line 1123
    move/from16 v8, p7

    .line 1124
    .line 1125
    move/from16 v9, p8

    .line 1126
    .line 1127
    move/from16 v10, p9

    .line 1128
    .line 1129
    move-object/from16 v11, p10

    .line 1130
    .line 1131
    move-object/from16 v12, p11

    .line 1132
    .line 1133
    move-object/from16 v13, p12

    .line 1134
    .line 1135
    move/from16 v14, p14

    .line 1136
    .line 1137
    move/from16 v15, p15

    .line 1138
    .line 1139
    move-object/from16 v28, v2

    .line 1140
    .line 1141
    move-object v2, v1

    .line 1142
    move-object/from16 v1, p0

    .line 1143
    .line 1144
    invoke-direct/range {v0 .. v15}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda14;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;II)V

    .line 1145
    .line 1146
    .line 1147
    move-object/from16 v2, v28

    .line 1148
    .line 1149
    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 1150
    .line 1151
    :cond_47
    return-void
.end method

.method public static final SelectionToolbarAndHandles(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/GapComposer;I)V
    .locals 11

    .line 1
    const v0, 0x25552d88

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p3

    .line 17
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

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
    and-int/lit8 v1, v0, 0x13

    .line 31
    .line 32
    const/16 v3, 0x12

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eq v1, v3, :cond_2

    .line 37
    .line 38
    move v1, v4

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move v1, v5

    .line 41
    :goto_2
    and-int/lit8 v3, v0, 0x1

    .line 42
    .line 43
    invoke-virtual {p2, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_d

    .line 48
    .line 49
    if-eqz p1, :cond_c

    .line 50
    .line 51
    const v1, 0x5b336eec

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    if-eqz v3, :cond_4

    .line 61
    .line 62
    invoke-virtual {v3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    iget-object v3, v3, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 69
    .line 70
    iget-object v7, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 71
    .line 72
    if-eqz v7, :cond_3

    .line 73
    .line 74
    iget-boolean v7, v7, Landroidx/compose/foundation/text/LegacyTextFieldState;->isLayoutResultStale:Z

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    move v7, v4

    .line 78
    :goto_3
    if-nez v7, :cond_4

    .line 79
    .line 80
    move-object v6, v3

    .line 81
    :cond_4
    if-nez v6, :cond_5

    .line 82
    .line 83
    const v0, 0x5b336eeb

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_8

    .line 93
    .line 94
    :cond_5
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget-wide v7, v1, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 102
    .line 103
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_8

    .line 108
    .line 109
    const v1, 0x7dc11ac6

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 116
    .line 117
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    iget-wide v7, v3, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 122
    .line 123
    shr-long v2, v7, v2

    .line 124
    .line 125
    long-to-int v2, v2

    .line 126
    invoke-interface {v1, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    iget-wide v7, v3, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 137
    .line 138
    const-wide v9, 0xffffffffL

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    and-long/2addr v7, v9

    .line 144
    long-to-int v3, v7

    .line 145
    invoke-interface {v2, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    invoke-virtual {v6, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    sub-int/2addr v2, v4

    .line 154
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    invoke-virtual {v6, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 163
    .line 164
    if-eqz v3, :cond_6

    .line 165
    .line 166
    iget-object v3, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->showSelectionHandleStart$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 167
    .line 168
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    check-cast v3, Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-ne v3, v4, :cond_6

    .line 179
    .line 180
    const v3, 0x7dc77b9a

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 184
    .line 185
    .line 186
    shl-int/lit8 v3, v0, 0x6

    .line 187
    .line 188
    and-int/lit16 v3, v3, 0x380

    .line 189
    .line 190
    or-int/lit8 v3, v3, 0x6

    .line 191
    .line 192
    invoke-static {v4, v1, p0, p2, v3}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/GapComposer;I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_6
    const v1, 0x7dcb87ae

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 206
    .line 207
    .line 208
    :goto_4
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 209
    .line 210
    if-eqz v1, :cond_7

    .line 211
    .line 212
    iget-object v1, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->showSelectionHandleEnd$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 213
    .line 214
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    check-cast v1, Ljava/lang/Boolean;

    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-ne v1, v4, :cond_7

    .line 225
    .line 226
    const v1, 0x7dcccf7b

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 230
    .line 231
    .line 232
    shl-int/lit8 v0, v0, 0x6

    .line 233
    .line 234
    and-int/lit16 v0, v0, 0x380

    .line 235
    .line 236
    or-int/lit8 v0, v0, 0x6

    .line 237
    .line 238
    invoke-static {v5, v2, p0, p2, v0}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/GapComposer;I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_7
    const v0, 0x7dd0d7ce    # 3.4699993E37f

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 252
    .line 253
    .line 254
    :goto_5
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 255
    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_8
    const v0, 0x7dd12d0e

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 265
    .line 266
    .line 267
    :goto_6
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 268
    .line 269
    if-eqz v0, :cond_b

    .line 270
    .line 271
    iget-object v1, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->showFloatingToolbar$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 272
    .line 273
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->oldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 274
    .line 275
    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 276
    .line 277
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    iget-object v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 284
    .line 285
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 286
    .line 287
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-nez v2, :cond_9

    .line 292
    .line 293
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 294
    .line 295
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-eqz v0, :cond_b

    .line 303
    .line 304
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    check-cast v0, Ljava/lang/Boolean;

    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-eqz v0, :cond_a

    .line 315
    .line 316
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->showSelectionToolbar$foundation()V

    .line 317
    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_a
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation()V

    .line 321
    .line 322
    .line 323
    :cond_b
    :goto_7
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 324
    .line 325
    .line 326
    :goto_8
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 327
    .line 328
    .line 329
    goto :goto_9

    .line 330
    :cond_c
    const v0, 0x768ee72a

    .line 331
    .line 332
    .line 333
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation()V

    .line 340
    .line 341
    .line 342
    goto :goto_9

    .line 343
    :cond_d
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 344
    .line 345
    .line 346
    :goto_9
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    if-eqz p2, :cond_e

    .line 351
    .line 352
    new-instance v0, Lorg/wikipedia/compose/components/ArticleCardKt$$ExternalSyntheticLambda1;

    .line 353
    .line 354
    invoke-direct {v0, p0, p1, p3}, Lorg/wikipedia/compose/components/ArticleCardKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZI)V

    .line 355
    .line 356
    .line 357
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 358
    .line 359
    :cond_e
    return-void
.end method

.method public static final TextFieldCursorHandle(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/GapComposer;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    move/from16 v7, p2

    .line 6
    .line 7
    const v1, -0x5597ad88

    .line 8
    .line 9
    .line 10
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x2

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v2

    .line 23
    :goto_0
    or-int/2addr v1, v7

    .line 24
    and-int/lit8 v3, v1, 0x3

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v8, 0x0

    .line 28
    if-eq v3, v2, :cond_1

    .line 29
    .line 30
    move v3, v4

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v3, v8

    .line 33
    :goto_1
    and-int/2addr v1, v4

    .line 34
    invoke-virtual {v5, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_c

    .line 39
    .line 40
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 41
    .line 42
    if-eqz v1, :cond_b

    .line 43
    .line 44
    iget-object v1, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->showCursorHandle$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-ne v1, v4, :cond_b

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getTransformedText$foundation()Landroidx/compose/ui/text/AnnotatedString;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_b

    .line 63
    .line 64
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-lez v1, :cond_b

    .line 71
    .line 72
    const v1, -0x7de7ecc8

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 87
    .line 88
    if-nez v1, :cond_2

    .line 89
    .line 90
    if-ne v3, v4, :cond_3

    .line 91
    .line 92
    :cond_2
    new-instance v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;

    .line 93
    .line 94
    invoke-direct {v3, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    check-cast v3, Landroidx/compose/foundation/text/TextDragObserver;

    .line 101
    .line 102
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 103
    .line 104
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 109
    .line 110
    iget-object v6, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    iget-wide v9, v9, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 117
    .line 118
    sget v11, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 119
    .line 120
    const/16 v11, 0x20

    .line 121
    .line 122
    shr-long/2addr v9, v11

    .line 123
    long-to-int v9, v9

    .line 124
    invoke-interface {v6, v9}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    iget-object v9, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 129
    .line 130
    const/4 v10, 0x0

    .line 131
    if-eqz v9, :cond_4

    .line 132
    .line 133
    invoke-virtual {v9}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    goto :goto_2

    .line 138
    :cond_4
    move-object v9, v10

    .line 139
    :goto_2
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    iget-object v9, v9, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 143
    .line 144
    iget-object v12, v9, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 145
    .line 146
    iget-object v12, v12, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 147
    .line 148
    iget-object v12, v12, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 151
    .line 152
    .line 153
    move-result v12

    .line 154
    invoke-static {v6, v8, v12}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    invoke-virtual {v9, v6}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    iget v9, v6, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 163
    .line 164
    const/high16 v12, 0x40000000    # 2.0f

    .line 165
    .line 166
    invoke-interface {v1, v12}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    div-float/2addr v1, v12

    .line 171
    add-float/2addr v1, v9

    .line 172
    iget v6, v6, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 173
    .line 174
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    int-to-long v12, v1

    .line 179
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    int-to-long v14, v1

    .line 184
    shl-long v11, v12, v11

    .line 185
    .line 186
    const-wide v16, 0xffffffffL

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    and-long v14, v14, v16

    .line 192
    .line 193
    or-long/2addr v11, v14

    .line 194
    invoke-virtual {v5, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    if-nez v1, :cond_5

    .line 203
    .line 204
    if-ne v6, v4, :cond_6

    .line 205
    .line 206
    :cond_5
    new-instance v6, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$1$1;

    .line 207
    .line 208
    invoke-direct {v6, v11, v12}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$1$1;-><init>(J)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_6
    move-object v1, v6

    .line 215
    check-cast v1, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 216
    .line 217
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    or-int/2addr v6, v9

    .line 226
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    if-nez v6, :cond_7

    .line 231
    .line 232
    if-ne v9, v4, :cond_8

    .line 233
    .line 234
    :cond_7
    new-instance v9, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;

    .line 235
    .line 236
    invoke-direct {v9, v8, v3, v0}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    :cond_8
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 243
    .line 244
    new-instance v6, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 245
    .line 246
    const/4 v13, 0x6

    .line 247
    invoke-direct {v6, v3, v10, v9, v13}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    if-nez v3, :cond_9

    .line 259
    .line 260
    if-ne v9, v4, :cond_a

    .line 261
    .line 262
    :cond_9
    new-instance v9, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;

    .line 263
    .line 264
    invoke-direct {v9, v11, v12, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;-><init>(JI)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    :cond_a
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 271
    .line 272
    invoke-static {v6, v8, v9}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    const-wide/16 v3, 0x0

    .line 277
    .line 278
    const/4 v6, 0x0

    .line 279
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandle-USBMPiE(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 283
    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_b
    const v1, -0x7dd3f3f6

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 293
    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_c
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 297
    .line 298
    .line 299
    :goto_3
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    if-eqz v1, :cond_d

    .line 304
    .line 305
    new-instance v2, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 306
    .line 307
    const/4 v3, 0x7

    .line 308
    invoke-direct {v2, v7, v3, v0}, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 312
    .line 313
    :cond_d
    return-void
.end method

.method public static final appendInlineContent(Landroidx/compose/ui/text/AnnotatedString$Builder;)V
    .locals 5

    .line 1
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/ui/text/StringAnnotation;

    .line 4
    .line 5
    const-string v2, "element"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroidx/compose/ui/text/StringAnnotation;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x4

    .line 18
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(Ljava/lang/Object;III)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->styleStack:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->annotations:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    const-string v0, "[element]"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static final ceilToIntPx(F)I
    .locals 2

    .line 1
    float-to-double v0, p0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    double-to-float p0, v0

    .line 7
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final detectDownAndDragGesturesWithObserver(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, p0, p1, v1, v2}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlinx/coroutines/AwaitKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    if-ne p0, p1, :cond_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final endInputSession(Landroidx/compose/foundation/text/LegacyTextFieldState;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->inputSession:Landroidx/compose/ui/text/input/TextInputSession;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->processor:Landroidx/cardview/widget/CardView$1;

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChange:Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    iget-object v2, v2, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    const/4 v6, 0x3

    .line 17
    invoke-static {v2, v1, v4, v5, v6}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v3, v2}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v2, v0, Landroidx/compose/ui/text/input/TextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    .line 25
    .line 26
    iget-object v3, v2, Landroidx/compose/ui/text/input/TextInputService;->_currentInputSession:Ljava/util/concurrent/atomic/AtomicReference;

    .line 27
    .line 28
    :cond_0
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    iget-object v0, v2, Landroidx/compose/ui/text/input/TextInputService;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 35
    .line 36
    invoke-interface {v0}, Landroidx/compose/ui/text/input/PlatformTextInputService;->stopInput()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eq v4, v0, :cond_0

    .line 45
    .line 46
    :cond_2
    :goto_0
    iput-object v1, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->inputSession:Landroidx/compose/ui/text/input/TextInputSession;

    .line 47
    .line 48
    return-void
.end method

.method public static final filterWithValidation(Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    iget-object v0, p1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x64

    .line 17
    .line 18
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    :goto_0
    if-ge v4, v2, :cond_0

    .line 25
    .line 26
    invoke-static {v4, v0, v4}, Landroidx/compose/foundation/text/BasicTextKt;->validateOriginalToTransformed(III)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p0, v0, p0}, Landroidx/compose/foundation/text/BasicTextKt;->validateOriginalToTransformed(III)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :goto_1
    if-ge v3, v1, :cond_1

    .line 40
    .line 41
    invoke-static {v3, p0, v3}, Landroidx/compose/foundation/text/BasicTextKt;->validateTransformedToOriginal(III)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-static {v0, p0, v0}, Landroidx/compose/foundation/text/BasicTextKt;->validateTransformedToOriginal(III)V

    .line 48
    .line 49
    .line 50
    new-instance p0, Landroidx/compose/ui/text/input/TransformedText;

    .line 51
    .line 52
    new-instance v0, Landroidx/navigation/NavOptions$Builder;

    .line 53
    .line 54
    iget-object v1, p1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v2, p1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavOptions$Builder;-><init>(II)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/text/input/TransformedText;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 70
    .line 71
    .line 72
    return-object p0
.end method

.method public static final findFollowingBreak(ILjava/lang/String;)I
    .locals 11

    .line 1
    invoke-static {}, Landroidx/compose/foundation/text/BasicTextKt;->getEmojiCompatIfLoaded()Landroidx/emoji2/text/EmojiCompat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne v2, v4, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v4, v3

    .line 18
    :goto_0
    if-eqz v4, :cond_5

    .line 19
    .line 20
    const-string v2, "charSequence cannot be null"

    .line 21
    .line 22
    invoke-static {v2, p1}, Landroidx/work/Operation$State;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal19;

    .line 26
    .line 27
    iget-object v4, v0, Landroidx/emoji2/text/EmojiCompat$CompatInternal19;->mProcessor:Lcom/caverock/androidsvg/SVG;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    if-ltz p0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-lt p0, v2, :cond_2

    .line 40
    .line 41
    :cond_1
    move-object v5, p1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    instance-of v2, p1, Landroid/text/Spanned;

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    move-object v2, p1

    .line 48
    check-cast v2, Landroid/text/Spanned;

    .line 49
    .line 50
    add-int/lit8 v5, p0, 0x1

    .line 51
    .line 52
    const-class v6, Landroidx/emoji2/text/TypefaceEmojiSpan;

    .line 53
    .line 54
    invoke-interface {v2, p0, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, [Landroidx/emoji2/text/TypefaceEmojiSpan;

    .line 59
    .line 60
    array-length v6, v5

    .line 61
    if-lez v6, :cond_3

    .line 62
    .line 63
    aget-object v3, v5, v3

    .line 64
    .line 65
    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    move-object v5, p1

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    add-int/lit8 v2, p0, -0x10

    .line 72
    .line 73
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    add-int/lit8 v3, p0, 0x10

    .line 82
    .line 83
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    new-instance v10, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    .line 88
    .line 89
    invoke-direct {v10, p0}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;-><init>(I)V

    .line 90
    .line 91
    .line 92
    const v8, 0x7fffffff

    .line 93
    .line 94
    .line 95
    const/4 v9, 0x1

    .line 96
    move-object v5, p1

    .line 97
    invoke-virtual/range {v4 .. v10}, Lcom/caverock/androidsvg/SVG;->process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    .line 102
    .line 103
    iget v2, p1, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;->end:I

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :goto_1
    move v2, v0

    .line 107
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-ne v2, v0, :cond_4

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    move-object v1, p1

    .line 115
    goto :goto_3

    .line 116
    :cond_5
    const-string p0, "Not initialized yet"

    .line 117
    .line 118
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return v3

    .line 122
    :cond_6
    move-object v5, p1

    .line 123
    :goto_3
    if-eqz v1, :cond_7

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    return p0

    .line 130
    :cond_7
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1, v5}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p0}, Ljava/text/BreakIterator;->following(I)I

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    return p0
.end method

.method public static final findParagraphEnd(Ljava/lang/CharSequence;I)I
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    if-ge p1, v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0xa

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public static final findParagraphStart(Ljava/lang/CharSequence;I)I
    .locals 2

    .line 1
    :goto_0
    if-lez p1, :cond_1

    .line 2
    .line 3
    add-int/lit8 v0, p1, -0x1

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static final findPrecedingBreak(ILjava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {}, Landroidx/compose/foundation/text/BasicTextKt;->getEmojiCompatIfLoaded()Landroidx/emoji2/text/EmojiCompat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    add-int/lit8 v2, p0, -0x1

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0, p1, v2}, Landroidx/emoji2/text/EmojiCompat;->getEmojiStart(Ljava/lang/CharSequence;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, -0x1

    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v1, v0

    .line 32
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_2
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/text/BreakIterator;->preceding(I)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public static final getCursorRectInScroller(Landroidx/compose/ui/layout/Placeable$PlacementScope;ILandroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p2, p2, Landroidx/compose/ui/text/input/TransformedText;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 4
    .line 5
    invoke-interface {p2, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p3, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Landroidx/compose/ui/geometry/Rect;->Zero:Landroidx/compose/ui/geometry/Rect;

    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/high16 p2, 0x40000000    # 2.0f

    .line 20
    .line 21
    invoke-static {p0, p2}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    iget p2, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 26
    .line 27
    if-eqz p4, :cond_1

    .line 28
    .line 29
    int-to-float p3, p5

    .line 30
    sub-float/2addr p3, p2

    .line 31
    int-to-float v0, p0

    .line 32
    sub-float/2addr p3, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move p3, p2

    .line 35
    :goto_1
    if-eqz p4, :cond_2

    .line 36
    .line 37
    int-to-float p0, p5

    .line 38
    sub-float/2addr p0, p2

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    int-to-float p0, p0

    .line 41
    add-float/2addr p0, p2

    .line 42
    :goto_2
    const/4 p2, 0x0

    .line 43
    const/16 p4, 0xa

    .line 44
    .line 45
    invoke-static {p1, p3, p0, p2, p4}, Landroidx/compose/ui/geometry/Rect;->copy$default(Landroidx/compose/ui/geometry/Rect;FFFI)Landroidx/compose/ui/geometry/Rect;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final getEmojiCompatIfLoaded()Landroidx/emoji2/text/EmojiCompat;
    .locals 3

    .line 1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public static final getLineHeight(Landroidx/compose/ui/text/TextLayoutResult;I)F
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->getLineForOffset(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v1, p0, Landroidx/compose/ui/text/MultiParagraph;->maxLines:I

    .line 23
    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    iget v2, p0, Landroidx/compose/ui/text/MultiParagraph;->lineCount:I

    .line 27
    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/text/MultiParagraph;->getLineEnd(IZ)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-le p1, v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/MultiParagraph;->requireLineIndexInRange(I)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-static {p0, v0}, Landroidx/compose/ui/text/ParagraphKt;->findParagraphByLineIndex(Ljava/util/List;I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    .line 60
    .line 61
    iget-object p1, p0, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    .line 62
    .line 63
    iget p0, p0, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    .line 64
    .line 65
    sub-int/2addr v0, p0

    .line 66
    iget-object p0, p1, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    sub-float/2addr p1, p0

    .line 77
    return p1

    .line 78
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 79
    return p0
.end method

.method public static final getModifiers-ZmokQxo(Landroid/view/KeyEvent;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v3

    .line 23
    :goto_0
    or-int/2addr v0, v1

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v1, v3

    .line 29
    :goto_1
    or-int/2addr v0, v1

    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    const/16 v3, 0x8

    .line 33
    .line 34
    :cond_2
    or-int p0, v0, v3

    .line 35
    .line 36
    return p0
.end method

.method public static final isKeyCode-YhN2O0w(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 p1, 0x20

    .line 6
    .line 7
    shr-long/2addr v0, p1

    .line 8
    long-to-int p1, v0

    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public static final measureWithTextRangeMeasureConstraints(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    move v2, v1

    .line 28
    :goto_0
    if-ge v2, v0, :cond_2

    .line 29
    .line 30
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 35
    .line 36
    invoke-interface {v3}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    check-cast v4, Landroidx/compose/foundation/text/TextRangeLayoutModifier;

    .line 44
    .line 45
    iget-object v4, v4, Landroidx/compose/foundation/text/TextRangeLayoutModifier;->measurePolicy:Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 46
    .line 47
    iget-object v5, v4, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v5, Landroidx/compose/foundation/text/TextLinkScope;

    .line 50
    .line 51
    iget-object v4, v4, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 54
    .line 55
    iget-object v5, v5, Landroidx/compose/foundation/text/TextLinkScope;->textLayoutResult$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 56
    .line 57
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Landroidx/compose/ui/text/TextLayoutResult;

    .line 62
    .line 63
    if-nez v5, :cond_0

    .line 64
    .line 65
    new-instance v4, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/16 v5, 0xf

    .line 68
    .line 69
    invoke-direct {v4, v5}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 70
    .line 71
    .line 72
    new-instance v5, Lokhttp3/internal/http2/Huffman$Node;

    .line 73
    .line 74
    invoke-direct {v5, v1, v1, v4}, Lokhttp3/internal/http2/Huffman$Node;-><init>(IILkotlin/jvm/functions/Function0;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_0
    invoke-static {v4, v5}, Landroidx/compose/foundation/text/TextLinkScope;->calculateVisibleLinkRange(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-nez v4, :cond_1

    .line 83
    .line 84
    new-instance v4, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    const/16 v5, 0x10

    .line 87
    .line 88
    invoke-direct {v4, v5}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 89
    .line 90
    .line 91
    new-instance v5, Lokhttp3/internal/http2/Huffman$Node;

    .line 92
    .line 93
    invoke-direct {v5, v1, v1, v4}, Lokhttp3/internal/http2/Huffman$Node;-><init>(IILkotlin/jvm/functions/Function0;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    iget v6, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 98
    .line 99
    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 100
    .line 101
    invoke-virtual {v5, v6, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/AndroidPath;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/AndroidPath;->getBounds()Landroidx/compose/ui/geometry/Rect;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v4}, Landroidx/work/OperationKt;->roundToIntRect(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/unit/IntRect;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    new-instance v7, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;

    .line 122
    .line 123
    const/16 v8, 0xc

    .line 124
    .line 125
    invoke-direct {v7, v8, v4}, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    new-instance v4, Lokhttp3/internal/http2/Huffman$Node;

    .line 129
    .line 130
    invoke-direct {v4, v5, v6, v7}, Lokhttp3/internal/http2/Huffman$Node;-><init>(IILkotlin/jvm/functions/Function0;)V

    .line 131
    .line 132
    .line 133
    move-object v5, v4

    .line 134
    :goto_1
    iget v4, v5, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 135
    .line 136
    iget v6, v5, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 137
    .line 138
    invoke-static {v4, v4, v6, v6}, Lkotlin/text/UStringsKt;->fitPrioritizingWidth-Zbe2FdA(IIII)J

    .line 139
    .line 140
    .line 141
    move-result-wide v6

    .line 142
    invoke-interface {v3, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    new-instance v4, Lkotlin/Pair;

    .line 147
    .line 148
    iget-object v5, v5, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 151
    .line 152
    invoke-direct {v4, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    add-int/lit8 v2, v2, 0x1

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_2
    return-object p1

    .line 163
    :cond_3
    const/4 p0, 0x0

    .line 164
    return-object p0
.end method

.method public static final notifyFocusedRect(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 11

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    move-object v2, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :goto_1
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :try_start_1
    iget-object v8, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->inputSession:Landroidx/compose/ui/text/input/TextInputSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    if-nez v8, :cond_2

    .line 32
    .line 33
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 38
    .line 39
    .line 40
    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    if-nez v7, :cond_3

    .line 42
    .line 43
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    :try_start_3
    iget-object v5, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 48
    .line 49
    iget-object v6, v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    move-object v4, p1

    .line 56
    move-object v10, p2

    .line 57
    invoke-static/range {v4 .. v10}, Landroidx/compose/foundation/text/BasicTextKt;->notifyFocusedRect$foundation(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/text/input/TextInputSession;ZLandroidx/compose/ui/text/input/OffsetMapping;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object p0, v0

    .line 66
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public static notifyFocusedRect$foundation(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/text/input/TextInputSession;ZLandroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 5

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-interface {p6, p0}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    sget-object p5, Landroidx/compose/foundation/text/TextFieldDelegateKt;->EmptyTextReplacement:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p5, p2, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 18
    .line 19
    iget-object p5, p5, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 20
    .line 21
    iget-object p5, p5, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result p5

    .line 27
    const-wide v0, 0xffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    if-ge p0, p5, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2, p0}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-eqz p0, :cond_2

    .line 40
    .line 41
    add-int/lit8 p0, p0, -0x1

    .line 42
    .line 43
    invoke-virtual {p2, p0}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object p0, p1, Landroidx/compose/foundation/text/TextDelegate;->style:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Landroidx/compose/ui/text/TextStyle;

    .line 51
    .line 52
    iget-object p2, p1, Landroidx/compose/foundation/text/TextDelegate;->density:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p2, Landroidx/compose/ui/unit/Density;

    .line 55
    .line 56
    iget-object p1, p1, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 59
    .line 60
    invoke-static {p0, p2, p1}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->computeSizeForDefaultText$default(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)J

    .line 61
    .line 62
    .line 63
    move-result-wide p0

    .line 64
    new-instance p2, Landroidx/compose/ui/geometry/Rect;

    .line 65
    .line 66
    and-long/2addr p0, v0

    .line 67
    long-to-int p0, p0

    .line 68
    int-to-float p0, p0

    .line 69
    const/4 p1, 0x0

    .line 70
    const/high16 p5, 0x3f800000    # 1.0f

    .line 71
    .line 72
    invoke-direct {p2, p1, p1, p5, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 73
    .line 74
    .line 75
    move-object p0, p2

    .line 76
    :goto_0
    iget p1, p0, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 77
    .line 78
    iget p2, p0, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 79
    .line 80
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 81
    .line 82
    .line 83
    move-result p5

    .line 84
    int-to-long p5, p5

    .line 85
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    int-to-long v2, v2

    .line 90
    const/16 v4, 0x20

    .line 91
    .line 92
    shl-long/2addr p5, v4

    .line 93
    and-long/2addr v2, v0

    .line 94
    or-long/2addr p5, v2

    .line 95
    invoke-interface {p3, p5, p6}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    .line 96
    .line 97
    .line 98
    move-result-wide p5

    .line 99
    shr-long v2, p5, v4

    .line 100
    .line 101
    long-to-int p3, v2

    .line 102
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    and-long/2addr p5, v0

    .line 107
    long-to-int p5, p5

    .line 108
    invoke-static {p5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 109
    .line 110
    .line 111
    move-result p5

    .line 112
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 113
    .line 114
    .line 115
    move-result p3

    .line 116
    int-to-long v2, p3

    .line 117
    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    int-to-long p5, p3

    .line 122
    shl-long/2addr v2, v4

    .line 123
    and-long/2addr p5, v0

    .line 124
    or-long/2addr p5, v2

    .line 125
    iget p3, p0, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 126
    .line 127
    sub-float/2addr p3, p2

    .line 128
    iget p0, p0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 129
    .line 130
    sub-float/2addr p0, p1

    .line 131
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    int-to-long p1, p1

    .line 136
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    int-to-long v2, p0

    .line 141
    shl-long p0, p1, v4

    .line 142
    .line 143
    and-long p2, v2, v0

    .line 144
    .line 145
    or-long/2addr p0, p2

    .line 146
    invoke-static {p5, p6, p0, p1}, Lcoil3/util/UtilsKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    iget-object p1, p4, Landroidx/compose/ui/text/input/TextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    .line 151
    .line 152
    iget-object p1, p1, Landroidx/compose/ui/text/input/TextInputService;->_currentInputSession:Ljava/util/concurrent/atomic/AtomicReference;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Landroidx/compose/ui/text/input/TextInputSession;

    .line 159
    .line 160
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_3

    .line 165
    .line 166
    iget-object p1, p4, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 167
    .line 168
    invoke-interface {p1, p0}, Landroidx/compose/ui/text/input/PlatformTextInputService;->notifyFocusedRect(Landroidx/compose/ui/geometry/Rect;)V

    .line 169
    .line 170
    .line 171
    :cond_3
    :goto_1
    return-void
.end method

.method public static final startInputSession(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroidx/compose/foundation/text/LegacyTextFieldState;->processor:Landroidx/cardview/widget/CardView$1;

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChange:Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    iget-object v2, p1, Landroidx/compose/foundation/text/LegacyTextFieldState;->onImeActionPerformed:Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 13
    .line 14
    const/4 v5, 0x6

    .line 15
    invoke-direct {v4, v0, v1, v3, v5}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputService;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 19
    .line 20
    invoke-interface {v0, p2, p3, v4, v2}, Landroidx/compose/ui/text/input/PlatformTextInputService;->startInput(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;)V

    .line 21
    .line 22
    .line 23
    new-instance p3, Landroidx/compose/ui/text/input/TextInputSession;

    .line 24
    .line 25
    invoke-direct {p3, p0, v0}, Landroidx/compose/ui/text/input/TextInputSession;-><init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Landroidx/compose/ui/text/input/TextInputService;->_currentInputSession:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    .line 30
    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object p3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 34
    .line 35
    iput-object p3, p1, Landroidx/compose/foundation/text/LegacyTextFieldState;->inputSession:Landroidx/compose/ui/text/input/TextInputSession;

    .line 36
    .line 37
    invoke-static {p1, p2, p4}, Landroidx/compose/foundation/text/BasicTextKt;->notifyFocusedRect(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static final textModifier-CL7eQgs(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/AutoSizeStepBased;)Landroidx/compose/ui/Modifier;
    .locals 13

    .line 1
    if-nez p11, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move/from16 v5, p4

    .line 10
    .line 11
    move/from16 v6, p5

    .line 12
    .line 13
    move/from16 v7, p6

    .line 14
    .line 15
    move/from16 v8, p7

    .line 16
    .line 17
    move-object/from16 v3, p8

    .line 18
    .line 19
    move-object/from16 v9, p9

    .line 20
    .line 21
    move-object/from16 v10, p10

    .line 22
    .line 23
    move-object/from16 v12, p12

    .line 24
    .line 25
    move-object/from16 v11, p13

    .line 26
    .line 27
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/AutoSizeStepBased;Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 31
    .line 32
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_0
    new-instance v0, Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;

    .line 42
    .line 43
    move-object v1, p1

    .line 44
    move-object v2, p2

    .line 45
    move-object/from16 v4, p3

    .line 46
    .line 47
    move/from16 v5, p4

    .line 48
    .line 49
    move/from16 v6, p5

    .line 50
    .line 51
    move/from16 v7, p6

    .line 52
    .line 53
    move/from16 v8, p7

    .line 54
    .line 55
    move-object/from16 v3, p8

    .line 56
    .line 57
    move-object/from16 v9, p9

    .line 58
    .line 59
    move-object/from16 v10, p10

    .line 60
    .line 61
    move-object/from16 v11, p11

    .line 62
    .line 63
    move-object/from16 v12, p13

    .line 64
    .line 65
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/foundation/text/AutoSizeStepBased;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, v11, Landroidx/compose/foundation/text/modifiers/SelectionController;->modifier:Landroidx/compose/ui/Modifier;

    .line 69
    .line 70
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public static final validateMinMaxLines(II)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-lez p0, :cond_0

    .line 4
    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    move v2, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v2, v0

    .line 10
    :goto_0
    if-nez v2, :cond_1

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "both minLines "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, " and maxLines "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v3, " must be greater than zero"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    if-gt p0, p1, :cond_2

    .line 43
    .line 44
    move v0, v1

    .line 45
    :cond_2
    if-nez v0, :cond_3

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, "minLines "

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p0, " must be less than or equal to maxLines "

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    return-void
.end method

.method public static final validateOriginalToTransformed(III)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p0, :cond_0

    .line 3
    .line 4
    if-gt p0, p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    :cond_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, " -> "

    .line 10
    .line 11
    const-string v1, " is not in range of transformed text [0, "

    .line 12
    .line 13
    const-string v2, "OffsetMapping.originalToTransformed returned invalid mapping: "

    .line 14
    .line 15
    invoke-static {p2, p0, v2, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 p1, 0x5d

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public static final validateTransformedToOriginal(III)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p0, :cond_0

    .line 3
    .line 4
    if-gt p0, p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    :cond_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, " -> "

    .line 10
    .line 11
    const-string v1, " is not in range of original text [0, "

    .line 12
    .line 13
    const-string v2, "OffsetMapping.transformedToOriginal returned invalid mapping: "

    .line 14
    .line 15
    invoke-static {p2, p0, v2, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 p1, 0x5d

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method
