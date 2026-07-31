.class public abstract Landroidx/compose/foundation/text/BasicTextKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final AltShift:I = 0x9

.field public static final CtrlShift:I = 0xa

.field public static final ShiftMeta:I = 0xc

.field public static final defaultKeyMapping:Landroidx/camera/view/PreviewView$1;

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
    new-instance v1, Landroidx/camera/view/PreviewView$1;

    .line 8
    .line 9
    const/16 v2, 0xe

    .line 10
    .line 11
    invoke-direct {v1, v2, v0}, Landroidx/camera/view/PreviewView$1;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Landroidx/compose/foundation/text/BasicTextKt;->defaultKeyMapping:Landroidx/camera/view/PreviewView$1;

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
    return-void
.end method

.method public static final BasicText-CL7eQgs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;II)V
    .locals 20

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
    move/from16 v15, p10

    .line 10
    .line 11
    move-object/from16 v12, p9

    .line 12
    .line 13
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, -0x5013ac4b

    .line 16
    .line 17
    .line 18
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, v15, 0x6

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v3

    .line 35
    :goto_0
    or-int/2addr v0, v15

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v0, v15

    .line 38
    :goto_1
    and-int/lit8 v4, v15, 0x30

    .line 39
    .line 40
    if-nez v4, :cond_3

    .line 41
    .line 42
    move-object/from16 v4, p1

    .line 43
    .line 44
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_2

    .line 49
    .line 50
    const/16 v8, 0x20

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
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

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
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

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
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

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
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

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
    move-object/from16 v14, p8

    .line 177
    .line 178
    if-nez v11, :cond_11

    .line 179
    .line 180
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    if-eqz v11, :cond_10

    .line 185
    .line 186
    const/high16 v11, 0x4000000

    .line 187
    .line 188
    goto :goto_d

    .line 189
    :cond_10
    const/high16 v11, 0x2000000

    .line 190
    .line 191
    :goto_d
    or-int/2addr v0, v11

    .line 192
    :cond_11
    const/high16 v11, 0x30000000

    .line 193
    .line 194
    or-int/2addr v0, v11

    .line 195
    and-int/lit8 v11, p11, 0x6

    .line 196
    .line 197
    const/16 p9, 0x20

    .line 198
    .line 199
    const/4 v13, 0x0

    .line 200
    if-nez v11, :cond_14

    .line 201
    .line 202
    and-int/lit8 v11, p11, 0x8

    .line 203
    .line 204
    if-nez v11, :cond_12

    .line 205
    .line 206
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    goto :goto_e

    .line 211
    :cond_12
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    :goto_e
    if-eqz v11, :cond_13

    .line 216
    .line 217
    const/4 v11, 0x4

    .line 218
    goto :goto_f

    .line 219
    :cond_13
    move v11, v3

    .line 220
    :goto_f
    or-int v11, p11, v11

    .line 221
    .line 222
    goto :goto_10

    .line 223
    :cond_14
    move/from16 v11, p11

    .line 224
    .line 225
    :goto_10
    const v16, 0x12492493

    .line 226
    .line 227
    .line 228
    and-int v2, v0, v16

    .line 229
    .line 230
    const v13, 0x12492492

    .line 231
    .line 232
    .line 233
    const/4 v9, 0x0

    .line 234
    if-ne v2, v13, :cond_16

    .line 235
    .line 236
    and-int/lit8 v2, v11, 0x3

    .line 237
    .line 238
    if-eq v2, v3, :cond_15

    .line 239
    .line 240
    goto :goto_11

    .line 241
    :cond_15
    move v2, v9

    .line 242
    goto :goto_12

    .line 243
    :cond_16
    :goto_11
    const/4 v2, 0x1

    .line 244
    :goto_12
    and-int/lit8 v3, v0, 0x1

    .line 245
    .line 246
    invoke-virtual {v12, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_23

    .line 251
    .line 252
    invoke-static {v7, v6}, Landroidx/compose/foundation/text/BasicTextKt;->validateMinMaxLines(II)V

    .line 253
    .line 254
    .line 255
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->LocalSelectionRegistrar:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 256
    .line 257
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    if-nez v2, :cond_22

    .line 262
    .line 263
    const v2, 0x5eb28b71

    .line 264
    .line 265
    .line 266
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 270
    .line 271
    .line 272
    sget-object v2, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->EmptyInlineContent:Lkotlin/Pair;

    .line 273
    .line 274
    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    iget-object v3, v1, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    .line 281
    .line 282
    if-eqz v3, :cond_1a

    .line 283
    .line 284
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 285
    .line 286
    .line 287
    move-result v13

    .line 288
    move v10, v9

    .line 289
    :goto_13
    if-ge v10, v13, :cond_1a

    .line 290
    .line 291
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v17

    .line 295
    move-object/from16 v9, v17

    .line 296
    .line 297
    check-cast v9, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 298
    .line 299
    move/from16 v17, v0

    .line 300
    .line 301
    iget-object v0, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 302
    .line 303
    instance-of v0, v0, Landroidx/compose/ui/text/StringAnnotation;

    .line 304
    .line 305
    if-eqz v0, :cond_18

    .line 306
    .line 307
    iget-object v0, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    .line 308
    .line 309
    move-object/from16 v19, v3

    .line 310
    .line 311
    const-string v3, "androidx.compose.foundation.text.inlineContent"

    .line 312
    .line 313
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eqz v0, :cond_17

    .line 318
    .line 319
    iget v0, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 320
    .line 321
    iget v3, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 322
    .line 323
    const/4 v9, 0x0

    .line 324
    invoke-static {v9, v2, v0, v3}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_19

    .line 329
    .line 330
    const/4 v3, 0x1

    .line 331
    goto :goto_16

    .line 332
    :cond_17
    :goto_14
    const/4 v9, 0x0

    .line 333
    goto :goto_15

    .line 334
    :cond_18
    move-object/from16 v19, v3

    .line 335
    .line 336
    goto :goto_14

    .line 337
    :cond_19
    :goto_15
    add-int/lit8 v10, v10, 0x1

    .line 338
    .line 339
    move/from16 v0, v17

    .line 340
    .line 341
    move-object/from16 v3, v19

    .line 342
    .line 343
    goto :goto_13

    .line 344
    :cond_1a
    move/from16 v17, v0

    .line 345
    .line 346
    move v3, v9

    .line 347
    :goto_16
    invoke-static {v1}, Landroidx/sqlite/SQLite;->hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 352
    .line 353
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    move-object v10, v2

    .line 358
    check-cast v10, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 359
    .line 360
    if-nez v3, :cond_1c

    .line 361
    .line 362
    if-nez v0, :cond_1c

    .line 363
    .line 364
    const v0, 0x5eb64fb6

    .line 365
    .line 366
    .line 367
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 368
    .line 369
    .line 370
    const/4 v0, 0x0

    .line 371
    invoke-static {v1, v5, v10, v0, v12}, Landroidx/compose/foundation/text/BasicText_androidKt;->BackgroundTextMeasurement(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Landroidx/compose/runtime/Composer;)V

    .line 372
    .line 373
    .line 374
    move-object v2, v10

    .line 375
    const/4 v10, 0x0

    .line 376
    const/4 v11, 0x0

    .line 377
    move/from16 v18, v9

    .line 378
    .line 379
    const/4 v9, 0x0

    .line 380
    move-object v0, v4

    .line 381
    move-object v3, v8

    .line 382
    const/4 v13, 0x1

    .line 383
    move/from16 v4, p4

    .line 384
    .line 385
    move-object v8, v2

    .line 386
    move-object v2, v5

    .line 387
    move/from16 v5, p5

    .line 388
    .line 389
    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-CL7eQgs(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 390
    .line 391
    .line 392
    move-result-object v8

    .line 393
    sget-object v0, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    .line 394
    .line 395
    iget-wide v1, v12, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 396
    .line 397
    ushr-long v3, v1, p9

    .line 398
    .line 399
    xor-long/2addr v1, v3

    .line 400
    long-to-int v1, v1

    .line 401
    invoke-static {v12, v8}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 410
    .line 411
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 415
    .line 416
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 417
    .line 418
    .line 419
    iget-boolean v5, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 420
    .line 421
    if-eqz v5, :cond_1b

    .line 422
    .line 423
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 424
    .line 425
    .line 426
    goto :goto_17

    .line 427
    :cond_1b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 428
    .line 429
    .line 430
    :goto_17
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 431
    .line 432
    invoke-static {v12, v0, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 433
    .line 434
    .line 435
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 436
    .line 437
    invoke-static {v12, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 438
    .line 439
    .line 440
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 441
    .line 442
    invoke-static {v12, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 443
    .line 444
    .line 445
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 446
    .line 447
    invoke-static {v12, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 448
    .line 449
    .line 450
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 455
    .line 456
    invoke-static {v12, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 460
    .line 461
    .line 462
    const/4 v9, 0x0

    .line 463
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 464
    .line 465
    .line 466
    goto/16 :goto_1b

    .line 467
    .line 468
    :cond_1c
    move-object v8, v10

    .line 469
    const/4 v13, 0x1

    .line 470
    const v0, 0x5ec5cfb6

    .line 471
    .line 472
    .line 473
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 474
    .line 475
    .line 476
    and-int/lit8 v0, v17, 0xe

    .line 477
    .line 478
    const/4 v1, 0x4

    .line 479
    if-ne v0, v1, :cond_1d

    .line 480
    .line 481
    move v9, v13

    .line 482
    goto :goto_18

    .line 483
    :cond_1d
    const/4 v9, 0x0

    .line 484
    :goto_18
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 489
    .line 490
    if-nez v9, :cond_1e

    .line 491
    .line 492
    if-ne v0, v1, :cond_1f

    .line 493
    .line 494
    :cond_1e
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    :cond_1f
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 502
    .line 503
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString;

    .line 508
    .line 509
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v4

    .line 513
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v5

    .line 517
    if-nez v4, :cond_21

    .line 518
    .line 519
    if-ne v5, v1, :cond_20

    .line 520
    .line 521
    goto :goto_19

    .line 522
    :cond_20
    const/4 v9, 0x0

    .line 523
    goto :goto_1a

    .line 524
    :cond_21
    :goto_19
    new-instance v5, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;

    .line 525
    .line 526
    const/4 v9, 0x0

    .line 527
    invoke-direct {v5, v0, v9}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 531
    .line 532
    .line 533
    :goto_1a
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 534
    .line 535
    shr-int/lit8 v0, v17, 0x3

    .line 536
    .line 537
    and-int/lit16 v0, v0, 0x38e

    .line 538
    .line 539
    shr-int/lit8 v1, v17, 0xc

    .line 540
    .line 541
    const v4, 0xe000

    .line 542
    .line 543
    .line 544
    and-int/2addr v1, v4

    .line 545
    or-int/2addr v0, v1

    .line 546
    shl-int/lit8 v1, v17, 0x9

    .line 547
    .line 548
    const/high16 v6, 0x70000

    .line 549
    .line 550
    and-int/2addr v1, v6

    .line 551
    or-int/2addr v0, v1

    .line 552
    shl-int/lit8 v1, v17, 0x6

    .line 553
    .line 554
    const/high16 v6, 0x380000

    .line 555
    .line 556
    and-int/2addr v6, v1

    .line 557
    or-int/2addr v0, v6

    .line 558
    const/high16 v6, 0x1c00000

    .line 559
    .line 560
    and-int/2addr v6, v1

    .line 561
    or-int/2addr v0, v6

    .line 562
    const/high16 v6, 0xe000000

    .line 563
    .line 564
    and-int/2addr v6, v1

    .line 565
    or-int/2addr v0, v6

    .line 566
    const/high16 v6, 0x70000000

    .line 567
    .line 568
    and-int/2addr v1, v6

    .line 569
    or-int v13, v0, v1

    .line 570
    .line 571
    shr-int/lit8 v0, v17, 0x15

    .line 572
    .line 573
    and-int/lit16 v0, v0, 0x380

    .line 574
    .line 575
    shl-int/lit8 v1, v11, 0xc

    .line 576
    .line 577
    and-int/2addr v1, v4

    .line 578
    or-int/2addr v0, v1

    .line 579
    move/from16 v6, p4

    .line 580
    .line 581
    move/from16 v7, p5

    .line 582
    .line 583
    move-object v1, v2

    .line 584
    move-object v11, v5

    .line 585
    move-object v10, v8

    .line 586
    move v15, v9

    .line 587
    move-object v4, v14

    .line 588
    move-object/from16 v5, p2

    .line 589
    .line 590
    move-object/from16 v2, p3

    .line 591
    .line 592
    move/from16 v8, p6

    .line 593
    .line 594
    move/from16 v9, p7

    .line 595
    .line 596
    move v14, v0

    .line 597
    move-object/from16 v0, p1

    .line 598
    .line 599
    invoke-static/range {v0 .. v14}, Landroidx/compose/foundation/text/BasicTextKt;->LayoutWithLinksAndInlineContent-11Od_4g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 603
    .line 604
    .line 605
    goto :goto_1b

    .line 606
    :cond_22
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 607
    .line 608
    .line 609
    return-void

    .line 610
    :cond_23
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 611
    .line 612
    .line 613
    :goto_1b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 614
    .line 615
    .line 616
    move-result-object v12

    .line 617
    if-eqz v12, :cond_24

    .line 618
    .line 619
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;

    .line 620
    .line 621
    move-object/from16 v1, p0

    .line 622
    .line 623
    move-object/from16 v2, p1

    .line 624
    .line 625
    move-object/from16 v3, p2

    .line 626
    .line 627
    move-object/from16 v4, p3

    .line 628
    .line 629
    move/from16 v5, p4

    .line 630
    .line 631
    move/from16 v6, p5

    .line 632
    .line 633
    move/from16 v7, p6

    .line 634
    .line 635
    move/from16 v8, p7

    .line 636
    .line 637
    move-object/from16 v9, p8

    .line 638
    .line 639
    move/from16 v10, p10

    .line 640
    .line 641
    move/from16 v11, p11

    .line 642
    .line 643
    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;II)V

    .line 644
    .line 645
    .line 646
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 647
    .line 648
    :cond_24
    return-void
.end method

.method public static final BasicText-RWo7tUw(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/runtime/Composer;II)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v6, p6

    .line 6
    .line 7
    move/from16 v12, p9

    .line 8
    .line 9
    move/from16 v13, p10

    .line 10
    .line 11
    move-object/from16 v14, p8

    .line 12
    .line 13
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, -0x3e089999

    .line 16
    .line 17
    .line 18
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, v12, 0x6

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int/2addr v0, v12

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v12

    .line 37
    :goto_1
    and-int/lit8 v2, v12, 0x30

    .line 38
    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    const/16 v2, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v2, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v2

    .line 53
    :cond_3
    and-int/lit16 v2, v12, 0x180

    .line 54
    .line 55
    if-nez v2, :cond_5

    .line 56
    .line 57
    move-object/from16 v2, p2

    .line 58
    .line 59
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_4

    .line 64
    .line 65
    const/16 v3, 0x100

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/16 v3, 0x80

    .line 69
    .line 70
    :goto_3
    or-int/2addr v0, v3

    .line 71
    goto :goto_4

    .line 72
    :cond_5
    move-object/from16 v2, p2

    .line 73
    .line 74
    :goto_4
    and-int/lit8 v3, v13, 0x8

    .line 75
    .line 76
    if-eqz v3, :cond_7

    .line 77
    .line 78
    or-int/lit16 v0, v0, 0xc00

    .line 79
    .line 80
    :cond_6
    move-object/from16 v4, p3

    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_7
    and-int/lit16 v4, v12, 0xc00

    .line 84
    .line 85
    if-nez v4, :cond_6

    .line 86
    .line 87
    move-object/from16 v4, p3

    .line 88
    .line 89
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_8

    .line 94
    .line 95
    const/16 v5, 0x800

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_8
    const/16 v5, 0x400

    .line 99
    .line 100
    :goto_5
    or-int/2addr v0, v5

    .line 101
    :goto_6
    and-int/lit8 v5, v13, 0x10

    .line 102
    .line 103
    if-eqz v5, :cond_a

    .line 104
    .line 105
    or-int/lit16 v0, v0, 0x6000

    .line 106
    .line 107
    :cond_9
    move/from16 v7, p4

    .line 108
    .line 109
    goto :goto_8

    .line 110
    :cond_a
    and-int/lit16 v7, v12, 0x6000

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
    move-result v9

    .line 120
    if-eqz v9, :cond_b

    .line 121
    .line 122
    const/16 v9, 0x4000

    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_b
    const/16 v9, 0x2000

    .line 126
    .line 127
    :goto_7
    or-int/2addr v0, v9

    .line 128
    :goto_8
    and-int/lit8 v9, v13, 0x20

    .line 129
    .line 130
    const/high16 v10, 0x30000

    .line 131
    .line 132
    if-eqz v9, :cond_d

    .line 133
    .line 134
    or-int/2addr v0, v10

    .line 135
    :cond_c
    move/from16 v10, p5

    .line 136
    .line 137
    goto :goto_a

    .line 138
    :cond_d
    and-int/2addr v10, v12

    .line 139
    if-nez v10, :cond_c

    .line 140
    .line 141
    move/from16 v10, p5

    .line 142
    .line 143
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    if-eqz v11, :cond_e

    .line 148
    .line 149
    const/high16 v11, 0x20000

    .line 150
    .line 151
    goto :goto_9

    .line 152
    :cond_e
    const/high16 v11, 0x10000

    .line 153
    .line 154
    :goto_9
    or-int/2addr v0, v11

    .line 155
    :goto_a
    const/high16 v11, 0x180000

    .line 156
    .line 157
    and-int/2addr v11, v12

    .line 158
    if-nez v11, :cond_10

    .line 159
    .line 160
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    if-eqz v11, :cond_f

    .line 165
    .line 166
    const/high16 v11, 0x100000

    .line 167
    .line 168
    goto :goto_b

    .line 169
    :cond_f
    const/high16 v11, 0x80000

    .line 170
    .line 171
    :goto_b
    or-int/2addr v0, v11

    .line 172
    :cond_10
    and-int/lit16 v11, v13, 0x80

    .line 173
    .line 174
    const/high16 v16, 0xc00000

    .line 175
    .line 176
    if-eqz v11, :cond_11

    .line 177
    .line 178
    or-int v0, v0, v16

    .line 179
    .line 180
    move/from16 v15, p7

    .line 181
    .line 182
    const/16 p8, 0x20

    .line 183
    .line 184
    goto :goto_d

    .line 185
    :cond_11
    and-int v16, v12, v16

    .line 186
    .line 187
    move/from16 v15, p7

    .line 188
    .line 189
    const/16 p8, 0x20

    .line 190
    .line 191
    if-nez v16, :cond_13

    .line 192
    .line 193
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 194
    .line 195
    .line 196
    move-result v16

    .line 197
    if-eqz v16, :cond_12

    .line 198
    .line 199
    const/high16 v16, 0x800000

    .line 200
    .line 201
    goto :goto_c

    .line 202
    :cond_12
    const/high16 v16, 0x400000

    .line 203
    .line 204
    :goto_c
    or-int v0, v0, v16

    .line 205
    .line 206
    :cond_13
    :goto_d
    const/high16 v16, 0x6000000

    .line 207
    .line 208
    or-int v16, v0, v16

    .line 209
    .line 210
    move/from16 v17, v0

    .line 211
    .line 212
    and-int/lit16 v0, v13, 0x200

    .line 213
    .line 214
    move/from16 v18, v0

    .line 215
    .line 216
    const/4 v0, 0x0

    .line 217
    if-eqz v18, :cond_14

    .line 218
    .line 219
    const/high16 v16, 0x36000000

    .line 220
    .line 221
    or-int v16, v17, v16

    .line 222
    .line 223
    goto :goto_10

    .line 224
    :cond_14
    const/high16 v17, 0x30000000

    .line 225
    .line 226
    and-int v17, v12, v17

    .line 227
    .line 228
    if-nez v17, :cond_17

    .line 229
    .line 230
    const/high16 v17, 0x40000000    # 2.0f

    .line 231
    .line 232
    and-int v17, v12, v17

    .line 233
    .line 234
    if-nez v17, :cond_15

    .line 235
    .line 236
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v17

    .line 240
    goto :goto_e

    .line 241
    :cond_15
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v17

    .line 245
    :goto_e
    if-eqz v17, :cond_16

    .line 246
    .line 247
    const/high16 v17, 0x20000000

    .line 248
    .line 249
    goto :goto_f

    .line 250
    :cond_16
    const/high16 v17, 0x10000000

    .line 251
    .line 252
    :goto_f
    or-int v16, v16, v17

    .line 253
    .line 254
    :cond_17
    :goto_10
    const v17, 0x12492493

    .line 255
    .line 256
    .line 257
    and-int v0, v16, v17

    .line 258
    .line 259
    const v1, 0x12492492

    .line 260
    .line 261
    .line 262
    move/from16 v17, v9

    .line 263
    .line 264
    const/4 v9, 0x0

    .line 265
    const/4 v10, 0x1

    .line 266
    if-eq v0, v1, :cond_18

    .line 267
    .line 268
    move v0, v10

    .line 269
    goto :goto_11

    .line 270
    :cond_18
    move v0, v9

    .line 271
    :goto_11
    and-int/lit8 v1, v16, 0x1

    .line 272
    .line 273
    invoke-virtual {v14, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_21

    .line 278
    .line 279
    if-eqz v3, :cond_19

    .line 280
    .line 281
    const/16 v18, 0x0

    .line 282
    .line 283
    goto :goto_12

    .line 284
    :cond_19
    move-object/from16 v18, v4

    .line 285
    .line 286
    :goto_12
    if-eqz v5, :cond_1a

    .line 287
    .line 288
    move v7, v10

    .line 289
    :cond_1a
    if-eqz v17, :cond_1b

    .line 290
    .line 291
    move/from16 v16, v10

    .line 292
    .line 293
    goto :goto_13

    .line 294
    :cond_1b
    move/from16 v16, p5

    .line 295
    .line 296
    :goto_13
    if-eqz v11, :cond_1c

    .line 297
    .line 298
    move v11, v7

    .line 299
    move v7, v10

    .line 300
    goto :goto_14

    .line 301
    :cond_1c
    move v11, v7

    .line 302
    move v7, v15

    .line 303
    :goto_14
    invoke-static {v7, v6}, Landroidx/compose/foundation/text/BasicTextKt;->validateMinMaxLines(II)V

    .line 304
    .line 305
    .line 306
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->LocalSelectionRegistrar:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 307
    .line 308
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    if-nez v0, :cond_20

    .line 313
    .line 314
    const v0, 0x1546143f    # 4.0001753E-26f

    .line 315
    .line 316
    .line 317
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 321
    .line 322
    .line 323
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 324
    .line 325
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    move-object v5, v0

    .line 330
    check-cast v5, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 331
    .line 332
    sget-object v0, Landroidx/compose/foundation/text/BasicText_androidKt;->LocalBackgroundTextMeasurementExecutor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 333
    .line 334
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    move-object v15, v0

    .line 339
    check-cast v15, Ljava/util/concurrent/Executor;

    .line 340
    .line 341
    if-eqz v15, :cond_1d

    .line 342
    .line 343
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    invoke-static {v0}, Landroidx/compose/foundation/text/BasicText_androidKt;->shouldPrefetch(I)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_1d

    .line 352
    .line 353
    const v0, 0x4ac313f6    # 6392315.0f

    .line 354
    .line 355
    .line 356
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 357
    .line 358
    .line 359
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 360
    .line 361
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    .line 366
    .line 367
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 368
    .line 369
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    move-object v4, v1

    .line 374
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 375
    .line 376
    move-object v2, v0

    .line 377
    :try_start_0
    new-instance v0, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;

    .line 378
    .line 379
    move-object/from16 v3, p0

    .line 380
    .line 381
    move-object/from16 v1, p2

    .line 382
    .line 383
    invoke-direct/range {v0 .. v5}, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;Ljava/lang/String;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 384
    .line 385
    .line 386
    invoke-interface {v15, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .line 388
    .line 389
    :catch_0
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 390
    .line 391
    .line 392
    goto :goto_15

    .line 393
    :cond_1d
    const v0, 0x4adbba47    # 7200035.5f

    .line 394
    .line 395
    .line 396
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 400
    .line 401
    .line 402
    :goto_15
    if-nez v18, :cond_1e

    .line 403
    .line 404
    const v0, 0x1554c093

    .line 405
    .line 406
    .line 407
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 411
    .line 412
    .line 413
    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;

    .line 414
    .line 415
    move-object/from16 v1, p0

    .line 416
    .line 417
    move-object/from16 v2, p2

    .line 418
    .line 419
    move-object v3, v5

    .line 420
    move v4, v11

    .line 421
    move/from16 v5, v16

    .line 422
    .line 423
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZII)V

    .line 424
    .line 425
    .line 426
    move-object v15, v1

    .line 427
    invoke-interface {v8, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    move v13, v10

    .line 432
    move-object/from16 v3, v18

    .line 433
    .line 434
    goto :goto_16

    .line 435
    :cond_1e
    move-object/from16 v15, p0

    .line 436
    .line 437
    move v4, v11

    .line 438
    move/from16 v5, v16

    .line 439
    .line 440
    const v0, 0x154aedf1

    .line 441
    .line 442
    .line 443
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 444
    .line 445
    .line 446
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 447
    .line 448
    invoke-direct {v1, v15}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 452
    .line 453
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    check-cast v0, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 458
    .line 459
    move v2, v10

    .line 460
    const/4 v10, 0x0

    .line 461
    const/4 v11, 0x0

    .line 462
    move v3, v9

    .line 463
    const/4 v9, 0x0

    .line 464
    move-object v6, v8

    .line 465
    move-object v8, v0

    .line 466
    move-object v0, v6

    .line 467
    move/from16 v6, p6

    .line 468
    .line 469
    move v13, v2

    .line 470
    move v12, v3

    .line 471
    move-object/from16 v3, v18

    .line 472
    .line 473
    move-object/from16 v2, p2

    .line 474
    .line 475
    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-CL7eQgs(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 480
    .line 481
    .line 482
    move-object v0, v1

    .line 483
    :goto_16
    sget-object v1, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    .line 484
    .line 485
    iget-wide v8, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 486
    .line 487
    ushr-long v10, v8, p8

    .line 488
    .line 489
    xor-long/2addr v8, v10

    .line 490
    long-to-int v2, v8

    .line 491
    invoke-static {v14, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 500
    .line 501
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    .line 503
    .line 504
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 505
    .line 506
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 507
    .line 508
    .line 509
    iget-boolean v9, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 510
    .line 511
    if-eqz v9, :cond_1f

    .line 512
    .line 513
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 514
    .line 515
    .line 516
    goto :goto_17

    .line 517
    :cond_1f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 518
    .line 519
    .line 520
    :goto_17
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 521
    .line 522
    invoke-static {v14, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 523
    .line 524
    .line 525
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 526
    .line 527
    invoke-static {v14, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 528
    .line 529
    .line 530
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 531
    .line 532
    invoke-static {v14, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 533
    .line 534
    .line 535
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 536
    .line 537
    invoke-static {v14, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 538
    .line 539
    .line 540
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 545
    .line 546
    invoke-static {v14, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 550
    .line 551
    .line 552
    move v6, v5

    .line 553
    move v8, v7

    .line 554
    move v5, v4

    .line 555
    move-object v4, v3

    .line 556
    goto :goto_18

    .line 557
    :cond_20
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 558
    .line 559
    .line 560
    return-void

    .line 561
    :cond_21
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 562
    .line 563
    .line 564
    move/from16 v6, p5

    .line 565
    .line 566
    move v5, v7

    .line 567
    move v8, v15

    .line 568
    :goto_18
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 569
    .line 570
    .line 571
    move-result-object v11

    .line 572
    if-eqz v11, :cond_22

    .line 573
    .line 574
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda10;

    .line 575
    .line 576
    move-object/from16 v1, p0

    .line 577
    .line 578
    move-object/from16 v2, p1

    .line 579
    .line 580
    move-object/from16 v3, p2

    .line 581
    .line 582
    move/from16 v7, p6

    .line 583
    .line 584
    move/from16 v9, p9

    .line 585
    .line 586
    move/from16 v10, p10

    .line 587
    .line 588
    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIIII)V

    .line 589
    .line 590
    .line 591
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 592
    .line 593
    :cond_22
    return-void
.end method

.method public static final CommonContextMenuArea(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x5b67725a

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p3, 0x6

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    or-int/2addr v0, p3

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v0, p3

    .line 26
    :goto_1
    and-int/lit8 v2, p3, 0x30

    .line 27
    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    const/16 v2, 0x20

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/16 v2, 0x10

    .line 40
    .line 41
    :goto_2
    or-int/2addr v0, v2

    .line 42
    :cond_3
    and-int/lit8 v2, v0, 0x13

    .line 43
    .line 44
    const/16 v3, 0x12

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    const/4 v5, 0x0

    .line 48
    if-eq v2, v3, :cond_4

    .line 49
    .line 50
    move v2, v4

    .line 51
    goto :goto_3

    .line 52
    :cond_4
    move v2, v5

    .line 53
    :goto_3
    and-int/lit8 v3, v0, 0x1

    .line 54
    .line 55
    invoke-virtual {p2, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_6

    .line 60
    .line 61
    const v2, -0x34c94080

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getEnabled()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_5

    .line 72
    .line 73
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_5
    new-instance v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;

    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    invoke-direct {v2, p0, v3, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 80
    .line 81
    .line 82
    invoke-static {v2}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;->showTextContextMenuOnSecondaryClick(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;)Landroidx/compose/ui/Modifier;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget-object v6, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->toolbarRequester:Landroidx/cardview/widget/CardView$1;

    .line 87
    .line 88
    new-instance v7, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 89
    .line 90
    const/4 v8, 0x3

    .line 91
    invoke-direct {v7, p0, v3, v8}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 92
    .line 93
    .line 94
    new-instance v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;

    .line 95
    .line 96
    invoke-direct {v8, p0, v3, v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;I)V

    .line 97
    .line 98
    .line 99
    new-instance v3, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;

    .line 100
    .line 101
    invoke-direct {v3, p0, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 102
    .line 103
    .line 104
    invoke-static {v2, v6, v7, v8, v3}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;->textContextMenuToolbarHandler(Landroidx/compose/ui/Modifier;Landroidx/cardview/widget/CardView$1;Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;)Landroidx/compose/ui/Modifier;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    :goto_4
    and-int/lit8 v0, v0, 0x70

    .line 109
    .line 110
    invoke-static {v1, p1, p2, v0}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider_androidKt;->ProvideDefaultPlatformTextContextMenuProviders(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 114
    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 118
    .line 119
    .line 120
    :goto_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    if-eqz p2, :cond_7

    .line 125
    .line 126
    new-instance v0, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda0;

    .line 127
    .line 128
    invoke-direct {v0, p0, p1, p3, v4}, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 129
    .line 130
    .line 131
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 132
    .line 133
    :cond_7
    return-void
.end method

.method public static final ContextMenuArea(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x7c0599e6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p3, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int/2addr v0, p3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p3

    .line 25
    :goto_1
    and-int/lit8 v1, p3, 0x30

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v1, 0x10

    .line 39
    .line 40
    :goto_2
    or-int/2addr v0, v1

    .line 41
    :cond_3
    and-int/lit8 v1, v0, 0x13

    .line 42
    .line 43
    const/16 v2, 0x12

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    if-eq v1, v2, :cond_4

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_3

    .line 50
    :cond_4
    move v1, v3

    .line 51
    :goto_3
    and-int/lit8 v2, v0, 0x1

    .line 52
    .line 53
    invoke-virtual {p2, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    and-int/lit8 v0, v0, 0x7e

    .line 60
    .line 61
    invoke-static {p0, p1, p2, v0}, Landroidx/compose/foundation/text/BasicTextKt;->CommonContextMenuArea(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 66
    .line 67
    .line 68
    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    if-eqz p2, :cond_6

    .line 73
    .line 74
    new-instance v0, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    invoke-direct {v0, p0, p1, p3, v3}, Landroidx/compose/foundation/text/ContextMenu_androidKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 80
    .line 81
    :cond_6
    return-void
.end method

.method public static final CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/SolidColor;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 66

    move-object/from16 v3, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v6, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p6

    move/from16 v7, p8

    move/from16 v15, p9

    move-object/from16 v0, p11

    move-object/from16 v1, p12

    move/from16 v2, p13

    move/from16 v4, p14

    move/from16 v5, p17

    move/from16 v8, p18

    .line 1
    move-object/from16 v9, p16

    check-cast v9, Landroidx/compose/runtime/GapComposer;

    const v10, 0x1d9f981

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v10, v5, 0x6

    move/from16 p16, v10

    if-nez p16, :cond_1

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x4

    goto :goto_0

    :cond_0
    const/16 v17, 0x2

    :goto_0
    or-int v17, v5, v17

    goto :goto_1

    :cond_1
    move/from16 v17, v5

    :goto_1
    and-int/lit8 v18, v5, 0x30

    const/16 v19, 0x10

    if-nez v18, :cond_3

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x20

    goto :goto_2

    :cond_2
    move/from16 v18, v19

    :goto_2
    or-int v17, v17, v18

    :cond_3
    const/16 v18, 0x20

    and-int/lit16 v10, v5, 0x180

    const/16 v20, 0x80

    const/16 v21, 0x100

    if-nez v10, :cond_5

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move/from16 v10, v21

    goto :goto_3

    :cond_4
    move/from16 v10, v20

    :goto_3
    or-int v17, v17, v10

    :cond_5
    and-int/lit16 v10, v5, 0xc00

    const/16 v22, 0x400

    move/from16 v23, v10

    if-nez v23, :cond_7

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    const/16 v23, 0x800

    goto :goto_4

    :cond_6
    move/from16 v23, v22

    :goto_4
    or-int v17, v17, v23

    :cond_7
    and-int/lit16 v10, v5, 0x6000

    const/16 v24, 0x2000

    move/from16 v25, v10

    if-nez v25, :cond_9

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    const/16 v25, 0x4000

    goto :goto_5

    :cond_8
    move/from16 v25, v24

    :goto_5
    or-int v17, v17, v25

    :cond_9
    const/high16 v25, 0x30000

    and-int v26, v5, v25

    const/high16 v27, 0x20000

    const/high16 v28, 0x10000

    move-object/from16 v10, p5

    if-nez v26, :cond_b

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    move/from16 v29, v27

    goto :goto_6

    :cond_a
    move/from16 v29, v28

    :goto_6
    or-int v17, v17, v29

    :cond_b
    const/high16 v29, 0x180000

    and-int v30, v5, v29

    if-nez v30, :cond_d

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    const/high16 v30, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v30, 0x80000

    :goto_7
    or-int v17, v17, v30

    :cond_d
    const/high16 v30, 0xc00000

    and-int v30, v5, v30

    move-object/from16 v10, p7

    if-nez v30, :cond_f

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_e

    const/high16 v30, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v30, 0x400000

    :goto_8
    or-int v17, v17, v30

    :cond_f
    const/high16 v30, 0x6000000

    and-int v30, v5, v30

    if-nez v30, :cond_11

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v30

    if-eqz v30, :cond_10

    const/high16 v30, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v30, 0x2000000

    :goto_9
    or-int v17, v17, v30

    :cond_11
    const/high16 v30, 0x30000000

    and-int v30, v5, v30

    if-nez v30, :cond_13

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v30

    if-eqz v30, :cond_12

    const/high16 v30, 0x20000000

    goto :goto_a

    :cond_12
    const/high16 v30, 0x10000000

    :goto_a
    or-int v17, v17, v30

    :cond_13
    and-int/lit8 v30, v8, 0x6

    move/from16 v10, p10

    if-nez v30, :cond_15

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v30

    if-eqz v30, :cond_14

    const/16 v30, 0x4

    goto :goto_b

    :cond_14
    const/16 v30, 0x2

    :goto_b
    or-int v30, v8, v30

    goto :goto_c

    :cond_15
    move/from16 v30, v8

    :goto_c
    and-int/lit8 v31, v8, 0x30

    if-nez v31, :cond_17

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    move/from16 v19, v18

    :cond_16
    or-int v30, v30, v19

    :cond_17
    and-int/lit16 v5, v8, 0x180

    if-nez v5, :cond_19

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    move/from16 v20, v21

    :cond_18
    or-int v30, v30, v20

    :cond_19
    and-int/lit16 v5, v8, 0xc00

    if-nez v5, :cond_1b

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v22, 0x800

    :cond_1a
    or-int v30, v30, v22

    :cond_1b
    and-int/lit16 v5, v8, 0x6000

    if-nez v5, :cond_1d

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/16 v24, 0x4000

    :cond_1c
    or-int v30, v30, v24

    :cond_1d
    and-int v5, v8, v25

    if-nez v5, :cond_1f

    move-object/from16 v5, p15

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    goto :goto_d

    :cond_1e
    move/from16 v27, v28

    :goto_d
    or-int v30, v30, v27

    goto :goto_e

    :cond_1f
    move-object/from16 v5, p15

    :goto_e
    or-int v10, v30, v29

    const v19, 0x12492493

    and-int v2, v17, v19

    const v4, 0x12492492

    move/from16 v19, v10

    const/16 v20, 0x0

    if-ne v2, v4, :cond_21

    const v2, 0x92493

    and-int v2, v19, v2

    const v4, 0x92492

    if-eq v2, v4, :cond_20

    goto :goto_f

    :cond_20
    move/from16 v2, v20

    goto :goto_10

    :cond_21
    :goto_f
    const/4 v2, 0x1

    :goto_10
    and-int/lit8 v4, v17, 0x1

    invoke-virtual {v9, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v2, p17, 0x1

    if-eqz v2, :cond_23

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_11

    .line 2
    :cond_22
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    :cond_23
    :goto_11
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 3
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 4
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v2, v4, :cond_24

    .line 5
    new-instance v2, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v2}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 6
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 7
    :cond_24
    check-cast v2, Landroidx/compose/ui/focus/FocusRequester;

    .line 8
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v4, :cond_25

    .line 9
    sget-object v10, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt;->inputMethodManagerFactory:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;

    .line 10
    new-instance v10, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    .line 11
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 13
    :cond_25
    check-cast v10, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    .line 14
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_26

    .line 15
    new-instance v5, Landroidx/compose/ui/text/input/TextInputService;

    invoke-direct {v5, v10}, Landroidx/compose/ui/text/input/TextInputService;-><init>(Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    .line 16
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 17
    :cond_26
    check-cast v5, Landroidx/compose/ui/text/input/TextInputService;

    move-object/from16 v22, v5

    .line 18
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 19
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    .line 20
    check-cast v5, Landroidx/compose/ui/unit/Density;

    move-object/from16 v24, v5

    .line 21
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 22
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    .line 23
    check-cast v5, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-object/from16 v25, v5

    .line 24
    sget-object v5, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 25
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move-object/from16 v27, v10

    .line 26
    iget-wide v10, v5, Landroidx/compose/foundation/text/selection/TextSelectionColors;->backgroundColor:J

    .line 27
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFocusManager:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 28
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    .line 29
    check-cast v5, Landroidx/compose/ui/focus/FocusOwner;

    move-object/from16 v28, v5

    .line 30
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalWindowInfo:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 31
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    .line 32
    check-cast v5, Landroidx/compose/ui/platform/WindowInfo;

    move-object/from16 v29, v5

    .line 33
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalSoftwareKeyboardController:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 34
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    .line 35
    check-cast v5, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    .line 36
    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v7, 0x1

    if-ne v15, v7, :cond_27

    if-nez p8, :cond_27

    .line 37
    iget-boolean v7, v0, Landroidx/compose/ui/text/input/ImeOptions;->singleLine:Z

    if-eqz v7, :cond_27

    .line 38
    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_12

    :cond_27
    move-object v7, v6

    :goto_12
    const v8, -0xcbd7bf2

    .line 39
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    move-wide/from16 v30, v10

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v7, v10, v20

    .line 40
    sget-object v8, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->Saver:Landroidx/compose/ui/platform/WeakCache;

    .line 41
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v11

    move/from16 v32, v11

    .line 42
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v32, :cond_28

    if-ne v11, v4, :cond_29

    .line 43
    :cond_28
    new-instance v11, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    const/16 v12, 0x13

    invoke-direct {v11, v12, v7}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 44
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 45
    :cond_29
    check-cast v11, Lkotlin/jvm/functions/Function0;

    move/from16 v12, v20

    invoke-static {v10, v8, v11, v9, v12}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 46
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 47
    iget-object v8, v11, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->orientation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 48
    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/gestures/Orientation;

    if-eq v8, v7, :cond_2b

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    if-ne v7, v6, :cond_2a

    .line 50
    const-string v1, "only single-line, non-wrap text fields can scroll horizontally"

    goto :goto_13

    .line 51
    :cond_2a
    const-string v1, "single-line, non-wrap text fields can only scroll horizontally"

    .line 52
    :goto_13
    const-string v2, "Mismatching scroller orientation; "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    and-int/lit8 v6, v17, 0xe

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2c

    const/4 v8, 0x1

    goto :goto_14

    :cond_2c
    move v8, v12

    :goto_14
    const v20, 0xe000

    and-int v10, v17, v20

    const/16 v7, 0x4000

    if-ne v10, v7, :cond_2d

    const/4 v10, 0x1

    goto :goto_15

    :cond_2d
    move v10, v12

    :goto_15
    or-int/2addr v8, v10

    .line 54
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_2f

    if-ne v10, v4, :cond_2e

    goto :goto_16

    :cond_2e
    move/from16 v32, v6

    goto :goto_18

    .line 55
    :cond_2f
    :goto_16
    iget-object v8, v3, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 56
    invoke-static {v13, v8}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->filterWithValidation(Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v8

    iget-object v10, v8, Landroidx/compose/ui/text/input/TransformedText;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 57
    iget-object v7, v3, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    if-eqz v7, :cond_30

    .line 58
    iget-wide v12, v7, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 59
    sget v7, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    move/from16 v32, v6

    shr-long v6, v12, v18

    long-to-int v6, v6

    invoke-interface {v10, v6}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v6

    const-wide v33, 0xffffffffL

    and-long v12, v12, v33

    long-to-int v7, v12

    .line 60
    invoke-interface {v10, v7}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v7

    .line 61
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 62
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 63
    new-instance v7, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 64
    iget-object v8, v8, Landroidx/compose/ui/text/input/TransformedText;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 65
    invoke-direct {v7, v8}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 66
    new-instance v33, Landroidx/compose/ui/text/SpanStyle;

    const/16 v51, 0x0

    const v52, 0xefff

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    sget-object v50, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-direct/range {v33 .. v52}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    move-object/from16 v8, v33

    .line 67
    invoke-virtual {v7, v8, v12, v6}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 68
    invoke-virtual {v7}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v6

    .line 69
    new-instance v7, Landroidx/compose/ui/text/input/TransformedText;

    invoke-direct {v7, v6, v10}, Landroidx/compose/ui/text/input/TransformedText;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/input/OffsetMapping;)V

    move-object v10, v7

    goto :goto_17

    :cond_30
    move/from16 v32, v6

    move-object v10, v8

    .line 70
    :goto_17
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 71
    :goto_18
    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/text/input/TransformedText;

    .line 72
    iget-object v6, v12, Landroidx/compose/ui/text/input/TransformedText;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 73
    iget-object v13, v12, Landroidx/compose/ui/text/input/TransformedText;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 74
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_70

    .line 75
    iget v8, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    const/16 v21, 0x1

    or-int/lit8 v8, v8, 0x1

    .line 76
    iput v8, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 77
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 78
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_32

    if-ne v10, v4, :cond_31

    goto :goto_19

    :cond_31
    move/from16 v7, p8

    move-object/from16 v16, v2

    move-object/from16 v57, v4

    move-object v5, v6

    move-object/from16 p16, v11

    move-object/from16 v34, v12

    move-object/from16 v18, v13

    move-object/from16 v8, v24

    move-object/from16 v53, v27

    move-object/from16 v0, v28

    move-object/from16 v54, v29

    move-wide/from16 v14, v30

    move/from16 v55, v32

    move-object/from16 v6, p3

    move-object v12, v9

    move-object/from16 v9, v25

    goto :goto_1a

    .line 79
    :cond_32
    :goto_19
    new-instance v10, Landroidx/compose/foundation/text/LegacyTextFieldState;

    move-object v8, v4

    .line 80
    new-instance v4, Landroidx/compose/foundation/text/TextDelegate;

    move-object/from16 v33, v10

    const/4 v10, 0x0

    move-object/from16 v16, v2

    move-object v2, v7

    move-object/from16 v57, v8

    move-object/from16 p16, v11

    move-object/from16 v34, v12

    move-object/from16 v18, v13

    move-object/from16 v8, v24

    move-object/from16 v53, v27

    move-object/from16 v0, v28

    move-object/from16 v54, v29

    move-wide/from16 v14, v30

    move/from16 v55, v32

    move-object/from16 v13, v33

    move/from16 v7, p8

    move-object v11, v5

    move-object v5, v6

    move-object v12, v9

    move-object/from16 v9, v25

    move-object/from16 v6, p3

    .line 81
    invoke-direct/range {v4 .. v10}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;I)V

    .line 82
    invoke-direct {v13, v4, v2, v11}, Landroidx/compose/foundation/text/LegacyTextFieldState;-><init>(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V

    .line 83
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v10, v13

    .line 84
    :goto_1a
    move-object v2, v10

    check-cast v2, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 85
    iget-object v4, v3, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-wide v10, v3, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    move-object/from16 v13, p1

    .line 86
    iput-object v13, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChangeOriginal:Lkotlin/jvm/functions/Function1;

    .line 87
    iput-wide v14, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->selectionBackgroundColor:J

    .line 88
    iget-object v14, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->keyboardActionRunner:Landroidx/core/view/MenuHostHelper;

    .line 89
    iput-object v1, v14, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    .line 90
    iput-object v0, v14, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 91
    iput-object v4, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->untransformedText:Landroidx/compose/ui/text/AnnotatedString;

    .line 92
    iget-object v4, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 93
    iget-object v14, v4, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 94
    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_34

    .line 95
    iget-object v14, v4, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    .line 96
    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_34

    .line 97
    iget-boolean v14, v4, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    if-ne v14, v7, :cond_34

    .line 98
    iget v14, v4, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_34

    .line 99
    iget v14, v4, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    const v15, 0x7fffffff

    if-ne v14, v15, :cond_34

    .line 100
    iget v14, v4, Landroidx/compose/foundation/text/TextDelegate;->minLines:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_34

    .line 101
    iget-object v14, v4, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    .line 102
    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_34

    .line 103
    iget-object v14, v4, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    .line 104
    sget-object v15, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_34

    .line 105
    iget-object v14, v4, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    if-eq v14, v9, :cond_33

    goto :goto_1b

    :cond_33
    move-wide v14, v10

    move-object/from16 v24, v8

    move-object v11, v6

    goto :goto_1c

    .line 106
    :cond_34
    :goto_1b
    new-instance v4, Landroidx/compose/foundation/text/TextDelegate;

    move-wide v14, v10

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;I)V

    move-object v11, v6

    move-object/from16 v24, v8

    .line 107
    :goto_1c
    iget-object v5, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    if-eq v5, v4, :cond_35

    const/4 v7, 0x1

    iput-boolean v7, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->isLayoutResultStale:Z

    .line 108
    :cond_35
    iput-object v4, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 109
    iget-object v4, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->processor:Landroidx/compose/ui/platform/WeakCache;

    .line 110
    iget-object v5, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->inputSession:Landroidx/compose/ui/text/input/TextInputSession;

    .line 111
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    iget-object v6, v3, Landroidx/compose/ui/text/input/TextFieldValue;->composition:Landroidx/compose/ui/text/TextRange;

    .line 113
    iget-object v7, v4, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    check-cast v7, Lcom/google/zxing/PlanarYUVLuminanceSource;

    invoke-virtual {v7}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getComposition-MzsxiRA$ui_text()Landroidx/compose/ui/text/TextRange;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 114
    iget-object v8, v4, Landroidx/compose/ui/platform/WeakCache;->values:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 115
    iget-object v8, v8, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 116
    iget-object v8, v8, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 117
    iget-object v9, v3, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 118
    iget-object v10, v9, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 119
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_36

    .line 120
    new-instance v8, Lcom/google/zxing/PlanarYUVLuminanceSource;

    invoke-direct {v8, v9, v14, v15}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>(Landroidx/compose/ui/text/AnnotatedString;J)V

    iput-object v8, v4, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v10, 0x1

    goto :goto_1e

    .line 121
    :cond_36
    iget-object v8, v4, Landroidx/compose/ui/platform/WeakCache;->values:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 122
    iget-wide v8, v8, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 123
    invoke-static {v8, v9, v14, v15}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v8

    if-nez v8, :cond_37

    .line 124
    iget-object v8, v4, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    check-cast v8, Lcom/google/zxing/PlanarYUVLuminanceSource;

    invoke-static {v14, v15}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v9

    invoke-static {v14, v15}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;->setSelection$ui_text(II)V

    const/4 v8, 0x1

    :goto_1d
    const/4 v10, 0x0

    goto :goto_1e

    :cond_37
    const/4 v8, 0x0

    goto :goto_1d

    :goto_1e
    const/4 v9, -0x1

    if-nez v6, :cond_38

    .line 125
    iget-object v6, v4, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    check-cast v6, Lcom/google/zxing/PlanarYUVLuminanceSource;

    .line 126
    iput v9, v6, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 127
    iput v9, v6, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    move-object/from16 v28, v0

    move/from16 v23, v10

    goto :goto_1f

    :cond_38
    move/from16 v23, v10

    .line 128
    iget-wide v9, v6, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 129
    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v6

    if-nez v6, :cond_39

    .line 130
    iget-object v6, v4, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    check-cast v6, Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-object/from16 v28, v0

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v9

    invoke-virtual {v6, v0, v9}, Lcom/google/zxing/PlanarYUVLuminanceSource;->setComposition$ui_text(II)V

    goto :goto_1f

    :cond_39
    move-object/from16 v28, v0

    :goto_1f
    const/4 v0, 0x3

    const-wide/16 v9, 0x0

    const/4 v6, 0x0

    if-nez v23, :cond_3b

    if-nez v8, :cond_3a

    if-nez v7, :cond_3a

    goto :goto_20

    :cond_3a
    move-object v7, v3

    goto :goto_21

    .line 131
    :cond_3b
    :goto_20
    iget-object v7, v4, Landroidx/compose/ui/platform/WeakCache;->referenceQueue:Ljava/lang/Object;

    check-cast v7, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v8, -0x1

    .line 132
    iput v8, v7, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 133
    iput v8, v7, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 134
    invoke-static {v3, v6, v9, v10, v0}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JI)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v7

    .line 135
    :goto_21
    iget-object v8, v4, Landroidx/compose/ui/platform/WeakCache;->values:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 136
    iput-object v7, v4, Landroidx/compose/ui/platform/WeakCache;->values:Ljava/lang/Object;

    if-eqz v5, :cond_3c

    .line 137
    invoke-virtual {v5, v8, v7}, Landroidx/compose/ui/text/input/TextInputSession;->updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 138
    :cond_3c
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v5, v57

    if-ne v4, v5, :cond_3d

    .line 139
    new-instance v4, Landroidx/compose/foundation/text/UndoManager;

    .line 140
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 142
    :cond_3d
    check-cast v4, Landroidx/compose/foundation/text/UndoManager;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 144
    iget-boolean v0, v4, Landroidx/compose/foundation/text/UndoManager;->forceNextSnapshot:Z

    if-nez v0, :cond_3f

    .line 145
    iget-object v0, v4, Landroidx/compose/foundation/text/UndoManager;->lastSnapshot:Ljava/lang/Long;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :cond_3e
    const-wide/16 v25, 0x1388

    add-long v9, v9, v25

    cmp-long v0, v7, v9

    if-lez v0, :cond_40

    .line 146
    :cond_3f
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Landroidx/compose/foundation/text/UndoManager;->lastSnapshot:Ljava/lang/Long;

    .line 147
    invoke-virtual {v4, v3}, Landroidx/compose/foundation/text/UndoManager;->makeSnapshot(Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 148
    :cond_40
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_41

    .line 149
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 150
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 151
    :cond_41
    move-object v9, v0

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .line 152
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_42

    .line 153
    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    invoke-direct {v0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;-><init>()V

    .line 154
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 155
    :cond_42
    move-object v10, v0

    check-cast v10, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    .line 156
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_43

    .line 157
    new-instance v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-direct {v0, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;-><init>(Landroidx/compose/foundation/text/UndoManager;)V

    .line 158
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 159
    :cond_43
    move-object v8, v0

    check-cast v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    move-object/from16 v7, v18

    .line 160
    iput-object v7, v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    move-object/from16 v0, p4

    .line 161
    iput-object v0, v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 162
    iget-object v6, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChange:Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    .line 163
    iput-object v6, v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->onValueChange:Lkotlin/jvm/functions/Function1;

    .line 164
    iput-object v2, v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 165
    iget-object v6, v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->valueState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 166
    new-instance v6, Landroidx/compose/ui/text/TextRange;

    invoke-direct {v6, v14, v15}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 167
    iput-object v6, v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->latestSelection:Landroidx/compose/ui/text/TextRange;

    .line 168
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalClipboard:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 169
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/platform/Clipboard;

    .line 170
    iput-object v6, v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->clipboard:Landroidx/compose/ui/platform/Clipboard;

    .line 171
    iput-object v9, v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 172
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalTextToolbar:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 173
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/platform/TextToolbar;

    .line 174
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 175
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 176
    iput-object v6, v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    move-object/from16 v6, v16

    .line 177
    iput-object v6, v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    xor-int/lit8 v14, p14, 0x1

    .line 178
    iget-object v15, v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->editable$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 179
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 180
    iget-object v0, v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->enabled$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 181
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    const v0, 0x753a5109

    .line 182
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 183
    iget-object v0, v11, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 184
    iget-object v0, v0, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 185
    sget-object v15, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->LocalTextClassifierCoroutineContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    const v15, 0x19a9604b

    .line 186
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 187
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v15, v1, :cond_44

    const/4 v1, 0x0

    .line 188
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v16, v4

    const/4 v3, 0x0

    goto :goto_24

    .line 189
    :cond_44
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 190
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    .line 191
    check-cast v1, Landroid/content/Context;

    .line 192
    sget-object v15, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->LocalTextClassifierCoroutineContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 193
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    .line 194
    check-cast v15, Lkotlin/coroutines/CoroutineContext;

    .line 195
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v25

    or-int v16, v16, v25

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v25

    or-int v16, v16, v25

    .line 196
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v16, :cond_46

    if-ne v3, v5, :cond_45

    goto :goto_22

    :cond_45
    move-object/from16 v16, v4

    goto :goto_23

    .line 197
    :cond_46
    :goto_22
    sget-object v3, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->PlatformSelectionBehaviorsFactory:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt$$ExternalSyntheticLambda1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    new-instance v3, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    move-object/from16 v16, v4

    sget-object v4, Landroidx/compose/foundation/text/selection/SelectedTextType;->EditableText:Landroidx/compose/foundation/text/selection/SelectedTextType;

    invoke-direct {v3, v15, v1, v4, v0}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;-><init>(Lkotlin/coroutines/CoroutineContext;Landroid/content/Context;Landroidx/compose/foundation/text/selection/SelectedTextType;Landroidx/compose/ui/text/intl/LocaleList;)V

    .line 199
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 200
    :goto_23
    check-cast v3, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    const/4 v1, 0x0

    .line 201
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 202
    :goto_24
    iput-object v3, v8, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 203
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 204
    invoke-virtual {v2}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    .line 205
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    move/from16 v15, v19

    and-int/lit16 v1, v15, 0x1c00

    const/16 v3, 0x800

    if-ne v1, v3, :cond_47

    const/4 v4, 0x1

    goto :goto_25

    :cond_47
    const/4 v4, 0x0

    :goto_25
    or-int/2addr v0, v4

    and-int v4, v15, v20

    const/16 v3, 0x4000

    if-ne v4, v3, :cond_48

    const/4 v3, 0x1

    goto :goto_26

    :cond_48
    const/4 v3, 0x0

    :goto_26
    or-int/2addr v0, v3

    move-object/from16 v3, v22

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    move/from16 v4, v55

    const/4 v11, 0x4

    if-ne v4, v11, :cond_49

    const/16 v19, 0x1

    goto :goto_27

    :cond_49
    const/16 v19, 0x0

    :goto_27
    or-int v0, v0, v19

    and-int/lit8 v19, v15, 0x70

    xor-int/lit8 v11, v19, 0x30

    const/16 v13, 0x20

    if-le v11, v13, :cond_4b

    move-object/from16 v13, p11

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4a

    goto :goto_28

    :cond_4a
    move/from16 v19, v0

    move/from16 v20, v1

    goto :goto_29

    :cond_4b
    move-object/from16 v13, p11

    :goto_28
    move/from16 v19, v0

    and-int/lit8 v0, v15, 0x30

    move/from16 v20, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4c

    :goto_29
    const/4 v0, 0x1

    goto :goto_2a

    :cond_4c
    const/4 v0, 0x0

    :goto_2a
    or-int v0, v19, v0

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 206
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_4e

    if-ne v1, v5, :cond_4d

    goto :goto_2b

    :cond_4d
    move-object v0, v1

    move-object v1, v2

    move/from16 v32, v4

    move-object v2, v8

    move-object/from16 v22, v10

    move-object v4, v13

    move/from16 v19, v15

    move-object/from16 v18, v16

    move/from16 v13, v20

    move/from16 v8, p13

    move-object v15, v5

    move-object v10, v9

    move/from16 v16, v14

    move-object v14, v6

    move-object v9, v7

    move-object/from16 v7, p0

    goto :goto_2c

    .line 207
    :cond_4e
    :goto_2b
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda5;

    move-object v1, v2

    move/from16 v32, v4

    move/from16 v19, v15

    move-object/from16 v18, v16

    move/from16 v2, p13

    move-object v4, v3

    move-object v15, v5

    move/from16 v16, v14

    move-object/from16 v5, p0

    move/from16 v3, p14

    move-object v14, v6

    move-object v6, v13

    move/from16 v13, v20

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;ZZLandroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;)V

    move-object v3, v8

    move v8, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object/from16 v22, v10

    move-object v10, v9

    move-object v9, v7

    move-object v7, v5

    .line 208
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 209
    :goto_2c
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 210
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v5, v14}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 211
    invoke-static {v6, v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v6, p6

    .line 212
    invoke-static {v0, v8, v6}, Landroidx/compose/foundation/ImageKt;->focusable(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v8, :cond_4f

    if-nez p14, :cond_4f

    const/16 v23, 0x1

    :goto_2d
    move-object/from16 v25, v0

    goto :goto_2e

    :cond_4f
    const/16 v23, 0x0

    goto :goto_2d

    .line 213
    :goto_2e
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v12}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    .line 214
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v23

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    or-int v23, v23, v26

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    or-int v23, v23, v26

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    or-int v23, v23, v26

    move-object/from16 v26, v0

    const/16 v0, 0x20

    if-le v11, v0, :cond_51

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_50

    goto :goto_2f

    :cond_50
    move-object/from16 v27, v1

    goto :goto_30

    :cond_51
    :goto_2f
    move-object/from16 v27, v1

    and-int/lit8 v1, v19, 0x30

    if-ne v1, v0, :cond_52

    :goto_30
    const/4 v0, 0x1

    goto :goto_31

    :cond_52
    const/4 v0, 0x0

    :goto_31
    or-int v0, v23, v0

    .line 215
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_54

    if-ne v1, v15, :cond_53

    goto :goto_32

    :cond_53
    move-object v0, v1

    move-object/from16 v23, v14

    move-object/from16 v58, v25

    move-object/from16 v1, v27

    move-object v14, v5

    move/from16 v25, v11

    move-object v11, v6

    goto :goto_33

    .line 216
    :cond_54
    :goto_32
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    const/4 v6, 0x0

    move-object/from16 v23, v14

    move-object/from16 v58, v25

    move-object/from16 v1, v27

    move-object v14, v5

    move/from16 v25, v11

    move-object/from16 v11, p6

    move-object v5, v4

    move-object v4, v2

    move-object/from16 v2, v26

    invoke-direct/range {v0 .. v6}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/coroutines/Continuation;)V

    move-object v2, v4

    .line 217
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 218
    :goto_33
    check-cast v0, Lkotlin/jvm/functions/Function2;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v12, v4, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 219
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;I)V

    const v4, 0x845fed

    .line 220
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroidx/compose/material3/ExposedDropdownMenuKt$expandable$1;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v0}, Landroidx/compose/material3/ExposedDropdownMenuKt$expandable$1;-><init>(ILjava/lang/Object;)V

    .line 221
    new-instance v0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/4 v8, 0x6

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6, v5, v8}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    move-object v4, v0

    .line 222
    new-instance v0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;

    move-object v5, v2

    move-object/from16 v59, v3

    move-object v6, v9

    move-object/from16 v2, v23

    move/from16 v3, p14

    move-object v9, v4

    move/from16 v4, p13

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/focus/FocusRequester;ZZLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/OffsetMapping;)V

    move-object v2, v5

    if-eqz p13, :cond_55

    .line 223
    new-instance v3, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0, v11}, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v9, v3}, Landroidx/compose/ui/AbsoluteAlignment;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_34

    :cond_55
    const/4 v4, 0x2

    move-object v0, v9

    .line 224
    :goto_34
    iget-object v3, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->mouseSelectionObserver:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 225
    iget-object v5, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->touchSelectionObserver:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;

    .line 226
    new-instance v9, Landroidx/compose/material3/ExposedDropdownMenuKt$expandable$1;

    invoke-direct {v9, v4, v2}, Landroidx/compose/material3/ExposedDropdownMenuKt$expandable$1;-><init>(ILjava/lang/Object;)V

    .line 227
    new-instance v4, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/4 v8, 0x4

    invoke-direct {v4, v3, v5, v9, v8}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    invoke-interface {v0, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 228
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerIcon;->Companion:Landroidx/compose/ui/input/pointer/PointerIcon$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/input/pointer/PointerId;->pointerIconText:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    invoke-static {v0, v3}, Landroidx/compose/ui/input/pointer/PointerId;->pointerHoverIcon$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/AndroidPointerIconType;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 229
    new-instance v0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    const/4 v3, 0x6

    invoke-direct {v0, v1, v7, v6, v3}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v14, v0}, Landroidx/compose/ui/draw/ClipKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v20

    .line 230
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x800

    if-ne v13, v3, :cond_56

    const/4 v3, 0x1

    goto :goto_35

    :cond_56
    const/4 v3, 0x0

    :goto_35
    or-int/2addr v0, v3

    move-object/from16 v3, v54

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    move/from16 v13, v32

    const/4 v4, 0x4

    if-ne v13, v4, :cond_57

    const/4 v4, 0x1

    goto :goto_36

    :cond_57
    const/4 v4, 0x0

    :goto_36
    or-int/2addr v0, v4

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 231
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_59

    if-ne v4, v15, :cond_58

    goto :goto_37

    :cond_58
    move-object/from16 v29, v3

    const/16 v56, 0x2

    goto :goto_38

    .line 232
    :cond_59
    :goto_37
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda6;

    move-object v4, v2

    move-object v5, v7

    const/16 v56, 0x2

    move/from16 v2, p13

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;ZLandroidx/compose/ui/platform/WindowInfo;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    move-object/from16 v29, v3

    move-object v2, v4

    .line 233
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v4, v0

    .line 234
    :goto_38
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v4}, Landroidx/compose/ui/layout/RulerKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v27

    move-object/from16 v0, p4

    move-object v7, v6

    .line 235
    instance-of v6, v0, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    .line 236
    new-instance v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifier;

    move-object/from16 v9, p11

    move/from16 v5, p13

    move/from16 v4, p14

    move-object v3, v1

    move-object/from16 v61, v8

    move-object/from16 v60, v10

    move-object/from16 v10, v23

    move-object/from16 v1, v34

    move/from16 v11, v56

    move-object v8, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifier;-><init>(Landroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/LegacyTextFieldState;ZZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/focus/FocusRequester;)V

    move-object v1, v3

    move v10, v5

    move-object v6, v9

    move-object v9, v0

    if-eqz v10, :cond_5b

    if-nez p14, :cond_5b

    .line 237
    move-object/from16 v5, v29

    check-cast v5, Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 238
    iget-object v0, v5, Landroidx/compose/ui/platform/LazyWindowInfo;->isWindowFocused$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 239
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 240
    iget-object v0, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->selectionPreviewHighlightRange$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 241
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextRange;

    .line 242
    iget-wide v2, v0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 243
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 244
    iget-object v0, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->deletionPreviewHighlightRange$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 245
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextRange;

    .line 246
    iget-wide v2, v0, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 247
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_39

    :cond_5a
    const/4 v0, 0x1

    goto :goto_3a

    :cond_5b
    :goto_39
    const/4 v0, 0x0

    :goto_3a
    if-eqz v0, :cond_5c

    .line 248
    new-instance v0, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object v2, v1

    move-object v4, v7

    move-object/from16 v1, p7

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v1, v2

    invoke-static {v14, v0}, Landroidx/compose/ui/AbsoluteAlignment;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    move-object/from16 v23, v5

    goto :goto_3b

    :cond_5c
    move-object/from16 v23, v14

    .line 249
    :goto_3b
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 250
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_5d

    if-ne v2, v15, :cond_5e

    .line 251
    :cond_5d
    new-instance v2, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;

    const/4 v0, 0x0

    invoke-direct {v2, v8, v0}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 252
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 253
    :cond_5e
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v2, v12}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 254
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v3, v59

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    const/4 v4, 0x4

    if-ne v13, v4, :cond_5f

    const/4 v2, 0x1

    goto :goto_3c

    :cond_5f
    const/4 v2, 0x0

    :goto_3c
    or-int/2addr v0, v2

    move/from16 v2, v25

    const/16 v13, 0x20

    if-le v2, v13, :cond_60

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    :cond_60
    and-int/lit8 v2, v19, 0x30

    if-ne v2, v13, :cond_62

    :cond_61
    const/4 v2, 0x1

    goto :goto_3d

    :cond_62
    const/4 v2, 0x0

    :goto_3d
    or-int/2addr v0, v2

    .line 255
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_64

    if-ne v2, v15, :cond_63

    goto :goto_3e

    :cond_63
    move-object v13, v6

    goto :goto_3f

    .line 256
    :cond_64
    :goto_3e
    new-instance v0, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda0;

    const/4 v5, 0x6

    move-object v2, v3

    move-object v4, v6

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v13, v4

    .line 257
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v2, v0

    .line 258
    :goto_3f
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v2, v12}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    move-object v2, v8

    .line 259
    iget-object v8, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChange:Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    move/from16 v0, p9

    const/4 v3, 0x1

    if-ne v0, v3, :cond_65

    move v5, v3

    :goto_40
    move-object v4, v9

    goto :goto_41

    :cond_65
    const/4 v5, 0x0

    goto :goto_40

    .line 260
    :goto_41
    iget v9, v13, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    .line 261
    new-instance v0, Landroidx/compose/foundation/text/TextFieldKeyInputKt$$ExternalSyntheticLambda0;

    move/from16 v21, v3

    move-object/from16 v62, v4

    move-object v6, v7

    move/from16 v4, v16

    move-object/from16 v7, v18

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/TextFieldKeyInputKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;Lkotlin/jvm/functions/Function1;I)V

    move-object v7, v6

    .line 262
    new-instance v3, Landroidx/compose/ui/ComposedModifier;

    invoke-direct {v3, v0}, Landroidx/compose/ui/ComposedModifier;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 263
    iget v0, v13, Landroidx/compose/ui/text/input/ImeOptions;->keyboardType:I

    const/4 v4, 0x7

    if-ne v0, v4, :cond_66

    goto :goto_42

    :cond_66
    const/16 v4, 0x8

    if-ne v0, v4, :cond_67

    :goto_42
    const/4 v0, 0x0

    goto :goto_43

    :cond_67
    move/from16 v0, v21

    .line 264
    :goto_43
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 265
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v5

    move-object/from16 v6, v53

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    .line 266
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_68

    if-ne v8, v15, :cond_69

    .line 267
    :cond_68
    new-instance v8, Lcom/fsck/k9/ui/messagelist/MessageListViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v8, v11, v6, v0}, Lcom/fsck/k9/ui/messagelist/MessageListViewModel$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Z)V

    .line 268
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 269
    :cond_69
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-static {v4, v0, v8}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingKt;->stylusHandwriting(ZZLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 270
    sget-object v4, Landroidx/compose/foundation/text/AutofillHighlightKt;->LocalAutofillHighlightBrush:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 271
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Brush;

    .line 272
    sget-object v5, Landroidx/compose/foundation/text/AutofillHighlightKt;->LocalAutofillHighlightColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 273
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/graphics/Color;

    .line 274
    iget-wide v8, v5, Landroidx/compose/ui/graphics/Color;->value:J

    const v5, 0x4dffeb3b    # 5.3670077E8f

    move-object/from16 v16, v12

    .line 275
    invoke-static {v5}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v11

    .line 276
    invoke-static {v8, v9, v11, v12}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 277
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    invoke-direct {v4, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    :cond_6a
    move-object/from16 v12, v16

    .line 278
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    .line 279
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_6b

    if-ne v8, v15, :cond_6c

    .line 280
    :cond_6b
    new-instance v8, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    const/4 v5, 0x5

    invoke-direct {v8, v5, v1, v4}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 282
    :cond_6c
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v8}, Landroidx/compose/ui/draw/ClipKt;->drawWithContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    move-object/from16 v5, p2

    .line 283
    invoke-interface {v5, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 284
    invoke-static {v4, v6, v1, v2}, Landroidx/compose/foundation/text/input/internal/HandwritingGesture_androidKt;->legacyTextInputAdapter(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 285
    invoke-interface {v4, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v4, v58

    .line 286
    invoke-interface {v0, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 287
    new-instance v4, Landroidx/compose/runtime/Latch$await$2$2;

    move-object/from16 v6, v28

    const/4 v8, 0x3

    invoke-direct {v4, v8, v6, v1}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v4}, Landroidx/compose/ui/input/key/Key_androidKt;->onPreviewKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 288
    new-instance v4, Landroidx/compose/runtime/Latch$await$2$2;

    const/4 v11, 0x2

    invoke-direct {v4, v11, v1, v2}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v4}, Landroidx/compose/ui/input/key/Key_androidKt;->onPreviewKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 289
    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 290
    new-instance v3, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;

    move-object/from16 v6, p6

    move-object/from16 v8, p16

    invoke-direct {v3, v8, v10, v6}, Landroidx/compose/foundation/text/TextFieldScrollKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/TextFieldScrollerPosition;ZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)V

    .line 291
    new-instance v4, Landroidx/compose/ui/ComposedModifier;

    invoke-direct {v4, v3}, Landroidx/compose/ui/ComposedModifier;-><init>(Lkotlin/jvm/functions/Function3;)V

    invoke-interface {v0, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v3, v61

    .line 292
    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v4, v62

    .line 293
    invoke-interface {v0, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 294
    new-instance v3, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/LegacyTextFieldState;I)V

    invoke-static {v0, v3}, Landroidx/compose/ui/layout/RulerKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 295
    new-instance v3, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;

    const/16 v9, 0xc

    move-object/from16 v11, v60

    invoke-direct {v3, v9, v2, v11}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v3}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;->addTextContextMenuComponentsWithContext(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v10, :cond_6d

    .line 296
    invoke-virtual {v1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 297
    iget-object v3, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->isInTouchMode$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 298
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 299
    move-object/from16 v3, v29

    check-cast v3, Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 300
    iget-object v3, v3, Landroidx/compose/ui/platform/LazyWindowInfo;->isWindowFocused$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 301
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6d

    move/from16 v15, v21

    goto :goto_44

    :cond_6d
    move v15, v4

    :goto_44
    if-eqz v15, :cond_6f

    .line 302
    invoke-static {}, Landroidx/compose/foundation/Magnifier_androidKt;->isPlatformMagnifierSupported$default()Z

    move-result v3

    if-nez v3, :cond_6e

    goto :goto_45

    .line 303
    :cond_6e
    new-instance v3, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;

    const/4 v11, 0x2

    invoke-direct {v3, v11, v2}, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {v14, v3}, Landroidx/compose/ui/AbsoluteAlignment;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object v14, v3

    :cond_6f
    :goto_45
    move-object v3, v0

    .line 304
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda2;

    move-object/from16 v17, p5

    move/from16 v5, p9

    move/from16 v4, p10

    move/from16 v16, p14

    move-object/from16 v64, v3

    move-object/from16 v18, v7

    move-object v6, v8

    move-object/from16 v63, v12

    move-object v12, v14

    move-object/from16 v10, v20

    move-object/from16 v13, v22

    move-object/from16 v9, v23

    move-object/from16 v19, v24

    move-object/from16 v11, v27

    move-object/from16 v7, p0

    move-object/from16 v3, p3

    move-object/from16 v8, p4

    move-object v14, v2

    move-object v2, v1

    move-object/from16 v1, p15

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/TextStyle;IILandroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;)V

    move-object v2, v14

    const v1, -0x308d4209

    move-object/from16 v12, v63

    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v1, 0x180

    move-object/from16 v3, v64

    invoke-static {v3, v2, v0, v12, v1}, Landroidx/compose/foundation/text/BasicTextKt;->CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_46

    .line 305
    :cond_70
    const-string v0, "no recompose scope found"

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    return-void

    :cond_71
    move-object v12, v9

    .line 306
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 307
    :goto_46
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_72

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

    move/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v65, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/SolidColor;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    move-object/from16 v1, v65

    .line 308
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_72
    return-void
.end method

.method public static final CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x795d8dec

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p4

    .line 19
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x20

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v1, 0x10

    .line 30
    .line 31
    :goto_1
    or-int/2addr v0, v1

    .line 32
    and-int/lit16 v1, v0, 0x93

    .line 33
    .line 34
    const/16 v3, 0x92

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    if-eq v1, v3, :cond_2

    .line 38
    .line 39
    move v1, v4

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 42
    :goto_2
    and-int/lit8 v3, v0, 0x1

    .line 43
    .line 44
    invoke-virtual {p3, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 51
    .line 52
    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-wide v5, p3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 57
    .line 58
    ushr-long v2, v5, v2

    .line 59
    .line 60
    xor-long/2addr v2, v5

    .line 61
    long-to-int v2, v2

    .line 62
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {p3, p0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 71
    .line 72
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 76
    .line 77
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 78
    .line 79
    .line 80
    iget-boolean v7, p3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 81
    .line 82
    if-eqz v7, :cond_3

    .line 83
    .line 84
    invoke-virtual {p3, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 89
    .line 90
    .line 91
    :goto_3
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 92
    .line 93
    invoke-static {p3, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 94
    .line 95
    .line 96
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 97
    .line 98
    invoke-static {p3, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 106
    .line 107
    invoke-static {p3, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 108
    .line 109
    .line 110
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 111
    .line 112
    invoke-static {p3, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 113
    .line 114
    .line 115
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 116
    .line 117
    invoke-static {p3, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 118
    .line 119
    .line 120
    shr-int/lit8 v0, v0, 0x3

    .line 121
    .line 122
    and-int/lit8 v0, v0, 0x7e

    .line 123
    .line 124
    invoke-static {p1, p2, p3, v0}, Landroidx/compose/foundation/text/BasicTextKt;->ContextMenuArea(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_4
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 132
    .line 133
    .line 134
    :goto_4
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    if-eqz p3, :cond_5

    .line 139
    .line 140
    new-instance v0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 141
    .line 142
    const/4 v5, 0x2

    .line 143
    move-object v1, p0

    .line 144
    move-object v2, p1

    .line 145
    move-object v3, p2

    .line 146
    move v4, p4

    .line 147
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 148
    .line 149
    .line 150
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 151
    .line 152
    :cond_5
    return-void
.end method

.method public static final LayoutWithLinksAndInlineContent-11Od_4g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
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
    move/from16 v0, p13

    .line 14
    .line 15
    move/from16 v1, p14

    .line 16
    .line 17
    move-object/from16 v7, p12

    .line 18
    .line 19
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    const v8, -0x7e46da9f

    .line 22
    .line 23
    .line 24
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    .line 27
    and-int/lit8 v8, v0, 0x6

    .line 28
    .line 29
    if-nez v8, :cond_1

    .line 30
    .line 31
    move-object/from16 v8, p0

    .line 32
    .line 33
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v12

    .line 37
    if-eqz v12, :cond_0

    .line 38
    .line 39
    const/4 v12, 0x4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v12, 0x2

    .line 42
    :goto_0
    or-int/2addr v12, v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object/from16 v8, p0

    .line 45
    .line 46
    move v12, v0

    .line 47
    :goto_1
    and-int/lit8 v13, v0, 0x30

    .line 48
    .line 49
    if-nez v13, :cond_3

    .line 50
    .line 51
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v13

    .line 55
    if-eqz v13, :cond_2

    .line 56
    .line 57
    const/16 v13, 0x20

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/16 v13, 0x10

    .line 61
    .line 62
    :goto_2
    or-int/2addr v12, v13

    .line 63
    :cond_3
    and-int/lit16 v13, v0, 0x180

    .line 64
    .line 65
    const/16 v16, 0x80

    .line 66
    .line 67
    if-nez v13, :cond_5

    .line 68
    .line 69
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    if-eqz v13, :cond_4

    .line 74
    .line 75
    const/16 v13, 0x100

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    move/from16 v13, v16

    .line 79
    .line 80
    :goto_3
    or-int/2addr v12, v13

    .line 81
    :cond_5
    and-int/lit16 v13, v0, 0xc00

    .line 82
    .line 83
    const/16 v17, 0x400

    .line 84
    .line 85
    const/16 v18, 0x800

    .line 86
    .line 87
    if-nez v13, :cond_7

    .line 88
    .line 89
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    if-eqz v13, :cond_6

    .line 94
    .line 95
    move/from16 v13, v18

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_6
    move/from16 v13, v17

    .line 99
    .line 100
    :goto_4
    or-int/2addr v12, v13

    .line 101
    :cond_7
    and-int/lit16 v13, v0, 0x6000

    .line 102
    .line 103
    const/16 v19, 0x2000

    .line 104
    .line 105
    const/16 v20, 0x4000

    .line 106
    .line 107
    if-nez v13, :cond_9

    .line 108
    .line 109
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    if-eqz v13, :cond_8

    .line 114
    .line 115
    move/from16 v13, v20

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_8
    move/from16 v13, v19

    .line 119
    .line 120
    :goto_5
    or-int/2addr v12, v13

    .line 121
    :cond_9
    const/high16 v13, 0x30000

    .line 122
    .line 123
    and-int/2addr v13, v0

    .line 124
    if-nez v13, :cond_b

    .line 125
    .line 126
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v13

    .line 130
    if-eqz v13, :cond_a

    .line 131
    .line 132
    const/high16 v13, 0x20000

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_a
    const/high16 v13, 0x10000

    .line 136
    .line 137
    :goto_6
    or-int/2addr v12, v13

    .line 138
    :cond_b
    const/high16 v13, 0x180000

    .line 139
    .line 140
    and-int/2addr v13, v0

    .line 141
    if-nez v13, :cond_d

    .line 142
    .line 143
    move/from16 v13, p6

    .line 144
    .line 145
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 146
    .line 147
    .line 148
    move-result v21

    .line 149
    if-eqz v21, :cond_c

    .line 150
    .line 151
    const/high16 v21, 0x100000

    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_c
    const/high16 v21, 0x80000

    .line 155
    .line 156
    :goto_7
    or-int v12, v12, v21

    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_d
    move/from16 v13, p6

    .line 160
    .line 161
    :goto_8
    const/high16 v21, 0xc00000

    .line 162
    .line 163
    and-int v21, v0, v21

    .line 164
    .line 165
    move/from16 v14, p7

    .line 166
    .line 167
    if-nez v21, :cond_f

    .line 168
    .line 169
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 170
    .line 171
    .line 172
    move-result v22

    .line 173
    if-eqz v22, :cond_e

    .line 174
    .line 175
    const/high16 v22, 0x800000

    .line 176
    .line 177
    goto :goto_9

    .line 178
    :cond_e
    const/high16 v22, 0x400000

    .line 179
    .line 180
    :goto_9
    or-int v12, v12, v22

    .line 181
    .line 182
    :cond_f
    const/high16 v22, 0x6000000

    .line 183
    .line 184
    and-int v22, v0, v22

    .line 185
    .line 186
    move/from16 v9, p8

    .line 187
    .line 188
    if-nez v22, :cond_11

    .line 189
    .line 190
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 191
    .line 192
    .line 193
    move-result v23

    .line 194
    if-eqz v23, :cond_10

    .line 195
    .line 196
    const/high16 v23, 0x4000000

    .line 197
    .line 198
    goto :goto_a

    .line 199
    :cond_10
    const/high16 v23, 0x2000000

    .line 200
    .line 201
    :goto_a
    or-int v12, v12, v23

    .line 202
    .line 203
    :cond_11
    const/high16 v23, 0x30000000

    .line 204
    .line 205
    and-int v23, v0, v23

    .line 206
    .line 207
    move/from16 v10, p9

    .line 208
    .line 209
    if-nez v23, :cond_13

    .line 210
    .line 211
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 212
    .line 213
    .line 214
    move-result v24

    .line 215
    if-eqz v24, :cond_12

    .line 216
    .line 217
    const/high16 v24, 0x20000000

    .line 218
    .line 219
    goto :goto_b

    .line 220
    :cond_12
    const/high16 v24, 0x10000000

    .line 221
    .line 222
    :goto_b
    or-int v12, v12, v24

    .line 223
    .line 224
    :cond_13
    and-int/lit8 v24, v1, 0x6

    .line 225
    .line 226
    if-nez v24, :cond_15

    .line 227
    .line 228
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v24

    .line 232
    if-eqz v24, :cond_14

    .line 233
    .line 234
    const/16 v24, 0x4

    .line 235
    .line 236
    goto :goto_c

    .line 237
    :cond_14
    const/16 v24, 0x2

    .line 238
    .line 239
    :goto_c
    or-int v24, v1, v24

    .line 240
    .line 241
    goto :goto_d

    .line 242
    :cond_15
    move/from16 v24, v1

    .line 243
    .line 244
    :goto_d
    and-int/lit8 v25, v1, 0x30

    .line 245
    .line 246
    const/4 v15, 0x0

    .line 247
    if-nez v25, :cond_17

    .line 248
    .line 249
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v25

    .line 253
    if-eqz v25, :cond_16

    .line 254
    .line 255
    const/16 v21, 0x20

    .line 256
    .line 257
    goto :goto_e

    .line 258
    :cond_16
    const/16 v21, 0x10

    .line 259
    .line 260
    :goto_e
    or-int v24, v24, v21

    .line 261
    .line 262
    :cond_17
    and-int/lit16 v0, v1, 0x180

    .line 263
    .line 264
    if-nez v0, :cond_19

    .line 265
    .line 266
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_18

    .line 271
    .line 272
    const/16 v16, 0x100

    .line 273
    .line 274
    :cond_18
    or-int v24, v24, v16

    .line 275
    .line 276
    :cond_19
    and-int/lit16 v0, v1, 0xc00

    .line 277
    .line 278
    if-nez v0, :cond_1b

    .line 279
    .line 280
    move-object/from16 v0, p11

    .line 281
    .line 282
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v16

    .line 286
    if-eqz v16, :cond_1a

    .line 287
    .line 288
    move/from16 v17, v18

    .line 289
    .line 290
    :cond_1a
    or-int v24, v24, v17

    .line 291
    .line 292
    goto :goto_f

    .line 293
    :cond_1b
    move-object/from16 v0, p11

    .line 294
    .line 295
    :goto_f
    and-int/lit16 v15, v1, 0x6000

    .line 296
    .line 297
    if-nez v15, :cond_1e

    .line 298
    .line 299
    const v15, 0x8000

    .line 300
    .line 301
    .line 302
    and-int/2addr v15, v1

    .line 303
    if-nez v15, :cond_1c

    .line 304
    .line 305
    const/4 v15, 0x0

    .line 306
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v16

    .line 310
    move/from16 v17, v16

    .line 311
    .line 312
    goto :goto_10

    .line 313
    :cond_1c
    const/4 v15, 0x0

    .line 314
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v17

    .line 318
    :goto_10
    if-eqz v17, :cond_1d

    .line 319
    .line 320
    move/from16 v19, v20

    .line 321
    .line 322
    :cond_1d
    or-int v24, v24, v19

    .line 323
    .line 324
    :cond_1e
    move/from16 v15, v24

    .line 325
    .line 326
    const v17, 0x12492493

    .line 327
    .line 328
    .line 329
    and-int v0, v12, v17

    .line 330
    .line 331
    const v1, 0x12492492

    .line 332
    .line 333
    .line 334
    const/4 v4, 0x0

    .line 335
    if-ne v0, v1, :cond_20

    .line 336
    .line 337
    and-int/lit16 v0, v15, 0x2493

    .line 338
    .line 339
    const/16 v1, 0x2492

    .line 340
    .line 341
    if-eq v0, v1, :cond_1f

    .line 342
    .line 343
    goto :goto_11

    .line 344
    :cond_1f
    move v0, v4

    .line 345
    goto :goto_12

    .line 346
    :cond_20
    :goto_11
    const/4 v0, 0x1

    .line 347
    :goto_12
    and-int/lit8 v1, v12, 0x1

    .line 348
    .line 349
    invoke-virtual {v7, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_46

    .line 354
    .line 355
    invoke-static {v2}, Landroidx/sqlite/SQLite;->hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 360
    .line 361
    if-eqz v0, :cond_24

    .line 362
    .line 363
    const v0, 0x8ae5063

    .line 364
    .line 365
    .line 366
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 367
    .line 368
    .line 369
    and-int/lit8 v0, v12, 0x70

    .line 370
    .line 371
    const/16 v15, 0x20

    .line 372
    .line 373
    if-ne v0, v15, :cond_21

    .line 374
    .line 375
    const/4 v0, 0x1

    .line 376
    goto :goto_13

    .line 377
    :cond_21
    move v0, v4

    .line 378
    :goto_13
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v15

    .line 382
    if-nez v0, :cond_22

    .line 383
    .line 384
    if-ne v15, v1, :cond_23

    .line 385
    .line 386
    :cond_22
    new-instance v15, Landroidx/compose/foundation/text/TextLinkScope;

    .line 387
    .line 388
    invoke-direct {v15, v2}, Landroidx/compose/foundation/text/TextLinkScope;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    :cond_23
    check-cast v15, Landroidx/compose/foundation/text/TextLinkScope;

    .line 395
    .line 396
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 397
    .line 398
    .line 399
    move-object v0, v15

    .line 400
    goto :goto_14

    .line 401
    :cond_24
    const v0, 0x8af50dc

    .line 402
    .line 403
    .line 404
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 408
    .line 409
    .line 410
    const/4 v0, 0x0

    .line 411
    :goto_14
    invoke-static {v2}, Landroidx/sqlite/SQLite;->hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z

    .line 412
    .line 413
    .line 414
    move-result v15

    .line 415
    if-eqz v15, :cond_28

    .line 416
    .line 417
    const v15, 0x8b25723

    .line 418
    .line 419
    .line 420
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 421
    .line 422
    .line 423
    and-int/lit8 v15, v12, 0x70

    .line 424
    .line 425
    const/16 v4, 0x20

    .line 426
    .line 427
    if-ne v15, v4, :cond_25

    .line 428
    .line 429
    const/4 v4, 0x1

    .line 430
    goto :goto_15

    .line 431
    :cond_25
    const/4 v4, 0x0

    .line 432
    :goto_15
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v15

    .line 436
    or-int/2addr v4, v15

    .line 437
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v15

    .line 441
    if-nez v4, :cond_26

    .line 442
    .line 443
    if-ne v15, v1, :cond_27

    .line 444
    .line 445
    :cond_26
    new-instance v15, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 446
    .line 447
    const/16 v4, 0xe

    .line 448
    .line 449
    invoke-direct {v15, v4, v0, v2}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    :cond_27
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 456
    .line 457
    const/4 v4, 0x0

    .line 458
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 459
    .line 460
    .line 461
    goto :goto_17

    .line 462
    :cond_28
    const v4, 0x8b3d321

    .line 463
    .line 464
    .line 465
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 466
    .line 467
    .line 468
    and-int/lit8 v4, v12, 0x70

    .line 469
    .line 470
    const/16 v15, 0x20

    .line 471
    .line 472
    if-ne v4, v15, :cond_29

    .line 473
    .line 474
    const/4 v4, 0x1

    .line 475
    goto :goto_16

    .line 476
    :cond_29
    const/4 v4, 0x0

    .line 477
    :goto_16
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v15

    .line 481
    if-nez v4, :cond_2a

    .line 482
    .line 483
    if-ne v15, v1, :cond_2b

    .line 484
    .line 485
    :cond_2a
    new-instance v15, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    .line 486
    .line 487
    const/16 v4, 0x11

    .line 488
    .line 489
    invoke-direct {v15, v4, v2}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    :cond_2b
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 496
    .line 497
    const/4 v4, 0x0

    .line 498
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 499
    .line 500
    .line 501
    :goto_17
    if-eqz p3, :cond_33

    .line 502
    .line 503
    if-eqz v5, :cond_2c

    .line 504
    .line 505
    sget-object v4, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->EmptyInlineContent:Lkotlin/Pair;

    .line 506
    .line 507
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    if-eqz v4, :cond_2d

    .line 512
    .line 513
    :cond_2c
    move-object/from16 v25, v15

    .line 514
    .line 515
    goto/16 :goto_1c

    .line 516
    .line 517
    :cond_2d
    iget-object v4, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 518
    .line 519
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 520
    .line 521
    .line 522
    move-result v4

    .line 523
    iget-object v8, v2, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    .line 524
    .line 525
    if-eqz v8, :cond_30

    .line 526
    .line 527
    new-instance v9, Ljava/util/ArrayList;

    .line 528
    .line 529
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 530
    .line 531
    .line 532
    move-result v10

    .line 533
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 534
    .line 535
    .line 536
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 537
    .line 538
    .line 539
    move-result v10

    .line 540
    const/4 v13, 0x0

    .line 541
    :goto_18
    if-ge v13, v10, :cond_2f

    .line 542
    .line 543
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v20

    .line 547
    move-object/from16 v21, v8

    .line 548
    .line 549
    move-object/from16 v8, v20

    .line 550
    .line 551
    check-cast v8, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 552
    .line 553
    move/from16 v20, v10

    .line 554
    .line 555
    iget-object v10, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 556
    .line 557
    move/from16 v24, v13

    .line 558
    .line 559
    iget v13, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 560
    .line 561
    iget v14, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 562
    .line 563
    move-object/from16 v25, v15

    .line 564
    .line 565
    iget-object v15, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    .line 566
    .line 567
    instance-of v10, v10, Landroidx/compose/ui/text/StringAnnotation;

    .line 568
    .line 569
    if-eqz v10, :cond_2e

    .line 570
    .line 571
    const-string v10, "androidx.compose.foundation.text.inlineContent"

    .line 572
    .line 573
    invoke-virtual {v10, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result v10

    .line 577
    if-eqz v10, :cond_2e

    .line 578
    .line 579
    const/4 v10, 0x0

    .line 580
    invoke-static {v10, v4, v14, v13}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    .line 581
    .line 582
    .line 583
    move-result v27

    .line 584
    if-eqz v27, :cond_2e

    .line 585
    .line 586
    new-instance v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 587
    .line 588
    iget-object v8, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 589
    .line 590
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    check-cast v8, Landroidx/compose/ui/text/StringAnnotation;

    .line 594
    .line 595
    iget-object v8, v8, Landroidx/compose/ui/text/StringAnnotation;->value:Ljava/lang/String;

    .line 596
    .line 597
    invoke-direct {v10, v14, v13, v8, v15}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    :cond_2e
    add-int/lit8 v13, v24, 0x1

    .line 604
    .line 605
    move/from16 v14, p7

    .line 606
    .line 607
    move/from16 v10, v20

    .line 608
    .line 609
    move-object/from16 v8, v21

    .line 610
    .line 611
    move-object/from16 v15, v25

    .line 612
    .line 613
    goto :goto_18

    .line 614
    :cond_2f
    move-object/from16 v25, v15

    .line 615
    .line 616
    goto :goto_19

    .line 617
    :cond_30
    move-object/from16 v25, v15

    .line 618
    .line 619
    sget-object v9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 620
    .line 621
    :goto_19
    new-instance v4, Ljava/util/ArrayList;

    .line 622
    .line 623
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .line 625
    .line 626
    new-instance v8, Ljava/util/ArrayList;

    .line 627
    .line 628
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .line 630
    .line 631
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 632
    .line 633
    .line 634
    move-result v10

    .line 635
    const/4 v13, 0x0

    .line 636
    :goto_1a
    if-ge v13, v10, :cond_32

    .line 637
    .line 638
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v14

    .line 642
    check-cast v14, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 643
    .line 644
    iget-object v15, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 645
    .line 646
    move-object/from16 v20, v9

    .line 647
    .line 648
    iget v9, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 649
    .line 650
    iget v14, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 651
    .line 652
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v15

    .line 656
    check-cast v15, Landroidx/compose/foundation/text/InlineTextContent;

    .line 657
    .line 658
    if-eqz v15, :cond_31

    .line 659
    .line 660
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 661
    .line 662
    move/from16 v21, v10

    .line 663
    .line 664
    iget-object v10, v15, Landroidx/compose/foundation/text/InlineTextContent;->placeholder:Landroidx/compose/ui/text/Placeholder;

    .line 665
    .line 666
    invoke-direct {v5, v14, v9, v10}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 673
    .line 674
    iget-object v10, v15, Landroidx/compose/foundation/text/InlineTextContent;->children:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 675
    .line 676
    invoke-direct {v5, v14, v9, v10}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    goto :goto_1b

    .line 683
    :cond_31
    move/from16 v21, v10

    .line 684
    .line 685
    :goto_1b
    add-int/lit8 v13, v13, 0x1

    .line 686
    .line 687
    move-object/from16 v5, p4

    .line 688
    .line 689
    move-object/from16 v9, v20

    .line 690
    .line 691
    move/from16 v10, v21

    .line 692
    .line 693
    goto :goto_1a

    .line 694
    :cond_32
    new-instance v5, Lkotlin/Pair;

    .line 695
    .line 696
    invoke-direct {v5, v4, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 697
    .line 698
    .line 699
    goto :goto_1d

    .line 700
    :goto_1c
    sget-object v5, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->EmptyInlineContent:Lkotlin/Pair;

    .line 701
    .line 702
    :goto_1d
    const/4 v15, 0x0

    .line 703
    goto :goto_1e

    .line 704
    :cond_33
    move-object/from16 v25, v15

    .line 705
    .line 706
    new-instance v5, Lkotlin/Pair;

    .line 707
    .line 708
    const/4 v15, 0x0

    .line 709
    invoke-direct {v5, v15, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 710
    .line 711
    .line 712
    :goto_1e
    iget-object v4, v5, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 713
    .line 714
    check-cast v4, Ljava/util/List;

    .line 715
    .line 716
    iget-object v5, v5, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 717
    .line 718
    check-cast v5, Ljava/util/List;

    .line 719
    .line 720
    if-eqz p3, :cond_35

    .line 721
    .line 722
    const v8, 0x8b8a5ec

    .line 723
    .line 724
    .line 725
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v8

    .line 732
    if-ne v8, v1, :cond_34

    .line 733
    .line 734
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 735
    .line 736
    .line 737
    move-result-object v8

    .line 738
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 739
    .line 740
    .line 741
    :cond_34
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 742
    .line 743
    const/4 v10, 0x0

    .line 744
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 745
    .line 746
    .line 747
    goto :goto_1f

    .line 748
    :cond_35
    const/4 v10, 0x0

    .line 749
    const v8, 0x8b9fcbc    # 1.11937E-33f

    .line 750
    .line 751
    .line 752
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 756
    .line 757
    .line 758
    move-object v8, v15

    .line 759
    :goto_1f
    if-eqz p3, :cond_38

    .line 760
    .line 761
    const v9, 0x8bb68fd

    .line 762
    .line 763
    .line 764
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    move-result v9

    .line 771
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v10

    .line 775
    if-nez v9, :cond_36

    .line 776
    .line 777
    if-ne v10, v1, :cond_37

    .line 778
    .line 779
    :cond_36
    new-instance v10, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;

    .line 780
    .line 781
    const/4 v9, 0x2

    .line 782
    invoke-direct {v10, v8, v9}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 786
    .line 787
    .line 788
    :cond_37
    move-object v15, v10

    .line 789
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 790
    .line 791
    const/4 v10, 0x0

    .line 792
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 793
    .line 794
    .line 795
    :goto_20
    move-object/from16 v16, v15

    .line 796
    .line 797
    goto :goto_21

    .line 798
    :cond_38
    const/4 v10, 0x0

    .line 799
    const v9, 0x8bc7ffc

    .line 800
    .line 801
    .line 802
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 806
    .line 807
    .line 808
    goto :goto_20

    .line 809
    :goto_21
    shr-int/lit8 v9, v12, 0x3

    .line 810
    .line 811
    const/16 v17, 0xe

    .line 812
    .line 813
    and-int/lit8 v9, v9, 0xe

    .line 814
    .line 815
    invoke-static {v2, v6, v11, v4, v7}, Landroidx/compose/foundation/text/BasicText_androidKt;->BackgroundTextMeasurement(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Landroidx/compose/runtime/Composer;)V

    .line 816
    .line 817
    .line 818
    invoke-interface/range {v25 .. v25}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v10

    .line 822
    check-cast v10, Landroidx/compose/ui/text/AnnotatedString;

    .line 823
    .line 824
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 825
    .line 826
    .line 827
    move-result v13

    .line 828
    and-int/lit16 v12, v12, 0x380

    .line 829
    .line 830
    const/16 v14, 0x100

    .line 831
    .line 832
    if-ne v12, v14, :cond_39

    .line 833
    .line 834
    const/4 v12, 0x1

    .line 835
    goto :goto_22

    .line 836
    :cond_39
    const/4 v12, 0x0

    .line 837
    :goto_22
    or-int/2addr v12, v13

    .line 838
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v13

    .line 842
    if-nez v12, :cond_3a

    .line 843
    .line 844
    if-ne v13, v1, :cond_3b

    .line 845
    .line 846
    :cond_3a
    new-instance v13, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda5;

    .line 847
    .line 848
    const/4 v12, 0x0

    .line 849
    invoke-direct {v13, v0, v3, v12}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Lkotlin/jvm/functions/Function1;I)V

    .line 850
    .line 851
    .line 852
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    :cond_3b
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 856
    .line 857
    move/from16 v12, p8

    .line 858
    .line 859
    move-object/from16 v17, p11

    .line 860
    .line 861
    move-object v15, v4

    .line 862
    move-object v4, v7

    .line 863
    move-object v3, v8

    .line 864
    move/from16 v28, v9

    .line 865
    .line 866
    move-object v7, v10

    .line 867
    move-object v14, v11

    .line 868
    move-object v9, v13

    .line 869
    const/4 v2, 0x4

    .line 870
    const/16 v26, 0x20

    .line 871
    .line 872
    move/from16 v10, p6

    .line 873
    .line 874
    move/from16 v11, p7

    .line 875
    .line 876
    move/from16 v13, p9

    .line 877
    .line 878
    move-object v8, v6

    .line 879
    move-object/from16 v6, p0

    .line 880
    .line 881
    invoke-static/range {v6 .. v17}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-CL7eQgs(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 882
    .line 883
    .line 884
    move-result-object v7

    .line 885
    if-nez p3, :cond_3e

    .line 886
    .line 887
    const v2, 0x8ce8017

    .line 888
    .line 889
    .line 890
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 894
    .line 895
    .line 896
    move-result v2

    .line 897
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v3

    .line 901
    if-nez v2, :cond_3d

    .line 902
    .line 903
    if-ne v3, v1, :cond_3c

    .line 904
    .line 905
    goto :goto_23

    .line 906
    :cond_3c
    const/4 v10, 0x0

    .line 907
    goto :goto_24

    .line 908
    :cond_3d
    :goto_23
    new-instance v3, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda6;

    .line 909
    .line 910
    const/4 v10, 0x0

    .line 911
    invoke-direct {v3, v0, v10}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/foundation/text/TextLinkScope;I)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 915
    .line 916
    .line 917
    :goto_24
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 918
    .line 919
    new-instance v1, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;

    .line 920
    .line 921
    invoke-direct {v1, v3}, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 925
    .line 926
    .line 927
    goto :goto_25

    .line 928
    :cond_3e
    const v6, 0x8d13291

    .line 929
    .line 930
    .line 931
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    move-result v6

    .line 938
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v8

    .line 942
    if-nez v6, :cond_3f

    .line 943
    .line 944
    if-ne v8, v1, :cond_40

    .line 945
    .line 946
    :cond_3f
    new-instance v8, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda6;

    .line 947
    .line 948
    const/4 v6, 0x1

    .line 949
    invoke-direct {v8, v0, v6}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/foundation/text/TextLinkScope;I)V

    .line 950
    .line 951
    .line 952
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 953
    .line 954
    .line 955
    :cond_40
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 956
    .line 957
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 958
    .line 959
    .line 960
    move-result v6

    .line 961
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v9

    .line 965
    if-nez v6, :cond_41

    .line 966
    .line 967
    if-ne v9, v1, :cond_42

    .line 968
    .line 969
    :cond_41
    new-instance v9, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 970
    .line 971
    invoke-direct {v9, v3, v2}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 975
    .line 976
    .line 977
    :cond_42
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 978
    .line 979
    new-instance v1, Landroidx/compose/foundation/text/TextMeasurePolicy;

    .line 980
    .line 981
    const/4 v10, 0x0

    .line 982
    invoke-direct {v1, v10, v8, v9}, Landroidx/compose/foundation/text/TextMeasurePolicy;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 983
    .line 984
    .line 985
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 986
    .line 987
    .line 988
    :goto_25
    iget-wide v2, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 989
    .line 990
    ushr-long v8, v2, v26

    .line 991
    .line 992
    xor-long/2addr v2, v8

    .line 993
    long-to-int v2, v2

    .line 994
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 995
    .line 996
    .line 997
    move-result-object v3

    .line 998
    invoke-static {v4, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 999
    .line 1000
    .line 1001
    move-result-object v6

    .line 1002
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1003
    .line 1004
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1005
    .line 1006
    .line 1007
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1008
    .line 1009
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1010
    .line 1011
    .line 1012
    iget-boolean v8, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1013
    .line 1014
    if-eqz v8, :cond_43

    .line 1015
    .line 1016
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1017
    .line 1018
    .line 1019
    goto :goto_26

    .line 1020
    :cond_43
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1021
    .line 1022
    .line 1023
    :goto_26
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1024
    .line 1025
    invoke-static {v4, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1026
    .line 1027
    .line 1028
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1029
    .line 1030
    invoke-static {v4, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1031
    .line 1032
    .line 1033
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v1

    .line 1037
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1038
    .line 1039
    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1040
    .line 1041
    .line 1042
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1043
    .line 1044
    invoke-static {v4, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 1045
    .line 1046
    .line 1047
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1048
    .line 1049
    invoke-static {v4, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1050
    .line 1051
    .line 1052
    if-nez v0, :cond_44

    .line 1053
    .line 1054
    const v0, -0x19d78e09

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1058
    .line 1059
    .line 1060
    const/4 v10, 0x0

    .line 1061
    :goto_27
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1062
    .line 1063
    .line 1064
    goto :goto_28

    .line 1065
    :cond_44
    const/4 v10, 0x0

    .line 1066
    const v1, -0x115988b6

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v0, v4, v10}, Landroidx/compose/foundation/text/TextLinkScope;->LinksComposables(Landroidx/compose/runtime/Composer;I)V

    .line 1073
    .line 1074
    .line 1075
    goto :goto_27

    .line 1076
    :goto_28
    if-nez v5, :cond_45

    .line 1077
    .line 1078
    const v0, -0x19d6c7af

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1085
    .line 1086
    .line 1087
    move-object/from16 v2, p1

    .line 1088
    .line 1089
    :goto_29
    const/4 v6, 0x1

    .line 1090
    goto :goto_2a

    .line 1091
    :cond_45
    const v0, -0x19d6c7ae

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1095
    .line 1096
    .line 1097
    move-object/from16 v2, p1

    .line 1098
    .line 1099
    move/from16 v0, v28

    .line 1100
    .line 1101
    invoke-static {v2, v5, v4, v0}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->InlineChildren(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1105
    .line 1106
    .line 1107
    goto :goto_29

    .line 1108
    :goto_2a
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1109
    .line 1110
    .line 1111
    goto :goto_2b

    .line 1112
    :cond_46
    move-object v4, v7

    .line 1113
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1114
    .line 1115
    .line 1116
    :goto_2b
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v15

    .line 1120
    if-eqz v15, :cond_47

    .line 1121
    .line 1122
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda9;

    .line 1123
    .line 1124
    move-object/from16 v1, p0

    .line 1125
    .line 1126
    move-object/from16 v3, p2

    .line 1127
    .line 1128
    move/from16 v4, p3

    .line 1129
    .line 1130
    move-object/from16 v5, p4

    .line 1131
    .line 1132
    move-object/from16 v6, p5

    .line 1133
    .line 1134
    move/from16 v7, p6

    .line 1135
    .line 1136
    move/from16 v8, p7

    .line 1137
    .line 1138
    move/from16 v9, p8

    .line 1139
    .line 1140
    move/from16 v10, p9

    .line 1141
    .line 1142
    move-object/from16 v11, p10

    .line 1143
    .line 1144
    move-object/from16 v12, p11

    .line 1145
    .line 1146
    move/from16 v13, p13

    .line 1147
    .line 1148
    move/from16 v14, p14

    .line 1149
    .line 1150
    invoke-direct/range {v0 .. v14}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda9;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;II)V

    .line 1151
    .line 1152
    .line 1153
    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 1154
    .line 1155
    :cond_47
    return-void
.end method

.method public static final SelectionToolbarAndHandles(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x25552d88

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p3

    .line 19
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x20

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v1, 0x10

    .line 30
    .line 31
    :goto_1
    or-int/2addr v0, v1

    .line 32
    and-int/lit8 v1, v0, 0x13

    .line 33
    .line 34
    const/16 v3, 0x12

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    const/4 v5, 0x0

    .line 38
    if-eq v1, v3, :cond_2

    .line 39
    .line 40
    move v1, v4

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move v1, v5

    .line 43
    :goto_2
    and-int/lit8 v3, v0, 0x1

    .line 44
    .line 45
    invoke-virtual {p2, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_d

    .line 50
    .line 51
    if-eqz p1, :cond_c

    .line 52
    .line 53
    const v1, 0x5b336eec

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    invoke-virtual {v3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    iget-object v3, v3, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 71
    .line 72
    iget-object v7, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 73
    .line 74
    if-eqz v7, :cond_3

    .line 75
    .line 76
    iget-boolean v7, v7, Landroidx/compose/foundation/text/LegacyTextFieldState;->isLayoutResultStale:Z

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    move v7, v4

    .line 80
    :goto_3
    if-nez v7, :cond_4

    .line 81
    .line 82
    move-object v6, v3

    .line 83
    :cond_4
    if-nez v6, :cond_5

    .line 84
    .line 85
    const v0, 0x5b336eeb

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_8

    .line 95
    .line 96
    :cond_5
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-wide v7, v1, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 104
    .line 105
    invoke-static {v7, v8}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_8

    .line 110
    .line 111
    const v1, 0x7dc11ac6

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iget-wide v7, v3, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 124
    .line 125
    shr-long v2, v7, v2

    .line 126
    .line 127
    long-to-int v2, v2

    .line 128
    invoke-interface {v1, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 133
    .line 134
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    iget-wide v7, v3, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 139
    .line 140
    const-wide v9, 0xffffffffL

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    and-long/2addr v7, v9

    .line 146
    long-to-int v3, v7

    .line 147
    invoke-interface {v2, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-virtual {v6, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    sub-int/2addr v2, v4

    .line 156
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    invoke-virtual {v6, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 165
    .line 166
    if-eqz v3, :cond_6

    .line 167
    .line 168
    iget-object v3, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->showSelectionHandleStart$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 169
    .line 170
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Ljava/lang/Boolean;

    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-ne v3, v4, :cond_6

    .line 181
    .line 182
    const v3, 0x7dc77b9a

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 186
    .line 187
    .line 188
    shl-int/lit8 v3, v0, 0x6

    .line 189
    .line 190
    and-int/lit16 v3, v3, 0x380

    .line 191
    .line 192
    or-int/lit8 v3, v3, 0x6

    .line 193
    .line 194
    invoke-static {v4, v1, p0, p2, v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_6
    const v1, 0x7dcb87ae

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 208
    .line 209
    .line 210
    :goto_4
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 211
    .line 212
    if-eqz v1, :cond_7

    .line 213
    .line 214
    iget-object v1, v1, Landroidx/compose/foundation/text/LegacyTextFieldState;->showSelectionHandleEnd$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 215
    .line 216
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    check-cast v1, Ljava/lang/Boolean;

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-ne v1, v4, :cond_7

    .line 227
    .line 228
    const v1, 0x7dcccf7b

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 232
    .line 233
    .line 234
    shl-int/lit8 v0, v0, 0x6

    .line 235
    .line 236
    and-int/lit16 v0, v0, 0x380

    .line 237
    .line 238
    or-int/lit8 v0, v0, 0x6

    .line 239
    .line 240
    invoke-static {v5, v2, p0, p2, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_7
    const v0, 0x7dd0d7ce    # 3.4699993E37f

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 254
    .line 255
    .line 256
    :goto_5
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_8
    const v0, 0x7dd12d0e

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 267
    .line 268
    .line 269
    :goto_6
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 270
    .line 271
    if-eqz v0, :cond_b

    .line 272
    .line 273
    iget-object v1, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->showFloatingToolbar$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 274
    .line 275
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->oldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 276
    .line 277
    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 278
    .line 279
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    iget-object v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 286
    .line 287
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 288
    .line 289
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-nez v2, :cond_9

    .line 294
    .line 295
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 296
    .line 297
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_b

    .line 305
    .line 306
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Ljava/lang/Boolean;

    .line 311
    .line 312
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eqz v0, :cond_a

    .line 317
    .line 318
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->showSelectionToolbar$foundation()V

    .line 319
    .line 320
    .line 321
    goto :goto_7

    .line 322
    :cond_a
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation()V

    .line 323
    .line 324
    .line 325
    :cond_b
    :goto_7
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 326
    .line 327
    .line 328
    :goto_8
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 329
    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_c
    const v0, 0x768ee72a

    .line 333
    .line 334
    .line 335
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation()V

    .line 342
    .line 343
    .line 344
    goto :goto_9

    .line 345
    :cond_d
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 346
    .line 347
    .line 348
    :goto_9
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    if-eqz p2, :cond_e

    .line 353
    .line 354
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;

    .line 355
    .line 356
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZI)V

    .line 357
    .line 358
    .line 359
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 360
    .line 361
    :cond_e
    return-void
.end method

.method public static final TextFieldCursorHandle(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v6, p1

    .line 6
    .line 7
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v2, -0x5597ad88

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v3

    .line 25
    :goto_0
    or-int/2addr v2, v1

    .line 26
    and-int/lit8 v4, v2, 0x3

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    const/4 v8, 0x0

    .line 30
    if-eq v4, v3, :cond_1

    .line 31
    .line 32
    move v4, v5

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v4, v8

    .line 35
    :goto_1
    and-int/2addr v2, v5

    .line 36
    invoke-virtual {v6, v2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_c

    .line 41
    .line 42
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 43
    .line 44
    if-eqz v2, :cond_b

    .line 45
    .line 46
    iget-object v2, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->showCursorHandle$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-ne v2, v5, :cond_b

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getTransformedText$foundation()Landroidx/compose/ui/text/AnnotatedString;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_b

    .line 65
    .line 66
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-lez v2, :cond_b

    .line 73
    .line 74
    const v2, -0x7de7ecc8

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 89
    .line 90
    if-nez v2, :cond_2

    .line 91
    .line 92
    if-ne v4, v5, :cond_3

    .line 93
    .line 94
    :cond_2
    new-instance v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;

    .line 95
    .line 96
    invoke-direct {v4, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cursorDragObserver$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    check-cast v4, Landroidx/compose/foundation/text/TextDragObserver;

    .line 103
    .line 104
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 105
    .line 106
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 111
    .line 112
    iget-object v7, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    iget-wide v9, v9, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 119
    .line 120
    sget v11, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 121
    .line 122
    const/16 v11, 0x20

    .line 123
    .line 124
    shr-long/2addr v9, v11

    .line 125
    long-to-int v9, v9

    .line 126
    invoke-interface {v7, v9}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    iget-object v9, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 131
    .line 132
    const/4 v10, 0x0

    .line 133
    if-eqz v9, :cond_4

    .line 134
    .line 135
    invoke-virtual {v9}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    goto :goto_2

    .line 140
    :cond_4
    move-object v9, v10

    .line 141
    :goto_2
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    iget-object v9, v9, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 145
    .line 146
    iget-object v12, v9, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 147
    .line 148
    iget-object v12, v12, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 149
    .line 150
    iget-object v12, v12, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    invoke-static {v7, v8, v12}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    invoke-virtual {v9, v7}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    iget v9, v7, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 165
    .line 166
    const/high16 v12, 0x40000000    # 2.0f

    .line 167
    .line 168
    invoke-interface {v2, v12}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    div-float/2addr v2, v12

    .line 173
    add-float/2addr v2, v9

    .line 174
    iget v7, v7, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 175
    .line 176
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    int-to-long v12, v2

    .line 181
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    int-to-long v14, v2

    .line 186
    shl-long v11, v12, v11

    .line 187
    .line 188
    const-wide v16, 0xffffffffL

    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    and-long v14, v14, v16

    .line 194
    .line 195
    or-long/2addr v11, v14

    .line 196
    invoke-virtual {v6, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    if-nez v2, :cond_5

    .line 205
    .line 206
    if-ne v7, v5, :cond_6

    .line 207
    .line 208
    :cond_5
    new-instance v7, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$1$1;

    .line 209
    .line 210
    invoke-direct {v7, v11, v12}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$1$1;-><init>(J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_6
    move-object v2, v7

    .line 217
    check-cast v2, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 218
    .line 219
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    or-int/2addr v7, v9

    .line 228
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    if-nez v7, :cond_7

    .line 233
    .line 234
    if-ne v9, v5, :cond_8

    .line 235
    .line 236
    :cond_7
    new-instance v9, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;

    .line 237
    .line 238
    invoke-direct {v9, v4, v0}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;-><init>(Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    :cond_8
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 245
    .line 246
    new-instance v7, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 247
    .line 248
    const/4 v13, 0x6

    .line 249
    invoke-direct {v7, v4, v10, v9, v13}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    if-nez v4, :cond_9

    .line 261
    .line 262
    if-ne v9, v5, :cond_a

    .line 263
    .line 264
    :cond_9
    new-instance v9, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 265
    .line 266
    invoke-direct {v9, v3, v11, v12}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(IJ)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :cond_a
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 273
    .line 274
    invoke-static {v7, v8, v9}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    const-wide/16 v4, 0x0

    .line 279
    .line 280
    const/4 v7, 0x0

    .line 281
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandle-USBMPiE(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 285
    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_b
    const v2, -0x7dd3f3f6

    .line 289
    .line 290
    .line 291
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 295
    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_c
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 299
    .line 300
    .line 301
    :goto_3
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    if-eqz v2, :cond_d

    .line 306
    .line 307
    new-instance v3, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    .line 308
    .line 309
    const/4 v4, 0x5

    .line 310
    invoke-direct {v3, v1, v4, v0}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 314
    .line 315
    :cond_d
    return-void
.end method

.method public static final access$getCursorRectInScroller(Landroidx/compose/ui/layout/Placeable$PlacementScope;ILandroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;
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
    iget p2, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/high16 p3, 0x40000000    # 2.0f

    .line 22
    .line 23
    invoke-static {p0, p3}, Landroidx/compose/ui/Modifier$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 24
    .line 25
    .line 26
    move-result p0

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
    iget p2, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 43
    .line 44
    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 45
    .line 46
    new-instance p4, Landroidx/compose/ui/geometry/Rect;

    .line 47
    .line 48
    invoke-direct {p4, p3, p2, p0, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 49
    .line 50
    .line 51
    return-object p4
.end method

.method public static final access$isKeyCode-YhN2O0w(ILandroid/view/KeyEvent;)Z
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

.method public static final access$measureWithTextRangeMeasureConstraints(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/ArrayList;
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
    iget-object v4, v4, Landroidx/compose/foundation/text/TextRangeLayoutModifier;->measurePolicy:Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    iget-object v5, v4, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v5, Landroidx/compose/foundation/text/TextLinkScope;

    .line 50
    .line 51
    iget-object v4, v4, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

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
    const/16 v5, 0x12

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
    const/16 v5, 0x13

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
    invoke-static {v4}, Landroidx/compose/ui/unit/IntRectKt;->roundToIntRect(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/unit/IntRect;

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
    new-instance v7, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    .line 122
    .line 123
    const/16 v8, 0x14

    .line 124
    .line 125
    invoke-direct {v7, v8, v4}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

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
    invoke-static {v4, v4, v6, v6}, Lkotlin/math/MathKt;->fitPrioritizingWidth-Zbe2FdA(IIII)J

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

.method public static final appendInlineContent(Landroidx/compose/ui/text/AnnotatedString$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "alternateText can\'t be an empty string."

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    .line 14
    .line 15
    new-instance v1, Landroidx/compose/ui/text/StringAnnotation;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Landroidx/compose/ui/text/StringAnnotation;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x4

    .line 28
    invoke-direct {v0, v1, p1, v2, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(Landroidx/compose/ui/text/AnnotatedString$Annotation;III)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->styleStack:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->annotations:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop()V

    .line 48
    .line 49
    .line 50
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
    iget-object v2, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->processor:Landroidx/compose/ui/platform/WeakCache;

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->onValueChange:Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    iget-object v2, v2, Landroidx/compose/ui/platform/WeakCache;->values:Ljava/lang/Object;

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

.method public static final findFollowingBreak(Ljava/lang/String;I)I
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
    if-eqz v0, :cond_5

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
    const-string v2, "Not initialized yet"

    .line 19
    .line 20
    invoke-static {v2, v4}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v2, "charSequence cannot be null"

    .line 24
    .line 25
    invoke-static {p0, v2}, Landroidx/room/util/RelationUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal19;

    .line 29
    .line 30
    iget-object v4, v0, Landroidx/emoji2/text/EmojiCompat$CompatInternal19;->mProcessor:Landroidx/core/view/MenuHostHelper;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    if-ltz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-lt p1, v2, :cond_2

    .line 43
    .line 44
    :cond_1
    move-object v5, p0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    instance-of v2, p0, Landroid/text/Spanned;

    .line 47
    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    move-object v2, p0

    .line 51
    check-cast v2, Landroid/text/Spanned;

    .line 52
    .line 53
    add-int/lit8 v5, p1, 0x1

    .line 54
    .line 55
    const-class v6, Landroidx/emoji2/text/TypefaceEmojiSpan;

    .line 56
    .line 57
    invoke-interface {v2, p1, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, [Landroidx/emoji2/text/TypefaceEmojiSpan;

    .line 62
    .line 63
    array-length v6, v5

    .line 64
    if-lez v6, :cond_3

    .line 65
    .line 66
    aget-object v3, v5, v3

    .line 67
    .line 68
    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    move-object v5, p0

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    add-int/lit8 v2, p1, -0x10

    .line 75
    .line 76
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    add-int/lit8 v3, p1, 0x10

    .line 85
    .line 86
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    new-instance v10, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    .line 91
    .line 92
    invoke-direct {v10, p1}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;-><init>(I)V

    .line 93
    .line 94
    .line 95
    const v8, 0x7fffffff

    .line 96
    .line 97
    .line 98
    const/4 v9, 0x1

    .line 99
    move-object v5, p0

    .line 100
    invoke-virtual/range {v4 .. v10}, Landroidx/core/view/MenuHostHelper;->process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    .line 105
    .line 106
    iget v2, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;->end:I

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :goto_1
    move v2, v0

    .line 110
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    if-ne v2, v0, :cond_4

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_4
    move-object v1, p0

    .line 118
    goto :goto_3

    .line 119
    :cond_5
    move-object v5, p0

    .line 120
    :goto_3
    if-eqz v1, :cond_6

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    return p0

    .line 127
    :cond_6
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {p0, v5}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Ljava/text/BreakIterator;->following(I)I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    return p0
.end method

.method public static final findParagraphEnd(ILjava/lang/CharSequence;)I
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    if-ge p0, v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

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
    return p0

    .line 16
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public static final findParagraphStart(ILjava/lang/CharSequence;)I
    .locals 2

    .line 1
    :goto_0
    if-lez p0, :cond_1

    .line 2
    .line 3
    add-int/lit8 v0, p0, -0x1

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

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
    return p0

    .line 14
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static final findPrecedingBreak(Ljava/lang/String;I)I
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
    add-int/lit8 v2, p1, -0x1

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
    invoke-virtual {v0, v2, p0}, Landroidx/emoji2/text/EmojiCompat;->getEmojiStart(ILjava/lang/CharSequence;)I

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
    invoke-virtual {v0, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
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
    iget-object p0, p1, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    .line 49
    .line 50
    iget-object p2, p1, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    .line 51
    .line 52
    iget-object p1, p1, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 53
    .line 54
    invoke-static {p0, p2, p1}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->computeSizeForDefaultText$default(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)J

    .line 55
    .line 56
    .line 57
    move-result-wide p0

    .line 58
    new-instance p2, Landroidx/compose/ui/geometry/Rect;

    .line 59
    .line 60
    and-long/2addr p0, v0

    .line 61
    long-to-int p0, p0

    .line 62
    int-to-float p0, p0

    .line 63
    const/4 p1, 0x0

    .line 64
    const/high16 p5, 0x3f800000    # 1.0f

    .line 65
    .line 66
    invoke-direct {p2, p1, p1, p5, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 67
    .line 68
    .line 69
    move-object p0, p2

    .line 70
    :goto_0
    iget p1, p0, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 71
    .line 72
    iget p2, p0, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 73
    .line 74
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 75
    .line 76
    .line 77
    move-result p5

    .line 78
    int-to-long p5, p5

    .line 79
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    int-to-long v2, v2

    .line 84
    const/16 v4, 0x20

    .line 85
    .line 86
    shl-long/2addr p5, v4

    .line 87
    and-long/2addr v2, v0

    .line 88
    or-long/2addr p5, v2

    .line 89
    invoke-interface {p3, p5, p6}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    .line 90
    .line 91
    .line 92
    move-result-wide p5

    .line 93
    shr-long v2, p5, v4

    .line 94
    .line 95
    long-to-int p3, v2

    .line 96
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    and-long/2addr p5, v0

    .line 101
    long-to-int p5, p5

    .line 102
    invoke-static {p5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 103
    .line 104
    .line 105
    move-result p5

    .line 106
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    int-to-long v2, p3

    .line 111
    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 112
    .line 113
    .line 114
    move-result p3

    .line 115
    int-to-long p5, p3

    .line 116
    shl-long/2addr v2, v4

    .line 117
    and-long/2addr p5, v0

    .line 118
    or-long/2addr p5, v2

    .line 119
    iget p3, p0, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 120
    .line 121
    sub-float/2addr p3, p2

    .line 122
    iget p0, p0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 123
    .line 124
    sub-float/2addr p0, p1

    .line 125
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    int-to-long p1, p1

    .line 130
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    int-to-long v2, p0

    .line 135
    shl-long p0, p1, v4

    .line 136
    .line 137
    and-long p2, v2, v0

    .line 138
    .line 139
    or-long/2addr p0, p2

    .line 140
    invoke-static {p5, p6, p0, p1}, Lorg/slf4j/helpers/Util;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    iget-object p1, p4, Landroidx/compose/ui/text/input/TextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    .line 145
    .line 146
    iget-object p1, p1, Landroidx/compose/ui/text/input/TextInputService;->_currentInputSession:Ljava/util/concurrent/atomic/AtomicReference;

    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Landroidx/compose/ui/text/input/TextInputSession;

    .line 153
    .line 154
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_3

    .line 159
    .line 160
    iget-object p1, p4, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 161
    .line 162
    invoke-interface {p1, p0}, Landroidx/compose/ui/text/input/PlatformTextInputService;->notifyFocusedRect(Landroidx/compose/ui/geometry/Rect;)V

    .line 163
    .line 164
    .line 165
    :cond_3
    :goto_1
    return-void
.end method

.method public static final startInputSession(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroidx/compose/foundation/text/LegacyTextFieldState;->processor:Landroidx/compose/ui/platform/WeakCache;

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
    new-instance v4, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/16 v5, 0x8

    .line 15
    .line 16
    invoke-direct {v4, v0, v1, v3, v5}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputService;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 20
    .line 21
    invoke-interface {v0, p2, p3, v4, v2}, Landroidx/compose/ui/text/input/PlatformTextInputService;->startInput(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;)V

    .line 22
    .line 23
    .line 24
    new-instance p3, Landroidx/compose/ui/text/input/TextInputSession;

    .line 25
    .line 26
    invoke-direct {p3, p0, v0}, Landroidx/compose/ui/text/input/TextInputSession;-><init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Landroidx/compose/ui/text/input/TextInputService;->_currentInputSession:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    .line 31
    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object p3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 35
    .line 36
    iput-object p3, p1, Landroidx/compose/foundation/text/LegacyTextFieldState;->inputSession:Landroidx/compose/ui/text/input/TextInputSession;

    .line 37
    .line 38
    invoke-static {p1, p2, p4}, Landroidx/compose/foundation/text/BasicTextKt;->notifyFocusedRect(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static final textModifier-CL7eQgs(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 12

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v4, p3

    .line 6
    move/from16 v5, p4

    .line 7
    .line 8
    move/from16 v6, p5

    .line 9
    .line 10
    move/from16 v7, p6

    .line 11
    .line 12
    move/from16 v8, p7

    .line 13
    .line 14
    move-object/from16 v3, p8

    .line 15
    .line 16
    move-object/from16 v9, p9

    .line 17
    .line 18
    move-object/from16 v10, p10

    .line 19
    .line 20
    move-object/from16 v11, p11

    .line 21
    .line 22
    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 26
    .line 27
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
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
