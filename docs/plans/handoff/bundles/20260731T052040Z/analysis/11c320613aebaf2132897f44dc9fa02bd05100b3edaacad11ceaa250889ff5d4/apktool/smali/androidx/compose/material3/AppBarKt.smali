.class public abstract Landroidx/compose/material3/AppBarKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final TopAppBarHorizontalPadding:F

.field public static final TopAppBarTitleInset:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroidx/compose/material3/AppBarKt;->LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 14
    .line 15
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/compose/runtime/LazyValueHolder;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Landroidx/compose/runtime/LazyValueHolder;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 28
    .line 29
    const v1, 0x3f4ccccd    # 0.8f

    .line 30
    .line 31
    .line 32
    const v2, 0x3e19999a    # 0.15f

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1, v1, v2}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFF)V

    .line 36
    .line 37
    .line 38
    const/high16 v0, 0x40800000    # 4.0f

    .line 39
    .line 40
    sput v0, Landroidx/compose/material3/AppBarKt;->TopAppBarHorizontalPadding:F

    .line 41
    .line 42
    const/high16 v0, 0x41400000    # 12.0f

    .line 43
    .line 44
    sput v0, Landroidx/compose/material3/AppBarKt;->TopAppBarTitleInset:F

    .line 45
    .line 46
    return-void
.end method

