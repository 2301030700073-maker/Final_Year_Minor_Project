.class public abstract Landroidx/compose/material3/AppBarKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final TopAppBarHorizontalPadding:F

.field public static final TopAppBarTitleInset:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x19

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
    const/16 v1, 0x1a

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
    const/4 v1, 0x0

    .line 30
    const v2, 0x3e19999a    # 0.15f

    .line 31
    .line 32
    .line 33
    const v3, 0x3f4ccccd    # 0.8f

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v3, v1, v3, v2}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 37
    .line 38
    .line 39
    const/high16 v0, 0x40800000    # 4.0f

    .line 40
    .line 41
    sput v0, Landroidx/compose/material3/AppBarKt;->TopAppBarHorizontalPadding:F

    .line 42
    .line 43
    const/high16 v0, 0x41400000    # 12.0f

    .line 44
    .line 45
    sput v0, Landroidx/compose/material3/AppBarKt;->TopAppBarTitleInset:F

    .line 46
    .line 47
    return-void
.end method

.method public static final SingleRowTopAppBar-wn8IZOc(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;II)V
    .locals 21

    .line 1
    move/from16 v10, p10

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 4
    .line 5
    move-object/from16 v1, p9

    .line 6
    .line 7
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v2, -0x793953af

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v2, v10, 0x6

    .line 16
    .line 17
    const/4 v4, 0x4

    .line 18
    move-object/from16 v12, p0

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    move v2, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v2, 0x2

    .line 31
    :goto_0
    or-int/2addr v2, v10

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v2, v10

    .line 34
    :goto_1
    and-int/lit8 v5, v10, 0x30

    .line 35
    .line 36
    const/16 v6, 0x10

    .line 37
    .line 38
    const/16 v7, 0x20

    .line 39
    .line 40
    move-object/from16 v13, p1

    .line 41
    .line 42
    if-nez v5, :cond_3

    .line 43
    .line 44
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    move v5, v7

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move v5, v6

    .line 53
    :goto_2
    or-int/2addr v2, v5

    .line 54
    :cond_3
    and-int/lit16 v5, v10, 0x180

    .line 55
    .line 56
    move-object/from16 v14, p2

    .line 57
    .line 58
    if-nez v5, :cond_5

    .line 59
    .line 60
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    const/16 v5, 0x100

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/16 v5, 0x80

    .line 70
    .line 71
    :goto_3
    or-int/2addr v2, v5

    .line 72
    :cond_5
    and-int/lit16 v5, v10, 0xc00

    .line 73
    .line 74
    const/4 v8, 0x0

    .line 75
    if-nez v5, :cond_7

    .line 76
    .line 77
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_6

    .line 82
    .line 83
    const/16 v5, 0x800

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    const/16 v5, 0x400

    .line 87
    .line 88
    :goto_4
    or-int/2addr v2, v5

    .line 89
    :cond_7
    and-int/lit16 v5, v10, 0x6000

    .line 90
    .line 91
    move-object/from16 v15, p3

    .line 92
    .line 93
    if-nez v5, :cond_9

    .line 94
    .line 95
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_8

    .line 100
    .line 101
    const/16 v5, 0x4000

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_8
    const/16 v5, 0x2000

    .line 105
    .line 106
    :goto_5
    or-int/2addr v2, v5

    .line 107
    :cond_9
    const/high16 v5, 0x30000

    .line 108
    .line 109
    and-int/2addr v5, v10

    .line 110
    if-nez v5, :cond_b

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_a

    .line 117
    .line 118
    const/high16 v0, 0x20000

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_a
    const/high16 v0, 0x10000

    .line 122
    .line 123
    :goto_6
    or-int/2addr v2, v0

    .line 124
    :cond_b
    const/high16 v0, 0x180000

    .line 125
    .line 126
    and-int/2addr v0, v10

    .line 127
    move-object/from16 v5, p4

    .line 128
    .line 129
    if-nez v0, :cond_d

    .line 130
    .line 131
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_c

    .line 136
    .line 137
    const/high16 v0, 0x100000

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_c
    const/high16 v0, 0x80000

    .line 141
    .line 142
    :goto_7
    or-int/2addr v2, v0

    .line 143
    :cond_d
    const/high16 v0, 0xc00000

    .line 144
    .line 145
    and-int/2addr v0, v10

    .line 146
    if-nez v0, :cond_f

    .line 147
    .line 148
    move-object/from16 v0, p5

    .line 149
    .line 150
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-eqz v9, :cond_e

    .line 155
    .line 156
    const/high16 v9, 0x800000

    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_e
    const/high16 v9, 0x400000

    .line 160
    .line 161
    :goto_8
    or-int/2addr v2, v9

    .line 162
    goto :goto_9

    .line 163
    :cond_f
    move-object/from16 v0, p5

    .line 164
    .line 165
    :goto_9
    const/high16 v9, 0x6000000

    .line 166
    .line 167
    and-int/2addr v9, v10

    .line 168
    if-nez v9, :cond_11

    .line 169
    .line 170
    move/from16 v9, p6

    .line 171
    .line 172
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    if-eqz v11, :cond_10

    .line 177
    .line 178
    const/high16 v11, 0x4000000

    .line 179
    .line 180
    goto :goto_a

    .line 181
    :cond_10
    const/high16 v11, 0x2000000

    .line 182
    .line 183
    :goto_a
    or-int/2addr v2, v11

    .line 184
    goto :goto_b

    .line 185
    :cond_11
    move/from16 v9, p6

    .line 186
    .line 187
    :goto_b
    const/high16 v11, 0x30000000

    .line 188
    .line 189
    and-int/2addr v11, v10

    .line 190
    if-nez v11, :cond_13

    .line 191
    .line 192
    move-object/from16 v11, p7

    .line 193
    .line 194
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v16

    .line 198
    if-eqz v16, :cond_12

    .line 199
    .line 200
    const/high16 v16, 0x20000000

    .line 201
    .line 202
    goto :goto_c

    .line 203
    :cond_12
    const/high16 v16, 0x10000000

    .line 204
    .line 205
    :goto_c
    or-int v2, v2, v16

    .line 206
    .line 207
    goto :goto_d

    .line 208
    :cond_13
    move-object/from16 v11, p7

    .line 209
    .line 210
    :goto_d
    and-int/lit8 v16, p11, 0x6

    .line 211
    .line 212
    move-object/from16 v3, p8

    .line 213
    .line 214
    if-nez v16, :cond_15

    .line 215
    .line 216
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v16

    .line 220
    if-eqz v16, :cond_14

    .line 221
    .line 222
    goto :goto_e

    .line 223
    :cond_14
    const/4 v4, 0x2

    .line 224
    :goto_e
    or-int v4, p11, v4

    .line 225
    .line 226
    goto :goto_f

    .line 227
    :cond_15
    move/from16 v4, p11

    .line 228
    .line 229
    :goto_f
    and-int/lit8 v16, p11, 0x30

    .line 230
    .line 231
    if-nez v16, :cond_17

    .line 232
    .line 233
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    if-eqz v8, :cond_16

    .line 238
    .line 239
    move v6, v7

    .line 240
    :cond_16
    or-int/2addr v4, v6

    .line 241
    :cond_17
    const v6, 0x12492493

    .line 242
    .line 243
    .line 244
    and-int/2addr v6, v2

    .line 245
    const v7, 0x12492492

    .line 246
    .line 247
    .line 248
    const/4 v8, 0x0

    .line 249
    const/16 v16, 0x1

    .line 250
    .line 251
    if-ne v6, v7, :cond_19

    .line 252
    .line 253
    and-int/lit8 v4, v4, 0x13

    .line 254
    .line 255
    const/16 v6, 0x12

    .line 256
    .line 257
    if-eq v4, v6, :cond_18

    .line 258
    .line 259
    goto :goto_10

    .line 260
    :cond_18
    move v4, v8

    .line 261
    goto :goto_11

    .line 262
    :cond_19
    :goto_10
    move/from16 v4, v16

    .line 263
    .line 264
    :goto_11
    and-int/lit8 v2, v2, 0x1

    .line 265
    .line 266
    invoke-virtual {v1, v2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_1a

    .line 271
    .line 272
    new-instance v11, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    .line 273
    .line 274
    move-object/from16 v19, p7

    .line 275
    .line 276
    move-object/from16 v17, v0

    .line 277
    .line 278
    move-object/from16 v20, v3

    .line 279
    .line 280
    move-object/from16 v16, v5

    .line 281
    .line 282
    move/from16 v18, v9

    .line 283
    .line 284
    invoke-direct/range {v11 .. v20}, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;)V

    .line 285
    .line 286
    .line 287
    sget-object v0, Landroidx/compose/material3/AppBarKt;->LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 288
    .line 289
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    .line 294
    .line 295
    invoke-virtual {v0, v11, v1, v8}, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;->SingleRowTopAppBar(Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;Landroidx/compose/runtime/Composer;I)V

    .line 296
    .line 297
    .line 298
    goto :goto_12

    .line 299
    :cond_1a
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 300
    .line 301
    .line 302
    :goto_12
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 303
    .line 304
    .line 305
    move-result-object v12

    .line 306
    if-eqz v12, :cond_1b

    .line 307
    .line 308
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;

    .line 309
    .line 310
    move-object/from16 v1, p0

    .line 311
    .line 312
    move-object/from16 v2, p1

    .line 313
    .line 314
    move-object/from16 v3, p2

    .line 315
    .line 316
    move-object/from16 v4, p3

    .line 317
    .line 318
    move-object/from16 v5, p4

    .line 319
    .line 320
    move-object/from16 v6, p5

    .line 321
    .line 322
    move/from16 v7, p6

    .line 323
    .line 324
    move-object/from16 v8, p7

    .line 325
    .line 326
    move-object/from16 v9, p8

    .line 327
    .line 328
    move/from16 v11, p11

    .line 329
    .line 330
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;II)V

    .line 331
    .line 332
    .line 333
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 334
    .line 335
    :cond_1b
    return-void
