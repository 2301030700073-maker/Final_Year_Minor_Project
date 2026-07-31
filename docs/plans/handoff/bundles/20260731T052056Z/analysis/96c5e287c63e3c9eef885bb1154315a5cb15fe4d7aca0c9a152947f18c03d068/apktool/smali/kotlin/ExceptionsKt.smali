.class public abstract Lkotlin/ExceptionsKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final GlanceTheme(Landroidx/glance/color/DynamicThemeColorProviders;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V
    .locals 3

    .line 1
    const v0, -0x75e28dd2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    or-int/lit8 v0, p3, 0x2

    .line 8
    .line 9
    and-int/lit8 v0, v0, 0x13

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 24
    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 28
    .line 29
    .line 30
    and-int/lit8 v0, p3, 0x1

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    :goto_1
    sget-object p0, Landroidx/glance/CompositionLocalsKt;->LocalColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 46
    .line 47
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Landroidx/glance/color/DynamicThemeColorProviders;

    .line 52
    .line 53
    :goto_2
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 54
    .line 55
    .line 56
    sget-object v0, Landroidx/glance/CompositionLocalsKt;->LocalColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v1, 0x1

    .line 63
    new-array v1, v1, [Landroidx/compose/runtime/ProvidedValue;

    .line 64
    .line 65
    aput-object v0, v1, v2

    .line 66
    .line 67
    const/16 v0, 0x30

    .line 68
    .line 69
    invoke-static {v1, p1, p2, v0}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 70
    .line 71
    .line 72
    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    if-eqz p2, :cond_4

    .line 77
    .line 78
    new-instance v0, Landroidx/glance/GlanceThemeKt$GlanceTheme$1;

    .line 79
    .line 80
    invoke-direct {v0, p3, v2, p0, p1}, Landroidx/glance/GlanceThemeKt$GlanceTheme$1;-><init>(IILjava/lang/Object;Lkotlin/Function;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 84
    .line 85
    :cond_4
    return-void
.end method

.method public static final LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V
    .locals 16

    .line 1
    move-object/from16 v12, p9

    .line 2
    .line 3
    move/from16 v0, p10

    .line 4
    .line 5
    const v1, 0x3335543

    .line 6
    .line 7
    .line 8
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v1, p11, 0x1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    or-int/lit8 v2, v0, 0x6

    .line 16
    .line 17
    move v3, v2

    .line 18
    move-object/from16 v2, p0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    and-int/lit8 v2, v0, 0x6

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    move-object/from16 v2, p0

    .line 26
    .line 27
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v3, 0x2

    .line 36
    :goto_0
    or-int/2addr v3, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move-object/from16 v2, p0

    .line 39
    .line 40
    move v3, v0

    .line 41
    :goto_1
    and-int/lit8 v4, v0, 0x30

    .line 42
    .line 43
    if-nez v4, :cond_5

    .line 44
    .line 45
    and-int/lit8 v4, p11, 0x2

    .line 46
    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    move-object/from16 v4, p1

    .line 50
    .line 51
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_4

    .line 56
    .line 57
    const/16 v5, 0x20

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move-object/from16 v4, p1

    .line 61
    .line 62
    :cond_4
    const/16 v5, 0x10

    .line 63
    .line 64
    :goto_2
    or-int/2addr v3, v5

    .line 65
    goto :goto_3

    .line 66
    :cond_5
    move-object/from16 v4, p1

    .line 67
    .line 68
    :goto_3
    and-int/lit8 v5, p11, 0x4

    .line 69
    .line 70
    if-eqz v5, :cond_7

    .line 71
    .line 72
    or-int/lit16 v3, v3, 0x180

    .line 73
    .line 74
    :cond_6
    move-object/from16 v6, p2

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_7
    and-int/lit16 v6, v0, 0x180

    .line 78
    .line 79
    if-nez v6, :cond_6

    .line 80
    .line 81
    move-object/from16 v6, p2

    .line 82
    .line 83
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_8

    .line 88
    .line 89
    const/16 v7, 0x100

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_8
    const/16 v7, 0x80

    .line 93
    .line 94
    :goto_4
    or-int/2addr v3, v7

    .line 95
    :goto_5
    or-int/lit16 v3, v3, 0xc00

    .line 96
    .line 97
    and-int/lit16 v7, v0, 0x6000

    .line 98
    .line 99
    if-nez v7, :cond_b

    .line 100
    .line 101
    and-int/lit8 v7, p11, 0x10

    .line 102
    .line 103
    if-nez v7, :cond_9

    .line 104
    .line 105
    move-object/from16 v7, p3

    .line 106
    .line 107
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_a

    .line 112
    .line 113
    const/16 v8, 0x4000

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_9
    move-object/from16 v7, p3

    .line 117
    .line 118
    :cond_a
    const/16 v8, 0x2000

    .line 119
    .line 120
    :goto_6
    or-int/2addr v3, v8

    .line 121
    goto :goto_7

    .line 122
    :cond_b
    move-object/from16 v7, p3

    .line 123
    .line 124
    :goto_7
    const/high16 v8, 0x30000

    .line 125
    .line 126
    or-int/2addr v3, v8

    .line 127
    const/high16 v8, 0x180000

    .line 128
    .line 129
    and-int/2addr v8, v0

    .line 130
    if-nez v8, :cond_e

    .line 131
    .line 132
    and-int/lit8 v8, p11, 0x40

    .line 133
    .line 134
    if-nez v8, :cond_c

    .line 135
    .line 136
    move-object/from16 v8, p5

    .line 137
    .line 138
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-eqz v9, :cond_d

    .line 143
    .line 144
    const/high16 v9, 0x100000

    .line 145
    .line 146
    goto :goto_8

    .line 147
    :cond_c
    move-object/from16 v8, p5

    .line 148
    .line 149
    :cond_d
    const/high16 v9, 0x80000

    .line 150
    .line 151
    :goto_8
    or-int/2addr v3, v9

    .line 152
    goto :goto_9

    .line 153
    :cond_e
    move-object/from16 v8, p5

    .line 154
    .line 155
    :goto_9
    const/high16 v9, 0xc00000

    .line 156
    .line 157
    or-int/2addr v9, v3

    .line 158
    const/high16 v10, 0x6000000

    .line 159
    .line 160
    and-int/2addr v10, v0

    .line 161
    if-nez v10, :cond_f

    .line 162
    .line 163
    const/high16 v9, 0x2c00000

    .line 164
    .line 165
    or-int/2addr v9, v3

    .line 166
    :cond_f
    const/high16 v3, 0x30000000

    .line 167
    .line 168
    and-int/2addr v3, v0

    .line 169
    move-object/from16 v11, p8

    .line 170
    .line 171
    if-nez v3, :cond_11

    .line 172
    .line 173
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_10

    .line 178
    .line 179
    const/high16 v3, 0x20000000

    .line 180
    .line 181
    goto :goto_a

    .line 182
    :cond_10
    const/high16 v3, 0x10000000

    .line 183
    .line 184
    :goto_a
    or-int/2addr v9, v3

    .line 185
    :cond_11
    const v3, 0x12492493

    .line 186
    .line 187
    .line 188
    and-int/2addr v3, v9

    .line 189
    const v10, 0x12492492

    .line 190
    .line 191
    .line 192
    const/4 v13, 0x1

    .line 193
    if-eq v3, v10, :cond_12

    .line 194
    .line 195
    move v3, v13

    .line 196
    goto :goto_b

    .line 197
    :cond_12
    const/4 v3, 0x0

    .line 198
    :goto_b
    and-int/lit8 v10, v9, 0x1

    .line 199
    .line 200
    invoke-virtual {v12, v10, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-eqz v3, :cond_1f

    .line 205
    .line 206
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 207
    .line 208
    .line 209
    and-int/lit8 v3, v0, 0x1

    .line 210
    .line 211
    const v10, -0xe000001

    .line 212
    .line 213
    .line 214
    const v14, -0x380001

    .line 215
    .line 216
    .line 217
    const v15, -0xe001

    .line 218
    .line 219
    .line 220
    if-eqz v3, :cond_17

    .line 221
    .line 222
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_13

    .line 227
    .line 228
    goto :goto_c

    .line 229
    :cond_13
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 230
    .line 231
    .line 232
    and-int/lit8 v1, p11, 0x2

    .line 233
    .line 234
    if-eqz v1, :cond_14

    .line 235
    .line 236
    and-int/lit8 v9, v9, -0x71

    .line 237
    .line 238
    :cond_14
    and-int/lit8 v1, p11, 0x10

    .line 239
    .line 240
    if-eqz v1, :cond_15

    .line 241
    .line 242
    and-int/2addr v9, v15

    .line 243
    :cond_15
    and-int/lit8 v1, p11, 0x40

    .line 244
    .line 245
    if-eqz v1, :cond_16

    .line 246
    .line 247
    and-int/2addr v9, v14

    .line 248
    :cond_16
    and-int v1, v9, v10

    .line 249
    .line 250
    move/from16 v5, p6

    .line 251
    .line 252
    move v9, v1

    .line 253
    move-object v1, v2

    .line 254
    move-object v2, v6

    .line 255
    move-object v3, v8

    .line 256
    move-object/from16 v6, p7

    .line 257
    .line 258
    move-object v8, v7

    .line 259
    move-object/from16 v7, p4

    .line 260
    .line 261
    goto :goto_e

    .line 262
    :cond_17
    :goto_c
    if-eqz v1, :cond_18

    .line 263
    .line 264
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 265
    .line 266
    goto :goto_d

    .line 267
    :cond_18
    move-object v1, v2

    .line 268
    :goto_d
    and-int/lit8 v2, p11, 0x2

    .line 269
    .line 270
    if-eqz v2, :cond_19

    .line 271
    .line 272
    invoke-static {v12}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/lazy/LazyListState;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    and-int/lit8 v9, v9, -0x71

    .line 277
    .line 278
    move-object v4, v2

    .line 279
    :cond_19
    if-eqz v5, :cond_1a

    .line 280
    .line 281
    new-instance v2, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 282
    .line 283
    const/4 v3, 0x0

    .line 284
    invoke-direct {v2, v3, v3, v3, v3}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 285
    .line 286
    .line 287
    move-object v6, v2

    .line 288
    :cond_1a
    and-int/lit8 v2, p11, 0x10

    .line 289
    .line 290
    if-eqz v2, :cond_1b

    .line 291
    .line 292
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 293
    .line 294
    and-int/2addr v9, v15

    .line 295
    move-object v7, v2

    .line 296
    :cond_1b
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 297
    .line 298
    and-int/lit8 v3, p11, 0x40

    .line 299
    .line 300
    if-eqz v3, :cond_1e

    .line 301
    .line 302
    invoke-static {v12}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    if-nez v5, :cond_1c

    .line 315
    .line 316
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 317
    .line 318
    if-ne v8, v5, :cond_1d

    .line 319
    .line 320
    :cond_1c
    new-instance v8, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 321
    .line 322
    invoke-direct {v8, v3}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpecImpl;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    :cond_1d
    move-object v3, v8

    .line 329
    check-cast v3, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 330
    .line 331
    and-int/2addr v9, v14

    .line 332
    move-object v8, v3

    .line 333
    :cond_1e
    invoke-static {v12}, Landroidx/compose/foundation/OverscrollKt;->rememberOverscrollEffect(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    and-int v5, v9, v10

    .line 338
    .line 339
    move-object v9, v7

    .line 340
    move-object v7, v2

    .line 341
    move-object v2, v6

    .line 342
    move-object v6, v3

    .line 343
    move-object v3, v8

    .line 344
    move-object v8, v9

    .line 345
    move v9, v5

    .line 346
    move v5, v13

    .line 347
    :goto_e
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 348
    .line 349
    .line 350
    and-int/lit8 v10, v9, 0xe

    .line 351
    .line 352
    or-int/lit16 v10, v10, 0x6000

    .line 353
    .line 354
    and-int/lit8 v13, v9, 0x70

    .line 355
    .line 356
    or-int/2addr v10, v13

    .line 357
    and-int/lit16 v13, v9, 0x380

    .line 358
    .line 359
    or-int/2addr v10, v13

    .line 360
    and-int/lit16 v13, v9, 0x1c00

    .line 361
    .line 362
    or-int/2addr v10, v13

    .line 363
    shr-int/lit8 v13, v9, 0x3

    .line 364
    .line 365
    const/high16 v14, 0x70000

    .line 366
    .line 367
    and-int/2addr v14, v13

    .line 368
    or-int/2addr v10, v14

    .line 369
    const/high16 v14, 0x380000

    .line 370
    .line 371
    and-int/2addr v13, v14

    .line 372
    or-int/2addr v10, v13

    .line 373
    shl-int/lit8 v13, v9, 0xc

    .line 374
    .line 375
    const/high16 v14, 0x70000000

    .line 376
    .line 377
    and-int/2addr v13, v14

    .line 378
    or-int/2addr v13, v10

    .line 379
    shr-int/lit8 v10, v9, 0xc

    .line 380
    .line 381
    and-int/lit8 v10, v10, 0xe

    .line 382
    .line 383
    shr-int/lit8 v9, v9, 0x12

    .line 384
    .line 385
    and-int/lit16 v9, v9, 0x1c00

    .line 386
    .line 387
    or-int v14, v10, v9

    .line 388
    .line 389
    const/16 v15, 0x1900

    .line 390
    .line 391
    move-object v0, v1

    .line 392
    move-object v1, v4

    .line 393
    move-object v4, v3

    .line 394
    const/4 v3, 0x1

    .line 395
    const/4 v9, 0x0

    .line 396
    const/4 v10, 0x0

    .line 397
    invoke-static/range {v0 .. v15}, Lcoil3/util/ContextsKt;->LazyList(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;III)V

    .line 398
    .line 399
    .line 400
    move-object v3, v6

    .line 401
    move-object v6, v4

    .line 402
    move-object v4, v8

    .line 403
    move-object v8, v3

    .line 404
    move-object v3, v7

    .line 405
    move v7, v5

    .line 406
    move-object v5, v3

    .line 407
    move-object v3, v2

    .line 408
    move-object v2, v1

    .line 409
    move-object v1, v0

    .line 410
    goto :goto_f

    .line 411
    :cond_1f
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 412
    .line 413
    .line 414
    move-object/from16 v5, p4

    .line 415
    .line 416
    move-object v1, v2

    .line 417
    move-object v2, v4

    .line 418
    move-object v3, v6

    .line 419
    move-object v4, v7

    .line 420
    move-object v6, v8

    .line 421
    move/from16 v7, p6

    .line 422
    .line 423
    move-object/from16 v8, p7

    .line 424
    .line 425
    :goto_f
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 426
    .line 427
    .line 428
    move-result-object v13

    .line 429
    if-eqz v13, :cond_20

    .line 430
    .line 431
    new-instance v0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;

    .line 432
    .line 433
    const/4 v12, 0x1

    .line 434
    move-object/from16 v9, p8

    .line 435
    .line 436
    move/from16 v10, p10

    .line 437
    .line 438
    move/from16 v11, p11

    .line 439
    .line 440
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;III)V

    .line 441
    .line 442
    .line 443
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 444
    .line 445
    :cond_20
    return-void
.end method

.method public static final LazyRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V
    .locals 16

    .line 1
    move-object/from16 v12, p9

    .line 2
    .line 3
    move/from16 v0, p10

    .line 4
    .line 5
    const v1, -0x705086e1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v1, p11, 0x1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    or-int/lit8 v2, v0, 0x6

    .line 16
    .line 17
    move v3, v2

    .line 18
    move-object/from16 v2, p0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    and-int/lit8 v2, v0, 0x6

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    move-object/from16 v2, p0

    .line 26
    .line 27
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v3, 0x2

    .line 36
    :goto_0
    or-int/2addr v3, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move-object/from16 v2, p0

    .line 39
    .line 40
    move v3, v0

    .line 41
    :goto_1
    and-int/lit8 v4, v0, 0x30

    .line 42
    .line 43
    if-nez v4, :cond_5

    .line 44
    .line 45
    and-int/lit8 v4, p11, 0x2

    .line 46
    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    move-object/from16 v4, p1

    .line 50
    .line 51
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_4

    .line 56
    .line 57
    const/16 v5, 0x20

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move-object/from16 v4, p1

    .line 61
    .line 62
    :cond_4
    const/16 v5, 0x10

    .line 63
    .line 64
    :goto_2
    or-int/2addr v3, v5

    .line 65
    goto :goto_3

    .line 66
    :cond_5
    move-object/from16 v4, p1

    .line 67
    .line 68
    :goto_3
    and-int/lit8 v5, p11, 0x4

    .line 69
    .line 70
    if-eqz v5, :cond_7

    .line 71
    .line 72
    or-int/lit16 v3, v3, 0x180

    .line 73
    .line 74
    :cond_6
    move-object/from16 v6, p2

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_7
    and-int/lit16 v6, v0, 0x180

    .line 78
    .line 79
    if-nez v6, :cond_6

    .line 80
    .line 81
    move-object/from16 v6, p2

    .line 82
    .line 83
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_8

    .line 88
    .line 89
    const/16 v7, 0x100

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_8
    const/16 v7, 0x80

    .line 93
    .line 94
    :goto_4
    or-int/2addr v3, v7

    .line 95
    :goto_5
    or-int/lit16 v3, v3, 0xc00

    .line 96
    .line 97
    and-int/lit16 v7, v0, 0x6000

    .line 98
    .line 99
    move-object/from16 v10, p3

    .line 100
    .line 101
    if-nez v7, :cond_a

    .line 102
    .line 103
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_9

    .line 108
    .line 109
    const/16 v7, 0x4000

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_9
    const/16 v7, 0x2000

    .line 113
    .line 114
    :goto_6
    or-int/2addr v3, v7

    .line 115
    :cond_a
    and-int/lit8 v7, p11, 0x20

    .line 116
    .line 117
    const/high16 v8, 0x30000

    .line 118
    .line 119
    if-eqz v7, :cond_c

    .line 120
    .line 121
    or-int/2addr v3, v8

    .line 122
    :cond_b
    move-object/from16 v8, p4

    .line 123
    .line 124
    goto :goto_8

    .line 125
    :cond_c
    and-int/2addr v8, v0

    .line 126
    if-nez v8, :cond_b

    .line 127
    .line 128
    move-object/from16 v8, p4

    .line 129
    .line 130
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-eqz v9, :cond_d

    .line 135
    .line 136
    const/high16 v9, 0x20000

    .line 137
    .line 138
    goto :goto_7

    .line 139
    :cond_d
    const/high16 v9, 0x10000

    .line 140
    .line 141
    :goto_7
    or-int/2addr v3, v9

    .line 142
    :goto_8
    const/high16 v9, 0x180000

    .line 143
    .line 144
    and-int/2addr v9, v0

    .line 145
    if-nez v9, :cond_e

    .line 146
    .line 147
    const/high16 v9, 0x80000

    .line 148
    .line 149
    or-int/2addr v3, v9

    .line 150
    :cond_e
    const/high16 v9, 0xc00000

    .line 151
    .line 152
    or-int/2addr v9, v3

    .line 153
    const/high16 v11, 0x6000000

    .line 154
    .line 155
    and-int/2addr v11, v0

    .line 156
    if-nez v11, :cond_f

    .line 157
    .line 158
    const/high16 v9, 0x2c00000

    .line 159
    .line 160
    or-int/2addr v9, v3

    .line 161
    :cond_f
    const/high16 v3, 0x30000000

    .line 162
    .line 163
    and-int/2addr v3, v0

    .line 164
    move-object/from16 v11, p8

    .line 165
    .line 166
    if-nez v3, :cond_11

    .line 167
    .line 168
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_10

    .line 173
    .line 174
    const/high16 v3, 0x20000000

    .line 175
    .line 176
    goto :goto_9

    .line 177
    :cond_10
    const/high16 v3, 0x10000000

    .line 178
    .line 179
    :goto_9
    or-int/2addr v9, v3

    .line 180
    :cond_11
    const v3, 0x12492493

    .line 181
    .line 182
    .line 183
    and-int/2addr v3, v9

    .line 184
    const v13, 0x12492492

    .line 185
    .line 186
    .line 187
    const/4 v14, 0x1

    .line 188
    if-eq v3, v13, :cond_12

    .line 189
    .line 190
    move v3, v14

    .line 191
    goto :goto_a

    .line 192
    :cond_12
    const/4 v3, 0x0

    .line 193
    :goto_a
    and-int/lit8 v13, v9, 0x1

    .line 194
    .line 195
    invoke-virtual {v12, v13, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_1c

    .line 200
    .line 201
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 202
    .line 203
    .line 204
    and-int/lit8 v3, v0, 0x1

    .line 205
    .line 206
    const v13, -0xe380001

    .line 207
    .line 208
    .line 209
    if-eqz v3, :cond_15

    .line 210
    .line 211
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_13

    .line 216
    .line 217
    goto :goto_c

    .line 218
    :cond_13
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 219
    .line 220
    .line 221
    and-int/lit8 v1, p11, 0x2

    .line 222
    .line 223
    if-eqz v1, :cond_14

    .line 224
    .line 225
    and-int/lit8 v9, v9, -0x71

    .line 226
    .line 227
    :cond_14
    and-int v1, v9, v13

    .line 228
    .line 229
    move-object/from16 v3, p5

    .line 230
    .line 231
    move/from16 v5, p6

    .line 232
    .line 233
    move v7, v1

    .line 234
    move-object v1, v2

    .line 235
    move-object v2, v6

    .line 236
    move-object/from16 v6, p7

    .line 237
    .line 238
    :goto_b
    move-object v9, v8

    .line 239
    goto :goto_e

    .line 240
    :cond_15
    :goto_c
    if-eqz v1, :cond_16

    .line 241
    .line 242
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 243
    .line 244
    goto :goto_d

    .line 245
    :cond_16
    move-object v1, v2

    .line 246
    :goto_d
    and-int/lit8 v2, p11, 0x2

    .line 247
    .line 248
    if-eqz v2, :cond_17

    .line 249
    .line 250
    invoke-static {v12}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/lazy/LazyListState;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    and-int/lit8 v9, v9, -0x71

    .line 255
    .line 256
    move-object v4, v2

    .line 257
    :cond_17
    if-eqz v5, :cond_18

    .line 258
    .line 259
    new-instance v2, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 260
    .line 261
    const/4 v3, 0x0

    .line 262
    invoke-direct {v2, v3, v3, v3, v3}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 263
    .line 264
    .line 265
    move-object v6, v2

    .line 266
    :cond_18
    if-eqz v7, :cond_19

    .line 267
    .line 268
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 269
    .line 270
    move-object v8, v2

    .line 271
    :cond_19
    invoke-static {v12}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    if-nez v3, :cond_1a

    .line 284
    .line 285
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 286
    .line 287
    if-ne v5, v3, :cond_1b

    .line 288
    .line 289
    :cond_1a
    new-instance v5, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 290
    .line 291
    invoke-direct {v5, v2}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpecImpl;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    :cond_1b
    move-object v2, v5

    .line 298
    check-cast v2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 299
    .line 300
    invoke-static {v12}, Landroidx/compose/foundation/OverscrollKt;->rememberOverscrollEffect(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    and-int v5, v9, v13

    .line 305
    .line 306
    move-object v7, v3

    .line 307
    move-object v3, v2

    .line 308
    move-object v2, v6

    .line 309
    move-object v6, v7

    .line 310
    move v7, v5

    .line 311
    move v5, v14

    .line 312
    goto :goto_b

    .line 313
    :goto_e
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 314
    .line 315
    .line 316
    and-int/lit8 v8, v7, 0xe

    .line 317
    .line 318
    or-int/lit16 v8, v8, 0x6000

    .line 319
    .line 320
    and-int/lit8 v13, v7, 0x70

    .line 321
    .line 322
    or-int/2addr v8, v13

    .line 323
    and-int/lit16 v13, v7, 0x380

    .line 324
    .line 325
    or-int/2addr v8, v13

    .line 326
    and-int/lit16 v13, v7, 0x1c00

    .line 327
    .line 328
    or-int/2addr v8, v13

    .line 329
    shr-int/lit8 v13, v7, 0x3

    .line 330
    .line 331
    const/high16 v14, 0x380000

    .line 332
    .line 333
    and-int/2addr v13, v14

    .line 334
    or-int/2addr v13, v8

    .line 335
    shr-int/lit8 v8, v7, 0xc

    .line 336
    .line 337
    and-int/lit8 v8, v8, 0x70

    .line 338
    .line 339
    shr-int/lit8 v14, v7, 0x6

    .line 340
    .line 341
    and-int/lit16 v14, v14, 0x380

    .line 342
    .line 343
    or-int/2addr v8, v14

    .line 344
    shr-int/lit8 v7, v7, 0x12

    .line 345
    .line 346
    and-int/lit16 v7, v7, 0x1c00

    .line 347
    .line 348
    or-int v14, v8, v7

    .line 349
    .line 350
    const/16 v15, 0x700

    .line 351
    .line 352
    move-object v0, v1

    .line 353
    move-object v1, v4

    .line 354
    move-object v4, v3

    .line 355
    const/4 v3, 0x0

    .line 356
    const/4 v7, 0x0

    .line 357
    const/4 v8, 0x0

    .line 358
    invoke-static/range {v0 .. v15}, Lcoil3/util/ContextsKt;->LazyList(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;III)V

    .line 359
    .line 360
    .line 361
    move-object v3, v2

    .line 362
    move v7, v5

    .line 363
    move-object v8, v6

    .line 364
    move-object v5, v9

    .line 365
    move-object v2, v1

    .line 366
    move-object v6, v4

    .line 367
    move-object v1, v0

    .line 368
    goto :goto_f

    .line 369
    :cond_1c
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 370
    .line 371
    .line 372
    move/from16 v7, p6

    .line 373
    .line 374
    move-object v1, v2

    .line 375
    move-object v2, v4

    .line 376
    move-object v3, v6

    .line 377
    move-object v5, v8

    .line 378
    move-object/from16 v6, p5

    .line 379
    .line 380
    move-object/from16 v8, p7

    .line 381
    .line 382
    :goto_f
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 383
    .line 384
    .line 385
    move-result-object v13

    .line 386
    if-eqz v13, :cond_1d

    .line 387
    .line 388
    new-instance v0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;

    .line 389
    .line 390
    const/4 v12, 0x2

    .line 391
    move-object/from16 v4, p3

    .line 392
    .line 393
    move-object/from16 v9, p8

    .line 394
    .line 395
    move/from16 v10, p10

    .line 396
    .line 397
    move/from16 v11, p11

    .line 398
    .line 399
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;III)V

    .line 400
    .line 401
    .line 402
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 403
    .line 404
    :cond_1d
    return-void
.end method

.method public static final add-impl(Landroidx/collection/MutableIntList;I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/collection/MutableIntList;->_size:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->get(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eq v0, p1, :cond_0

    .line 11
    .line 12
    iget v0, p0, Landroidx/collection/MutableIntList;->_size:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, p1, :cond_1

    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    iget v0, p0, Landroidx/collection/MutableIntList;->_size:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntList;->add(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    if-lez v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 v1, v0, 0x1

    .line 31
    .line 32
    ushr-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroidx/collection/MutableIntList;->get(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-le p1, v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, v0, v2}, Landroidx/collection/MutableIntList;->set(II)V

    .line 43
    .line 44
    .line 45
    move v0, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableIntList;->set(II)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    if-eq p0, p1, :cond_3

    .line 8
    .line 9
    sget-object v0, Lkotlin/internal/jdk7/JDK7PlatformImplementations$ReflectSdkVersion;->sdkVersion:Ljava/lang/Integer;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v3, 0x13

    .line 20
    .line 21
    if-lt v0, v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    move v0, v1

    .line 27
    :goto_1
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    sget-object v0, Lkotlin/internal/PlatformImplementations$ReflectThrowable;->addSuppressed:Ljava/lang/reflect/Method;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object p1, v1, v2

    .line 40
    .line 41
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_3
    return-void
.end method

.method public static final approximateCapturedTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lkotlin/ExceptionsKt;->approximateCapturedTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->upperIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lkotlin/ExceptionsKt;->approximateCapturedTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    .line 29
    .line 30
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->lower:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 33
    .line 34
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->lower:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 41
    .line 42
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->upperIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->inheritEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->upper:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->upper:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 65
    .line 66
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->upperIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->inheritEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-direct {v2, v3, p0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-object v2

    .line 82
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    instance-of v1, v1, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructor;

    .line 91
    .line 92
    const/4 v2, 0x0

    .line 93
    const/4 v3, 0x3

    .line 94
    const/4 v4, 0x2

    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructor;

    .line 101
    .line 102
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructor;->getProjection()Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    invoke-static {v1, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    aget v5, v6, v5

    .line 132
    .line 133
    if-eq v5, v4, :cond_2

    .line 134
    .line 135
    if-ne v5, v3, :cond_1

    .line 136
    .line 137
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    .line 138
    .line 139
    invoke-static {p0}, Landroidx/work/OperationKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getNothingType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    invoke-static {v2, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    return-object v0

    .line 159
    :cond_1
    const-string p0, "Only nontrivial projections should have been captured, not: "

    .line 160
    .line 161
    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    return-object v2

    .line 165
    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    .line 166
    .line 167
    invoke-static {p0}, Landroidx/work/OperationKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getNullableAnyType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    return-object v0

    .line 182
    :cond_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-nez v1, :cond_12

    .line 191
    .line 192
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-eq v1, v5, :cond_4

    .line 209
    .line 210
    goto/16 :goto_5

    .line 211
    .line 212
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .line 216
    .line 217
    new-instance v5, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-static {v6, v0}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    const/4 v7, 0x1

    .line 246
    if-eqz v6, :cond_d

    .line 247
    .line 248
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    check-cast v6, Lkotlin/Pair;

    .line 253
    .line 254
    iget-object v8, v6, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 257
    .line 258
    iget-object v6, v6, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 261
    .line 262
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    if-eqz v9, :cond_c

    .line 270
    .line 271
    if-eqz v8, :cond_b

    .line 272
    .line 273
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->EMPTY:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    .line 274
    .line 275
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    .line 276
    .line 277
    .line 278
    move-result v10

    .line 279
    if-eqz v10, :cond_6

    .line 280
    .line 281
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 282
    .line 283
    if-eqz v9, :cond_5

    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_5
    const/16 p0, 0x25

    .line 287
    .line 288
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    .line 289
    .line 290
    .line 291
    throw v2

    .line 292
    :cond_6
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 293
    .line 294
    .line 295
    move-result-object v10

    .line 296
    invoke-static {v9, v10}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->combine(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    :goto_1
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/CapturedTypeApproximationKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 301
    .line 302
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 303
    .line 304
    .line 305
    move-result v9

    .line 306
    aget v9, v10, v9

    .line 307
    .line 308
    if-eq v9, v7, :cond_9

    .line 309
    .line 310
    if-eq v9, v4, :cond_8

    .line 311
    .line 312
    if-ne v9, v3, :cond_7

    .line 313
    .line 314
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;

    .line 315
    .line 316
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 317
    .line 318
    .line 319
    move-result-object v9

    .line 320
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getNothingType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 321
    .line 322
    .line 323
    move-result-object v9

    .line 324
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 325
    .line 326
    .line 327
    move-result-object v10

    .line 328
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    invoke-direct {v7, v6, v9, v10}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 332
    .line 333
    .line 334
    goto :goto_2

    .line 335
    :cond_7
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 336
    .line 337
    .line 338
    return-object v2

    .line 339
    :cond_8
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;

    .line 340
    .line 341
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 342
    .line 343
    .line 344
    move-result-object v9

    .line 345
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 349
    .line 350
    .line 351
    move-result-object v10

    .line 352
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getNullableAnyType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 353
    .line 354
    .line 355
    move-result-object v10

    .line 356
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    invoke-direct {v7, v6, v9, v10}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 360
    .line 361
    .line 362
    goto :goto_2

    .line 363
    :cond_9
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;

    .line 364
    .line 365
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 366
    .line 367
    .line 368
    move-result-object v9

    .line 369
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 373
    .line 374
    .line 375
    move-result-object v10

    .line 376
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    invoke-direct {v7, v6, v9, v10}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 380
    .line 381
    .line 382
    :goto_2
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    .line 383
    .line 384
    .line 385
    move-result v6

    .line 386
    if-eqz v6, :cond_a

    .line 387
    .line 388
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    goto/16 :goto_0

    .line 395
    .line 396
    :cond_a
    iget-object v6, v7, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;->inProjection:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 397
    .line 398
    invoke-static {v6}, Lkotlin/ExceptionsKt;->approximateCapturedTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    iget-object v8, v6, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->lower:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 405
    .line 406
    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->upper:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 409
    .line 410
    iget-object v9, v7, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;->outProjection:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 411
    .line 412
    invoke-static {v9}, Lkotlin/ExceptionsKt;->approximateCapturedTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    .line 413
    .line 414
    .line 415
    move-result-object v9

    .line 416
    iget-object v10, v9, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->lower:Ljava/lang/Object;

    .line 417
    .line 418
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 419
    .line 420
    iget-object v9, v9, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;->upper:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 423
    .line 424
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;

    .line 425
    .line 426
    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;->typeParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 427
    .line 428
    invoke-direct {v11, v7, v6, v10}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 429
    .line 430
    .line 431
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;

    .line 432
    .line 433
    invoke-direct {v6, v7, v8, v9}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    goto/16 :goto_0

    .line 443
    .line 444
    :cond_b
    const/16 p0, 0x24

    .line 445
    .line 446
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    .line 447
    .line 448
    .line 449
    throw v2

    .line 450
    :cond_c
    const/16 p0, 0x23

    .line 451
    .line 452
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->$$$reportNull$$$0(I)V

    .line 453
    .line 454
    .line 455
    throw v2

    .line 456
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    const/4 v2, 0x0

    .line 461
    if-eqz v0, :cond_f

    .line 462
    .line 463
    :cond_e
    move v7, v2

    .line 464
    goto :goto_3

    .line 465
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 470
    .line 471
    .line 472
    move-result v3

    .line 473
    if-eqz v3, :cond_e

    .line 474
    .line 475
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;

    .line 480
    .line 481
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 482
    .line 483
    .line 484
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    .line 485
    .line 486
    iget-object v6, v3, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;->inProjection:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 487
    .line 488
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;->outProjection:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 489
    .line 490
    invoke-virtual {v4, v6, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->isSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    if-nez v3, :cond_10

    .line 495
    .line 496
    :goto_3
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    .line 497
    .line 498
    if-eqz v7, :cond_11

    .line 499
    .line 500
    invoke-static {p0}, Landroidx/work/OperationKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getNothingType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    goto :goto_4

    .line 509
    :cond_11
    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->replaceTypeArguments(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/ArrayList;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    :goto_4
    invoke-static {p0, v5}, Lkotlin/ExceptionsKt;->replaceTypeArguments(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/ArrayList;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 514
    .line 515
    .line 516
    move-result-object p0

    .line 517
    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    return-object v0

    .line 521
    :cond_12
    :goto_5
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;

    .line 522
    .line 523
    invoke-direct {v0, p0, p0}, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/ApproximationBounds;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    return-object v0
.end method

.method public static final calculateIfHorizontallyStacked(Ljava/util/ArrayList;)Z
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const-wide v3, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const/16 v5, 0x20

    .line 22
    .line 23
    if-gt v0, v2, :cond_1

    .line 24
    .line 25
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    sub-int/2addr v7, v2

    .line 43
    move v8, v1

    .line 44
    :goto_0
    if-ge v8, v7, :cond_2

    .line 45
    .line 46
    add-int/lit8 v8, v8, 0x1

    .line 47
    .line 48
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    move-object v10, v9

    .line 53
    check-cast v10, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 54
    .line 55
    check-cast v6, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 56
    .line 57
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-virtual {v11}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    .line 62
    .line 63
    .line 64
    move-result-wide v11

    .line 65
    shr-long/2addr v11, v5

    .line 66
    long-to-int v11, v11

    .line 67
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    .line 76
    .line 77
    .line 78
    move-result-wide v12

    .line 79
    shr-long/2addr v12, v5

    .line 80
    long-to-int v12, v12

    .line 81
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    sub-float/2addr v11, v12

    .line 86
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    .line 95
    .line 96
    .line 97
    move-result-wide v12

    .line 98
    and-long/2addr v12, v3

    .line 99
    long-to-int v6, v12

    .line 100
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    .line 109
    .line 110
    .line 111
    move-result-wide v12

    .line 112
    and-long/2addr v12, v3

    .line 113
    long-to-int v10, v12

    .line 114
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    sub-float/2addr v6, v10

    .line 119
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    int-to-long v10, v10

    .line 128
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    int-to-long v12, v6

    .line 133
    shl-long/2addr v10, v5

    .line 134
    and-long/2addr v12, v3

    .line 135
    or-long/2addr v10, v12

    .line 136
    new-instance v6, Landroidx/compose/ui/geometry/Offset;

    .line 137
    .line 138
    invoke-direct {v6, v10, v11}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-object v6, v9

    .line 145
    goto :goto_0

    .line 146
    :cond_2
    move-object p0, v0

    .line 147
    :goto_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-ne v0, v2, :cond_3

    .line 152
    .line 153
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    .line 158
    .line 159
    iget-wide v6, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_4

    .line 167
    .line 168
    const-string v0, "Empty collection can\'t be reduced."

    .line 169
    .line 170
    invoke-static {v0}, Landroidx/compose/ui/util/ListUtilsKt;->throwUnsupportedOperationException(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    sub-int/2addr v6, v2

    .line 182
    if-gt v2, v6, :cond_5

    .line 183
    .line 184
    move v7, v2

    .line 185
    :goto_2
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    check-cast v8, Landroidx/compose/ui/geometry/Offset;

    .line 190
    .line 191
    iget-wide v8, v8, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 192
    .line 193
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 194
    .line 195
    iget-wide v10, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 196
    .line 197
    invoke-static {v10, v11, v8, v9}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 198
    .line 199
    .line 200
    move-result-wide v8

    .line 201
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 202
    .line 203
    invoke-direct {v0, v8, v9}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 204
    .line 205
    .line 206
    if-eq v7, v6, :cond_5

    .line 207
    .line 208
    add-int/lit8 v7, v7, 0x1

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_5
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 212
    .line 213
    iget-wide v6, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 214
    .line 215
    :goto_3
    shr-long v8, v6, v5

    .line 216
    .line 217
    long-to-int p0, v8

    .line 218
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 219
    .line 220
    .line 221
    move-result p0

    .line 222
    and-long/2addr v3, v6

    .line 223
    long-to-int v0, v3

    .line 224
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    cmpg-float p0, v0, p0

    .line 229
    .line 230
    if-gez p0, :cond_6

    .line 231
    .line 232
    :goto_4
    return v2

    .line 233
    :cond_6
    return v1
.end method

.method public static createCoroutineUnintercepted(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function2;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p2, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    .line 9
    .line 10
    invoke-virtual {p2, p0, p1}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    new-instance v0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;

    .line 24
    .line 25
    invoke-direct {v0, p1, p0, p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function2;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    new-instance v1, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;

    .line 30
    .line 31
    invoke-direct {v1, p1, v0, p2, p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$4;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    return-object v1
.end method

.method public static final createNavController$NavHostControllerKt__NavHostController_androidKt(Landroid/content/Context;)Landroidx/navigation/NavHostController;
    .locals 3

    .line 1
    new-instance v0, Landroidx/navigation/NavHostController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/navigation/NavHostController;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, v0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 12
    .line 13
    new-instance v2, Landroidx/navigation/compose/ComposeNavGraphNavigator;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Landroidx/navigation/NavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 22
    .line 23
    new-instance v1, Landroidx/navigation/compose/ComposeNavigator;

    .line 24
    .line 25
    invoke-direct {v1}, Landroidx/navigation/compose/ComposeNavigator;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroidx/navigation/compose/DialogNavigator;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public static final createNode(Landroid/content/Context;Landroidx/glance/Emittable;)Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;
    .locals 7

    .line 1
    invoke-static {}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->newBuilder()Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;->INSTANCE:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 6
    .line 7
    instance-of v2, p1, Landroidx/glance/layout/EmittableBox;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    sget-object v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->BOX:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v2, p1, Landroidx/glance/layout/EmittableRow;

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    move-object v2, p1

    .line 20
    check-cast v2, Landroidx/glance/layout/EmittableRow;

    .line 21
    .line 22
    iget-object v2, v2, Landroidx/glance/layout/EmittableRow;->modifier:Landroidx/glance/GlanceModifier;

    .line 23
    .line 24
    invoke-interface {v2, v1}, Landroidx/glance/GlanceModifier;->any(Lkotlin/jvm/functions/Function1;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    sget-object v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->RADIO_ROW:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->ROW:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    instance-of v2, p1, Landroidx/glance/layout/EmittableColumn;

    .line 37
    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    move-object v2, p1

    .line 41
    check-cast v2, Landroidx/glance/layout/EmittableColumn;

    .line 42
    .line 43
    iget-object v2, v2, Landroidx/glance/layout/EmittableColumn;->modifier:Landroidx/glance/GlanceModifier;

    .line 44
    .line 45
    invoke-interface {v2, v1}, Landroidx/glance/GlanceModifier;->any(Lkotlin/jvm/functions/Function1;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    sget-object v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->RADIO_COLUMN:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    sget-object v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->COLUMN:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    instance-of v1, p1, Landroidx/glance/text/EmittableText;

    .line 58
    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    sget-object v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->TEXT:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    instance-of v1, p1, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;

    .line 65
    .line 66
    if-eqz v1, :cond_6

    .line 67
    .line 68
    sget-object v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->LIST_ITEM:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_6
    instance-of v1, p1, Landroidx/glance/appwidget/lazy/EmittableLazyColumn;

    .line 72
    .line 73
    if-eqz v1, :cond_7

    .line 74
    .line 75
    sget-object v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->LAZY_COLUMN:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_7
    instance-of v1, p1, Landroidx/glance/layout/EmittableSpacer;

    .line 79
    .line 80
    if-eqz v1, :cond_8

    .line 81
    .line 82
    sget-object v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->SPACER:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_8
    instance-of v1, p1, Landroidx/glance/EmittableImage;

    .line 86
    .line 87
    if-eqz v1, :cond_9

    .line 88
    .line 89
    sget-object v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->IMAGE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_9
    instance-of v1, p1, Landroidx/glance/appwidget/RemoteViewsRoot;

    .line 93
    .line 94
    if-eqz v1, :cond_a

    .line 95
    .line 96
    sget-object v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->REMOTE_VIEWS_ROOT:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_a
    instance-of v1, p1, Landroidx/glance/appwidget/EmittableSizeBox;

    .line 100
    .line 101
    if-eqz v1, :cond_1a

    .line 102
    .line 103
    sget-object v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->SIZE_BOX:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 104
    .line 105
    :goto_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 106
    .line 107
    .line 108
    iget-object v2, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 109
    .line 110
    check-cast v2, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->setType(Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p1}, Landroidx/glance/Emittable;->getModifier()Landroidx/glance/GlanceModifier;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    sget-object v2, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$22:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 120
    .line 121
    invoke-interface {v1, v3, v2}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Landroidx/glance/layout/WidthModifier;

    .line 126
    .line 127
    sget-object v2, Landroidx/glance/unit/Dimension$Wrap;->INSTANCE:Landroidx/glance/unit/Dimension$Wrap;

    .line 128
    .line 129
    if-eqz v1, :cond_b

    .line 130
    .line 131
    iget-object v1, v1, Landroidx/glance/layout/WidthModifier;->width:Landroidx/glance/unit/Dimension;

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_b
    move-object v1, v2

    .line 135
    :goto_1
    invoke-static {v1, p0}, Lkotlin/ExceptionsKt;->toProto(Landroidx/glance/unit/Dimension;Landroid/content/Context;)Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 140
    .line 141
    .line 142
    iget-object v4, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 143
    .line 144
    check-cast v4, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 145
    .line 146
    invoke-virtual {v4, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->setWidth(Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {p1}, Landroidx/glance/Emittable;->getModifier()Landroidx/glance/GlanceModifier;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    sget-object v4, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$23:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 154
    .line 155
    invoke-interface {v1, v3, v4}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Landroidx/glance/layout/HeightModifier;

    .line 160
    .line 161
    if-eqz v1, :cond_c

    .line 162
    .line 163
    iget-object v2, v1, Landroidx/glance/layout/HeightModifier;->height:Landroidx/glance/unit/Dimension;

    .line 164
    .line 165
    :cond_c
    invoke-static {v2, p0}, Lkotlin/ExceptionsKt;->toProto(Landroidx/glance/unit/Dimension;Landroid/content/Context;)Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 170
    .line 171
    .line 172
    iget-object v2, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 173
    .line 174
    check-cast v2, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 175
    .line 176
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->setHeight(Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;)V

    .line 177
    .line 178
    .line 179
    invoke-interface {p1}, Landroidx/glance/Emittable;->getModifier()Landroidx/glance/GlanceModifier;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    sget-object v2, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$20:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 184
    .line 185
    invoke-interface {v1, v3, v2}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    const/4 v2, 0x0

    .line 190
    const/4 v4, 0x1

    .line 191
    if-eqz v1, :cond_d

    .line 192
    .line 193
    move v1, v4

    .line 194
    goto :goto_2

    .line 195
    :cond_d
    move v1, v2

    .line 196
    :goto_2
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 197
    .line 198
    .line 199
    iget-object v5, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 200
    .line 201
    check-cast v5, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 202
    .line 203
    invoke-virtual {v5, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->setHasAction(Z)V

    .line 204
    .line 205
    .line 206
    invoke-interface {p1}, Landroidx/glance/Emittable;->getModifier()Landroidx/glance/GlanceModifier;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    sget-object v5, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$21:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 211
    .line 212
    invoke-interface {v1, v3, v5}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    if-eqz v1, :cond_e

    .line 217
    .line 218
    sget-object v1, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;->BACKGROUND_NODE:Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;

    .line 219
    .line 220
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 221
    .line 222
    .line 223
    iget-object v5, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 224
    .line 225
    check-cast v5, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 226
    .line 227
    invoke-virtual {v5, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->setIdentity(Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;)V

    .line 228
    .line 229
    .line 230
    :cond_e
    instance-of v1, p1, Landroidx/glance/EmittableImage;

    .line 231
    .line 232
    if-eqz v1, :cond_13

    .line 233
    .line 234
    move-object v1, p1

    .line 235
    check-cast v1, Landroidx/glance/EmittableImage;

    .line 236
    .line 237
    iget v5, v1, Landroidx/glance/EmittableImage;->contentScale:I

    .line 238
    .line 239
    if-ne v5, v4, :cond_f

    .line 240
    .line 241
    sget-object v3, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;->FIT:Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_f
    if-nez v5, :cond_10

    .line 245
    .line 246
    sget-object v3, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;->CROP:Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_10
    const/4 v6, 0x2

    .line 250
    if-ne v5, v6, :cond_12

    .line 251
    .line 252
    sget-object v3, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;->FILL_BOUNDS:Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;

    .line 253
    .line 254
    :goto_3
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 255
    .line 256
    .line 257
    iget-object v5, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 258
    .line 259
    check-cast v5, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 260
    .line 261
    invoke-virtual {v5, v3}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->setImageScale(Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;)V

    .line 262
    .line 263
    .line 264
    invoke-static {v1}, Lcoil3/util/ContextsKt;->isDecorative(Landroidx/glance/EmittableImage;)Z

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    xor-int/2addr v3, v4

    .line 269
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 270
    .line 271
    .line 272
    iget-object v5, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 273
    .line 274
    check-cast v5, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 275
    .line 276
    invoke-virtual {v5, v3}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->setHasImageDescription(Z)V

    .line 277
    .line 278
    .line 279
    iget-object v1, v1, Landroidx/glance/EmittableImage;->colorFilterParams:Landroidx/glance/TintColorFilterParams;

    .line 280
    .line 281
    if-eqz v1, :cond_11

    .line 282
    .line 283
    move v2, v4

    .line 284
    :cond_11
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 285
    .line 286
    .line 287
    iget-object v1, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 288
    .line 289
    check-cast v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->setHasImageColorFilter(Z)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_4

    .line 295
    .line 296
    :cond_12
    iget p0, v1, Landroidx/glance/EmittableImage;->contentScale:I

    .line 297
    .line 298
    invoke-static {p0}, Landroidx/glance/layout/ContentScale;->toString-impl(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    const-string p1, "Unknown content scale "

    .line 303
    .line 304
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    return-object v3

    .line 308
    :cond_13
    instance-of v1, p1, Landroidx/glance/layout/EmittableColumn;

    .line 309
    .line 310
    if-eqz v1, :cond_14

    .line 311
    .line 312
    move-object v1, p1

    .line 313
    check-cast v1, Landroidx/glance/layout/EmittableColumn;

    .line 314
    .line 315
    iget v1, v1, Landroidx/glance/layout/EmittableColumn;->horizontalAlignment:I

    .line 316
    .line 317
    invoke-static {v1}, Lkotlin/ExceptionsKt;->toProto-uMT2-20(I)Landroidx/glance/appwidget/proto/LayoutProto$HorizontalAlignment;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 322
    .line 323
    .line 324
    iget-object v2, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 325
    .line 326
    check-cast v2, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 327
    .line 328
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->setHorizontalAlignment$1(Landroidx/glance/appwidget/proto/LayoutProto$HorizontalAlignment;)V

    .line 329
    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_14
    instance-of v1, p1, Landroidx/glance/layout/EmittableRow;

    .line 333
    .line 334
    if-eqz v1, :cond_15

    .line 335
    .line 336
    move-object v1, p1

    .line 337
    check-cast v1, Landroidx/glance/layout/EmittableRow;

    .line 338
    .line 339
    iget v1, v1, Landroidx/glance/layout/EmittableRow;->verticalAlignment:I

    .line 340
    .line 341
    invoke-static {v1}, Lkotlin/ExceptionsKt;->toProto-Je2gTW8(I)Landroidx/glance/appwidget/proto/LayoutProto$VerticalAlignment;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 346
    .line 347
    .line 348
    iget-object v2, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 349
    .line 350
    check-cast v2, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 351
    .line 352
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->setVerticalAlignment$1(Landroidx/glance/appwidget/proto/LayoutProto$VerticalAlignment;)V

    .line 353
    .line 354
    .line 355
    goto :goto_4

    .line 356
    :cond_15
    instance-of v1, p1, Landroidx/glance/layout/EmittableBox;

    .line 357
    .line 358
    if-eqz v1, :cond_16

    .line 359
    .line 360
    move-object v1, p1

    .line 361
    check-cast v1, Landroidx/glance/layout/EmittableBox;

    .line 362
    .line 363
    iget-object v2, v1, Landroidx/glance/layout/EmittableBox;->contentAlignment:Landroidx/glance/layout/Alignment;

    .line 364
    .line 365
    iget v2, v2, Landroidx/glance/layout/Alignment;->horizontal:I

    .line 366
    .line 367
    invoke-static {v2}, Lkotlin/ExceptionsKt;->toProto-uMT2-20(I)Landroidx/glance/appwidget/proto/LayoutProto$HorizontalAlignment;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 372
    .line 373
    .line 374
    iget-object v3, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 375
    .line 376
    check-cast v3, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 377
    .line 378
    invoke-virtual {v3, v2}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->setHorizontalAlignment$1(Landroidx/glance/appwidget/proto/LayoutProto$HorizontalAlignment;)V

    .line 379
    .line 380
    .line 381
    iget-object v1, v1, Landroidx/glance/layout/EmittableBox;->contentAlignment:Landroidx/glance/layout/Alignment;

    .line 382
    .line 383
    iget v1, v1, Landroidx/glance/layout/Alignment;->vertical:I

    .line 384
    .line 385
    invoke-static {v1}, Lkotlin/ExceptionsKt;->toProto-Je2gTW8(I)Landroidx/glance/appwidget/proto/LayoutProto$VerticalAlignment;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 390
    .line 391
    .line 392
    iget-object v2, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 393
    .line 394
    check-cast v2, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 395
    .line 396
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->setVerticalAlignment$1(Landroidx/glance/appwidget/proto/LayoutProto$VerticalAlignment;)V

    .line 397
    .line 398
    .line 399
    goto :goto_4

    .line 400
    :cond_16
    instance-of v1, p1, Landroidx/glance/appwidget/lazy/EmittableLazyColumn;

    .line 401
    .line 402
    if-eqz v1, :cond_17

    .line 403
    .line 404
    move-object v1, p1

    .line 405
    check-cast v1, Landroidx/glance/appwidget/lazy/EmittableLazyColumn;

    .line 406
    .line 407
    iget v1, v1, Landroidx/glance/appwidget/lazy/EmittableLazyColumn;->horizontalAlignment:I

    .line 408
    .line 409
    invoke-static {v1}, Lkotlin/ExceptionsKt;->toProto-uMT2-20(I)Landroidx/glance/appwidget/proto/LayoutProto$HorizontalAlignment;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 414
    .line 415
    .line 416
    iget-object v2, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 417
    .line 418
    check-cast v2, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 419
    .line 420
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->setHorizontalAlignment$1(Landroidx/glance/appwidget/proto/LayoutProto$HorizontalAlignment;)V

    .line 421
    .line 422
    .line 423
    :cond_17
    :goto_4
    instance-of v1, p1, Landroidx/glance/EmittableWithChildren;

    .line 424
    .line 425
    if-eqz v1, :cond_19

    .line 426
    .line 427
    instance-of v1, p1, Landroidx/glance/appwidget/lazy/EmittableLazyColumn;

    .line 428
    .line 429
    if-nez v1, :cond_19

    .line 430
    .line 431
    check-cast p1, Landroidx/glance/EmittableWithChildren;

    .line 432
    .line 433
    iget-object p1, p1, Landroidx/glance/EmittableWithChildren;->children:Ljava/util/ArrayList;

    .line 434
    .line 435
    new-instance v1, Ljava/util/ArrayList;

    .line 436
    .line 437
    const/16 v2, 0xa

    .line 438
    .line 439
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    if-eqz v2, :cond_18

    .line 455
    .line 456
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    check-cast v2, Landroidx/glance/Emittable;

    .line 461
    .line 462
    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->createNode(Landroid/content/Context;Landroidx/glance/Emittable;)Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    goto :goto_5

    .line 470
    :cond_18
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 471
    .line 472
    .line 473
    iget-object p0, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 474
    .line 475
    check-cast p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 476
    .line 477
    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->addAllChildren(Ljava/util/ArrayList;)V

    .line 478
    .line 479
    .line 480
    :cond_19
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 481
    .line 482
    .line 483
    move-result-object p0

    .line 484
    check-cast p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 485
    .line 486
    return-object p0

    .line 487
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    move-result-object p0

    .line 491
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object p0

    .line 495
    const-string p1, "Unknown element type "

    .line 496
    .line 497
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    return-object v3
.end method

.method public static final currentAbsoluteScrollOffset(Landroidx/compose/foundation/pager/PagerState;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    int-to-long v2, v2

    .line 11
    mul-long/2addr v0, v2

    .line 12
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    int-to-float p0, p0

    .line 21
    mul-float/2addr v2, p0

    .line 22
    float-to-double v2, v2

    .line 23
    invoke-static {v2, v3}, Lkotlin/UnsignedKt;->roundToLong(D)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    add-long/2addr v2, v0

    .line 28
    return-wide v2
.end method

.method public static final dataStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "datastore/"

    .line 18
    .line 19
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static doesJavaOverrideHaveIncompatibleValueParameterKinds(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, p1

    .line 17
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    .line 18
    .line 19
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getValueParameters()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 27
    .line 28
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getValueParameters()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lkotlin/Pair;

    .line 76
    .line 77
    iget-object v2, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 80
    .line 81
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 84
    .line 85
    move-object v3, p1

    .line 86
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {v3, v2}, Lkotlin/ExceptionsKt;->mapValueParameterType(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    instance-of v2, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->mapValueParameterType(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    instance-of v1, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    .line 105
    .line 106
    if-eq v2, v1, :cond_1

    .line 107
    .line 108
    const/4 p0, 0x1

    .line 109
    return p0

    .line 110
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 111
    return p0
.end method

.method public static final get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :goto_0
    const/4 v0, 0x0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    const v1, 0x7f090747

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    instance-of v2, v1, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v1, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move-object v1, v0

    .line 22
    :goto_1
    if-eqz v1, :cond_1

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_1
    invoke-static {p0}, Landroidx/room/Room;->getParentOrViewTreeDisjointParent(Landroid/view/View;)Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    instance-of v1, p0, Landroid/view/View;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    check-cast p0, Landroid/view/View;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move-object p0, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    return-object v0
.end method

.method public static final getCoroutineContext(Landroidx/room/RoomDatabase;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/CoroutineContext;
    .locals 3

    .line 1
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    .line 6
    .line 7
    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroidx/room/TransactionElement;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p2, Landroidx/room/TransactionElement;->transactionDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p2, v0

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inCompatibilityMode()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const-string v2, "coroutineScope"

    .line 25
    .line 26
    if-eqz v1, :cond_6

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    iget-object p0, p0, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 35
    .line 36
    invoke-interface {p0, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_2
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iget-object p0, p0, Landroidx/room/RoomDatabase;->transactionContext:Lkotlin/coroutines/CoroutineContext;

    .line 48
    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_3
    const-string/jumbo p0, "transactionContext"

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_4
    iget-object p0, p0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 60
    .line 61
    if-eqz p0, :cond_5

    .line 62
    .line 63
    iget-object p0, p0, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_6
    iget-object p0, p0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 71
    .line 72
    if-eqz p0, :cond_8

    .line 73
    .line 74
    iget-object p0, p0, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 75
    .line 76
    if-eqz p2, :cond_7

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_7
    sget-object p2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 80
    .line 81
    :goto_1
    invoke-interface {p0, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0
.end method

.method public static intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object p0, v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->intercepted:Lkotlin/coroutines/Continuation;

    .line 16
    .line 17
    if-nez p0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object v1, Lkotlin/coroutines/ContinuationInterceptor$Key;->$$INSTANCE:Lkotlin/coroutines/ContinuationInterceptor$Key;

    .line 24
    .line 25
    invoke-interface {p0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    new-instance v1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 34
    .line 35
    invoke-direct {v1, p0, v0}, Lkotlinx/coroutines/internal/DispatchedContinuation;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v1, v0

    .line 40
    :goto_1
    iput-object v1, v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->intercepted:Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_2
    return-object p0
.end method

.method public static mapValueParameterType(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;

    .line 3
    .line 4
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "remove"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt$DO_NOTHING_3$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt$DO_NOTHING_3$1;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ne v0, v3, :cond_5

    .line 33
    .line 34
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getPropertyIfAccessor(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 43
    .line 44
    if-nez v0, :cond_5

    .line 45
    .line 46
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isBuiltIn(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_0
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 70
    .line 71
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

    .line 79
    .line 80
    invoke-static {v0, v4, v1}, Lkotlin/ResultKt;->mapType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;

    .line 85
    .line 86
    instance-of v5, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    .line 87
    .line 88
    if-eqz v5, :cond_1

    .line 89
    .line 90
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    move-object v0, v2

    .line 94
    :goto_0
    if-eqz v0, :cond_2

    .line 95
    .line 96
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;->jvmPrimitiveType:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move-object v0, v2

    .line 100
    :goto_1
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 101
    .line 102
    if-eq v0, v5, :cond_3

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/BuiltinMethodsWithSpecialGenericSignature;->getOverriddenBuiltinFunctionWithErasedValueParametersInJava(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-nez v0, :cond_4

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 128
    .line 129
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {v5, v4, v1}, Lkotlin/ResultKt;->mapType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;

    .line 141
    .line 142
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->mutableCollection:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 157
    .line 158
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->toUnsafe()Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v0, v5}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_5

    .line 167
    .line 168
    instance-of v0, v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Object;

    .line 169
    .line 170
    if-eqz v0, :cond_5

    .line 171
    .line 172
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Object;

    .line 173
    .line 174
    iget-object v0, v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Object;->internalName:Ljava/lang/String;

    .line 175
    .line 176
    const-string v4, "java/lang/Object"

    .line 177
    .line 178
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_5

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_5
    :goto_2
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eq v0, v3, :cond_6

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_6
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    instance-of v4, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 201
    .line 202
    if-eqz v4, :cond_7

    .line 203
    .line 204
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_7
    move-object v0, v2

    .line 208
    :goto_3
    if-nez v0, :cond_8

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_8
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 223
    .line 224
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    instance-of v4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 237
    .line 238
    if-eqz v4, :cond_9

    .line 239
    .line 240
    move-object v2, p0

    .line 241
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 242
    .line 243
    :cond_9
    if-nez v2, :cond_a

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_a
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getPrimitiveType(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    if-eqz p0, :cond_b

    .line 251
    .line 252
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getFqNameSafe(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getFqNameSafe(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    if-eqz p0, :cond_b

    .line 265
    .line 266
    :goto_4
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    invoke-static {p0, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableAsSpecified(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

    .line 278
    .line 279
    invoke-static {p0, p1, v1}, Lkotlin/ResultKt;->mapType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;

    .line 284
    .line 285
    return-object p0

    .line 286
    :cond_b
    :goto_5
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

    .line 294
    .line 295
    invoke-static {p0, p1, v1}, Lkotlin/ResultKt;->mapType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;

    .line 300
    .line 301
    return-object p0
.end method

.method public static final migrateDatabase(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "androidx.work.workdb"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Landroidx/work/impl/WorkDatabasePathHelperKt;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "Migrating WorkDatabase to the no-backup directory"

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sget-object v1, Landroidx/work/impl/WorkDatabasePathHelperKt;->DATABASE_EXTRA_FILES:[Ljava/lang/String;

    .line 45
    .line 46
    array-length v2, v1

    .line 47
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/16 v3, 0x10

    .line 52
    .line 53
    if-ge v2, v3, :cond_0

    .line 54
    .line 55
    move v2, v3

    .line 56
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 59
    .line 60
    .line 61
    array-length v2, v1

    .line 62
    const/4 v4, 0x0

    .line 63
    :goto_0
    if-ge v4, v2, :cond_1

    .line 64
    .line 65
    aget-object v5, v1, v4

    .line 66
    .line 67
    new-instance v6, Ljava/io/File;

    .line 68
    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v7, Ljava/io/File;

    .line 92
    .line 93
    new-instance v8, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    add-int/lit8 v4, v4, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 136
    .line 137
    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v0, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-object p0, v1

    .line 144
    :goto_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_6

    .line 157
    .line 158
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Ljava/io/File;

    .line 169
    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Ljava/io/File;

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_3

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_4

    .line 187
    .line 188
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    sget-object v3, Landroidx/work/impl/WorkDatabasePathHelperKt;->TAG:Ljava/lang/String;

    .line 193
    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v5, "Over-writing contents of "

    .line 197
    .line 198
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v2, v3, v4}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :cond_4
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-eqz v2, :cond_5

    .line 216
    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v3, "Migrated "

    .line 220
    .line 221
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v1, "to "

    .line 228
    .line 229
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    goto :goto_3

    .line 240
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v3, "Renaming "

    .line 243
    .line 244
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v1, " to "

    .line 251
    .line 252
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v0, " failed"

    .line 259
    .line 260
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    :goto_3
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    sget-object v2, Landroidx/work/impl/WorkDatabasePathHelperKt;->TAG:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v1, v2, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_6
    return-void
.end method

.method public static final performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/room/RoomDatabase;->suspendingTransactionContext:Ljava/lang/ThreadLocal;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inCompatibilityMode()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inTransaction()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    sget-object v3, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    .line 31
    .line 32
    invoke-interface {v1, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroidx/room/TransactionElement;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object v1, v2

    .line 40
    :goto_0
    if-nez v1, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 58
    .line 59
    :cond_3
    move-object v2, v0

    .line 60
    new-instance v1, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1;

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    move-object v3, p0

    .line 64
    move v5, p1

    .line 65
    move v4, p2

    .line 66
    move-object v6, p3

    .line 67
    invoke-direct/range {v1 .. v7}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1;-><init>(Lkotlin/coroutines/CoroutineContext;Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Landroidx/work/Operation$State;->runBlockingUninterruptible(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public static final performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x4

    .line 32
    const/4 v4, 0x3

    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x1

    .line 35
    const/4 v7, 0x0

    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    if-eq v2, v6, :cond_4

    .line 39
    .line 40
    if-eq v2, v5, :cond_3

    .line 41
    .line 42
    if-eq v2, v4, :cond_2

    .line 43
    .line 44
    if-ne v2, v3, :cond_1

    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v7

    .line 56
    :cond_2
    iget-object p0, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;->L$1:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 57
    .line 58
    move-object p2, p0

    .line 59
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 60
    .line 61
    iget-object p0, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;->L$0:Landroidx/room/RoomDatabase;

    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inCompatibilityMode()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_7

    .line 83
    .line 84
    new-instance p1, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 85
    .line 86
    invoke-direct {p1, p0, p2, v7, v4}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 87
    .line 88
    .line 89
    iput v6, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;->label:I

    .line 90
    .line 91
    invoke-static {p0, v0, p1}, Landroidx/compose/ui/unit/DpKt;->withTransactionContext(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    if-ne p0, v1, :cond_6

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_6
    return-object p0

    .line 99
    :cond_7
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inCompatibilityMode()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_9

    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->isOpenInternal$room_runtime()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_9

    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inTransaction()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_9

    .line 116
    .line 117
    new-instance p1, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1;

    .line 118
    .line 119
    const/4 v2, 0x0

    .line 120
    invoke-direct {p1, p0, v7, p2, v2}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1;-><init>(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;I)V

    .line 121
    .line 122
    .line 123
    iput v5, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;->label:I

    .line 124
    .line 125
    invoke-virtual {p0, v2, p1, v0}, Landroidx/room/RoomDatabase;->useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    if-ne p0, v1, :cond_8

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_8
    return-object p0

    .line 133
    :cond_9
    iput-object p0, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;->L$0:Landroidx/room/RoomDatabase;

    .line 134
    .line 135
    move-object p1, p2

    .line 136
    check-cast p1, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 137
    .line 138
    iput-object p1, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;->L$1:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 139
    .line 140
    iput v4, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;->label:I

    .line 141
    .line 142
    invoke-static {p0, v6, v0}, Lkotlin/ExceptionsKt;->getCoroutineContext(Landroidx/room/RoomDatabase;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/CoroutineContext;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-ne p1, v1, :cond_a

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_a
    :goto_1
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 150
    .line 151
    new-instance v2, Landroidx/paging/PageFetcher$flow$1;

    .line 152
    .line 153
    invoke-direct {v2, p0, v7, p2}, Landroidx/paging/PageFetcher$flow$1;-><init>(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 154
    .line 155
    .line 156
    iput-object v7, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;->L$0:Landroidx/room/RoomDatabase;

    .line 157
    .line 158
    iput-object v7, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;->L$1:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 159
    .line 160
    iput v3, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$1;->label:I

    .line 161
    .line 162
    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    if-ne p0, v1, :cond_b

    .line 167
    .line 168
    :goto_2
    return-object v1

    .line 169
    :cond_b
    return-object p0
.end method

.method public static final performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;

    .line 9
    .line 10
    iget v2, v1, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    .line 20
    .line 21
    :goto_0
    move-object v7, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v1, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :goto_1
    iget-object v0, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v1, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x3

    .line 37
    const/4 v4, 0x2

    .line 38
    const/4 v9, 0x1

    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    if-eq v1, v9, :cond_3

    .line 42
    .line 43
    if-eq v1, v4, :cond_2

    .line 44
    .line 45
    if-ne v1, v3, :cond_1

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :cond_2
    iget-boolean p0, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->Z$1:Z

    .line 58
    .line 59
    iget-boolean v1, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->Z$0:Z

    .line 60
    .line 61
    iget-object v4, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$1:Lkotlin/jvm/functions/Function1;

    .line 62
    .line 63
    iget-object v5, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$0:Landroidx/room/RoomDatabase;

    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    move v13, p0

    .line 69
    move-object v14, v4

    .line 70
    move-object v11, v5

    .line 71
    :goto_2
    move v12, v1

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inCompatibilityMode()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->isOpenInternal$room_runtime()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inTransaction()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    new-instance v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1;

    .line 99
    .line 100
    const/4 v4, 0x0

    .line 101
    const/4 v6, 0x0

    .line 102
    move-object v3, p0

    .line 103
    move/from16 v2, p1

    .line 104
    .line 105
    move/from16 v1, p2

    .line 106
    .line 107
    move-object/from16 v5, p3

    .line 108
    .line 109
    invoke-direct/range {v0 .. v6}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1;-><init>(ZZLandroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;I)V

    .line 110
    .line 111
    .line 112
    move v1, v2

    .line 113
    move-object v2, v0

    .line 114
    iput v9, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    .line 115
    .line 116
    invoke-virtual {p0, v1, v2, v7}, Landroidx/room/RoomDatabase;->useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    if-ne p0, v8, :cond_5

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_5
    return-object p0

    .line 124
    :cond_6
    move/from16 v1, p1

    .line 125
    .line 126
    move/from16 v5, p2

    .line 127
    .line 128
    iput-object p0, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$0:Landroidx/room/RoomDatabase;

    .line 129
    .line 130
    move-object/from16 v6, p3

    .line 131
    .line 132
    iput-object v6, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$1:Lkotlin/jvm/functions/Function1;

    .line 133
    .line 134
    iput-boolean v1, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->Z$0:Z

    .line 135
    .line 136
    iput-boolean v5, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->Z$1:Z

    .line 137
    .line 138
    iput v4, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    .line 139
    .line 140
    invoke-static {p0, v5, v7}, Lkotlin/ExceptionsKt;->getCoroutineContext(Landroidx/room/RoomDatabase;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/CoroutineContext;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    if-ne v4, v8, :cond_7

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_7
    move-object v11, p0

    .line 148
    move-object v0, v4

    .line 149
    move v13, v5

    .line 150
    move-object v14, v6

    .line 151
    goto :goto_2

    .line 152
    :goto_3
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 153
    .line 154
    new-instance v9, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$1;

    .line 155
    .line 156
    const/4 v10, 0x0

    .line 157
    invoke-direct/range {v9 .. v14}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1$1;-><init>(Lkotlin/coroutines/Continuation;Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)V

    .line 158
    .line 159
    .line 160
    iput-object v2, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$0:Landroidx/room/RoomDatabase;

    .line 161
    .line 162
    iput-object v2, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$1:Lkotlin/jvm/functions/Function1;

    .line 163
    .line 164
    iput v3, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    .line 165
    .line 166
    invoke-static {v0, v9, v7}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    if-ne p0, v8, :cond_8

    .line 171
    .line 172
    :goto_4
    return-object v8

    .line 173
    :cond_8
    return-object p0
.end method

.method public static final populate(Landroid/view/ViewStructure;Landroidx/compose/ui/node/LayoutNode;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroidx/compose/ui/spatial/RectManager;)V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 6
    .line 7
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->GetTextLayoutResult:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v8, 0x2

    .line 14
    const/16 v11, 0x8

    .line 15
    .line 16
    const/4 v14, 0x1

    .line 17
    if-eqz v2, :cond_14

    .line 18
    .line 19
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 20
    .line 21
    iget-object v15, v2, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 22
    .line 23
    const-wide/16 v16, 0x80

    .line 24
    .line 25
    iget-object v3, v2, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v2, v2, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 28
    .line 29
    array-length v4, v2

    .line 30
    sub-int/2addr v4, v8

    .line 31
    move/from16 v31, v8

    .line 32
    .line 33
    if-ltz v4, :cond_12

    .line 34
    .line 35
    move/from16 v28, v14

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const-wide/16 v18, 0xff

    .line 40
    .line 41
    const/16 v20, 0x0

    .line 42
    .line 43
    const/16 v21, 0x0

    .line 44
    .line 45
    const/16 v22, 0x0

    .line 46
    .line 47
    const/16 v23, 0x0

    .line 48
    .line 49
    const/16 v24, 0x0

    .line 50
    .line 51
    const/16 v25, 0x0

    .line 52
    .line 53
    const/16 v26, 0x0

    .line 54
    .line 55
    const/16 v27, 0x0

    .line 56
    .line 57
    const/16 v29, 0x0

    .line 58
    .line 59
    const/16 v30, 0x7

    .line 60
    .line 61
    :goto_0
    aget-wide v7, v2, v5

    .line 62
    .line 63
    const-wide v32, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    not-long v9, v7

    .line 69
    shl-long v9, v9, v30

    .line 70
    .line 71
    and-long/2addr v9, v7

    .line 72
    and-long v9, v9, v32

    .line 73
    .line 74
    cmp-long v9, v9, v32

    .line 75
    .line 76
    if-eqz v9, :cond_11

    .line 77
    .line 78
    sub-int v9, v5, v4

    .line 79
    .line 80
    not-int v9, v9

    .line 81
    ushr-int/lit8 v9, v9, 0x1f

    .line 82
    .line 83
    rsub-int/lit8 v9, v9, 0x8

    .line 84
    .line 85
    const/4 v10, 0x0

    .line 86
    :goto_1
    if-ge v10, v9, :cond_10

    .line 87
    .line 88
    and-long v34, v7, v18

    .line 89
    .line 90
    cmp-long v34, v34, v16

    .line 91
    .line 92
    if-gez v34, :cond_f

    .line 93
    .line 94
    shl-int/lit8 v34, v5, 0x3

    .line 95
    .line 96
    add-int v34, v34, v10

    .line 97
    .line 98
    aget-object v35, v15, v34

    .line 99
    .line 100
    aget-object v34, v3, v34

    .line 101
    .line 102
    move-object/from16 v12, v35

    .line 103
    .line 104
    check-cast v12, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 105
    .line 106
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDataType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 107
    .line 108
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v13

    .line 112
    if-eqz v13, :cond_0

    .line 113
    .line 114
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    move-object/from16 v6, v34

    .line 118
    .line 119
    check-cast v6, Landroidx/compose/ui/autofill/AndroidContentDataType;

    .line 120
    .line 121
    goto/16 :goto_2

    .line 122
    .line 123
    :cond_0
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 124
    .line 125
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    if-eqz v13, :cond_1

    .line 130
    .line 131
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    check-cast v34, Ljava/util/List;

    .line 135
    .line 136
    invoke-static/range {v34 .. v34}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    check-cast v12, Ljava/lang/String;

    .line 141
    .line 142
    if-eqz v12, :cond_f

    .line 143
    .line 144
    invoke-virtual {v0, v12}, Landroid/view/ViewStructure;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_2

    .line 148
    .line 149
    :cond_1
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 150
    .line 151
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v13

    .line 155
    if-eqz v13, :cond_2

    .line 156
    .line 157
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    move-object/from16 v24, v34

    .line 161
    .line 162
    check-cast v24, Landroidx/compose/ui/autofill/ContentType;

    .line 163
    .line 164
    goto/16 :goto_2

    .line 165
    .line 166
    :cond_2
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->FillableData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 167
    .line 168
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v13

    .line 172
    if-eqz v13, :cond_3

    .line 173
    .line 174
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    move-object/from16 v23, v34

    .line 178
    .line 179
    check-cast v23, Landroidx/compose/ui/autofill/AndroidFillableData;

    .line 180
    .line 181
    goto/16 :goto_2

    .line 182
    .line 183
    :cond_3
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 184
    .line 185
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    if-eqz v13, :cond_4

    .line 190
    .line 191
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    move-object/from16 v22, v34

    .line 195
    .line 196
    check-cast v22, Landroidx/compose/ui/text/AnnotatedString;

    .line 197
    .line 198
    goto/16 :goto_2

    .line 199
    .line 200
    :cond_4
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 201
    .line 202
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v13

    .line 206
    if-eqz v13, :cond_5

    .line 207
    .line 208
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    check-cast v34, Ljava/lang/Boolean;

    .line 212
    .line 213
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    invoke-virtual {v0, v12}, Landroid/view/ViewStructure;->setFocused(Z)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :cond_5
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->MaxTextLength:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 223
    .line 224
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v13

    .line 228
    if-eqz v13, :cond_6

    .line 229
    .line 230
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    move-object/from16 v29, v34

    .line 234
    .line 235
    check-cast v29, Ljava/lang/Integer;

    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :cond_6
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 240
    .line 241
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v13

    .line 245
    if-eqz v13, :cond_7

    .line 246
    .line 247
    move/from16 v27, v14

    .line 248
    .line 249
    goto/16 :goto_2

    .line 250
    .line 251
    :cond_7
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->IsSensitiveData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 252
    .line 253
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v13

    .line 257
    if-eqz v13, :cond_8

    .line 258
    .line 259
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    check-cast v34, Ljava/lang/Boolean;

    .line 263
    .line 264
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    .line 265
    .line 266
    .line 267
    move-result v28

    .line 268
    goto :goto_2

    .line 269
    :cond_8
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 270
    .line 271
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v13

    .line 275
    if-eqz v13, :cond_9

    .line 276
    .line 277
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    move-object/from16 v26, v34

    .line 281
    .line 282
    check-cast v26, Landroidx/compose/ui/semantics/Role;

    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_9
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 286
    .line 287
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    if-eqz v13, :cond_a

    .line 292
    .line 293
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    move-object/from16 v25, v34

    .line 297
    .line 298
    check-cast v25, Ljava/lang/Boolean;

    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_a
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 302
    .line 303
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v13

    .line 307
    if-eqz v13, :cond_b

    .line 308
    .line 309
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    move-object/from16 v21, v34

    .line 313
    .line 314
    check-cast v21, Landroidx/compose/ui/state/ToggleableState;

    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_b
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 318
    .line 319
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v13

    .line 323
    if-eqz v13, :cond_c

    .line 324
    .line 325
    invoke-virtual {v0, v14}, Landroid/view/ViewStructure;->setClickable(Z)V

    .line 326
    .line 327
    .line 328
    goto :goto_2

    .line 329
    :cond_c
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->OnLongClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 330
    .line 331
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v13

    .line 335
    if-eqz v13, :cond_d

    .line 336
    .line 337
    invoke-virtual {v0, v14}, Landroid/view/ViewStructure;->setLongClickable(Z)V

    .line 338
    .line 339
    .line 340
    goto :goto_2

    .line 341
    :cond_d
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->RequestFocus:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 342
    .line 343
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v13

    .line 347
    if-eqz v13, :cond_e

    .line 348
    .line 349
    invoke-virtual {v0, v14}, Landroid/view/ViewStructure;->setFocusable(Z)V

    .line 350
    .line 351
    .line 352
    goto :goto_2

    .line 353
    :cond_e
    sget-object v13, Landroidx/compose/ui/semantics/SemanticsActions;->SetText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 354
    .line 355
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v12

    .line 359
    if-eqz v12, :cond_f

    .line 360
    .line 361
    move/from16 v20, v14

    .line 362
    .line 363
    :cond_f
    :goto_2
    shr-long/2addr v7, v11

    .line 364
    add-int/lit8 v10, v10, 0x1

    .line 365
    .line 366
    goto/16 :goto_1

    .line 367
    .line 368
    :cond_10
    if-ne v9, v11, :cond_13

    .line 369
    .line 370
    :cond_11
    if-eq v5, v4, :cond_13

    .line 371
    .line 372
    add-int/lit8 v5, v5, 0x1

    .line 373
    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :cond_12
    const-wide/16 v18, 0xff

    .line 377
    .line 378
    const/16 v30, 0x7

    .line 379
    .line 380
    const-wide v32, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    move/from16 v28, v14

    .line 386
    .line 387
    const/4 v6, 0x0

    .line 388
    const/16 v20, 0x0

    .line 389
    .line 390
    const/16 v21, 0x0

    .line 391
    .line 392
    const/16 v22, 0x0

    .line 393
    .line 394
    const/16 v23, 0x0

    .line 395
    .line 396
    const/16 v24, 0x0

    .line 397
    .line 398
    const/16 v25, 0x0

    .line 399
    .line 400
    const/16 v26, 0x0

    .line 401
    .line 402
    const/16 v27, 0x0

    .line 403
    .line 404
    const/16 v29, 0x0

    .line 405
    .line 406
    :cond_13
    move-object/from16 v2, v21

    .line 407
    .line 408
    move-object/from16 v3, v22

    .line 409
    .line 410
    move-object/from16 v4, v23

    .line 411
    .line 412
    move-object/from16 v5, v26

    .line 413
    .line 414
    goto :goto_3

    .line 415
    :cond_14
    move/from16 v31, v8

    .line 416
    .line 417
    const-wide/16 v16, 0x80

    .line 418
    .line 419
    const-wide/16 v18, 0xff

    .line 420
    .line 421
    const/16 v30, 0x7

    .line 422
    .line 423
    const-wide v32, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    move/from16 v28, v14

    .line 429
    .line 430
    const/4 v2, 0x0

    .line 431
    const/4 v3, 0x0

    .line 432
    const/4 v4, 0x0

    .line 433
    const/4 v5, 0x0

    .line 434
    const/4 v6, 0x0

    .line 435
    const/16 v20, 0x0

    .line 436
    .line 437
    const/16 v24, 0x0

    .line 438
    .line 439
    const/16 v25, 0x0

    .line 440
    .line 441
    const/16 v27, 0x0

    .line 442
    .line 443
    const/16 v29, 0x0

    .line 444
    .line 445
    :goto_3
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 446
    .line 447
    .line 448
    move-result-object v7

    .line 449
    if-eqz v7, :cond_18

    .line 450
    .line 451
    iget-boolean v8, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 452
    .line 453
    if-eqz v8, :cond_18

    .line 454
    .line 455
    iget-boolean v8, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics:Z

    .line 456
    .line 457
    if-eqz v8, :cond_15

    .line 458
    .line 459
    goto :goto_5

    .line 460
    :cond_15
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->copy()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    new-instance v8, Landroidx/collection/MutableObjectList;

    .line 465
    .line 466
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui()Ljava/util/List;

    .line 467
    .line 468
    .line 469
    move-result-object v9

    .line 470
    check-cast v9, Landroidx/collection/MutableObjectList$ObjectListMutableList;

    .line 471
    .line 472
    iget-object v9, v9, Landroidx/collection/MutableObjectList$ObjectListMutableList;->objectList:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast v9, Landroidx/compose/runtime/collection/MutableVector;

    .line 475
    .line 476
    iget v9, v9, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 477
    .line 478
    invoke-direct {v8, v9}, Landroidx/collection/MutableObjectList;-><init>(I)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui()Ljava/util/List;

    .line 482
    .line 483
    .line 484
    move-result-object v9

    .line 485
    invoke-virtual {v8, v9}, Landroidx/collection/MutableObjectList;->addAll(Ljava/util/List;)V

    .line 486
    .line 487
    .line 488
    :cond_16
    :goto_4
    invoke-virtual {v8}, Landroidx/collection/MutableObjectList;->isNotEmpty()Z

    .line 489
    .line 490
    .line 491
    move-result v9

    .line 492
    if-eqz v9, :cond_18

    .line 493
    .line 494
    iget v9, v8, Landroidx/collection/MutableObjectList;->_size:I

    .line 495
    .line 496
    sub-int/2addr v9, v14

    .line 497
    invoke-virtual {v8, v9}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v9

    .line 501
    check-cast v9, Landroidx/compose/ui/node/LayoutNode;

    .line 502
    .line 503
    invoke-virtual {v9}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 504
    .line 505
    .line 506
    move-result-object v10

    .line 507
    if-eqz v10, :cond_16

    .line 508
    .line 509
    iget-boolean v12, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    .line 510
    .line 511
    if-eqz v12, :cond_17

    .line 512
    .line 513
    goto :goto_4

    .line 514
    :cond_17
    invoke-virtual {v7, v10}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->mergeChild$ui(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 515
    .line 516
    .line 517
    iget-boolean v10, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics:Z

    .line 518
    .line 519
    if-nez v10, :cond_16

    .line 520
    .line 521
    invoke-virtual {v9}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui()Ljava/util/List;

    .line 522
    .line 523
    .line 524
    move-result-object v9

    .line 525
    invoke-virtual {v8, v9}, Landroidx/collection/MutableObjectList;->addAll(Ljava/util/List;)V

    .line 526
    .line 527
    .line 528
    goto :goto_4

    .line 529
    :cond_18
    :goto_5
    if-eqz v7, :cond_1e

    .line 530
    .line 531
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 532
    .line 533
    iget-object v8, v7, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 534
    .line 535
    iget-object v9, v7, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 536
    .line 537
    iget-object v7, v7, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 538
    .line 539
    array-length v10, v7

    .line 540
    add-int/lit8 v10, v10, -0x2

    .line 541
    .line 542
    if-ltz v10, :cond_1e

    .line 543
    .line 544
    move/from16 v21, v14

    .line 545
    .line 546
    const/4 v12, 0x0

    .line 547
    const/4 v13, 0x0

    .line 548
    :goto_6
    aget-wide v14, v7, v12

    .line 549
    .line 550
    move/from16 v22, v11

    .line 551
    .line 552
    move/from16 v23, v12

    .line 553
    .line 554
    not-long v11, v14

    .line 555
    shl-long v11, v11, v30

    .line 556
    .line 557
    and-long/2addr v11, v14

    .line 558
    and-long v11, v11, v32

    .line 559
    .line 560
    cmp-long v11, v11, v32

    .line 561
    .line 562
    if-eqz v11, :cond_1d

    .line 563
    .line 564
    sub-int v12, v23, v10

    .line 565
    .line 566
    not-int v11, v12

    .line 567
    ushr-int/lit8 v11, v11, 0x1f

    .line 568
    .line 569
    rsub-int/lit8 v11, v11, 0x8

    .line 570
    .line 571
    const/4 v12, 0x0

    .line 572
    :goto_7
    if-ge v12, v11, :cond_1c

    .line 573
    .line 574
    and-long v36, v14, v18

    .line 575
    .line 576
    cmp-long v26, v36, v16

    .line 577
    .line 578
    if-gez v26, :cond_1a

    .line 579
    .line 580
    shl-int/lit8 v26, v23, 0x3

    .line 581
    .line 582
    add-int v26, v26, v12

    .line 583
    .line 584
    aget-object v34, v8, v26

    .line 585
    .line 586
    aget-object v26, v9, v26

    .line 587
    .line 588
    move-object/from16 v36, v7

    .line 589
    .line 590
    move-object/from16 v7, v34

    .line 591
    .line 592
    check-cast v7, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 593
    .line 594
    move-object/from16 v34, v8

    .line 595
    .line 596
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->Disabled:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 597
    .line 598
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v8

    .line 602
    if-eqz v8, :cond_19

    .line 603
    .line 604
    const/4 v8, 0x0

    .line 605
    invoke-virtual {v0, v8}, Landroid/view/ViewStructure;->setEnabled(Z)V

    .line 606
    .line 607
    .line 608
    goto :goto_8

    .line 609
    :cond_19
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 610
    .line 611
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result v7

    .line 615
    if-eqz v7, :cond_1b

    .line 616
    .line 617
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    .line 619
    .line 620
    move-object/from16 v13, v26

    .line 621
    .line 622
    check-cast v13, Ljava/util/List;

    .line 623
    .line 624
    goto :goto_8

    .line 625
    :cond_1a
    move-object/from16 v36, v7

    .line 626
    .line 627
    move-object/from16 v34, v8

    .line 628
    .line 629
    :cond_1b
    :goto_8
    shr-long v14, v14, v22

    .line 630
    .line 631
    add-int/lit8 v12, v12, 0x1

    .line 632
    .line 633
    move-object/from16 v8, v34

    .line 634
    .line 635
    move-object/from16 v7, v36

    .line 636
    .line 637
    goto :goto_7

    .line 638
    :cond_1c
    move-object/from16 v36, v7

    .line 639
    .line 640
    move-object/from16 v34, v8

    .line 641
    .line 642
    move/from16 v7, v22

    .line 643
    .line 644
    if-ne v11, v7, :cond_1f

    .line 645
    .line 646
    :goto_9
    move/from16 v8, v23

    .line 647
    .line 648
    goto :goto_a

    .line 649
    :cond_1d
    move-object/from16 v36, v7

    .line 650
    .line 651
    move-object/from16 v34, v8

    .line 652
    .line 653
    move/from16 v7, v22

    .line 654
    .line 655
    goto :goto_9

    .line 656
    :goto_a
    if-eq v8, v10, :cond_1f

    .line 657
    .line 658
    add-int/lit8 v12, v8, 0x1

    .line 659
    .line 660
    move v11, v7

    .line 661
    move-object/from16 v8, v34

    .line 662
    .line 663
    move-object/from16 v7, v36

    .line 664
    .line 665
    goto :goto_6

    .line 666
    :cond_1e
    move/from16 v21, v14

    .line 667
    .line 668
    const/4 v13, 0x0

    .line 669
    :cond_1f
    iget v7, v1, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    .line 670
    .line 671
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 672
    .line 673
    .line 674
    move-result-object v7

    .line 675
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 676
    .line 677
    .line 678
    move-result-object v8

    .line 679
    if-nez v8, :cond_20

    .line 680
    .line 681
    const/4 v7, 0x0

    .line 682
    :cond_20
    if-eqz v7, :cond_21

    .line 683
    .line 684
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 685
    .line 686
    .line 687
    move-result v7

    .line 688
    :goto_b
    move-object/from16 v8, p2

    .line 689
    .line 690
    goto :goto_c

    .line 691
    :cond_21
    const/4 v7, -0x1

    .line 692
    goto :goto_b

    .line 693
    :goto_c
    invoke-static {v0, v8, v7}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillId(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillId;I)V

    .line 694
    .line 695
    .line 696
    move-object/from16 v8, p3

    .line 697
    .line 698
    const/4 v9, 0x0

    .line 699
    invoke-virtual {v0, v7, v8, v9, v9}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    if-eqz v6, :cond_22

    .line 703
    .line 704
    iget v6, v6, Landroidx/compose/ui/autofill/AndroidContentDataType;->androidAutofillType:I

    .line 705
    .line 706
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 707
    .line 708
    .line 709
    move-result-object v12

    .line 710
    goto :goto_d

    .line 711
    :cond_22
    if-eqz v20, :cond_23

    .line 712
    .line 713
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 714
    .line 715
    .line 716
    move-result-object v12

    .line 717
    goto :goto_d

    .line 718
    :cond_23
    if-eqz v2, :cond_24

    .line 719
    .line 720
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 721
    .line 722
    .line 723
    move-result-object v12

    .line 724
    goto :goto_d

    .line 725
    :cond_24
    move-object v12, v9

    .line 726
    :goto_d
    if-eqz v12, :cond_25

    .line 727
    .line 728
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 729
    .line 730
    .line 731
    move-result v6

    .line 732
    invoke-static {v0, v6}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillType(Landroid/view/ViewStructure;I)V

    .line 733
    .line 734
    .line 735
    :cond_25
    if-eqz v3, :cond_26

    .line 736
    .line 737
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 738
    .line 739
    invoke-static {v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->getAutofillTextValue(Ljava/lang/String;)Landroid/view/autofill/AutofillValue;

    .line 740
    .line 741
    .line 742
    move-result-object v3

    .line 743
    invoke-static {v0, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillValue(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillValue;)V

    .line 744
    .line 745
    .line 746
    :cond_26
    if-eqz v4, :cond_27

    .line 747
    .line 748
    iget-object v3, v4, Landroidx/compose/ui/autofill/AndroidFillableData;->autofillValue:Landroid/view/autofill/AutofillValue;

    .line 749
    .line 750
    invoke-static {v0, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillValue(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillValue;)V

    .line 751
    .line 752
    .line 753
    :cond_27
    if-eqz v24, :cond_28

    .line 754
    .line 755
    invoke-static/range {v24 .. v24}, Landroidx/work/OperationKt;->getContentHints(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v3

    .line 759
    if-eqz v3, :cond_28

    .line 760
    .line 761
    invoke-static {v0, v3}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setAutofillHints(Landroid/view/ViewStructure;[Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    :cond_28
    move-object/from16 v3, p4

    .line 765
    .line 766
    iget-object v3, v3, Landroidx/compose/ui/spatial/RectManager;->rects:Lokhttp3/internal/http/StatusLine;

    .line 767
    .line 768
    iget v4, v1, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    .line 769
    .line 770
    new-instance v6, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$7;

    .line 771
    .line 772
    invoke-direct {v6, v0}, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$7;-><init>(Landroid/view/ViewStructure;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v3, v4, v6}, Lokhttp3/internal/http/StatusLine;->withRect(ILkotlin/jvm/functions/Function4;)V

    .line 776
    .line 777
    .line 778
    if-eqz v25, :cond_29

    .line 779
    .line 780
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    .line 781
    .line 782
    .line 783
    move-result v3

    .line 784
    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setSelected(Z)V

    .line 785
    .line 786
    .line 787
    :cond_29
    const/4 v3, 0x4

    .line 788
    if-eqz v2, :cond_2b

    .line 789
    .line 790
    move/from16 v4, v21

    .line 791
    .line 792
    invoke-virtual {v0, v4}, Landroid/view/ViewStructure;->setCheckable(Z)V

    .line 793
    .line 794
    .line 795
    sget-object v4, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    .line 796
    .line 797
    if-ne v2, v4, :cond_2a

    .line 798
    .line 799
    const/4 v2, 0x1

    .line 800
    goto :goto_e

    .line 801
    :cond_2a
    const/4 v2, 0x0

    .line 802
    :goto_e
    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setChecked(Z)V

    .line 803
    .line 804
    .line 805
    goto :goto_10

    .line 806
    :cond_2b
    if-eqz v25, :cond_2e

    .line 807
    .line 808
    if-nez v5, :cond_2d

    .line 809
    .line 810
    :cond_2c
    const/4 v4, 0x1

    .line 811
    goto :goto_f

    .line 812
    :cond_2d
    iget v2, v5, Landroidx/compose/ui/semantics/Role;->value:I

    .line 813
    .line 814
    if-ne v2, v3, :cond_2c

    .line 815
    .line 816
    goto :goto_10

    .line 817
    :goto_f
    invoke-virtual {v0, v4}, Landroid/view/ViewStructure;->setCheckable(Z)V

    .line 818
    .line 819
    .line 820
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    .line 821
    .line 822
    .line 823
    move-result v2

    .line 824
    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setChecked(Z)V

    .line 825
    .line 826
    .line 827
    :cond_2e
    :goto_10
    sget-object v2, Landroidx/compose/ui/autofill/ContentType;->Companion:Landroidx/compose/ui/autofill/ContentType$Companion;

    .line 828
    .line 829
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 830
    .line 831
    .line 832
    sget-object v2, Landroidx/compose/ui/autofill/ContentType$Companion;->Password:Landroidx/compose/ui/autofill/AndroidContentType;

    .line 833
    .line 834
    invoke-static {v2}, Landroidx/work/OperationKt;->getContentHints(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    check-cast v2, Ljava/lang/String;

    .line 843
    .line 844
    if-eqz v24, :cond_30

    .line 845
    .line 846
    invoke-static/range {v24 .. v24}, Landroidx/work/OperationKt;->getContentHints(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v4

    .line 850
    if-eqz v4, :cond_30

    .line 851
    .line 852
    invoke-static {v2, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 853
    .line 854
    .line 855
    move-result v2

    .line 856
    const/4 v4, 0x1

    .line 857
    if-ne v2, v4, :cond_2f

    .line 858
    .line 859
    move v2, v4

    .line 860
    goto :goto_12

    .line 861
    :cond_2f
    :goto_11
    const/4 v2, 0x0

    .line 862
    goto :goto_12

    .line 863
    :cond_30
    const/4 v4, 0x1

    .line 864
    goto :goto_11

    .line 865
    :goto_12
    if-nez v27, :cond_32

    .line 866
    .line 867
    if-eqz v2, :cond_31

    .line 868
    .line 869
    goto :goto_13

    .line 870
    :cond_31
    const/4 v2, 0x0

    .line 871
    goto :goto_14

    .line 872
    :cond_32
    :goto_13
    move v2, v4

    .line 873
    :goto_14
    if-nez v2, :cond_34

    .line 874
    .line 875
    if-eqz v28, :cond_33

    .line 876
    .line 877
    goto :goto_15

    .line 878
    :cond_33
    const/4 v14, 0x0

    .line 879
    goto :goto_16

    .line 880
    :cond_34
    :goto_15
    move v14, v4

    .line 881
    :goto_16
    invoke-static {v0, v14}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setDataIsSensitive(Landroid/view/ViewStructure;Z)V

    .line 882
    .line 883
    .line 884
    iget-object v4, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 885
    .line 886
    iget-object v4, v4, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 887
    .line 888
    check-cast v4, Landroidx/compose/ui/node/NodeCoordinator;

    .line 889
    .line 890
    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeCoordinator;->isTransparent()Z

    .line 891
    .line 892
    .line 893
    move-result v4

    .line 894
    if-eqz v4, :cond_35

    .line 895
    .line 896
    goto :goto_17

    .line 897
    :cond_35
    const/4 v3, 0x0

    .line 898
    :goto_17
    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setVisibility(I)V

    .line 899
    .line 900
    .line 901
    if-eqz v13, :cond_37

    .line 902
    .line 903
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 904
    .line 905
    .line 906
    move-result v3

    .line 907
    const-string v4, ""

    .line 908
    .line 909
    const/4 v6, 0x0

    .line 910
    :goto_18
    if-ge v6, v3, :cond_36

    .line 911
    .line 912
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v7

    .line 916
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString;

    .line 917
    .line 918
    new-instance v8, Ljava/lang/StringBuilder;

    .line 919
    .line 920
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    iget-object v4, v7, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 924
    .line 925
    const/16 v7, 0xa

    .line 926
    .line 927
    invoke-static {v8, v4, v7}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v4

    .line 931
    add-int/lit8 v6, v6, 0x1

    .line 932
    .line 933
    goto :goto_18

    .line 934
    :cond_36
    invoke-virtual {v0, v4}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    .line 935
    .line 936
    .line 937
    const-string v3, "android.widget.TextView"

    .line 938
    .line 939
    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    :cond_37
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui()Ljava/util/List;

    .line 943
    .line 944
    .line 945
    move-result-object v1

    .line 946
    check-cast v1, Landroidx/collection/MutableObjectList$ObjectListMutableList;

    .line 947
    .line 948
    invoke-virtual {v1}, Landroidx/collection/MutableObjectList$ObjectListMutableList;->isEmpty()Z

    .line 949
    .line 950
    .line 951
    move-result v1

    .line 952
    if-eqz v1, :cond_38

    .line 953
    .line 954
    if-eqz v5, :cond_38

    .line 955
    .line 956
    iget v1, v5, Landroidx/compose/ui/semantics/Role;->value:I

    .line 957
    .line 958
    invoke-static {v1}, Landroidx/compose/ui/platform/TestTagKt;->toLegacyClassName-V4PA4sw(I)Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v1

    .line 962
    if-eqz v1, :cond_38

    .line 963
    .line 964
    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    .line 965
    .line 966
    .line 967
    :cond_38
    if-eqz v20, :cond_3a

    .line 968
    .line 969
    const-string v1, "android.widget.EditText"

    .line 970
    .line 971
    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 975
    .line 976
    const/16 v3, 0x1c

    .line 977
    .line 978
    if-lt v1, v3, :cond_39

    .line 979
    .line 980
    if-eqz v29, :cond_39

    .line 981
    .line 982
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Number;->intValue()I

    .line 983
    .line 984
    .line 985
    move-result v1

    .line 986
    invoke-static {v0, v1}, Landroidx/core/os/HandlerCompat$Api28Impl;->setMaxTextLength(Landroid/view/ViewStructure;I)V

    .line 987
    .line 988
    .line 989
    :cond_39
    if-eqz v2, :cond_3a

    .line 990
    .line 991
    invoke-static {v0}, Landroidx/compose/ui/autofill/AutofillApi26Helper;->setInputType(Landroid/view/ViewStructure;)V

    .line 992
    .line 993
    .line 994
    :cond_3a
    return-void
.end method

.method public static final rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/GapComposer;)Landroidx/navigation/NavHostController;
    .locals 8

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    array-length v1, p0

    .line 10
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v1, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;

    .line 15
    .line 16
    const/16 v3, 0x1b

    .line 17
    .line 18
    invoke-direct {v1, v3}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    move-object v5, v3

    .line 28
    new-instance v3, Landroidx/cardview/widget/CardView$1;

    .line 29
    .line 30
    const/16 v6, 0xc

    .line 31
    .line 32
    invoke-direct {v3, v6, v1, v5}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 46
    .line 47
    if-ne v5, v1, :cond_1

    .line 48
    .line 49
    :cond_0
    new-instance v5, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18;

    .line 50
    .line 51
    invoke-direct {v5, v0, v4}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18;-><init>(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    move-object v4, v5

    .line 58
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v7, 0x4

    .line 62
    move-object v5, p1

    .line 63
    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroidx/navigation/NavHostController;

    .line 68
    .line 69
    array-length v0, p0

    .line 70
    const/4 v1, 0x0

    .line 71
    :goto_0
    if-ge v1, v0, :cond_2

    .line 72
    .line 73
    aget-object v2, p0, v1

    .line 74
    .line 75
    iget-object v3, p1, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 76
    .line 77
    iget-object v3, v3, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 78
    .line 79
    invoke-virtual {v3, v2}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    return-object p1
.end method

.method public static final render(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/KeywordStringsGenerated;->KEYWORDS:Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ge v1, v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    const/16 v3, 0x5f

    .line 37
    .line 38
    if-eq v2, v3, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const-string v0, "`"

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public static final renderFqName(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-lez v2, :cond_0

    .line 27
    .line 28
    const-string v2, "."

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {v1}, Lkotlin/ExceptionsKt;->render(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static final replacePrefixesInTypeRepresentations(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-static {p2, p3, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-eqz p3, :cond_0

    .line 45
    .line 46
    return-object p2

    .line 47
    :cond_0
    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->typeStringsDifferOnlyInNullability(Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    const-string p0, "!"

    .line 54
    .line 55
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_1
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method

.method public static final replaceTypeArguments(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/ArrayList;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_8

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;->outProjection:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 43
    .line 44
    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;->inProjection:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 45
    .line 46
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument;->typeParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 47
    .line 48
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    .line 49
    .line 50
    invoke-virtual {v5, v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->isSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 51
    .line 52
    .line 53
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_7

    .line 58
    .line 59
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 64
    .line 65
    if-ne v5, v6, :cond_0

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isNothing(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    if-eq v5, v6, :cond_2

    .line 79
    .line 80
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 81
    .line 82
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 83
    .line 84
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-ne v4, v1, :cond_1

    .line 89
    .line 90
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 91
    .line 92
    :cond_1
    invoke-direct {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    if-eqz v3, :cond_6

    .line 97
    .line 98
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isAnyOrNullableAny(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_4

    .line 103
    .line 104
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_4

    .line 109
    .line 110
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 111
    .line 112
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-ne v6, v1, :cond_3

    .line 117
    .line 118
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 119
    .line 120
    :cond_3
    invoke-direct {v2, v4, v6}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 125
    .line 126
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 127
    .line 128
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-ne v4, v1, :cond_5

    .line 133
    .line 134
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 135
    .line 136
    :cond_5
    invoke-direct {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_6
    const/16 p0, 0x8c

    .line 141
    .line 142
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->$$$reportNull$$$0(I)V

    .line 143
    .line 144
    .line 145
    throw v2

    .line 146
    :cond_7
    :goto_1
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 147
    .line 148
    invoke-direct {v2, v4}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 149
    .line 150
    .line 151
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_8
    const/4 p1, 0x6

    .line 157
    invoke-static {p0, v0, v2, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->replace$default(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;I)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    return-object p0
.end method

.method public static final runSession(Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;Landroid/content/Context;Landroidx/glance/appwidget/AppWidgetSession;Landroidx/glance/session/TimeoutOptions;Landroidx/glance/session/SessionWorker$doWork$2$2$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v0, p5

    .line 8
    .line 9
    instance-of v1, v0, Landroidx/glance/session/SessionWorkerKt$runSession$1;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Landroidx/glance/session/SessionWorkerKt$runSession$1;

    .line 15
    .line 16
    iget v4, v1, Landroidx/glance/session/SessionWorkerKt$runSession$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v4, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v4, v6

    .line 25
    iput v4, v1, Landroidx/glance/session/SessionWorkerKt$runSession$1;->label:I

    .line 26
    .line 27
    :goto_0
    move-object v9, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v1, Landroidx/glance/session/SessionWorkerKt$runSession$1;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    iget-object v0, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->result:Ljava/lang/Object;

    .line 36
    .line 37
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 38
    .line 39
    iget v1, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->label:I

    .line 40
    .line 41
    const/4 v12, 0x2

    .line 42
    const/4 v13, 0x1

    .line 43
    const/4 v14, 0x0

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    if-eq v1, v13, :cond_2

    .line 47
    .line 48
    if-ne v1, v12, :cond_1

    .line 49
    .line 50
    iget-object v1, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$3:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Landroidx/compose/runtime/Composition;

    .line 53
    .line 54
    iget-object v2, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$2:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Landroidx/compose/runtime/Recomposer;

    .line 57
    .line 58
    iget-object v3, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, Lkotlinx/coroutines/Job;

    .line 61
    .line 62
    iget-object v4, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v4, Landroidx/glance/session/InteractiveFrameClock;

    .line 65
    .line 66
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto/16 :goto_8

    .line 73
    .line 74
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 75
    .line 76
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v14

    .line 80
    :cond_2
    iget-object v1, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$7:Landroidx/compose/runtime/CompositionImpl;

    .line 81
    .line 82
    iget-object v2, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$6:Landroidx/compose/runtime/Recomposer;

    .line 83
    .line 84
    iget-object v3, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$5:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 85
    .line 86
    iget-object v4, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$4:Landroidx/glance/session/InteractiveFrameClock;

    .line 87
    .line 88
    iget-object v5, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$3:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v5, Landroidx/glance/session/TimeoutOptions;

    .line 91
    .line 92
    iget-object v6, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$2:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v6, Landroidx/glance/appwidget/AppWidgetSession;

    .line 95
    .line 96
    iget-object v7, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$1:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v7, Landroid/content/Context;

    .line 99
    .line 100
    iget-object v8, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v8, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 103
    .line 104
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    move-object v15, v4

    .line 108
    move-object v4, v2

    .line 109
    move-object v2, v6

    .line 110
    move-object v6, v3

    .line 111
    move-object v3, v7

    .line 112
    move-object v7, v5

    .line 113
    move-object v5, v8

    .line 114
    goto/16 :goto_2

    .line 115
    .line 116
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    new-instance v15, Landroidx/glance/session/InteractiveFrameClock;

    .line 120
    .line 121
    invoke-direct {v15, v5}, Landroidx/glance/session/InteractiveFrameClock;-><init>(Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 125
    .line 126
    invoke-direct {v0, v12, v13, v14}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 127
    .line 128
    .line 129
    const/4 v7, 0x3

    .line 130
    invoke-static {v5, v14, v14, v0, v7}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    iget-object v0, v5, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;->$$delegate_0:Lkotlinx/coroutines/CoroutineScope;

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    new-instance v1, Landroidx/glance/appwidget/RemoteViewsRoot;

    .line 140
    .line 141
    invoke-direct {v1}, Landroidx/glance/appwidget/RemoteViewsRoot;-><init>()V

    .line 142
    .line 143
    .line 144
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 145
    .line 146
    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 147
    .line 148
    .line 149
    move-result-object v16

    .line 150
    new-instance v4, Landroidx/glance/session/SessionWorkerKt$runSession$$inlined$CoroutineExceptionHandler$1;

    .line 151
    .line 152
    invoke-direct {v4, v5, v2, v3}, Landroidx/glance/session/SessionWorkerKt$runSession$$inlined$CoroutineExceptionHandler$1;-><init>(Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;Landroidx/glance/appwidget/AppWidgetSession;Landroid/content/Context;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    sget-object v13, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 167
    .line 168
    invoke-interface {v7, v13}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    check-cast v7, Lkotlinx/coroutines/Job;

    .line 173
    .line 174
    if-eqz v7, :cond_4

    .line 175
    .line 176
    new-instance v13, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;

    .line 177
    .line 178
    invoke-direct {v13, v12, v6}, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;-><init>(ILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v7, v13}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 182
    .line 183
    .line 184
    :cond_4
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-interface {v0, v6}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    new-instance v4, Landroidx/compose/runtime/Recomposer;

    .line 197
    .line 198
    invoke-direct {v4, v0}, Landroidx/compose/runtime/Recomposer;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 199
    .line 200
    .line 201
    new-instance v0, Landroidx/glance/Applier;

    .line 202
    .line 203
    invoke-direct {v0, v1}, Landroidx/glance/Applier;-><init>(Landroidx/glance/appwidget/RemoteViewsRoot;)V

    .line 204
    .line 205
    .line 206
    move-object v6, v1

    .line 207
    new-instance v1, Landroidx/compose/runtime/CompositionImpl;

    .line 208
    .line 209
    invoke-direct {v1, v4, v0}, Landroidx/compose/runtime/CompositionImpl;-><init>(Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/AbstractApplier;)V

    .line 210
    .line 211
    .line 212
    :try_start_2
    new-instance v0, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 213
    .line 214
    move-object v7, v6

    .line 215
    const/4 v6, 0x0

    .line 216
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Landroidx/compose/runtime/CompositionImpl;Landroidx/glance/appwidget/AppWidgetSession;Landroid/content/Context;Landroidx/compose/runtime/Recomposer;Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;Lkotlin/coroutines/Continuation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 217
    .line 218
    .line 219
    move-object v13, v1

    .line 220
    move-object v1, v4

    .line 221
    :try_start_3
    invoke-static {v5, v15, v14, v0, v12}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 222
    .line 223
    .line 224
    new-instance v0, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 225
    .line 226
    move-object v2, v8

    .line 227
    const/4 v8, 0x0

    .line 228
    move-object/from16 v4, p1

    .line 229
    .line 230
    move-object/from16 v17, v2

    .line 231
    .line 232
    move-object v6, v5

    .line 233
    move-object v5, v7

    .line 234
    move-object/from16 v3, v16

    .line 235
    .line 236
    const/4 v11, 0x3

    .line 237
    move-object/from16 v2, p2

    .line 238
    .line 239
    move-object/from16 v7, p3

    .line 240
    .line 241
    :try_start_4
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/edit/EditSectionViewModel$postEdit$2;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/glance/appwidget/AppWidgetSession;Lkotlinx/coroutines/flow/StateFlowImpl;Landroid/content/Context;Landroidx/glance/appwidget/RemoteViewsRoot;Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;Landroidx/glance/session/TimeoutOptions;Lkotlin/coroutines/Continuation;)V

    .line 242
    .line 243
    .line 244
    move-object v5, v4

    .line 245
    move-object v4, v0

    .line 246
    move-object v0, v3

    .line 247
    move-object v3, v5

    .line 248
    move-object v5, v6

    .line 249
    invoke-static {v5, v14, v14, v4, v11}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 250
    .line 251
    .line 252
    new-instance v4, Landroidx/glance/session/SessionWorkerKt$runSession$5;

    .line 253
    .line 254
    const/4 v6, 0x0

    .line 255
    invoke-direct {v4, v12, v6, v14}, Landroidx/glance/session/SessionWorkerKt$runSession$5;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 256
    .line 257
    .line 258
    iput-object v5, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$0:Ljava/lang/Object;

    .line 259
    .line 260
    iput-object v3, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$1:Ljava/lang/Object;

    .line 261
    .line 262
    iput-object v2, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$2:Ljava/lang/Object;

    .line 263
    .line 264
    move-object/from16 v7, p3

    .line 265
    .line 266
    iput-object v7, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$3:Ljava/lang/Object;

    .line 267
    .line 268
    iput-object v15, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$4:Landroidx/glance/session/InteractiveFrameClock;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 269
    .line 270
    move-object/from16 v6, v17

    .line 271
    .line 272
    :try_start_5
    iput-object v6, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$5:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 273
    .line 274
    iput-object v1, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$6:Landroidx/compose/runtime/Recomposer;

    .line 275
    .line 276
    iput-object v13, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$7:Landroidx/compose/runtime/CompositionImpl;

    .line 277
    .line 278
    const/4 v8, 0x1

    .line 279
    iput v8, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->label:I

    .line 280
    .line 281
    invoke-static {v0, v4, v9}, Lkotlinx/coroutines/flow/StateFlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 285
    if-ne v0, v10, :cond_5

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_5
    move-object v4, v1

    .line 289
    move-object v1, v13

    .line 290
    :goto_2
    :try_start_6
    new-instance v0, Landroidx/glance/session/SessionWorkerKt$runSession$6;

    .line 291
    .line 292
    const/4 v8, 0x0

    .line 293
    invoke-direct {v0, v5, v7, v15, v8}, Landroidx/glance/session/SessionWorkerKt$runSession$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 294
    .line 295
    .line 296
    iput-object v15, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$0:Ljava/lang/Object;

    .line 297
    .line 298
    iput-object v6, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$1:Ljava/lang/Object;

    .line 299
    .line 300
    iput-object v4, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$2:Ljava/lang/Object;

    .line 301
    .line 302
    iput-object v1, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$3:Ljava/lang/Object;

    .line 303
    .line 304
    iput-object v14, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$4:Landroidx/glance/session/InteractiveFrameClock;

    .line 305
    .line 306
    iput-object v14, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$5:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 307
    .line 308
    iput-object v14, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$6:Landroidx/compose/runtime/Recomposer;

    .line 309
    .line 310
    iput-object v14, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->L$7:Landroidx/compose/runtime/CompositionImpl;

    .line 311
    .line 312
    iput v12, v9, Landroidx/glance/session/SessionWorkerKt$runSession$1;->label:I

    .line 313
    .line 314
    invoke-virtual {v2, v3, v0, v9}, Landroidx/glance/appwidget/AppWidgetSession;->receiveEvents(Landroid/content/Context;Landroidx/glance/session/SessionWorkerKt$runSession$6;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 318
    if-ne v0, v10, :cond_6

    .line 319
    .line 320
    :goto_3
    return-object v10

    .line 321
    :cond_6
    move-object v2, v4

    .line 322
    move-object v3, v6

    .line 323
    move-object v4, v15

    .line 324
    :goto_4
    invoke-interface {v1}, Landroidx/compose/runtime/Composition;->dispose()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v4}, Landroidx/glance/session/InteractiveFrameClock;->stopInteractive()V

    .line 328
    .line 329
    .line 330
    invoke-interface {v3, v14}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2}, Landroidx/compose/runtime/Recomposer;->cancel()V

    .line 334
    .line 335
    .line 336
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 337
    .line 338
    return-object v0

    .line 339
    :catchall_1
    move-exception v0

    .line 340
    move-object v2, v4

    .line 341
    move-object v3, v6

    .line 342
    :goto_5
    move-object v4, v15

    .line 343
    goto :goto_8

    .line 344
    :catchall_2
    move-exception v0

    .line 345
    :goto_6
    move-object v2, v1

    .line 346
    move-object v3, v6

    .line 347
    move-object v1, v13

    .line 348
    goto :goto_5

    .line 349
    :catchall_3
    move-exception v0

    .line 350
    move-object/from16 v6, v17

    .line 351
    .line 352
    goto :goto_6

    .line 353
    :catchall_4
    move-exception v0

    .line 354
    :goto_7
    move-object v6, v8

    .line 355
    goto :goto_6

    .line 356
    :catchall_5
    move-exception v0

    .line 357
    move-object v13, v1

    .line 358
    move-object v1, v4

    .line 359
    goto :goto_7

    .line 360
    :goto_8
    invoke-interface {v1}, Landroidx/compose/runtime/Composition;->dispose()V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v4}, Landroidx/glance/session/InteractiveFrameClock;->stopInteractive()V

    .line 364
    .line 365
    .line 366
    invoke-interface {v3, v14}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2}, Landroidx/compose/runtime/Recomposer;->cancel()V

    .line 370
    .line 371
    .line 372
    throw v0
.end method

.method public static final select(Ljava/util/Set;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Z)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p4, :cond_4

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p4

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    move-object p0, p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    move-object p0, p2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object p0, v0

    .line 21
    :goto_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_2
    if-nez p3, :cond_3

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_3
    return-object p3

    .line 38
    :cond_4
    if-eqz p3, :cond_5

    .line 39
    .line 40
    invoke-static {p0, p3}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :cond_5
    check-cast p0, Ljava/lang/Iterable;

    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)V
    .locals 1

    .line 1
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setSupportActionProvider(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "MenuItemCompat"

    .line 12
    .line 13
    const-string p1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static setBlendMode(Lcom/airbnb/lottie/animation/LPaint;Landroidx/core/graphics/BlendModeCompat;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lorg/wikipedia/util/FileUtil;->obtainBlendModeFromCompat(Landroidx/core/graphics/BlendModeCompat;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :cond_0
    invoke-static {p0, v2}, Lorg/wikipedia/util/FileUtil;->setBlendMode(Landroid/graphics/Paint;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    if-eqz p1, :cond_3

    .line 19
    .line 20
    invoke-static {p1}, Landroidx/work/OperationKt;->obtainPorterDuffFromCompat(Landroidx/core/graphics/BlendModeCompat;)Landroid/graphics/PorterDuff$Mode;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    .line 27
    .line 28
    invoke-direct {v2, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static final setCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionItemInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    move-object v0, v1

    .line 17
    :cond_0
    if-nez v0, :cond_c

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    move-object v2, v1

    .line 42
    :cond_2
    if-eqz v2, :cond_b

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 49
    .line 50
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move-object v1, v2

    .line 60
    :goto_0
    check-cast v1, Landroidx/compose/ui/semantics/CollectionInfo;

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    iget v2, v1, Landroidx/compose/ui/semantics/CollectionInfo;->rowCount:I

    .line 65
    .line 66
    if-ltz v2, :cond_b

    .line 67
    .line 68
    iget v1, v1, Landroidx/compose/ui/semantics/CollectionInfo;->columnCount:I

    .line 69
    .line 70
    if-gez v1, :cond_4

    .line 71
    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 79
    .line 80
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_5

    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    const/4 v2, 0x4

    .line 96
    invoke-static {v2, v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    const/4 v3, 0x0

    .line 105
    move v4, v3

    .line 106
    move v5, v4

    .line 107
    :goto_1
    if-ge v4, v2, :cond_7

    .line 108
    .line 109
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    check-cast v6, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 114
    .line 115
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 120
    .line 121
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 122
    .line 123
    invoke-virtual {v7, v8}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_6

    .line 128
    .line 129
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    iget-object v6, v6, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 133
    .line 134
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    iget-object v7, p0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 139
    .line 140
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-ge v6, v7, :cond_6

    .line 145
    .line 146
    add-int/lit8 v5, v5, 0x1

    .line 147
    .line 148
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_b

    .line 156
    .line 157
    invoke-static {v1}, Lkotlin/ExceptionsKt;->calculateIfHorizontallyStacked(Ljava/util/ArrayList;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    move v1, v3

    .line 164
    goto :goto_2

    .line 165
    :cond_8
    move v1, v5

    .line 166
    :goto_2
    if-eqz v0, :cond_9

    .line 167
    .line 168
    move v3, v5

    .line 169
    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 174
    .line 175
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 176
    .line 177
    invoke-virtual {p0, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    if-nez p0, :cond_a

    .line 182
    .line 183
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 184
    .line 185
    :cond_a
    check-cast p0, Ljava/lang/Boolean;

    .line 186
    .line 187
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    const/4 v0, 0x1

    .line 192
    invoke-static {p0, v1, v0, v3, v0}, Lcoil3/Extras$Key;->obtain(ZIIII)Lcoil3/Extras$Key;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Lcoil3/Extras$Key;)V

    .line 197
    .line 198
    .line 199
    :cond_b
    :goto_3
    return-void

    .line 200
    :cond_c
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public static setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v1, 0x1a

    .line 14
    .line 15
    if-lt v0, v1, :cond_1

    .line 16
    .line 17
    invoke-static {p0, p1}, Lcoil3/util/BitmapsKt;->setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public static final startUndspatched(Lkotlinx/coroutines/internal/ScopeCoroutine;ZLjava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    instance-of v1, p3, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    invoke-static {p3, p2, p0}, Lkotlin/ExceptionsKt;->wrapWithContinuationImpl(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    goto :goto_1

    .line 11
    :catchall_0
    move-exception p2

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    goto :goto_4

    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    invoke-static {v1, p3}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-interface {p3, p2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2
    :try_end_0
    .catch Lkotlinx/coroutines/DispatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_1

    .line 24
    :goto_0
    new-instance p3, Lkotlinx/coroutines/CompletedExceptionally;

    .line 25
    .line 26
    invoke-direct {p3, p2, v0}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    .line 27
    .line 28
    .line 29
    move-object p2, p3

    .line 30
    :goto_1
    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 31
    .line 32
    if-ne p2, p3, :cond_1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/JobSupport;->makeCompletingOnce$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Lkotlinx/coroutines/AwaitKt;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/Symbol;

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    :goto_2
    return-object p3

    .line 44
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ScopeCoroutine;->afterCompletionUndispatched()V

    .line 45
    .line 46
    .line 47
    instance-of p3, v0, Lkotlinx/coroutines/CompletedExceptionally;

    .line 48
    .line 49
    if-eqz p3, :cond_5

    .line 50
    .line 51
    if-nez p1, :cond_4

    .line 52
    .line 53
    move-object p1, v0

    .line 54
    check-cast p1, Lkotlinx/coroutines/CompletedExceptionally;

    .line 55
    .line 56
    iget-object p1, p1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 57
    .line 58
    instance-of p3, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 59
    .line 60
    if-eqz p3, :cond_4

    .line 61
    .line 62
    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    .line 63
    .line 64
    iget-object p1, p1, Lkotlinx/coroutines/TimeoutCancellationException;->coroutine:Lkotlinx/coroutines/Job;

    .line 65
    .line 66
    if-ne p1, p0, :cond_4

    .line 67
    .line 68
    instance-of p0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    .line 69
    .line 70
    if-nez p0, :cond_3

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    check-cast p2, Lkotlinx/coroutines/CompletedExceptionally;

    .line 74
    .line 75
    iget-object p0, p2, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 76
    .line 77
    throw p0

    .line 78
    :cond_4
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    .line 79
    .line 80
    iget-object p0, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .line 81
    .line 82
    throw p0

    .line 83
    :cond_5
    invoke-static {v0}, Lkotlinx/coroutines/AwaitKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    :goto_3
    return-object p2

    .line 88
    :goto_4
    new-instance p2, Lkotlinx/coroutines/CompletedExceptionally;

    .line 89
    .line 90
    iget-object p1, p1, Lkotlinx/coroutines/DispatchException;->cause:Ljava/lang/Throwable;

    .line 91
    .line 92
    invoke-direct {p2, p1, v0}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    throw p1
.end method

.method public static final takeMax-impl(Landroidx/collection/MutableIntList;)I
    .locals 10

    .line 1
    iget v0, p0, Landroidx/collection/MutableIntList;->_size:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->get(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    :cond_0
    iget v2, p0, Landroidx/collection/MutableIntList;->_size:I

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->get(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ne v2, v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/collection/MutableIntList;->last()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p0, v0, v2}, Landroidx/collection/MutableIntList;->set(II)V

    .line 23
    .line 24
    .line 25
    iget v2, p0, Landroidx/collection/MutableIntList;->_size:I

    .line 26
    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroidx/collection/MutableIntList;->removeAt(I)V

    .line 30
    .line 31
    .line 32
    iget v2, p0, Landroidx/collection/MutableIntList;->_size:I

    .line 33
    .line 34
    ushr-int/lit8 v3, v2, 0x1

    .line 35
    .line 36
    move v4, v0

    .line 37
    :goto_0
    if-ge v4, v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Landroidx/collection/MutableIntList;->get(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    add-int/lit8 v6, v4, 0x1

    .line 44
    .line 45
    mul-int/lit8 v6, v6, 0x2

    .line 46
    .line 47
    add-int/lit8 v7, v6, -0x1

    .line 48
    .line 49
    invoke-virtual {p0, v7}, Landroidx/collection/MutableIntList;->get(I)I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-ge v6, v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0, v6}, Landroidx/collection/MutableIntList;->get(I)I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-le v9, v8, :cond_1

    .line 60
    .line 61
    if-le v9, v5, :cond_0

    .line 62
    .line 63
    invoke-virtual {p0, v4, v9}, Landroidx/collection/MutableIntList;->set(II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v6, v5}, Landroidx/collection/MutableIntList;->set(II)V

    .line 67
    .line 68
    .line 69
    move v4, v6

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    if-le v8, v5, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0, v4, v8}, Landroidx/collection/MutableIntList;->set(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v7, v5}, Landroidx/collection/MutableIntList;->set(II)V

    .line 77
    .line 78
    .line 79
    move v4, v7

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    return v1
.end method

.method public static final toImmutableList(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 30
    .line 31
    return-object p0
.end method

.method public static final toImmutableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/Iterable;

    .line 25
    .line 26
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_1
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 46
    .line 47
    return-object p0
.end method

.method public static final toProto(Landroidx/glance/unit/Dimension;Landroid/content/Context;)Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object p1, Landroidx/glance/appwidget/WidgetLayoutImpl31;->INSTANCE:Landroidx/glance/appwidget/WidgetLayoutImpl31;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroidx/glance/appwidget/WidgetLayoutImpl31;->toProto(Landroidx/glance/unit/Dimension;)Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-static {p0, p1}, Landroidx/glance/appwidget/LayoutSelectionKt;->resolveDimension(Landroidx/glance/unit/Dimension;Landroid/content/Context;)Landroidx/glance/unit/Dimension;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    instance-of p1, p0, Landroidx/glance/unit/Dimension$Dp;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->EXACT:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    instance-of p1, p0, Landroidx/glance/unit/Dimension$Wrap;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->WRAP:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    instance-of p1, p0, Landroidx/glance/unit/Dimension$Fill;

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->FILL:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_3
    instance-of p0, p0, Landroidx/glance/unit/Dimension$Expand;

    .line 40
    .line 41
    if-eqz p0, :cond_4

    .line 42
    .line 43
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->EXPAND:Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_4
    const-string p0, "After resolution, no other type should be present"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    return-object p0
.end method

.method public static final toProto-Je2gTW8(I)Landroidx/glance/appwidget/proto/LayoutProto$VerticalAlignment;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$VerticalAlignment;->TOP:Landroidx/glance/appwidget/proto/LayoutProto$VerticalAlignment;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$VerticalAlignment;->CENTER_VERTICALLY:Landroidx/glance/appwidget/proto/LayoutProto$VerticalAlignment;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$VerticalAlignment;->BOTTOM:Landroidx/glance/appwidget/proto/LayoutProto$VerticalAlignment;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const-string/jumbo v0, "unknown vertical alignment "

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Landroidx/glance/layout/Alignment$Vertical;->toString-impl(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v0, p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static final toProto-uMT2-20(I)Landroidx/glance/appwidget/proto/LayoutProto$HorizontalAlignment;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$HorizontalAlignment;->START:Landroidx/glance/appwidget/proto/LayoutProto$HorizontalAlignment;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$HorizontalAlignment;->CENTER_HORIZONTALLY:Landroidx/glance/appwidget/proto/LayoutProto$HorizontalAlignment;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$HorizontalAlignment;->END:Landroidx/glance/appwidget/proto/LayoutProto$HorizontalAlignment;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const-string/jumbo v0, "unknown horizontal alignment "

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Landroidx/glance/layout/Alignment$Horizontal;->toString-impl(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v0, p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static final toSize-ozmzZPI(J)J
    .locals 6

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v1, p0, v0

    .line 4
    .line 5
    long-to-int v1, v1

    .line 6
    int-to-float v1, v1

    .line 7
    const-wide v2, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long/2addr p0, v2

    .line 13
    long-to-int p0, p0

    .line 14
    int-to-float p0, p0

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    int-to-long v4, p1

    .line 20
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    int-to-long p0, p0

    .line 25
    shl-long v0, v4, v0

    .line 26
    .line 27
    and-long/2addr p0, v2

    .line 28
    or-long/2addr p0, v0

    .line 29
    return-wide p0
.end method

.method public static final typeStringsDifferOnlyInNullability(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    const-string v1, "?"

    .line 10
    .line 11
    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "("

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p0, ")?"

    .line 49
    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return v0

    .line 65
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 66
    return p0
.end method

.method public static final updateRangeAfterDelete-pWDy79M(JJ)J
    .locals 7

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x1

    .line 19
    if-ge v2, v3, :cond_0

    .line 20
    .line 21
    move v2, v5

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v4

    .line 24
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-ge v3, v6, :cond_1

    .line 33
    .line 34
    move v3, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v3, v4

    .line 37
    :goto_1
    and-int/2addr v2, v3

    .line 38
    if-eqz v2, :cond_9

    .line 39
    .line 40
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-gt v2, v3, :cond_2

    .line 49
    .line 50
    move v2, v5

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move v2, v4

    .line 53
    :goto_2
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-gt v3, v6, :cond_3

    .line 62
    .line 63
    move v3, v5

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move v3, v4

    .line 66
    :goto_3
    and-int/2addr v2, v3

    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    move v1, v0

    .line 74
    goto :goto_6

    .line 75
    :cond_4
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-gt v2, v3, :cond_5

    .line 84
    .line 85
    move v2, v5

    .line 86
    goto :goto_4

    .line 87
    :cond_5
    move v2, v4

    .line 88
    :goto_4
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-gt v3, p0, :cond_6

    .line 97
    .line 98
    move v4, v5

    .line 99
    :cond_6
    and-int p0, v2, v4

    .line 100
    .line 101
    if-eqz p0, :cond_7

    .line 102
    .line 103
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    :goto_5
    sub-int/2addr v1, p0

    .line 108
    goto :goto_6

    .line 109
    :cond_7
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-ge v0, p1, :cond_8

    .line 118
    .line 119
    if-gt p0, v0, :cond_8

    .line 120
    .line 121
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    goto :goto_5

    .line 130
    :cond_8
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    goto :goto_6

    .line 135
    :cond_9
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-le v1, p0, :cond_a

    .line 140
    .line 141
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    sub-int/2addr v0, p0

    .line 146
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    goto :goto_5

    .line 151
    :cond_a
    :goto_6
    invoke-static {v0, v1}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 152
    .line 153
    .line 154
    move-result-wide p0

    .line 155
    return-wide p0
.end method

.method public static wrapWithContinuationImpl(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$1;

    .line 13
    .line 14
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/RestrictedContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createSimpleCoroutineForSuspendFunction$2;

    .line 19
    .line 20
    invoke-direct {v1, p2, v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v1

    .line 24
    :goto_0
    const/4 p2, 0x2

    .line 25
    invoke-static {p2, p0}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 29
    .line 30
    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method


# virtual methods
.method public abstract createIntent(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Object;)Landroid/content/Intent;
.end method

.method public getSynchronousResult(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Object;)Lcoil3/Extras$Key;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public abstract onFontRetrievalFailed(I)V
.end method

.method public abstract onFontRetrieved(Landroid/graphics/Typeface;Z)V
.end method

.method public abstract parseResult(Landroid/content/Intent;I)Ljava/lang/Object;
.end method