.method public static final SingleRowTopAppBar-TCVpFMg(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    .line 1
    move/from16 v11, p11

    .line 2
    .line 3
    move/from16 v12, p12

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 6
    .line 7
    move-object/from16 v1, p10

    .line 8
    .line 9
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v2, 0x29f527d8

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v2, v11, 0x6

    .line 18
    .line 19
    move-object/from16 v14, p0

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr v2, v11

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v2, v11

    .line 35
    :goto_1
    and-int/lit8 v5, v11, 0x30

    .line 36
    .line 37
    move-object/from16 v15, p1

    .line 38
    .line 39
    if-nez v5, :cond_3

    .line 40
    .line 41
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    const/16 v5, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v5, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v2, v5

    .line 53
    :cond_3
    and-int/lit16 v5, v11, 0x180

    .line 54
    .line 55
    if-nez v5, :cond_5

    .line 56
    .line 57
    move-object/from16 v5, p2

    .line 58
    .line 59
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    if-eqz v10, :cond_4

    .line 64
    .line 65
    const/16 v10, 0x100

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/16 v10, 0x80

    .line 69
    .line 70
    :goto_3
    or-int/2addr v2, v10

    .line 71
    goto :goto_4

    .line 72
    :cond_5
    move-object/from16 v5, p2

    .line 73
    .line 74
    :goto_4
    and-int/lit16 v10, v11, 0xc00

    .line 75
    .line 76
    const/4 v13, 0x0

    .line 77
    if-nez v10, :cond_7

    .line 78
    .line 79
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-eqz v10, :cond_6

    .line 84
    .line 85
    const/16 v10, 0x800

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_6
    const/16 v10, 0x400

    .line 89
    .line 90
    :goto_5
    or-int/2addr v2, v10

    .line 91
    :cond_7
    and-int/lit16 v10, v11, 0x6000

    .line 92
    .line 93
    if-nez v10, :cond_9

    .line 94
    .line 95
    move-object/from16 v10, p3

    .line 96
    .line 97
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v16

    .line 101
    if-eqz v16, :cond_8

    .line 102
    .line 103
    const/16 v16, 0x4000

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_8
    const/16 v16, 0x2000

    .line 107
    .line 108
    :goto_6
    or-int v2, v2, v16

    .line 109
    .line 110
    goto :goto_7

    .line 111
    :cond_9
    move-object/from16 v10, p3

    .line 112
    .line 113
    :goto_7
    const/high16 v16, 0x30000

    .line 114
    .line 115
    and-int v16, v11, v16

    .line 116
    .line 117
    if-nez v16, :cond_b

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_a

    .line 124
    .line 125
    const/high16 v0, 0x20000

    .line 126
    .line 127
    goto :goto_8

    .line 128
    :cond_a
    const/high16 v0, 0x10000

    .line 129
    .line 130
    :goto_8
    or-int/2addr v2, v0

    .line 131
    :cond_b
    const/high16 v0, 0x180000

    .line 132
    .line 133
    and-int/2addr v0, v11

    .line 134
    if-nez v0, :cond_d

    .line 135
    .line 136
    move-object/from16 v0, p4

    .line 137
    .line 138
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v16

    .line 142
    if-eqz v16, :cond_c

    .line 143
    .line 144
    const/high16 v16, 0x100000

    .line 145
    .line 146
    goto :goto_9

    .line 147
    :cond_c
    const/high16 v16, 0x80000

    .line 148
    .line 149
    :goto_9
    or-int v2, v2, v16

    .line 150
    .line 151
    goto :goto_a

    .line 152
    :cond_d
    move-object/from16 v0, p4

    .line 153
    .line 154
    :goto_a
    const/high16 v16, 0xc00000

    .line 155
    .line 156
    and-int v16, v11, v16

    .line 157
    .line 158
    move-object/from16 v3, p5

    .line 159
    .line 160
    if-nez v16, :cond_f

    .line 161
    .line 162
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v16

    .line 166
    if-eqz v16, :cond_e

    .line 167
    .line 168
    const/high16 v16, 0x800000

    .line 169
    .line 170
    goto :goto_b

    .line 171
    :cond_e
    const/high16 v16, 0x400000

    .line 172
    .line 173
    :goto_b
    or-int v2, v2, v16

    .line 174
    .line 175
    :cond_f
    const/high16 v16, 0x6000000

    .line 176
    .line 177
    and-int v16, v11, v16

    .line 178
    .line 179
    move/from16 v4, p6

    .line 180
    .line 181
    if-nez v16, :cond_11

    .line 182
    .line 183
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 184
    .line 185
    .line 186
    move-result v17

    .line 187
    if-eqz v17, :cond_10

    .line 188
    .line 189
    const/high16 v17, 0x4000000

    .line 190
    .line 191
    goto :goto_c

    .line 192
    :cond_10
    const/high16 v17, 0x2000000

    .line 193
    .line 194
    :goto_c
    or-int v2, v2, v17

    .line 195
    .line 196
    :cond_11
    const/high16 v17, 0x30000000

    .line 197
    .line 198
    and-int v17, v11, v17

    .line 199
    .line 200
    move-object/from16 v6, p7

    .line 201
    .line 202
    if-nez v17, :cond_13

    .line 203
    .line 204
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v18

    .line 208
    if-eqz v18, :cond_12

    .line 209
    .line 210
    const/high16 v18, 0x20000000

    .line 211
    .line 212
    goto :goto_d

    .line 213
    :cond_12
    const/high16 v18, 0x10000000

    .line 214
    .line 215
    :goto_d
    or-int v2, v2, v18

    .line 216
    .line 217
    :cond_13
    and-int/lit8 v18, v12, 0x6

    .line 218
    .line 219
    move-object/from16 v7, p8

    .line 220
    .line 221
    if-nez v18, :cond_15

    .line 222
    .line 223
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v19

    .line 227
    if-eqz v19, :cond_14

    .line 228
    .line 229
    const/16 v16, 0x4

    .line 230
    .line 231
    goto :goto_e

    .line 232
    :cond_14
    const/16 v16, 0x2

    .line 233
    .line 234
    :goto_e
    or-int v16, v12, v16

    .line 235
    .line 236
    goto :goto_f

    .line 237
    :cond_15
    move/from16 v16, v12

    .line 238
    .line 239
    :goto_f
    and-int/lit8 v19, v12, 0x30

    .line 240
    .line 241
    move-object/from16 v8, p9

    .line 242
    .line 243
    if-nez v19, :cond_17

    .line 244
    .line 245
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v19

    .line 249
    if-eqz v19, :cond_16

    .line 250
    .line 251
    const/16 v17, 0x20

    .line 252
    .line 253
    goto :goto_10

    .line 254
    :cond_16
    const/16 v17, 0x10

    .line 255
    .line 256
    :goto_10
    or-int v16, v16, v17

    .line 257
    .line 258
    :cond_17
    and-int/lit16 v9, v12, 0x180

    .line 259
    .line 260
    if-nez v9, :cond_19

    .line 261
    .line 262
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v9

    .line 266
    if-eqz v9, :cond_18

    .line 267
    .line 268
    const/16 v17, 0x100

    .line 269
    .line 270
    goto :goto_11

    .line 271
    :cond_18
    const/16 v17, 0x80

    .line 272
    .line 273
    :goto_11
    or-int v16, v16, v17

    .line 274
    .line 275
    :cond_19
    move/from16 v9, v16

    .line 276
    .line 277
    const v13, 0x12492493

    .line 278
    .line 279
    .line 280
    and-int/2addr v13, v2

    .line 281
    const v0, 0x12492492

    .line 282
    .line 283
    .line 284
    move/from16 p10, v2

    .line 285
    .line 286
    const/4 v2, 0x0

    .line 287
    const/16 v16, 0x1

    .line 288
    .line 289
    if-ne v13, v0, :cond_1b

    .line 290
    .line 291
    and-int/lit16 v0, v9, 0x93

    .line 292
    .line 293
    const/16 v9, 0x92

    .line 294
    .line 295
    if-eq v0, v9, :cond_1a

    .line 296
    .line 297
    goto :goto_12

    .line 298
    :cond_1a
    move v0, v2

    .line 299
    goto :goto_13

    .line 300
    :cond_1b
    :goto_12
    move/from16 v0, v16

    .line 301
    .line 302
    :goto_13
    and-int/lit8 v9, p10, 0x1

    .line 303
    .line 304
    invoke-virtual {v1, v9, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-eqz v0, :cond_1c

    .line 309
    .line 310
    new-instance v13, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    .line 311
    .line 312
    move-object/from16 v18, p4

    .line 313
    .line 314
    move-object/from16 v19, v3

    .line 315
    .line 316
    move/from16 v20, v4

    .line 317
    .line 318
    move-object/from16 v16, v5

    .line 319
    .line 320
    move-object/from16 v21, v6

    .line 321
    .line 322
    move-object/from16 v22, v7

    .line 323
    .line 324
    move-object/from16 v23, v8

    .line 325
    .line 326
    move-object/from16 v17, v10

    .line 327
    .line 328
    invoke-direct/range {v13 .. v23}, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;)V

    .line 329
    .line 330
    .line 331
    sget-object v0, Landroidx/compose/material3/AppBarKt;->LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 332
    .line 333
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    .line 338
    .line 339
    invoke-virtual {v0, v13, v1, v2}, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;->SingleRowTopAppBar(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;Landroidx/compose/runtime/Composer;I)V

    .line 340
    .line 341
    .line 342
    goto :goto_14

    .line 343
    :cond_1c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 344
    .line 345
    .line 346
    :goto_14
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 347
    .line 348
    .line 349
    move-result-object v13

    .line 350
    if-eqz v13, :cond_1d

    .line 351
    .line 352
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda3;

    .line 353
    .line 354
    move-object/from16 v1, p0

    .line 355
    .line 356
    move-object/from16 v2, p1

    .line 357
    .line 358
    move-object/from16 v3, p2

    .line 359
    .line 360
    move-object/from16 v4, p3

    .line 361
    .line 362
    move-object/from16 v5, p4

    .line 363
    .line 364
    move-object/from16 v6, p5

    .line 365
    .line 366
    move/from16 v7, p6

    .line 367
    .line 368
    move-object/from16 v8, p7

    .line 369
    .line 370
    move-object/from16 v9, p8

    .line 371
    .line 372
    move-object/from16 v10, p9

    .line 373
    .line 374
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;II)V

    .line 375
    .line 376
    .line 377
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 378
    .line 379
    :cond_1d
    return-void