.end method

.method public static final TopAppBar-GHTll3U(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    .line 1
    move/from16 v8, p8

    .line 2
    .line 3
    move-object/from16 v0, p7

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, 0x6a5c1dd0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, v8, 0x6

    .line 14
    .line 15
    move-object/from16 v10, p0

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int/2addr v1, v8

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v1, v8

    .line 31
    :goto_1
    and-int/lit8 v2, v8, 0x30

    .line 32
    .line 33
    const/16 v3, 0x10

    .line 34
    .line 35
    move-object/from16 v9, p1

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit16 v2, v8, 0x180

    .line 51
    .line 52
    move-object/from16 v13, p2

    .line 53
    .line 54
    if-nez v2, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit16 v2, v8, 0xc00

    .line 69
    .line 70
    move-object/from16 v14, p3

    .line 71
    .line 72
    if-nez v2, :cond_7

    .line 73
    .line 74
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/2addr v4, v8

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
    and-int/2addr v1, v8

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
    const/high16 v1, 0xc00000

    .line 117
    .line 118
    or-int/2addr v1, v2

    .line 119
    const v2, 0x492493

    .line 120
    .line 121
    .line 122
    and-int/2addr v2, v1

    .line 123
    const v4, 0x492492

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
    and-int/lit8 v2, v8, 0x1

    .line 143
    .line 144
    const/high16 v4, 0x42800000    # 64.0f

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
    move-object/from16 v16, p5

    .line 163
    .line 164
    move v2, v1

    .line 165
    move/from16 v1, p4

    .line 166
    .line 167
    goto :goto_8

    .line 168
    :cond_d
    :goto_7
    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 169
    .line 170
    invoke-static {v0}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    iget-object v2, v2, Landroidx/compose/foundation/layout/WindowInsetsHolder;->systemBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 175
    .line 176
    invoke-static {v0}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    iget-object v6, v6, Landroidx/compose/foundation/layout/WindowInsetsHolder;->displayCutout:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 181
    .line 182
    new-instance v11, Landroidx/compose/foundation/layout/UnionInsets;

    .line 183
    .line 184
    invoke-direct {v11, v2, v6}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 185
    .line 186
    .line 187
    sget v2, Landroidx/compose/foundation/layout/OffsetKt;->Horizontal:I

    .line 188
    .line 189
    const/16 v2, 0xf

    .line 190
    .line 191
    or-int/2addr v2, v3

    .line 192
    new-instance v3, Landroidx/compose/foundation/layout/LimitInsets;

    .line 193
    .line 194
    invoke-direct {v3, v11, v2}, Landroidx/compose/foundation/layout/LimitInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;I)V

    .line 195
    .line 196
    .line 197
    and-int/2addr v1, v5

    .line 198
    move v2, v1

    .line 199
    move-object/from16 v16, v3

    .line 200
    .line 201
    move v1, v4

    .line 202
    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 203
    .line 204
    .line 205
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->TitleFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 206
    .line 207
    invoke-static {v3, v0}, Landroidx/compose/material3/TypographyKt;->getValue(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextStyle;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    sget-object v12, Landroidx/compose/ui/text/TextStyle;->Default:Landroidx/compose/ui/text/TextStyle;

    .line 212
    .line 213
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 214
    .line 215
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-nez v3, :cond_f

    .line 220
    .line 221
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 222
    .line 223
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-eqz v3, :cond_e

    .line 228
    .line 229
    goto :goto_9

    .line 230
    :cond_e
    move v15, v1

    .line 231
    goto :goto_a

    .line 232
    :cond_f
    :goto_9
    move v15, v4

    .line 233
    :goto_a
    shr-int/lit8 v3, v2, 0x3

    .line 234
    .line 235
    and-int/lit8 v3, v3, 0xe

    .line 236
    .line 237
    const v4, 0x36c00

    .line 238
    .line 239
    .line 240
    or-int/2addr v3, v4

    .line 241
    shl-int/lit8 v4, v2, 0x3

    .line 242
    .line 243
    and-int/lit8 v4, v4, 0x70

    .line 244
    .line 245
    or-int/2addr v3, v4

    .line 246
    shl-int/lit8 v4, v2, 0xc

    .line 247
    .line 248
    const/high16 v5, 0x380000

    .line 249
    .line 250
    and-int/2addr v5, v4

    .line 251
    or-int/2addr v3, v5

    .line 252
    const/high16 v5, 0x1c00000

    .line 253
    .line 254
    and-int/2addr v4, v5

    .line 255
    or-int v19, v3, v4

    .line 256
    .line 257
    shr-int/lit8 v2, v2, 0x12

    .line 258
    .line 259
    and-int/lit8 v20, v2, 0x7e

    .line 260
    .line 261
    move-object/from16 v18, v0

    .line 262
    .line 263
    move-object/from16 v17, v7

    .line 264
    .line 265
    invoke-static/range {v9 .. v20}, Landroidx/compose/material3/AppBarKt;->SingleRowTopAppBar-wn8IZOc(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;II)V

    .line 266
    .line 267
    .line 268
    move v5, v1

    .line 269
    move-object/from16 v6, v16

    .line 270
    .line 271
    goto :goto_b

    .line 272
    :cond_10
    move-object/from16 v18, v0

    .line 273
    .line 274
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 275
    .line 276
    .line 277
    move/from16 v5, p4

    .line 278
    .line 279
    move-object/from16 v6, p5

    .line 280
    .line 281
    :goto_b
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    if-eqz v9, :cond_11

    .line 286
    .line 287
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;

    .line 288
    .line 289
    move-object/from16 v1, p0

    .line 290
    .line 291
    move-object/from16 v2, p1

    .line 292
    .line 293
    move-object/from16 v3, p2

    .line 294
    .line 295
    move-object/from16 v4, p3

    .line 296
    .line 297
    move-object/from16 v7, p6

    .line 298
    .line 299
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;I)V

    .line 300
    .line 301
    .line 302
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 303
    .line 304
    :cond_11
    return-void