.end method

.method public static final TopAppBar-gNPyAyM(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    .line 1
    move/from16 v9, p9

    .line 2
    .line 3
    move-object/from16 v0, p8

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, 0x275fc769

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, v9, 0x6

    .line 14
    .line 15
    move-object/from16 v11, p0

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x2

    .line 28
    :goto_0
    or-int/2addr v1, v9

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v1, v9

    .line 31
    :goto_1
    and-int/lit8 v2, v9, 0x30

    .line 32
    .line 33
    const/16 v3, 0x10

    .line 34
    .line 35
    move-object/from16 v10, p1

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    const/16 v2, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v2, v3

    .line 49
    :goto_2
    or-int/2addr v1, v2

    .line 50
    :cond_3
    and-int/lit16 v2, v9, 0x180

    .line 51
    .line 52
    move-object/from16 v14, p2

    .line 53
    .line 54
    if-nez v2, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_4

    .line 61
    .line 62
    const/16 v2, 0x100

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    const/16 v2, 0x80

    .line 66
    .line 67
    :goto_3
    or-int/2addr v1, v2

    .line 68
    :cond_5
    and-int/lit16 v2, v9, 0xc00

    .line 69
    .line 70
    move-object/from16 v15, p3

    .line 71
    .line 72
    if-nez v2, :cond_7

    .line 73
    .line 74
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    const/16 v2, 0x800

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    const/16 v2, 0x400

    .line 84
    .line 85
    :goto_4
    or-int/2addr v1, v2

    .line 86
    :cond_7
    or-int/lit16 v2, v1, 0x6000

    .line 87
    .line 88
    const/high16 v4, 0x30000

    .line 89
    .line 90
    and-int/2addr v4, v9

    .line 91
    if-nez v4, :cond_8

    .line 92
    .line 93
    const v2, 0x16000

    .line 94
    .line 95
    .line 96
    or-int/2addr v2, v1

    .line 97
    :cond_8
    const/high16 v1, 0x180000

    .line 98
    .line 99
    and-int/2addr v1, v9

    .line 100
    move-object/from16 v7, p6

    .line 101
    .line 102
    if-nez v1, :cond_a

    .line 103
    .line 104
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_9

    .line 109
    .line 110
    const/high16 v1, 0x100000

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_9
    const/high16 v1, 0x80000

    .line 114
    .line 115
    :goto_5
    or-int/2addr v2, v1

    .line 116
    :cond_a
    const/high16 v1, 0x6c00000

    .line 117
    .line 118
    or-int/2addr v1, v2

    .line 119
    const v2, 0x2492493

    .line 120
    .line 121
    .line 122
    and-int/2addr v2, v1

    .line 123
    const v4, 0x2492492

    .line 124
    .line 125
    .line 126
    if-eq v2, v4, :cond_b

    .line 127
    .line 128
    const/4 v2, 0x1

    .line 129
    goto :goto_6

    .line 130
    :cond_b
    const/4 v2, 0x0

    .line 131
    :goto_6
    and-int/lit8 v4, v1, 0x1

    .line 132
    .line 133
    invoke-virtual {v0, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_10

    .line 138
    .line 139
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 140
    .line 141
    .line 142
    and-int/lit8 v2, v9, 0x1

    .line 143
    .line 144
    const/16 v4, 0xf

    .line 145
    .line 146
    const v5, -0x70001

    .line 147
    .line 148
    .line 149
    if-eqz v2, :cond_d

    .line 150
    .line 151
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_c

    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 159
    .line 160
    .line 161
    and-int/2addr v1, v5

    .line 162
    move/from16 v2, p4

    .line 163
    .line 164
    move-object/from16 v18, p5

    .line 165
    .line 166
    move-object/from16 v17, p7

    .line 167
    .line 168
    goto :goto_8

    .line 169
    :cond_d
    :goto_7
    sget v2, Landroidx/compose/material3/TopAppBarDefaults;->TopAppBarExpandedHeight:F

    .line 170
    .line 171
    sget-object v6, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 172
    .line 173
    invoke-static {v0}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    iget-object v6, v6, Landroidx/compose/foundation/layout/WindowInsetsHolder;->systemBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 178
    .line 179
    invoke-static {v0}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    iget-object v8, v8, Landroidx/compose/foundation/layout/WindowInsetsHolder;->displayCutout:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 184
    .line 185
    new-instance v12, Landroidx/compose/foundation/layout/UnionInsets;

    .line 186
    .line 187
    invoke-direct {v12, v6, v8}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 188
    .line 189
    .line 190
    sget v6, Landroidx/compose/foundation/layout/SpacerKt;->Horizontal:I

    .line 191
    .line 192
    or-int/2addr v3, v4

    .line 193
    new-instance v6, Landroidx/compose/foundation/layout/LimitInsets;

    .line 194
    .line 195
    invoke-direct {v6, v12, v3}, Landroidx/compose/foundation/layout/LimitInsets;-><init>(Landroidx/compose/foundation/layout/UnionInsets;I)V

    .line 196
    .line 197
    .line 198
    and-int/2addr v1, v5

    .line 199
    sget-object v3, Landroidx/compose/material3/TopAppBarDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 200
    .line 201
    move-object/from16 v17, v3

    .line 202
    .line 203
    move-object/from16 v18, v6

    .line 204
    .line 205
    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 206
    .line 207
    .line 208
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->TitleFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 209
    .line 210
    invoke-static {v3, v0}, Landroidx/compose/material3/TypographyKt;->getValue(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextStyle;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    sget-object v13, Landroidx/compose/ui/text/TextStyle;->Default:Landroidx/compose/ui/text/TextStyle;

    .line 215
    .line 216
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 217
    .line 218
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-nez v3, :cond_f

    .line 223
    .line 224
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 225
    .line 226
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_e

    .line 231
    .line 232
    goto :goto_9

    .line 233
    :cond_e
    move/from16 v16, v2

    .line 234
    .line 235
    goto :goto_a

    .line 236
    :cond_f
    :goto_9
    sget v3, Landroidx/compose/material3/TopAppBarDefaults;->TopAppBarExpandedHeight:F

    .line 237
    .line 238
    move/from16 v16, v3

    .line 239
    .line 240
    :goto_a
    shr-int/lit8 v3, v1, 0x3

    .line 241
    .line 242
    and-int/lit8 v3, v3, 0xe

    .line 243
    .line 244
    const v5, 0x36c00

    .line 245
    .line 246
    .line 247
    or-int/2addr v3, v5

    .line 248
    shl-int/lit8 v5, v1, 0x3

    .line 249
    .line 250
    and-int/lit8 v6, v5, 0x70

    .line 251
    .line 252
    or-int/2addr v3, v6

    .line 253
    shl-int/lit8 v6, v1, 0xc

    .line 254
    .line 255
    const/high16 v8, 0x380000

    .line 256
    .line 257
    and-int/2addr v8, v6

    .line 258
    or-int/2addr v3, v8

    .line 259
    const/high16 v8, 0x1c00000

    .line 260
    .line 261
    and-int/2addr v6, v8

    .line 262
    or-int/2addr v3, v6

    .line 263
    const/high16 v6, 0x70000000

    .line 264
    .line 265
    and-int/2addr v5, v6

    .line 266
    or-int v21, v3, v5

    .line 267
    .line 268
    shr-int/2addr v1, v4

    .line 269
    and-int/lit16 v1, v1, 0x3fe

    .line 270
    .line 271
    move-object/from16 v20, v0

    .line 272
    .line 273
    move/from16 v22, v1

    .line 274
    .line 275
    move-object/from16 v19, v7

    .line 276
    .line 277
    invoke-static/range {v10 .. v22}, Landroidx/compose/material3/AppBarKt;->SingleRowTopAppBar-TCVpFMg(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;II)V

    .line 278
    .line 279
    .line 280
    move v5, v2

    .line 281
    move-object/from16 v8, v17

    .line 282
    .line 283
    move-object/from16 v6, v18

    .line 284
    .line 285
    goto :goto_b

    .line 286
    :cond_10
    move-object/from16 v20, v0

    .line 287
    .line 288
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 289
    .line 290
    .line 291
    move/from16 v5, p4

    .line 292
    .line 293
    move-object/from16 v6, p5

    .line 294
    .line 295
    move-object/from16 v8, p7

    .line 296
    .line 297
    :goto_b
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 298
    .line 299
    .line 300
    move-result-object v10

    .line 301
    if-eqz v10, :cond_11

    .line 302
    .line 303
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;

    .line 304
    .line 305
    move-object/from16 v1, p0

    .line 306
    .line 307
    move-object/from16 v2, p1

    .line 308
    .line 309
    move-object/from16 v3, p2

    .line 310
    .line 311
    move-object/from16 v4, p3

    .line 312
    .line 313
    move-object/from16 v7, p6

    .line 314
    .line 315
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/foundation/layout/PaddingValues;I)V

    .line 316
    .line 317
    .line 318
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 319
    .line 320
    :cond_11
    return-void
.end method

.method public static final TopAppBarLayout-_5F1rQI(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;FLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v9, p8

    move-object/from16 v15, p14

    move/from16 v0, p16

    move-object/from16 v5, p17

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 1
    move-object/from16 v7, p18

    check-cast v7, Landroidx/compose/runtime/GapComposer;

    const v8, 0xe474a75

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    :goto_0
    or-int v8, p19, v8

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/16 v11, 0x20

    goto :goto_1

    :cond_1
    const/16 v11, 0x10

    :goto_1
    or-int/2addr v8, v11

    invoke-virtual {v7, v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x100

    goto :goto_2

    :cond_2
    const/16 v11, 0x80

    :goto_2
    or-int/2addr v8, v11

    move-wide/from16 v13, p4

    invoke-virtual {v7, v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x800

    goto :goto_3

    :cond_3
    const/16 v16, 0x400

    :goto_3
    or-int v8, v8, v16

    move-wide/from16 v11, p6

    invoke-virtual {v7, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x4000

    goto :goto_4

    :cond_4
    const/16 v17, 0x2000

    :goto_4
    or-int v8, v8, v17

    invoke-virtual {v7, v9, v10}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v17

    const/high16 v18, 0x10000

    const/high16 v19, 0x20000

    if-eqz v17, :cond_5

    move/from16 v17, v19

    goto :goto_5

    :cond_5
    move/from16 v17, v18

    :goto_5
    or-int v8, v8, v17

    move/from16 v17, v8

    move-object/from16 v8, p10

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    const/high16 v20, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v20, 0x80000

    :goto_6
    or-int v17, v17, v20

    move-object/from16 v8, p11

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v20

    const/high16 v21, 0x400000

    if-eqz v20, :cond_7

    const/high16 v20, 0x800000

    goto :goto_7

    :cond_7
    move/from16 v20, v21

    :goto_7
    or-int v17, v17, v20

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    const/high16 v23, 0x2000000

    const/high16 v24, 0x4000000

    if-eqz v8, :cond_8

    move/from16 v8, v24

    goto :goto_8

    :cond_8
    move/from16 v8, v23

    :goto_8
    or-int v8, v17, v8

    move/from16 v17, v8

    move-object/from16 v8, p12

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    const/high16 v25, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v25, 0x10000000

    :goto_9
    or-int v17, v17, v25

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x100

    goto :goto_a

    :cond_a
    const/16 v6, 0x80

    :goto_a
    const v25, 0x186c36

    or-int v6, v25, v6

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    move/from16 v18, v19

    :cond_b
    or-int v6, v6, v18

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_c

    const/high16 v21, 0x800000

    :cond_c
    or-int v6, v6, v21

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    move/from16 v23, v24

    :cond_d
    or-int v6, v6, v23

    const v18, 0x12492493

    and-int v8, v17, v18

    const v11, 0x12492492

    if-ne v8, v11, :cond_f

    const v8, 0x2492493

    and-int/2addr v8, v6

    const v11, 0x2492492

    if-eq v8, v11, :cond_e

    goto :goto_b

    :cond_e
    const/4 v8, 0x0

    goto :goto_c

    :cond_f
    :goto_b
    const/4 v8, 0x1

    :goto_c
    and-int/lit8 v11, v17, 0x1

    invoke-virtual {v7, v11, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v8

    if-eqz v8, :cond_1a

    and-int/lit8 v8, v17, 0x70

    const/16 v11, 0x20

    if-eq v8, v11, :cond_10

    const/4 v8, 0x0

    goto :goto_d

    :cond_10
    const/4 v8, 0x1

    :goto_d
    and-int/lit16 v11, v6, 0x380

    const/16 v12, 0x100

    if-ne v11, v12, :cond_11

    const/4 v11, 0x1

    goto :goto_e

    :cond_11
    const/4 v11, 0x0

    :goto_e
    or-int/2addr v8, v11

    const/high16 v11, 0x1c00000

    and-int/2addr v11, v6

    const/high16 v12, 0x800000

    if-ne v11, v12, :cond_12

    const/4 v11, 0x1

    goto :goto_f

    :cond_12
    const/4 v11, 0x0

    :goto_f
    or-int/2addr v8, v11

    .line 2
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .line 3
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v8, :cond_13

    if-ne v11, v12, :cond_14

    .line 4
    :cond_13
    new-instance v11, Landroidx/compose/material3/TopAppBarMeasurePolicy;

    invoke-direct {v11, v2, v0, v5}, Landroidx/compose/material3/TopAppBarMeasurePolicy;-><init>(Landroidx/compose/material3/internal/FloatProducer;FLandroidx/compose/foundation/layout/PaddingValues;)V

    .line 5
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 6
    :cond_14
    check-cast v11, Landroidx/compose/material3/TopAppBarMeasurePolicy;

    move v8, v6

    .line 7
    iget-wide v5, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    const/16 v22, 0x20

    ushr-long v18, v5, v22

    xor-long v5, v5, v18

    long-to-int v5, v5

    .line 8
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v6

    .line 9
    invoke-static {v7, v1}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 10
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 12
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 13
    iget-boolean v2, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-eqz v2, :cond_15

    .line 14
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    .line 15
    :cond_15
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 16
    :goto_10
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 17
    invoke-static {v7, v11, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 18
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 19
    invoke-static {v7, v6, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 21
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 22
    invoke-static {v7, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 23
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 24
    invoke-static {v7, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move/from16 v16, v8

    .line 25
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 26
    invoke-static {v7, v0, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 27
    const-string v0, "navigationIcon"

    invoke-static {v0}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget v13, Landroidx/compose/material3/AppBarKt;->TopAppBarHorizontalPadding:F

    const/4 v14, 0x0

    const/16 v9, 0xe

    invoke-static {v0, v13, v14, v14, v9}, Landroidx/compose/foundation/layout/SpacerKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 28
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    move/from16 v18, v9

    const/4 v9, 0x0

    .line 29
    invoke-static {v10, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    move-object/from16 v25, v10

    .line 30
    iget-wide v9, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    const/16 v22, 0x20

    ushr-long v19, v9, v22

    xor-long v9, v9, v19

    long-to-int v9, v9

    .line 31
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v10

    .line 32
    invoke-static {v7, v0}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 33
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    move/from16 v19, v9

    .line 34
    iget-boolean v9, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-eqz v9, :cond_16

    .line 35
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    .line 36
    :cond_16
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 37
    :goto_11
    invoke-static {v7, v14, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 38
    invoke-static {v7, v10, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 39
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v9, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 40
    invoke-static {v7, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 41
    invoke-static {v7, v0, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 42
    sget-object v0, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 43
    new-instance v9, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v9, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 44
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v9

    shr-int/lit8 v10, v16, 0xc

    and-int/lit8 v10, v10, 0x70

    const/16 v14, 0x8

    or-int/2addr v10, v14

    .line 45
    invoke-static {v9, v15, v7, v10}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v9, 0x1

    .line 46
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    const v9, 0x18598674

    .line 47
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 48
    const-string/jumbo v9, "title"

    invoke-static {v9}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 49
    invoke-static {v9, v13}, Landroidx/compose/foundation/layout/SpacerKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const v10, -0x17fced5a

    .line 50
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v10, 0x0

    .line 51
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 52
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-interface {v9, v10}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 53
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v12, :cond_17

    .line 54
    new-instance v10, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;

    move-object/from16 v14, p13

    const/4 v12, 0x1

    invoke-direct {v10, v12, v14}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 55
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_12

    :cond_17
    move-object/from16 v14, p13

    .line 56
    :goto_12
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    move-object/from16 v10, v25

    const/4 v12, 0x0

    .line 57
    invoke-static {v10, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    .line 58
    iget-wide v14, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    const/16 v22, 0x20

    ushr-long v19, v14, v22

    xor-long v14, v14, v19

    long-to-int v4, v14

    .line 59
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v12

    .line 60
    invoke-static {v7, v9}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 61
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 62
    iget-boolean v14, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-eqz v14, :cond_18

    .line 63
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_13

    .line 64
    :cond_18
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 65
    :goto_13
    invoke-static {v7, v3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 66
    invoke-static {v7, v12, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7, v3, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 68
    invoke-static {v7, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 69
    invoke-static {v7, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v3, v17, 0x9

    and-int/lit8 v3, v3, 0xe

    shr-int/lit8 v4, v17, 0x12

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    shr-int/lit8 v4, v17, 0xc

    and-int/lit16 v4, v4, 0x380

    or-int v21, v3, v4

    move-wide/from16 v16, p4

    move-object/from16 v19, p10

    move-object/from16 v18, p11

    move-object/from16 v20, v7

    .line 70
    invoke-static/range {v16 .. v21}, Landroidx/compose/material3/internal/LayoutUtilKt;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v3, v20

    const/4 v12, 0x1

    .line 71
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    const/4 v12, 0x0

    .line 72
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 73
    const-string v4, "actionIcons"

    invoke-static {v4}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v7, 0xb

    const/4 v9, 0x0

    invoke-static {v4, v9, v9, v13, v7}, Landroidx/compose/foundation/layout/SpacerKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 74
    invoke-static {v10, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    .line 75
    iget-wide v9, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    const/16 v22, 0x20

    ushr-long v12, v9, v22

    xor-long/2addr v9, v12

    long-to-int v9, v9

    .line 76
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v10

    .line 77
    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 78
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 79
    iget-boolean v12, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-eqz v12, :cond_19

    .line 80
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_14

    .line 81
    :cond_19
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 82
    :goto_14
    invoke-static {v3, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 83
    invoke-static {v3, v10, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 84
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 85
    invoke-static {v3, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 86
    invoke-static {v3, v4, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v9, p8

    invoke-direct {v1, v9, v10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 88
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/16 v1, 0x38

    move-object/from16 v2, p15

    .line 89
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v12, 0x1

    .line 90
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 91
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_15

    :cond_1a
    move-object/from16 v2, p15

    move-object v3, v7

    .line 92
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 93
    :goto_15
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_1b

    move-object v1, v0

    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p19

    move-object/from16 v26, v1

    move-object/from16 v16, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v19}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;FLandroidx/compose/foundation/layout/PaddingValues;I)V

    move-object/from16 v1, v26

    .line 94
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method