.end method

.method public static final TopAppBarLayout-lyUyIHI(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;FLandroidx/compose/runtime/Composer;I)V
    .locals 36

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-wide/from16 v3, p2

    .line 6
    .line 7
    move-wide/from16 v9, p8

    .line 8
    .line 9
    move-object/from16 v15, p14

    .line 10
    .line 11
    move/from16 v0, p16

    .line 12
    .line 13
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 14
    .line 15
    move-object/from16 v6, p17

    .line 16
    .line 17
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    const v7, 0x788a5dc

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-eqz v7, :cond_0

    .line 30
    .line 31
    const/4 v7, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v7, 0x2

    .line 34
    :goto_0
    or-int v7, p18, v7

    .line 35
    .line 36
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    if-eqz v11, :cond_1

    .line 41
    .line 42
    const/16 v11, 0x20

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v11, 0x10

    .line 46
    .line 47
    :goto_1
    or-int/2addr v7, v11

    .line 48
    invoke-virtual {v6, v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    if-eqz v11, :cond_2

    .line 53
    .line 54
    const/16 v11, 0x100

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/16 v11, 0x80

    .line 58
    .line 59
    :goto_2
    or-int/2addr v7, v11

    .line 60
    move-wide/from16 v13, p4

    .line 61
    .line 62
    invoke-virtual {v6, v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 63
    .line 64
    .line 65
    move-result v16

    .line 66
    if-eqz v16, :cond_3

    .line 67
    .line 68
    const/16 v16, 0x800

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/16 v16, 0x400

    .line 72
    .line 73
    :goto_3
    or-int v7, v7, v16

    .line 74
    .line 75
    move-wide/from16 v11, p6

    .line 76
    .line 77
    invoke-virtual {v6, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 78
    .line 79
    .line 80
    move-result v18

    .line 81
    if-eqz v18, :cond_4

    .line 82
    .line 83
    const/16 v18, 0x4000

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_4
    const/16 v18, 0x2000

    .line 87
    .line 88
    :goto_4
    or-int v7, v7, v18

    .line 89
    .line 90
    invoke-virtual {v6, v9, v10}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 91
    .line 92
    .line 93
    move-result v18

    .line 94
    const/high16 v19, 0x10000

    .line 95
    .line 96
    const/high16 v20, 0x20000

    .line 97
    .line 98
    if-eqz v18, :cond_5

    .line 99
    .line 100
    move/from16 v18, v20

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_5
    move/from16 v18, v19

    .line 104
    .line 105
    :goto_5
    or-int v7, v7, v18

    .line 106
    .line 107
    move-object/from16 v8, p10

    .line 108
    .line 109
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v21

    .line 113
    if-eqz v21, :cond_6

    .line 114
    .line 115
    const/high16 v21, 0x100000

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_6
    const/high16 v21, 0x80000

    .line 119
    .line 120
    :goto_6
    or-int v7, v7, v21

    .line 121
    .line 122
    move/from16 v21, v7

    .line 123
    .line 124
    move-object/from16 v7, p11

    .line 125
    .line 126
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v22

    .line 130
    const/high16 v23, 0x400000

    .line 131
    .line 132
    if-eqz v22, :cond_7

    .line 133
    .line 134
    const/high16 v22, 0x800000

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_7
    move/from16 v22, v23

    .line 138
    .line 139
    :goto_7
    or-int v21, v21, v22

    .line 140
    .line 141
    const/4 v7, 0x0

    .line 142
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-eqz v7, :cond_8

    .line 147
    .line 148
    const/high16 v7, 0x4000000

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_8
    const/high16 v7, 0x2000000

    .line 152
    .line 153
    :goto_8
    or-int v7, v21, v7

    .line 154
    .line 155
    move/from16 v21, v7

    .line 156
    .line 157
    move-object/from16 v7, p12

    .line 158
    .line 159
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v24

    .line 163
    if-eqz v24, :cond_9

    .line 164
    .line 165
    const/high16 v24, 0x20000000

    .line 166
    .line 167
    goto :goto_9

    .line 168
    :cond_9
    const/high16 v24, 0x10000000

    .line 169
    .line 170
    :goto_9
    or-int v21, v21, v24

    .line 171
    .line 172
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_a

    .line 177
    .line 178
    const/16 v5, 0x100

    .line 179
    .line 180
    goto :goto_a

    .line 181
    :cond_a
    const/16 v5, 0x80

    .line 182
    .line 183
    :goto_a
    const v24, 0x186c36

    .line 184
    .line 185
    .line 186
    or-int v5, v24, v5

    .line 187
    .line 188
    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v24

    .line 192
    if-eqz v24, :cond_b

    .line 193
    .line 194
    move/from16 v19, v20

    .line 195
    .line 196
    :cond_b
    or-int v5, v5, v19

    .line 197
    .line 198
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 199
    .line 200
    .line 201
    move-result v19

    .line 202
    if-eqz v19, :cond_c

    .line 203
    .line 204
    const/high16 v23, 0x800000

    .line 205
    .line 206
    :cond_c
    or-int v5, v5, v23

    .line 207
    .line 208
    const v19, 0x12492493

    .line 209
    .line 210
    .line 211
    and-int v7, v21, v19

    .line 212
    .line 213
    const v8, 0x12492492

    .line 214
    .line 215
    .line 216
    if-ne v7, v8, :cond_e

    .line 217
    .line 218
    const v7, 0x492493

    .line 219
    .line 220
    .line 221
    and-int/2addr v7, v5

    .line 222
    const v8, 0x492492

    .line 223
    .line 224
    .line 225
    if-eq v7, v8, :cond_d

    .line 226
    .line 227
    goto :goto_b

    .line 228
    :cond_d
    const/4 v7, 0x0

    .line 229
    goto :goto_c

    .line 230
    :cond_e
    :goto_b
    const/4 v7, 0x1

    .line 231
    :goto_c
    and-int/lit8 v8, v21, 0x1

    .line 232
    .line 233
    invoke-virtual {v6, v8, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    if-eqz v7, :cond_21

    .line 238
    .line 239
    and-int/lit8 v7, v21, 0x70

    .line 240
    .line 241
    const/16 v8, 0x20

    .line 242
    .line 243
    if-eq v7, v8, :cond_f

    .line 244
    .line 245
    const/4 v7, 0x0

    .line 246
    goto :goto_d

    .line 247
    :cond_f
    const/4 v7, 0x1

    .line 248
    :goto_d
    and-int/lit16 v8, v5, 0x380

    .line 249
    .line 250
    const/16 v11, 0x100

    .line 251
    .line 252
    if-ne v8, v11, :cond_10

    .line 253
    .line 254
    const/4 v8, 0x1

    .line 255
    goto :goto_e

    .line 256
    :cond_10
    const/4 v8, 0x0

    .line 257
    :goto_e
    or-int/2addr v7, v8

    .line 258
    const/high16 v8, 0x1c00000

    .line 259
    .line 260
    and-int/2addr v8, v5

    .line 261
    const/high16 v11, 0x800000

    .line 262
    .line 263
    if-ne v8, v11, :cond_11

    .line 264
    .line 265
    const/4 v8, 0x1

    .line 266
    goto :goto_f

    .line 267
    :cond_11
    const/4 v8, 0x0

    .line 268
    :goto_f
    or-int/2addr v7, v8

    .line 269
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 274
    .line 275
    if-nez v7, :cond_12

    .line 276
    .line 277
    if-ne v8, v11, :cond_13

    .line 278
    .line 279
    :cond_12
    new-instance v8, Landroidx/compose/material3/TopAppBarMeasurePolicy;

    .line 280
    .line 281
    invoke-direct {v8, v2, v0}, Landroidx/compose/material3/TopAppBarMeasurePolicy;-><init>(Landroidx/compose/material3/internal/FloatProducer;F)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :cond_13
    check-cast v8, Landroidx/compose/material3/TopAppBarMeasurePolicy;

    .line 288
    .line 289
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 294
    .line 295
    .line 296
    move-result-object v12

    .line 297
    invoke-static {v6, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 302
    .line 303
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 307
    .line 308
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 309
    .line 310
    .line 311
    iget-boolean v2, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 312
    .line 313
    if-eqz v2, :cond_14

    .line 314
    .line 315
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 316
    .line 317
    .line 318
    goto :goto_10

    .line 319
    :cond_14
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 320
    .line 321
    .line 322
    :goto_10
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 323
    .line 324
    invoke-static {v6, v8, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 325
    .line 326
    .line 327
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 328
    .line 329
    invoke-static {v6, v12, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 330
    .line 331
    .line 332
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 333
    .line 334
    move/from16 v16, v5

    .line 335
    .line 336
    iget-boolean v5, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 337
    .line 338
    if-nez v5, :cond_15

    .line 339
    .line 340
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v13

    .line 348
    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    if-nez v5, :cond_16

    .line 353
    .line 354
    :cond_15
    invoke-static {v7, v6, v7, v12}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 355
    .line 356
    .line 357
    :cond_16
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 358
    .line 359
    invoke-static {v6, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 360
    .line 361
    .line 362
    const-string v0, "navigationIcon"

    .line 363
    .line 364
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 365
    .line 366
    invoke-static {v7, v0}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 367
    .line 368
    .line 369
    move-result-object v23

    .line 370
    const/16 v27, 0x0

    .line 371
    .line 372
    const/16 v28, 0xe

    .line 373
    .line 374
    sget v32, Landroidx/compose/material3/AppBarKt;->TopAppBarHorizontalPadding:F

    .line 375
    .line 376
    const/16 v25, 0x0

    .line 377
    .line 378
    const/16 v26, 0x0

    .line 379
    .line 380
    move/from16 v24, v32

    .line 381
    .line 382
    invoke-static/range {v23 .. v28}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    move/from16 v13, v24

    .line 387
    .line 388
    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 389
    .line 390
    const/4 v9, 0x0

    .line 391
    invoke-static {v14, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 392
    .line 393
    .line 394
    move-result-object v10

    .line 395
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 396
    .line 397
    .line 398
    move-result v9

    .line 399
    move-object/from16 v23, v14

    .line 400
    .line 401
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 402
    .line 403
    .line 404
    move-result-object v14

    .line 405
    invoke-static {v6, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 410
    .line 411
    .line 412
    move-object/from16 v17, v11

    .line 413
    .line 414
    iget-boolean v11, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 415
    .line 416
    if-eqz v11, :cond_17

    .line 417
    .line 418
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 419
    .line 420
    .line 421
    goto :goto_11

    .line 422
    :cond_17
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 423
    .line 424
    .line 425
    :goto_11
    invoke-static {v6, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 426
    .line 427
    .line 428
    invoke-static {v6, v14, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 429
    .line 430
    .line 431
    iget-boolean v10, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 432
    .line 433
    if-nez v10, :cond_18

    .line 434
    .line 435
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v10

    .line 439
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 440
    .line 441
    .line 442
    move-result-object v11

    .line 443
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v10

    .line 447
    if-nez v10, :cond_19

    .line 448
    .line 449
    :cond_18
    invoke-static {v9, v6, v9, v12}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 450
    .line 451
    .line 452
    :cond_19
    invoke-static {v6, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 453
    .line 454
    .line 455
    sget-object v0, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 456
    .line 457
    new-instance v9, Landroidx/compose/ui/graphics/Color;

    .line 458
    .line 459
    invoke-direct {v9, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 463
    .line 464
    .line 465
    move-result-object v9

    .line 466
    shr-int/lit8 v10, v16, 0xc

    .line 467
    .line 468
    and-int/lit8 v10, v10, 0x70

    .line 469
    .line 470
    const/16 v11, 0x8

    .line 471
    .line 472
    or-int/2addr v10, v11

    .line 473
    invoke-static {v9, v15, v6, v10}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 474
    .line 475
    .line 476
    const/4 v9, 0x1

    .line 477
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 478
    .line 479
    .line 480
    const v9, -0x510b6613

    .line 481
    .line 482
    .line 483
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 484
    .line 485
    .line 486
    const-string v9, "title"

    .line 487
    .line 488
    invoke-static {v7, v9}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 489
    .line 490
    .line 491
    move-result-object v9

    .line 492
    const/4 v10, 0x0

    .line 493
    const/4 v11, 0x2

    .line 494
    invoke-static {v9, v13, v10, v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 495
    .line 496
    .line 497
    move-result-object v9

    .line 498
    const v10, 0x1e6b2c0d

    .line 499
    .line 500
    .line 501
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 502
    .line 503
    .line 504
    const/4 v10, 0x0

    .line 505
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 506
    .line 507
    .line 508
    invoke-interface {v9, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 509
    .line 510
    .line 511
    move-result-object v9

    .line 512
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v11

    .line 516
    move-object/from16 v14, v17

    .line 517
    .line 518
    if-ne v11, v14, :cond_1a

    .line 519
    .line 520
    new-instance v11, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;

    .line 521
    .line 522
    move-object/from16 v14, p13

    .line 523
    .line 524
    invoke-direct {v11, v10, v14}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    goto :goto_12

    .line 531
    :cond_1a
    move-object/from16 v14, p13

    .line 532
    .line 533
    :goto_12
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 534
    .line 535
    invoke-static {v9, v11}, Landroidx/compose/ui/graphics/ColorKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 536
    .line 537
    .line 538
    move-result-object v9

    .line 539
    move-object/from16 v11, v23

    .line 540
    .line 541
    invoke-static {v11, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 546
    .line 547
    .line 548
    move-result v4

    .line 549
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 550
    .line 551
    .line 552
    move-result-object v10

    .line 553
    invoke-static {v6, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 554
    .line 555
    .line 556
    move-result-object v9

    .line 557
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 558
    .line 559
    .line 560
    move/from16 v24, v13

    .line 561
    .line 562
    iget-boolean v13, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 563
    .line 564
    if-eqz v13, :cond_1b

    .line 565
    .line 566
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 567
    .line 568
    .line 569
    goto :goto_13

    .line 570
    :cond_1b
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 571
    .line 572
    .line 573
    :goto_13
    invoke-static {v6, v3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 574
    .line 575
    .line 576
    invoke-static {v6, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 577
    .line 578
    .line 579
    iget-boolean v3, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 580
    .line 581
    if-nez v3, :cond_1c

    .line 582
    .line 583
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 588
    .line 589
    .line 590
    move-result-object v10

    .line 591
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    if-nez v3, :cond_1d

    .line 596
    .line 597
    :cond_1c
    invoke-static {v4, v6, v4, v12}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 598
    .line 599
    .line 600
    :cond_1d
    invoke-static {v6, v9, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 601
    .line 602
    .line 603
    shr-int/lit8 v3, v21, 0x9

    .line 604
    .line 605
    and-int/lit8 v3, v3, 0xe

    .line 606
    .line 607
    shr-int/lit8 v4, v21, 0x12

    .line 608
    .line 609
    and-int/lit8 v4, v4, 0x70

    .line 610
    .line 611
    or-int/2addr v3, v4

    .line 612
    shr-int/lit8 v4, v21, 0xc

    .line 613
    .line 614
    and-int/lit16 v4, v4, 0x380

    .line 615
    .line 616
    or-int v21, v3, v4

    .line 617
    .line 618
    move-wide/from16 v16, p4

    .line 619
    .line 620
    move-object/from16 v19, p10

    .line 621
    .line 622
    move-object/from16 v18, p11

    .line 623
    .line 624
    move-object/from16 v20, v6

    .line 625
    .line 626
    invoke-static/range {v16 .. v21}, Landroidx/compose/material3/internal/Icons$Filled;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 627
    .line 628
    .line 629
    move-object/from16 v3, v20

    .line 630
    .line 631
    const/4 v9, 0x1

    .line 632
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 633
    .line 634
    .line 635
    const/4 v9, 0x0

    .line 636
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 637
    .line 638
    .line 639
    const-string v4, "actionIcons"

    .line 640
    .line 641
    invoke-static {v7, v4}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 642
    .line 643
    .line 644
    move-result-object v29

    .line 645
    const/16 v33, 0x0

    .line 646
    .line 647
    const/16 v34, 0xb

    .line 648
    .line 649
    const/16 v30, 0x0

    .line 650
    .line 651
    const/16 v31, 0x0

    .line 652
    .line 653
    move/from16 v32, v24

    .line 654
    .line 655
    invoke-static/range {v29 .. v34}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 656
    .line 657
    .line 658
    move-result-object v4

    .line 659
    invoke-static {v11, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 660
    .line 661
    .line 662
    move-result-object v6

    .line 663
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 664
    .line 665
    .line 666
    move-result v7

    .line 667
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 668
    .line 669
    .line 670
    move-result-object v9

    .line 671
    invoke-static {v3, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 672
    .line 673
    .line 674
    move-result-object v4

    .line 675
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 676
    .line 677
    .line 678
    iget-boolean v10, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 679
    .line 680
    if-eqz v10, :cond_1e

    .line 681
    .line 682
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 683
    .line 684
    .line 685
    goto :goto_14

    .line 686
    :cond_1e
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 687
    .line 688
    .line 689
    :goto_14
    invoke-static {v3, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 690
    .line 691
    .line 692
    invoke-static {v3, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 693
    .line 694
    .line 695
    iget-boolean v1, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 696
    .line 697
    if-nez v1, :cond_1f

    .line 698
    .line 699
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    move-result v1

    .line 711
    if-nez v1, :cond_20

    .line 712
    .line 713
    :cond_1f
    invoke-static {v7, v3, v7, v12}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 714
    .line 715
    .line 716
    :cond_20
    invoke-static {v3, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 717
    .line 718
    .line 719
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 720
    .line 721
    move-wide/from16 v9, p8

    .line 722
    .line 723
    invoke-direct {v1, v9, v10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    const/16 v1, 0x38

    .line 731
    .line 732
    move-object/from16 v2, p15

    .line 733
    .line 734
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 735
    .line 736
    .line 737
    const/4 v0, 0x1

    .line 738
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 742
    .line 743
    .line 744
    goto :goto_15

    .line 745
    :cond_21
    move-object/from16 v14, p13

    .line 746
    .line 747
    move-object/from16 v2, p15

    .line 748
    .line 749
    move-object v3, v6

    .line 750
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 751
    .line 752
    .line 753
    :goto_15
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    if-eqz v0, :cond_22

    .line 758
    .line 759
    move-object v1, v0

    .line 760
    new-instance v0, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda1;

    .line 761
    .line 762
    move-wide/from16 v3, p2

    .line 763
    .line 764
    move-wide/from16 v5, p4

    .line 765
    .line 766
    move-wide/from16 v7, p6

    .line 767
    .line 768
    move-object/from16 v11, p10

    .line 769
    .line 770
    move-object/from16 v12, p11

    .line 771
    .line 772
    move-object/from16 v13, p12

    .line 773
    .line 774
    move/from16 v17, p16

    .line 775
    .line 776
    move/from16 v18, p18

    .line 777
    .line 778
    move-object/from16 v35, v1

    .line 779
    .line 780
    move-object/from16 v16, v2

    .line 781
    .line 782
    move-object/from16 v1, p0

    .line 783
    .line 784
    move-object/from16 v2, p1

    .line 785
    .line 786
    invoke-direct/range {v0 .. v18}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/FloatProducer;JJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;FI)V

    .line 787
    .line 788
    .line 789
    move-object/from16 v1, v35

    .line 790
    .line 791
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 792
    .line 793
    :cond_22
    return-void
.end method
