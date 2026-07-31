.class public abstract Landroidx/compose/material3/CardKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final RippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

.field public static final TopAppBarExpandedHeight:F = 64.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/ripple/RippleAlpha;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material3/CardKt;->RippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    .line 7
    .line 8
    return-void
.end method

.method public static final AlertDialog-Oix01E0(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    .line 1
    move/from16 v0, p17

    .line 2
    .line 3
    move-object/from16 v1, p16

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v2, 0x5a1a0b7

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v2, v0, 0x6

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    move-object/from16 v2, p0

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v3, 0x2

    .line 28
    :goto_0
    or-int/2addr v3, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-object/from16 v2, p0

    .line 31
    .line 32
    move v3, v0

    .line 33
    :goto_1
    and-int/lit8 v4, v0, 0x30

    .line 34
    .line 35
    if-nez v4, :cond_3

    .line 36
    .line 37
    move-object/from16 v4, p1

    .line 38
    .line 39
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    const/16 v5, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v5, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v3, v5

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    move-object/from16 v4, p1

    .line 53
    .line 54
    :goto_3
    and-int/lit16 v5, v0, 0x180

    .line 55
    .line 56
    if-nez v5, :cond_5

    .line 57
    .line 58
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 59
    .line 60
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    goto :goto_4

    .line 69
    :cond_4
    const/16 v5, 0x80

    .line 70
    .line 71
    :goto_4
    or-int/2addr v3, v5

    .line 72
    :cond_5
    and-int/lit16 v5, v0, 0xc00

    .line 73
    .line 74
    if-nez v5, :cond_7

    .line 75
    .line 76
    move-object/from16 v5, p2

    .line 77
    .line 78
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_6

    .line 83
    .line 84
    const/16 v6, 0x800

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_6
    const/16 v6, 0x400

    .line 88
    .line 89
    :goto_5
    or-int/2addr v3, v6

    .line 90
    goto :goto_6

    .line 91
    :cond_7
    move-object/from16 v5, p2

    .line 92
    .line 93
    :goto_6
    and-int/lit16 v6, v0, 0x6000

    .line 94
    .line 95
    if-nez v6, :cond_9

    .line 96
    .line 97
    move-object/from16 v6, p3

    .line 98
    .line 99
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_8

    .line 104
    .line 105
    const/16 v7, 0x4000

    .line 106
    .line 107
    goto :goto_7

    .line 108
    :cond_8
    const/16 v7, 0x2000

    .line 109
    .line 110
    :goto_7
    or-int/2addr v3, v7

    .line 111
    goto :goto_8

    .line 112
    :cond_9
    move-object/from16 v6, p3

    .line 113
    .line 114
    :goto_8
    const/high16 v7, 0x30000

    .line 115
    .line 116
    and-int/2addr v7, v0

    .line 117
    if-nez v7, :cond_b

    .line 118
    .line 119
    move-object/from16 v7, p4

    .line 120
    .line 121
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_a

    .line 126
    .line 127
    const/high16 v8, 0x20000

    .line 128
    .line 129
    goto :goto_9

    .line 130
    :cond_a
    const/high16 v8, 0x10000

    .line 131
    .line 132
    :goto_9
    or-int/2addr v3, v8

    .line 133
    goto :goto_a

    .line 134
    :cond_b
    move-object/from16 v7, p4

    .line 135
    .line 136
    :goto_a
    const/high16 v8, 0x180000

    .line 137
    .line 138
    and-int/2addr v8, v0

    .line 139
    if-nez v8, :cond_d

    .line 140
    .line 141
    move-object/from16 v8, p5

    .line 142
    .line 143
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-eqz v9, :cond_c

    .line 148
    .line 149
    const/high16 v9, 0x100000

    .line 150
    .line 151
    goto :goto_b

    .line 152
    :cond_c
    const/high16 v9, 0x80000

    .line 153
    .line 154
    :goto_b
    or-int/2addr v3, v9

    .line 155
    goto :goto_c

    .line 156
    :cond_d
    move-object/from16 v8, p5

    .line 157
    .line 158
    :goto_c
    const/high16 v9, 0xc00000

    .line 159
    .line 160
    and-int/2addr v9, v0

    .line 161
    if-nez v9, :cond_e

    .line 162
    .line 163
    const/high16 v9, 0x400000

    .line 164
    .line 165
    or-int/2addr v3, v9

    .line 166
    :cond_e
    const/high16 v9, 0x6000000

    .line 167
    .line 168
    and-int/2addr v9, v0

    .line 169
    if-nez v9, :cond_f

    .line 170
    .line 171
    const/high16 v9, 0x2000000

    .line 172
    .line 173
    or-int/2addr v3, v9

    .line 174
    :cond_f
    const/high16 v9, 0x30000000

    .line 175
    .line 176
    and-int/2addr v9, v0

    .line 177
    if-nez v9, :cond_10

    .line 178
    .line 179
    const/high16 v9, 0x10000000

    .line 180
    .line 181
    or-int/2addr v3, v9

    .line 182
    :cond_10
    const v9, 0x12492493

    .line 183
    .line 184
    .line 185
    and-int/2addr v9, v3

    .line 186
    const v10, 0x12492492

    .line 187
    .line 188
    .line 189
    const/4 v11, 0x0

    .line 190
    if-ne v9, v10, :cond_11

    .line 191
    .line 192
    move v9, v11

    .line 193
    goto :goto_d

    .line 194
    :cond_11
    const/4 v9, 0x1

    .line 195
    :goto_d
    and-int/lit8 v10, v3, 0x1

    .line 196
    .line 197
    invoke-virtual {v1, v10, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-eqz v9, :cond_14

    .line 202
    .line 203
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 204
    .line 205
    .line 206
    and-int/lit8 v9, v0, 0x1

    .line 207
    .line 208
    const v10, -0x7fc00001

    .line 209
    .line 210
    .line 211
    if-eqz v9, :cond_13

    .line 212
    .line 213
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    if-eqz v9, :cond_12

    .line 218
    .line 219
    goto :goto_e

    .line 220
    :cond_12
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 221
    .line 222
    .line 223
    and-int/2addr v3, v10

    .line 224
    move-object/from16 v9, p6

    .line 225
    .line 226
    move-wide/from16 v12, p7

    .line 227
    .line 228
    move-wide/from16 v10, p9

    .line 229
    .line 230
    move-wide/from16 v16, p11

    .line 231
    .line 232
    move-wide/from16 v14, p13

    .line 233
    .line 234
    move-object/from16 v0, p15

    .line 235
    .line 236
    goto :goto_f

    .line 237
    :cond_13
    :goto_e
    sget-object v9, Landroidx/compose/material3/tokens/ListTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 238
    .line 239
    invoke-static {v9, v1}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    sget-object v12, Landroidx/compose/material3/tokens/ListTokens;->ContainerColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 244
    .line 245
    invoke-static {v12, v1}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 246
    .line 247
    .line 248
    move-result-wide v12

    .line 249
    sget-object v14, Landroidx/compose/material3/tokens/ListTokens;->IconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 250
    .line 251
    invoke-static {v14, v1}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 252
    .line 253
    .line 254
    move-result-wide v14

    .line 255
    and-int/2addr v3, v10

    .line 256
    sget-object v10, Landroidx/compose/material3/tokens/ListTokens;->HeadlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 257
    .line 258
    invoke-static {v10, v1}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 259
    .line 260
    .line 261
    move-result-wide v16

    .line 262
    sget-object v10, Landroidx/compose/material3/tokens/ListTokens;->SupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 263
    .line 264
    invoke-static {v10, v1}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 265
    .line 266
    .line 267
    move-result-wide v18

    .line 268
    new-instance v10, Landroidx/compose/ui/window/DialogProperties;

    .line 269
    .line 270
    const/4 v0, 0x7

    .line 271
    invoke-direct {v10, v0, v11, v11}, Landroidx/compose/ui/window/DialogProperties;-><init>(IZZ)V

    .line 272
    .line 273
    .line 274
    move-object v0, v10

    .line 275
    move-wide v10, v14

    .line 276
    move-wide/from16 v14, v18

    .line 277
    .line 278
    :goto_f
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 279
    .line 280
    .line 281
    const v18, 0x7ffffffe

    .line 282
    .line 283
    .line 284
    and-int v18, v3, v18

    .line 285
    .line 286
    const/16 v19, 0xd80

    .line 287
    .line 288
    move-object v3, v5

    .line 289
    move-object v5, v7

    .line 290
    move-object v7, v9

    .line 291
    move-wide/from16 v21, v16

    .line 292
    .line 293
    move-object/from16 v16, v0

    .line 294
    .line 295
    move-object/from16 v17, v1

    .line 296
    .line 297
    move-object v1, v2

    .line 298
    move-object v2, v4

    .line 299
    move-object v4, v6

    .line 300
    move-object v6, v8

    .line 301
    move-wide v8, v12

    .line 302
    move-wide/from16 v12, v21

    .line 303
    .line 304
    invoke-static/range {v1 .. v19}, Landroidx/compose/material3/AlertDialogKt;->AlertDialogImpl-wrnwzgE(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V

    .line 305
    .line 306
    .line 307
    goto :goto_10

    .line 308
    :cond_14
    move-object/from16 v17, v1

    .line 309
    .line 310
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 311
    .line 312
    .line 313
    move-object/from16 v7, p6

    .line 314
    .line 315
    move-wide/from16 v8, p7

    .line 316
    .line 317
    move-wide/from16 v10, p9

    .line 318
    .line 319
    move-wide/from16 v12, p11

    .line 320
    .line 321
    move-wide/from16 v14, p13

    .line 322
    .line 323
    move-object/from16 v16, p15

    .line 324
    .line 325
    :goto_10
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    if-eqz v0, :cond_15

    .line 330
    .line 331
    move-object v1, v0

    .line 332
    new-instance v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$$ExternalSyntheticLambda0;

    .line 333
    .line 334
    move-object/from16 v2, p1

    .line 335
    .line 336
    move-object/from16 v3, p2

    .line 337
    .line 338
    move-object/from16 v4, p3

    .line 339
    .line 340
    move-object/from16 v5, p4

    .line 341
    .line 342
    move-object/from16 v6, p5

    .line 343
    .line 344
    move/from16 v17, p17

    .line 345
    .line 346
    move-object/from16 v20, v1

    .line 347
    .line 348
    move-object/from16 v1, p0

    .line 349
    .line 350
    invoke-direct/range {v0 .. v17}, Landroidx/compose/material3/AndroidAlertDialog_androidKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJLandroidx/compose/ui/window/DialogProperties;I)V

    .line 351
    .line 352
    .line 353
    move-object/from16 v1, v20

    .line 354
    .line 355
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 356
    .line 357
    :cond_15
    return-void
.end method

.method public static final Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 26

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v5, p2

    .line 4
    .line 5
    move-object/from16 v0, p4

    .line 6
    .line 7
    move-object/from16 v1, p7

    .line 8
    .line 9
    move-object/from16 v11, p8

    .line 10
    .line 11
    move/from16 v12, p10

    .line 12
    .line 13
    move/from16 v13, p11

    .line 14
    .line 15
    move-object/from16 v15, p9

    .line 16
    .line 17
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    const v3, -0x4e1540b0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    and-int/lit8 v3, v12, 0x6

    .line 26
    .line 27
    move-object/from16 v14, p0

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const/4 v3, 0x4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v3, 0x2

    .line 40
    :goto_0
    or-int/2addr v3, v12

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v3, v12

    .line 43
    :goto_1
    and-int/lit8 v6, v12, 0x30

    .line 44
    .line 45
    if-nez v6, :cond_3

    .line 46
    .line 47
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    const/16 v6, 0x20

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v6, 0x10

    .line 57
    .line 58
    :goto_2
    or-int/2addr v3, v6

    .line 59
    :cond_3
    and-int/lit16 v6, v12, 0x180

    .line 60
    .line 61
    if-nez v6, :cond_5

    .line 62
    .line 63
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_4

    .line 68
    .line 69
    const/16 v6, 0x100

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    const/16 v6, 0x80

    .line 73
    .line 74
    :goto_3
    or-int/2addr v3, v6

    .line 75
    :cond_5
    and-int/lit16 v6, v12, 0xc00

    .line 76
    .line 77
    if-nez v6, :cond_8

    .line 78
    .line 79
    and-int/lit8 v6, v13, 0x8

    .line 80
    .line 81
    if-nez v6, :cond_6

    .line 82
    .line 83
    move-object/from16 v6, p3

    .line 84
    .line 85
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_7

    .line 90
    .line 91
    const/16 v8, 0x800

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_6
    move-object/from16 v6, p3

    .line 95
    .line 96
    :cond_7
    const/16 v8, 0x400

    .line 97
    .line 98
    :goto_4
    or-int/2addr v3, v8

    .line 99
    goto :goto_5

    .line 100
    :cond_8
    move-object/from16 v6, p3

    .line 101
    .line 102
    :goto_5
    and-int/lit16 v8, v12, 0x6000

    .line 103
    .line 104
    if-nez v8, :cond_a

    .line 105
    .line 106
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_9

    .line 111
    .line 112
    const/16 v8, 0x4000

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_9
    const/16 v8, 0x2000

    .line 116
    .line 117
    :goto_6
    or-int/2addr v3, v8

    .line 118
    :cond_a
    const/high16 v8, 0x30000

    .line 119
    .line 120
    and-int/2addr v8, v12

    .line 121
    if-nez v8, :cond_d

    .line 122
    .line 123
    and-int/lit8 v8, v13, 0x20

    .line 124
    .line 125
    if-nez v8, :cond_b

    .line 126
    .line 127
    move-object/from16 v8, p5

    .line 128
    .line 129
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-eqz v9, :cond_c

    .line 134
    .line 135
    const/high16 v9, 0x20000

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_b
    move-object/from16 v8, p5

    .line 139
    .line 140
    :cond_c
    const/high16 v9, 0x10000

    .line 141
    .line 142
    :goto_7
    or-int/2addr v3, v9

    .line 143
    goto :goto_8

    .line 144
    :cond_d
    move-object/from16 v8, p5

    .line 145
    .line 146
    :goto_8
    const/high16 v9, 0x180000

    .line 147
    .line 148
    and-int/2addr v9, v12

    .line 149
    if-nez v9, :cond_f

    .line 150
    .line 151
    move-object/from16 v9, p6

    .line 152
    .line 153
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    if-eqz v10, :cond_e

    .line 158
    .line 159
    const/high16 v10, 0x100000

    .line 160
    .line 161
    goto :goto_9

    .line 162
    :cond_e
    const/high16 v10, 0x80000

    .line 163
    .line 164
    :goto_9
    or-int/2addr v3, v10

    .line 165
    goto :goto_a

    .line 166
    :cond_f
    move-object/from16 v9, p6

    .line 167
    .line 168
    :goto_a
    const/high16 v10, 0xc00000

    .line 169
    .line 170
    and-int/2addr v10, v12

    .line 171
    if-nez v10, :cond_11

    .line 172
    .line 173
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    if-eqz v10, :cond_10

    .line 178
    .line 179
    const/high16 v10, 0x800000

    .line 180
    .line 181
    goto :goto_b

    .line 182
    :cond_10
    const/high16 v10, 0x400000

    .line 183
    .line 184
    :goto_b
    or-int/2addr v3, v10

    .line 185
    :cond_11
    and-int/lit16 v10, v13, 0x100

    .line 186
    .line 187
    const/4 v7, 0x0

    .line 188
    const/high16 v16, 0x6000000

    .line 189
    .line 190
    if-eqz v10, :cond_12

    .line 191
    .line 192
    or-int v3, v3, v16

    .line 193
    .line 194
    goto :goto_d

    .line 195
    :cond_12
    and-int v10, v12, v16

    .line 196
    .line 197
    if-nez v10, :cond_14

    .line 198
    .line 199
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    if-eqz v10, :cond_13

    .line 204
    .line 205
    const/high16 v10, 0x4000000

    .line 206
    .line 207
    goto :goto_c

    .line 208
    :cond_13
    const/high16 v10, 0x2000000

    .line 209
    .line 210
    :goto_c
    or-int/2addr v3, v10

    .line 211
    :cond_14
    :goto_d
    const/high16 v10, 0x30000000

    .line 212
    .line 213
    and-int/2addr v10, v12

    .line 214
    if-nez v10, :cond_16

    .line 215
    .line 216
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    if-eqz v10, :cond_15

    .line 221
    .line 222
    const/high16 v10, 0x20000000

    .line 223
    .line 224
    goto :goto_e

    .line 225
    :cond_15
    const/high16 v10, 0x10000000

    .line 226
    .line 227
    :goto_e
    or-int/2addr v3, v10

    .line 228
    :cond_16
    const v10, 0x12492493

    .line 229
    .line 230
    .line 231
    and-int/2addr v10, v3

    .line 232
    const v4, 0x12492492

    .line 233
    .line 234
    .line 235
    const/4 v9, 0x0

    .line 236
    if-eq v10, v4, :cond_17

    .line 237
    .line 238
    const/4 v4, 0x1

    .line 239
    goto :goto_f

    .line 240
    :cond_17
    move v4, v9

    .line 241
    :goto_f
    and-int/lit8 v10, v3, 0x1

    .line 242
    .line 243
    invoke-virtual {v15, v10, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    if-eqz v4, :cond_33

    .line 248
    .line 249
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 250
    .line 251
    .line 252
    and-int/lit8 v4, v12, 0x1

    .line 253
    .line 254
    const v10, -0x70001

    .line 255
    .line 256
    .line 257
    if-eqz v4, :cond_1b

    .line 258
    .line 259
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-eqz v4, :cond_18

    .line 264
    .line 265
    goto :goto_10

    .line 266
    :cond_18
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 267
    .line 268
    .line 269
    and-int/lit8 v4, v13, 0x8

    .line 270
    .line 271
    if-eqz v4, :cond_19

    .line 272
    .line 273
    and-int/lit16 v3, v3, -0x1c01

    .line 274
    .line 275
    :cond_19
    and-int/lit8 v4, v13, 0x20

    .line 276
    .line 277
    if-eqz v4, :cond_1a

    .line 278
    .line 279
    and-int/2addr v3, v10

    .line 280
    :cond_1a
    move-object/from16 v18, v6

    .line 281
    .line 282
    goto :goto_12

    .line 283
    :cond_1b
    :goto_10
    and-int/lit8 v4, v13, 0x8

    .line 284
    .line 285
    if-eqz v4, :cond_1c

    .line 286
    .line 287
    sget-object v4, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 288
    .line 289
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 290
    .line 291
    invoke-static {v4, v15}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    and-int/lit16 v3, v3, -0x1c01

    .line 296
    .line 297
    goto :goto_11

    .line 298
    :cond_1c
    move-object v4, v6

    .line 299
    :goto_11
    and-int/lit8 v6, v13, 0x20

    .line 300
    .line 301
    if-eqz v6, :cond_1d

    .line 302
    .line 303
    sget-object v6, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 304
    .line 305
    sget v6, Landroidx/compose/material3/tokens/ListTokens;->HoveredContainerElevation:F

    .line 306
    .line 307
    new-instance v8, Landroidx/compose/material3/ButtonElevation;

    .line 308
    .line 309
    invoke-direct {v8, v6}, Landroidx/compose/material3/ButtonElevation;-><init>(F)V

    .line 310
    .line 311
    .line 312
    and-int/2addr v3, v10

    .line 313
    :cond_1d
    move-object/from16 v18, v4

    .line 314
    .line 315
    :goto_12
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 316
    .line 317
    .line 318
    const v4, 0x64d5e04b

    .line 319
    .line 320
    .line 321
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 329
    .line 330
    if-ne v4, v6, :cond_1e

    .line 331
    .line 332
    new-instance v4, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 333
    .line 334
    invoke-direct {v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    :cond_1e
    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 341
    .line 342
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 343
    .line 344
    .line 345
    move-object/from16 p3, v8

    .line 346
    .line 347
    if-eqz v5, :cond_1f

    .line 348
    .line 349
    iget-wide v7, v0, Landroidx/compose/material3/ButtonColors;->containerColor:J

    .line 350
    .line 351
    :goto_13
    move-wide/from16 v19, v7

    .line 352
    .line 353
    goto :goto_14

    .line 354
    :cond_1f
    iget-wide v7, v0, Landroidx/compose/material3/ButtonColors;->disabledContainerColor:J

    .line 355
    .line 356
    goto :goto_13

    .line 357
    :goto_14
    if-eqz v5, :cond_20

    .line 358
    .line 359
    iget-wide v7, v0, Landroidx/compose/material3/ButtonColors;->contentColor:J

    .line 360
    .line 361
    goto :goto_15

    .line 362
    :cond_20
    iget-wide v7, v0, Landroidx/compose/material3/ButtonColors;->disabledContentColor:J

    .line 363
    .line 364
    :goto_15
    const/16 v21, 0x0

    .line 365
    .line 366
    if-nez p3, :cond_21

    .line 367
    .line 368
    const v10, 0x64d8ada6

    .line 369
    .line 370
    .line 371
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 375
    .line 376
    .line 377
    move-object/from16 v22, p3

    .line 378
    .line 379
    move/from16 v23, v3

    .line 380
    .line 381
    move-object/from16 p3, v4

    .line 382
    .line 383
    move-object v0, v6

    .line 384
    move-wide v13, v7

    .line 385
    move v1, v9

    .line 386
    const/4 v7, 0x0

    .line 387
    goto/16 :goto_1f

    .line 388
    .line 389
    :cond_21
    const v9, -0x1dc77645

    .line 390
    .line 391
    .line 392
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 393
    .line 394
    .line 395
    shr-int/lit8 v9, v3, 0x6

    .line 396
    .line 397
    and-int/lit8 v9, v9, 0xe

    .line 398
    .line 399
    shr-int/lit8 v10, v3, 0x9

    .line 400
    .line 401
    and-int/lit16 v10, v10, 0x380

    .line 402
    .line 403
    or-int/2addr v9, v10

    .line 404
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v10

    .line 408
    if-ne v10, v6, :cond_22

    .line 409
    .line 410
    new-instance v10, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 411
    .line 412
    invoke-direct {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    :cond_22
    check-cast v10, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 419
    .line 420
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v23

    .line 424
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    if-nez v23, :cond_24

    .line 429
    .line 430
    if-ne v0, v6, :cond_23

    .line 431
    .line 432
    goto :goto_16

    .line 433
    :cond_23
    move/from16 v23, v3

    .line 434
    .line 435
    move-wide/from16 v24, v7

    .line 436
    .line 437
    const/4 v3, 0x1

    .line 438
    goto :goto_17

    .line 439
    :cond_24
    :goto_16
    new-instance v0, Landroidx/compose/material3/CardElevation$animateElevation$1$1;

    .line 440
    .line 441
    move/from16 v23, v3

    .line 442
    .line 443
    move-wide/from16 v24, v7

    .line 444
    .line 445
    const/4 v3, 0x1

    .line 446
    const/4 v7, 0x0

    .line 447
    invoke-direct {v0, v4, v10, v7, v3}, Landroidx/compose/material3/CardElevation$animateElevation$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;I)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    :goto_17
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 454
    .line 455
    invoke-static {v15, v4, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 456
    .line 457
    .line 458
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    move-object v8, v0

    .line 463
    check-cast v8, Landroidx/compose/foundation/interaction/Interaction;

    .line 464
    .line 465
    if-nez v5, :cond_26

    .line 466
    .line 467
    :cond_25
    :goto_18
    move-object/from16 v7, p3

    .line 468
    .line 469
    move/from16 v0, v21

    .line 470
    .line 471
    goto :goto_19

    .line 472
    :cond_26
    instance-of v0, v8, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 473
    .line 474
    if-eqz v0, :cond_27

    .line 475
    .line 476
    goto :goto_18

    .line 477
    :cond_27
    instance-of v0, v8, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 478
    .line 479
    if-eqz v0, :cond_25

    .line 480
    .line 481
    move-object/from16 v7, p3

    .line 482
    .line 483
    iget v0, v7, Landroidx/compose/material3/ButtonElevation;->hoveredElevation:F

    .line 484
    .line 485
    :goto_19
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v10

    .line 489
    if-ne v10, v6, :cond_28

    .line 490
    .line 491
    new-instance v10, Landroidx/compose/animation/core/Animatable;

    .line 492
    .line 493
    new-instance v3, Landroidx/compose/ui/unit/Dp;

    .line 494
    .line 495
    invoke-direct {v3, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 496
    .line 497
    .line 498
    move-object/from16 p3, v4

    .line 499
    .line 500
    sget-object v4, Landroidx/compose/animation/core/ArcSplineKt;->DpToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 501
    .line 502
    const/16 v12, 0xc

    .line 503
    .line 504
    const/4 v13, 0x0

    .line 505
    invoke-direct {v10, v3, v4, v13, v12}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    goto :goto_1a

    .line 512
    :cond_28
    move-object/from16 p3, v4

    .line 513
    .line 514
    :goto_1a
    move-object v4, v10

    .line 515
    check-cast v4, Landroidx/compose/animation/core/Animatable;

    .line 516
    .line 517
    new-instance v12, Landroidx/compose/ui/unit/Dp;

    .line 518
    .line 519
    invoke-direct {v12, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 527
    .line 528
    .line 529
    move-result v10

    .line 530
    or-int/2addr v3, v10

    .line 531
    and-int/lit8 v10, v9, 0xe

    .line 532
    .line 533
    xor-int/lit8 v10, v10, 0x6

    .line 534
    .line 535
    const/4 v13, 0x4

    .line 536
    if-le v10, v13, :cond_29

    .line 537
    .line 538
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 539
    .line 540
    .line 541
    move-result v10

    .line 542
    if-nez v10, :cond_2a

    .line 543
    .line 544
    :cond_29
    and-int/lit8 v10, v9, 0x6

    .line 545
    .line 546
    if-ne v10, v13, :cond_2b

    .line 547
    .line 548
    :cond_2a
    const/4 v10, 0x1

    .line 549
    goto :goto_1b

    .line 550
    :cond_2b
    const/4 v10, 0x0

    .line 551
    :goto_1b
    or-int/2addr v3, v10

    .line 552
    and-int/lit16 v10, v9, 0x380

    .line 553
    .line 554
    xor-int/lit16 v10, v10, 0x180

    .line 555
    .line 556
    const/16 v13, 0x100

    .line 557
    .line 558
    if-le v10, v13, :cond_2c

    .line 559
    .line 560
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v10

    .line 564
    if-nez v10, :cond_2d

    .line 565
    .line 566
    :cond_2c
    and-int/lit16 v9, v9, 0x180

    .line 567
    .line 568
    if-ne v9, v13, :cond_2e

    .line 569
    .line 570
    :cond_2d
    const/4 v9, 0x1

    .line 571
    goto :goto_1c

    .line 572
    :cond_2e
    const/4 v9, 0x0

    .line 573
    :goto_1c
    or-int/2addr v3, v9

    .line 574
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v9

    .line 578
    or-int/2addr v3, v9

    .line 579
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v9

    .line 583
    if-nez v3, :cond_30

    .line 584
    .line 585
    if-ne v9, v6, :cond_2f

    .line 586
    .line 587
    goto :goto_1d

    .line 588
    :cond_2f
    move-object v0, v6

    .line 589
    move-object/from16 v22, v7

    .line 590
    .line 591
    move-wide/from16 v13, v24

    .line 592
    .line 593
    const/4 v1, 0x0

    .line 594
    goto :goto_1e

    .line 595
    :cond_30
    :goto_1d
    new-instance v3, Landroidx/compose/material3/CardElevation$animateElevation$2$1;

    .line 596
    .line 597
    const/4 v9, 0x0

    .line 598
    const/4 v10, 0x1

    .line 599
    move v1, v5

    .line 600
    move v5, v0

    .line 601
    move-object v0, v6

    .line 602
    move v6, v1

    .line 603
    move-wide/from16 v13, v24

    .line 604
    .line 605
    const/4 v1, 0x0

    .line 606
    invoke-direct/range {v3 .. v10}, Landroidx/compose/material3/CardElevation$animateElevation$2$1;-><init>(Landroidx/compose/animation/core/Animatable;FZLjava/lang/Object;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;I)V

    .line 607
    .line 608
    .line 609
    move-object/from16 v22, v7

    .line 610
    .line 611
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    move-object v9, v3

    .line 615
    :goto_1e
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 616
    .line 617
    invoke-static {v15, v12, v9}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 618
    .line 619
    .line 620
    iget-object v7, v4, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    .line 621
    .line 622
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 623
    .line 624
    .line 625
    :goto_1f
    if-eqz v7, :cond_31

    .line 626
    .line 627
    iget-object v3, v7, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 628
    .line 629
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    check-cast v3, Landroidx/compose/ui/unit/Dp;

    .line 634
    .line 635
    iget v3, v3, Landroidx/compose/ui/unit/Dp;->value:F

    .line 636
    .line 637
    move/from16 v21, v3

    .line 638
    .line 639
    :cond_31
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    if-ne v3, v0, :cond_32

    .line 644
    .line 645
    new-instance v3, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;

    .line 646
    .line 647
    const/4 v0, 0x5

    .line 648
    invoke-direct {v3, v0}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 652
    .line 653
    .line 654
    :cond_32
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 655
    .line 656
    invoke-static {v2, v1, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 657
    .line 658
    .line 659
    move-result-object v4

    .line 660
    new-instance v0, Landroidx/compose/material3/ButtonKt$Button$2;

    .line 661
    .line 662
    move-object/from16 v1, p7

    .line 663
    .line 664
    invoke-direct {v0, v13, v14, v1, v11}, Landroidx/compose/material3/ButtonKt$Button$2;-><init>(JLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 665
    .line 666
    .line 667
    const v3, -0x1fed37a5

    .line 668
    .line 669
    .line 670
    invoke-static {v3, v0, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    move/from16 v3, v23

    .line 675
    .line 676
    and-int/lit16 v5, v3, 0x1f8e

    .line 677
    .line 678
    const/high16 v6, 0xe000000

    .line 679
    .line 680
    shl-int/lit8 v3, v3, 0x6

    .line 681
    .line 682
    and-int/2addr v3, v6

    .line 683
    or-int v16, v5, v3

    .line 684
    .line 685
    const/16 v17, 0x40

    .line 686
    .line 687
    move-object/from16 v3, p0

    .line 688
    .line 689
    move/from16 v5, p2

    .line 690
    .line 691
    move-object/from16 v12, p6

    .line 692
    .line 693
    move-wide v9, v13

    .line 694
    move-object/from16 v6, v18

    .line 695
    .line 696
    move-wide/from16 v7, v19

    .line 697
    .line 698
    move/from16 v11, v21

    .line 699
    .line 700
    move-object/from16 v13, p3

    .line 701
    .line 702
    move-object v14, v0

    .line 703
    invoke-static/range {v3 .. v17}, Landroidx/compose/material3/SurfaceKt;->Surface-o_FOJdg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 704
    .line 705
    .line 706
    move-object v4, v6

    .line 707
    move-object/from16 v6, v22

    .line 708
    .line 709
    goto :goto_20

    .line 710
    :cond_33
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 711
    .line 712
    .line 713
    move-object v4, v6

    .line 714
    move-object v6, v8

    .line 715
    :goto_20
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 716
    .line 717
    .line 718
    move-result-object v12

    .line 719
    if-eqz v12, :cond_34

    .line 720
    .line 721
    new-instance v0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;

    .line 722
    .line 723
    move/from16 v3, p2

    .line 724
    .line 725
    move-object/from16 v5, p4

    .line 726
    .line 727
    move-object/from16 v7, p6

    .line 728
    .line 729
    move-object/from16 v9, p8

    .line 730
    .line 731
    move/from16 v10, p10

    .line 732
    .line 733
    move/from16 v11, p11

    .line 734
    .line 735
    move-object v8, v1

    .line 736
    move-object/from16 v1, p0

    .line 737
    .line 738
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 739
    .line 740
    .line 741
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 742
    .line 743
    :cond_34
    return-void
.end method

.method public static final Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 21

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p7

    .line 392
    move-object/from16 v0, p6

    check-cast v0, Landroidx/compose/runtime/GapComposer;

    const v1, 0x510b47de

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v1, v7, 0x6

    move-object/from16 v8, p0

    if-nez v1, :cond_1

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v7

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    and-int/lit8 v2, v7, 0x30

    move-object/from16 v9, p1

    if-nez v2, :cond_3

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v7, 0x180

    if-nez v2, :cond_5

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v7, 0xc00

    if-nez v2, :cond_7

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_4

    :cond_6
    const/16 v2, 0x400

    :goto_4
    or-int/2addr v1, v2

    :cond_7
    and-int/lit8 v2, p8, 0x10

    if-eqz v2, :cond_9

    or-int/lit16 v1, v1, 0x6000

    :cond_8
    move-object/from16 v5, p4

    goto :goto_6

    :cond_9
    and-int/lit16 v5, v7, 0x6000

    if-nez v5, :cond_8

    move-object/from16 v5, p4

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x4000

    goto :goto_5

    :cond_a
    const/16 v10, 0x2000

    :goto_5
    or-int/2addr v1, v10

    :goto_6
    const/high16 v10, 0x30000

    and-int/2addr v10, v7

    if-nez v10, :cond_c

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/high16 v10, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v10, 0x10000

    :goto_7
    or-int/2addr v1, v10

    :cond_c
    const v10, 0x12493

    and-int/2addr v10, v1

    const v11, 0x12492

    const/4 v13, 0x1

    if-eq v10, v11, :cond_d

    move v10, v13

    goto :goto_8

    :cond_d
    const/4 v10, 0x0

    :goto_8
    and-int/lit8 v11, v1, 0x1

    invoke-virtual {v0, v11, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v10, v7, 0x1

    if-eqz v10, :cond_10

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_e

    goto :goto_9

    .line 393
    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    :cond_f
    move-object/from16 v16, v5

    goto :goto_a

    :cond_10
    :goto_9
    if-eqz v2, :cond_f

    const/16 v16, 0x0

    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 394
    iget-wide v14, v3, Landroidx/compose/material3/CardColors;->containerColor:J

    .line 395
    iget-wide v11, v3, Landroidx/compose/material3/CardColors;->contentColor:J

    shr-int/lit8 v5, v1, 0x3

    and-int/lit16 v5, v5, 0x380

    or-int/lit8 v5, v5, 0x36

    const/4 v2, 0x0

    .line 396
    invoke-virtual {v4, v13, v2, v0, v5}, Landroidx/compose/material3/CardElevation;->shadowElevation$material3(ZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    .line 397
    iget v2, v2, Landroidx/compose/ui/unit/Dp;->value:F

    .line 398
    new-instance v5, Landroidx/compose/material3/CardKt$Card$1;

    const/4 v10, 0x0

    invoke-direct {v5, v6, v10}, Landroidx/compose/material3/CardKt$Card$1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    const v10, -0x5c9c6dd

    invoke-static {v10, v5, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v17

    and-int/lit8 v5, v1, 0xe

    const/high16 v10, 0xc00000

    or-int/2addr v5, v10

    and-int/lit8 v10, v1, 0x70

    or-int/2addr v5, v10

    const/high16 v10, 0x380000

    shl-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v10

    or-int v19, v5, v1

    const/16 v20, 0x10

    move-wide v12, v11

    move-wide v10, v14

    const/4 v14, 0x0

    move-object/from16 v18, v0

    move v15, v2

    .line 399
    invoke-static/range {v8 .. v20}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v5, v16

    goto :goto_b

    :cond_11
    move-object/from16 v18, v0

    .line 400
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 401
    :goto_b
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_12

    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda4;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 402
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static final Card(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 26

    .line 1
    move-object/from16 v5, p4

    .line 2
    .line 3
    move-object/from16 v6, p5

    .line 4
    .line 5
    move-object/from16 v8, p7

    .line 6
    .line 7
    move/from16 v9, p9

    .line 8
    .line 9
    move/from16 v10, p10

    .line 10
    .line 11
    move-object/from16 v0, p8

    .line 12
    .line 13
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v1, 0x7f51eb4d

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v1, v9, 0x6

    .line 22
    .line 23
    move-object/from16 v11, p0

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x2

    .line 36
    :goto_0
    or-int/2addr v1, v9

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v1, v9

    .line 39
    :goto_1
    and-int/lit8 v2, v9, 0x30

    .line 40
    .line 41
    move-object/from16 v12, p1

    .line 42
    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    const/16 v2, 0x20

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v2, 0x10

    .line 55
    .line 56
    :goto_2
    or-int/2addr v1, v2

    .line 57
    :cond_3
    and-int/lit8 v2, v10, 0x4

    .line 58
    .line 59
    if-eqz v2, :cond_5

    .line 60
    .line 61
    or-int/lit16 v1, v1, 0x180

    .line 62
    .line 63
    :cond_4
    move/from16 v3, p2

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_5
    and-int/lit16 v3, v9, 0x180

    .line 67
    .line 68
    if-nez v3, :cond_4

    .line 69
    .line 70
    move/from16 v3, p2

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_6

    .line 77
    .line 78
    const/16 v4, 0x100

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_6
    const/16 v4, 0x80

    .line 82
    .line 83
    :goto_3
    or-int/2addr v1, v4

    .line 84
    :goto_4
    and-int/lit16 v4, v9, 0xc00

    .line 85
    .line 86
    move-object/from16 v14, p3

    .line 87
    .line 88
    if-nez v4, :cond_8

    .line 89
    .line 90
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_7

    .line 95
    .line 96
    const/16 v4, 0x800

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_7
    const/16 v4, 0x400

    .line 100
    .line 101
    :goto_5
    or-int/2addr v1, v4

    .line 102
    :cond_8
    and-int/lit16 v4, v9, 0x6000

    .line 103
    .line 104
    if-nez v4, :cond_a

    .line 105
    .line 106
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_9

    .line 111
    .line 112
    const/16 v4, 0x4000

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_9
    const/16 v4, 0x2000

    .line 116
    .line 117
    :goto_6
    or-int/2addr v1, v4

    .line 118
    :cond_a
    const/high16 v4, 0x30000

    .line 119
    .line 120
    and-int/2addr v4, v9

    .line 121
    if-nez v4, :cond_c

    .line 122
    .line 123
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_b

    .line 128
    .line 129
    const/high16 v4, 0x20000

    .line 130
    .line 131
    goto :goto_7

    .line 132
    :cond_b
    const/high16 v4, 0x10000

    .line 133
    .line 134
    :goto_7
    or-int/2addr v1, v4

    .line 135
    :cond_c
    and-int/lit8 v4, v10, 0x40

    .line 136
    .line 137
    const/high16 v7, 0x180000

    .line 138
    .line 139
    if-eqz v4, :cond_e

    .line 140
    .line 141
    or-int/2addr v1, v7

    .line 142
    :cond_d
    move-object/from16 v7, p6

    .line 143
    .line 144
    goto :goto_9

    .line 145
    :cond_e
    and-int/2addr v7, v9

    .line 146
    if-nez v7, :cond_d

    .line 147
    .line 148
    move-object/from16 v7, p6

    .line 149
    .line 150
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    if-eqz v13, :cond_f

    .line 155
    .line 156
    const/high16 v13, 0x100000

    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_f
    const/high16 v13, 0x80000

    .line 160
    .line 161
    :goto_8
    or-int/2addr v1, v13

    .line 162
    :goto_9
    and-int/lit16 v13, v10, 0x80

    .line 163
    .line 164
    const/4 v15, 0x0

    .line 165
    const/high16 v16, 0xc00000

    .line 166
    .line 167
    if-eqz v13, :cond_10

    .line 168
    .line 169
    or-int v1, v1, v16

    .line 170
    .line 171
    goto :goto_b

    .line 172
    :cond_10
    and-int v13, v9, v16

    .line 173
    .line 174
    if-nez v13, :cond_12

    .line 175
    .line 176
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v13

    .line 180
    if-eqz v13, :cond_11

    .line 181
    .line 182
    const/high16 v13, 0x800000

    .line 183
    .line 184
    goto :goto_a

    .line 185
    :cond_11
    const/high16 v13, 0x400000

    .line 186
    .line 187
    :goto_a
    or-int/2addr v1, v13

    .line 188
    :cond_12
    :goto_b
    const/high16 v13, 0x6000000

    .line 189
    .line 190
    and-int/2addr v13, v9

    .line 191
    if-nez v13, :cond_14

    .line 192
    .line 193
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    if-eqz v13, :cond_13

    .line 198
    .line 199
    const/high16 v13, 0x4000000

    .line 200
    .line 201
    goto :goto_c

    .line 202
    :cond_13
    const/high16 v13, 0x2000000

    .line 203
    .line 204
    :goto_c
    or-int/2addr v1, v13

    .line 205
    :cond_14
    const v13, 0x2492493

    .line 206
    .line 207
    .line 208
    and-int/2addr v13, v1

    .line 209
    const v15, 0x2492492

    .line 210
    .line 211
    .line 212
    move/from16 v16, v2

    .line 213
    .line 214
    if-eq v13, v15, :cond_15

    .line 215
    .line 216
    const/4 v13, 0x1

    .line 217
    goto :goto_d

    .line 218
    :cond_15
    const/4 v13, 0x0

    .line 219
    :goto_d
    and-int/lit8 v15, v1, 0x1

    .line 220
    .line 221
    invoke-virtual {v0, v15, v13}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 222
    .line 223
    .line 224
    move-result v13

    .line 225
    if-eqz v13, :cond_1d

    .line 226
    .line 227
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 228
    .line 229
    .line 230
    and-int/lit8 v13, v9, 0x1

    .line 231
    .line 232
    if-eqz v13, :cond_18

    .line 233
    .line 234
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 235
    .line 236
    .line 237
    move-result v13

    .line 238
    if-eqz v13, :cond_16

    .line 239
    .line 240
    goto :goto_f

    .line 241
    :cond_16
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 242
    .line 243
    .line 244
    :cond_17
    :goto_e
    move v13, v3

    .line 245
    move-object/from16 v20, v7

    .line 246
    .line 247
    goto :goto_10

    .line 248
    :cond_18
    :goto_f
    if-eqz v16, :cond_19

    .line 249
    .line 250
    const/4 v3, 0x1

    .line 251
    :cond_19
    if-eqz v4, :cond_17

    .line 252
    .line 253
    const/4 v7, 0x0

    .line 254
    goto :goto_e

    .line 255
    :goto_10
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 256
    .line 257
    .line 258
    const v3, 0x5e0c9d4e

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 269
    .line 270
    if-ne v3, v4, :cond_1a

    .line 271
    .line 272
    new-instance v3, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 273
    .line 274
    invoke-direct {v3}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    :cond_1a
    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 281
    .line 282
    const/4 v4, 0x0

    .line 283
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 284
    .line 285
    .line 286
    if-eqz v13, :cond_1b

    .line 287
    .line 288
    move-object/from16 v21, v3

    .line 289
    .line 290
    iget-wide v2, v5, Landroidx/compose/material3/CardColors;->containerColor:J

    .line 291
    .line 292
    :goto_11
    move-wide v15, v2

    .line 293
    goto :goto_12

    .line 294
    :cond_1b
    move-object/from16 v21, v3

    .line 295
    .line 296
    iget-wide v2, v5, Landroidx/compose/material3/CardColors;->disabledContainerColor:J

    .line 297
    .line 298
    goto :goto_11

    .line 299
    :goto_12
    if-eqz v13, :cond_1c

    .line 300
    .line 301
    iget-wide v2, v5, Landroidx/compose/material3/CardColors;->contentColor:J

    .line 302
    .line 303
    :goto_13
    move-wide/from16 v17, v2

    .line 304
    .line 305
    goto :goto_14

    .line 306
    :cond_1c
    iget-wide v2, v5, Landroidx/compose/material3/CardColors;->disabledContentColor:J

    .line 307
    .line 308
    goto :goto_13

    .line 309
    :goto_14
    shr-int/lit8 v2, v1, 0x6

    .line 310
    .line 311
    and-int/lit8 v2, v2, 0xe

    .line 312
    .line 313
    shr-int/lit8 v3, v1, 0x9

    .line 314
    .line 315
    and-int/lit16 v3, v3, 0x380

    .line 316
    .line 317
    or-int/2addr v2, v3

    .line 318
    move-object/from16 v3, v21

    .line 319
    .line 320
    invoke-virtual {v6, v13, v3, v0, v2}, Landroidx/compose/material3/CardElevation;->shadowElevation$material3(ZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    check-cast v2, Landroidx/compose/ui/unit/Dp;

    .line 329
    .line 330
    iget v2, v2, Landroidx/compose/ui/unit/Dp;->value:F

    .line 331
    .line 332
    new-instance v4, Landroidx/compose/material3/CardKt$Card$1;

    .line 333
    .line 334
    const/4 v7, 0x1

    .line 335
    invoke-direct {v4, v8, v7}, Landroidx/compose/material3/CardKt$Card$1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 336
    .line 337
    .line 338
    const v7, -0x5051b168

    .line 339
    .line 340
    .line 341
    invoke-static {v7, v4, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 342
    .line 343
    .line 344
    move-result-object v22

    .line 345
    and-int/lit16 v4, v1, 0x1ffe

    .line 346
    .line 347
    const/high16 v7, 0xe000000

    .line 348
    .line 349
    shl-int/lit8 v1, v1, 0x6

    .line 350
    .line 351
    and-int/2addr v1, v7

    .line 352
    or-int v24, v4, v1

    .line 353
    .line 354
    const/16 v25, 0x40

    .line 355
    .line 356
    move-object/from16 v23, v0

    .line 357
    .line 358
    move/from16 v19, v2

    .line 359
    .line 360
    invoke-static/range {v11 .. v25}, Landroidx/compose/material3/SurfaceKt;->Surface-o_FOJdg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 361
    .line 362
    .line 363
    move v3, v13

    .line 364
    move-object/from16 v7, v20

    .line 365
    .line 366
    goto :goto_15

    .line 367
    :cond_1d
    move-object/from16 v23, v0

    .line 368
    .line 369
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 370
    .line 371
    .line 372
    :goto_15
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 373
    .line 374
    .line 375
    move-result-object v11

    .line 376
    if-eqz v11, :cond_1e

    .line 377
    .line 378
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda3;

    .line 379
    .line 380
    move-object/from16 v1, p0

    .line 381
    .line 382
    move-object/from16 v2, p1

    .line 383
    .line 384
    move-object/from16 v4, p3

    .line 385
    .line 386
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 387
    .line 388
    .line 389
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 390
    .line 391
    :cond_1e
    return-void
.end method

.method public static final Checkbox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/CheckboxColors;Landroidx/compose/runtime/Composer;I)V
    .locals 39

    .line 1
    move/from16 v5, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move/from16 v1, p4

    .line 6
    .line 7
    move-object/from16 v12, p3

    .line 8
    .line 9
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, -0x53d92a91

    .line 12
    .line 13
    .line 14
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, v1, 0x6

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x2

    .line 30
    :goto_0
    or-int/2addr v0, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v0, v1

    .line 33
    :goto_1
    and-int/lit8 v4, v1, 0x30

    .line 34
    .line 35
    const/16 v6, 0x20

    .line 36
    .line 37
    if-nez v4, :cond_3

    .line 38
    .line 39
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    move v4, v6

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 v4, 0x10

    .line 48
    .line 49
    :goto_2
    or-int/2addr v0, v4

    .line 50
    :cond_3
    and-int/lit16 v4, v1, 0x180

    .line 51
    .line 52
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 53
    .line 54
    if-nez v4, :cond_5

    .line 55
    .line 56
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_4

    .line 61
    .line 62
    const/16 v4, 0x100

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    const/16 v4, 0x80

    .line 66
    .line 67
    :goto_3
    or-int/2addr v0, v4

    .line 68
    :cond_5
    and-int/lit16 v4, v1, 0xc00

    .line 69
    .line 70
    const/4 v7, 0x1

    .line 71
    if-nez v4, :cond_7

    .line 72
    .line 73
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_6

    .line 78
    .line 79
    const/16 v4, 0x800

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    const/16 v4, 0x400

    .line 83
    .line 84
    :goto_4
    or-int/2addr v0, v4

    .line 85
    :cond_7
    and-int/lit16 v4, v1, 0x6000

    .line 86
    .line 87
    if-nez v4, :cond_8

    .line 88
    .line 89
    or-int/lit16 v0, v0, 0x2000

    .line 90
    .line 91
    :cond_8
    const/high16 v4, 0x30000

    .line 92
    .line 93
    or-int/2addr v0, v4

    .line 94
    const v4, 0x12493

    .line 95
    .line 96
    .line 97
    and-int/2addr v4, v0

    .line 98
    const v8, 0x12492

    .line 99
    .line 100
    .line 101
    if-eq v4, v8, :cond_9

    .line 102
    .line 103
    move v4, v7

    .line 104
    goto :goto_5

    .line 105
    :cond_9
    const/4 v4, 0x0

    .line 106
    :goto_5
    and-int/lit8 v8, v0, 0x1

    .line 107
    .line 108
    invoke-virtual {v12, v8, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_13

    .line 113
    .line 114
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 115
    .line 116
    .line 117
    and-int/lit8 v4, v1, 0x1

    .line 118
    .line 119
    const v8, -0xe001

    .line 120
    .line 121
    .line 122
    if-eqz v4, :cond_b

    .line 123
    .line 124
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_a

    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_a
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 132
    .line 133
    .line 134
    and-int/2addr v0, v8

    .line 135
    move-object/from16 v11, p2

    .line 136
    .line 137
    goto :goto_8

    .line 138
    :cond_b
    :goto_6
    sget-object v4, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 139
    .line 140
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    check-cast v4, Landroidx/compose/material3/ColorScheme;

    .line 145
    .line 146
    iget-object v11, v4, Landroidx/compose/material3/ColorScheme;->defaultCheckboxColorsCached:Landroidx/compose/material3/CheckboxColors;

    .line 147
    .line 148
    if-nez v11, :cond_c

    .line 149
    .line 150
    new-instance v13, Landroidx/compose/material3/CheckboxColors;

    .line 151
    .line 152
    sget-object v11, Landroidx/compose/material3/tokens/CheckboxTokens;->SelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 153
    .line 154
    invoke-static {v4, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v14

    .line 158
    sget-wide v16, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 159
    .line 160
    sget-object v11, Landroidx/compose/material3/tokens/CheckboxTokens;->SelectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 161
    .line 162
    invoke-static {v4, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 163
    .line 164
    .line 165
    move-result-wide v18

    .line 166
    sget-object v7, Landroidx/compose/material3/tokens/CheckboxTokens;->SelectedDisabledContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 167
    .line 168
    move/from16 v38, v8

    .line 169
    .line 170
    invoke-static {v4, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v8

    .line 174
    const v2, 0x3ec28f5c    # 0.38f

    .line 175
    .line 176
    .line 177
    invoke-static {v2, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 178
    .line 179
    .line 180
    move-result-wide v22

    .line 181
    invoke-static {v4, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 182
    .line 183
    .line 184
    move-result-wide v8

    .line 185
    invoke-static {v2, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 186
    .line 187
    .line 188
    move-result-wide v26

    .line 189
    invoke-static {v4, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 190
    .line 191
    .line 192
    move-result-wide v28

    .line 193
    sget-object v8, Landroidx/compose/material3/tokens/CheckboxTokens;->UnselectedOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 194
    .line 195
    invoke-static {v4, v8}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 196
    .line 197
    .line 198
    move-result-wide v30

    .line 199
    invoke-static {v4, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 200
    .line 201
    .line 202
    move-result-wide v8

    .line 203
    invoke-static {v2, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 204
    .line 205
    .line 206
    move-result-wide v32

    .line 207
    sget-object v8, Landroidx/compose/material3/tokens/CheckboxTokens;->UnselectedDisabledOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 208
    .line 209
    invoke-static {v4, v8}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 210
    .line 211
    .line 212
    move-result-wide v8

    .line 213
    invoke-static {v2, v8, v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 214
    .line 215
    .line 216
    move-result-wide v34

    .line 217
    invoke-static {v4, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 218
    .line 219
    .line 220
    move-result-wide v7

    .line 221
    invoke-static {v2, v7, v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 222
    .line 223
    .line 224
    move-result-wide v36

    .line 225
    move-wide/from16 v20, v16

    .line 226
    .line 227
    move-wide/from16 v24, v16

    .line 228
    .line 229
    invoke-direct/range {v13 .. v37}, Landroidx/compose/material3/CheckboxColors;-><init>(JJJJJJJJJJJJ)V

    .line 230
    .line 231
    .line 232
    iput-object v13, v4, Landroidx/compose/material3/ColorScheme;->defaultCheckboxColorsCached:Landroidx/compose/material3/CheckboxColors;

    .line 233
    .line 234
    move-object v11, v13

    .line 235
    goto :goto_7

    .line 236
    :cond_c
    move/from16 v38, v8

    .line 237
    .line 238
    :goto_7
    and-int v0, v0, v38

    .line 239
    .line 240
    :goto_8
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 241
    .line 242
    .line 243
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 244
    .line 245
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 250
    .line 251
    const/high16 v4, 0x40000000    # 2.0f

    .line 252
    .line 253
    invoke-interface {v2, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    float-to-double v7, v2

    .line 258
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    .line 259
    .line 260
    .line 261
    move-result-wide v7

    .line 262
    double-to-float v14, v7

    .line 263
    if-eqz v5, :cond_d

    .line 264
    .line 265
    sget-object v2, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    .line 266
    .line 267
    goto :goto_9

    .line 268
    :cond_d
    sget-object v2, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    .line 269
    .line 270
    :goto_9
    if-eqz v3, :cond_12

    .line 271
    .line 272
    const v4, 0x7b26fdf6

    .line 273
    .line 274
    .line 275
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 276
    .line 277
    .line 278
    and-int/lit8 v4, v0, 0x70

    .line 279
    .line 280
    if-ne v4, v6, :cond_e

    .line 281
    .line 282
    const/4 v4, 0x1

    .line 283
    goto :goto_a

    .line 284
    :cond_e
    const/4 v4, 0x0

    .line 285
    :goto_a
    and-int/lit8 v6, v0, 0xe

    .line 286
    .line 287
    const/4 v7, 0x4

    .line 288
    if-ne v6, v7, :cond_f

    .line 289
    .line 290
    const/4 v7, 0x1

    .line 291
    goto :goto_b

    .line 292
    :cond_f
    const/4 v7, 0x0

    .line 293
    :goto_b
    or-int/2addr v4, v7

    .line 294
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    if-nez v4, :cond_11

    .line 299
    .line 300
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 301
    .line 302
    if-ne v6, v4, :cond_10

    .line 303
    .line 304
    goto :goto_c

    .line 305
    :cond_10
    const/4 v4, 0x0

    .line 306
    goto :goto_d

    .line 307
    :cond_11
    :goto_c
    new-instance v6, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda2;

    .line 308
    .line 309
    const/4 v4, 0x0

    .line 310
    invoke-direct {v6, v3, v5, v4}, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;ZI)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    :goto_d
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 317
    .line 318
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 319
    .line 320
    .line 321
    :goto_e
    move-object v7, v6

    .line 322
    goto :goto_f

    .line 323
    :cond_12
    const/4 v4, 0x0

    .line 324
    const v6, 0x7b27fe8f

    .line 325
    .line 326
    .line 327
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 331
    .line 332
    .line 333
    const/4 v6, 0x0

    .line 334
    goto :goto_e

    .line 335
    :goto_f
    new-instance v13, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 336
    .line 337
    const/16 v17, 0x0

    .line 338
    .line 339
    const/16 v18, 0x1a

    .line 340
    .line 341
    const/4 v15, 0x0

    .line 342
    const/16 v16, 0x2

    .line 343
    .line 344
    invoke-direct/range {v13 .. v18}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 345
    .line 346
    .line 347
    move-object v8, v13

    .line 348
    new-instance v13, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 349
    .line 350
    const/16 v18, 0x1e

    .line 351
    .line 352
    const/16 v16, 0x0

    .line 353
    .line 354
    invoke-direct/range {v13 .. v18}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 355
    .line 356
    .line 357
    shl-int/lit8 v0, v0, 0x6

    .line 358
    .line 359
    const v4, 0x1ffe000

    .line 360
    .line 361
    .line 362
    and-int/2addr v0, v4

    .line 363
    move-object v6, v2

    .line 364
    move-object v9, v13

    .line 365
    move v13, v0

    .line 366
    invoke-static/range {v6 .. v13}, Landroidx/compose/material3/CardKt;->TriStateCheckbox(Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;Landroidx/compose/runtime/Composer;I)V

    .line 367
    .line 368
    .line 369
    move-object v4, v11

    .line 370
    goto :goto_10

    .line 371
    :cond_13
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 372
    .line 373
    .line 374
    move-object/from16 v4, p2

    .line 375
    .line 376
    :goto_10
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    if-eqz v6, :cond_14

    .line 381
    .line 382
    new-instance v0, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda3;

    .line 383
    .line 384
    const/4 v2, 0x0

    .line 385
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 386
    .line 387
    .line 388
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 389
    .line 390
    :cond_14
    return-void
.end method

.method public static final CheckboxImpl(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v11, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move/from16 v0, p6

    .line 12
    .line 13
    move-object/from16 v4, p5

    .line 14
    .line 15
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v6, -0x35209ea0    # -7319728.0f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v6, v0, 0x6

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    const/4 v8, 0x2

    .line 27
    if-nez v6, :cond_1

    .line 28
    .line 29
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v6, v8

    .line 38
    :goto_0
    or-int/2addr v6, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v6, v0

    .line 41
    :goto_1
    and-int/lit8 v9, v0, 0x30

    .line 42
    .line 43
    if-nez v9, :cond_3

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_2

    .line 54
    .line 55
    const/16 v9, 0x20

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v9, 0x10

    .line 59
    .line 60
    :goto_2
    or-int/2addr v6, v9

    .line 61
    :cond_3
    and-int/lit16 v9, v0, 0x180

    .line 62
    .line 63
    if-nez v9, :cond_5

    .line 64
    .line 65
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-eqz v9, :cond_4

    .line 70
    .line 71
    const/16 v9, 0x100

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    const/16 v9, 0x80

    .line 75
    .line 76
    :goto_3
    or-int/2addr v6, v9

    .line 77
    :cond_5
    and-int/lit16 v9, v0, 0xc00

    .line 78
    .line 79
    if-nez v9, :cond_7

    .line 80
    .line 81
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    goto :goto_4

    .line 90
    :cond_6
    const/16 v9, 0x400

    .line 91
    .line 92
    :goto_4
    or-int/2addr v6, v9

    .line 93
    :cond_7
    and-int/lit16 v9, v0, 0x6000

    .line 94
    .line 95
    if-nez v9, :cond_9

    .line 96
    .line 97
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_8

    .line 102
    .line 103
    const/16 v9, 0x4000

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_8
    const/16 v9, 0x2000

    .line 107
    .line 108
    :goto_5
    or-int/2addr v6, v9

    .line 109
    :cond_9
    const/high16 v9, 0x30000

    .line 110
    .line 111
    and-int/2addr v9, v0

    .line 112
    if-nez v9, :cond_b

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    if-eqz v9, :cond_a

    .line 119
    .line 120
    const/high16 v9, 0x20000

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_a
    const/high16 v9, 0x10000

    .line 124
    .line 125
    :goto_6
    or-int/2addr v6, v9

    .line 126
    :cond_b
    const v9, 0x12493

    .line 127
    .line 128
    .line 129
    and-int/2addr v9, v6

    .line 130
    const v10, 0x12492

    .line 131
    .line 132
    .line 133
    const/4 v12, 0x0

    .line 134
    if-eq v9, v10, :cond_c

    .line 135
    .line 136
    move v9, v7

    .line 137
    goto :goto_7

    .line 138
    :cond_c
    move v9, v12

    .line 139
    :goto_7
    and-int/lit8 v10, v6, 0x1

    .line 140
    .line 141
    invoke-virtual {v4, v10, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-eqz v9, :cond_25

    .line 146
    .line 147
    shr-int/lit8 v6, v6, 0x3

    .line 148
    .line 149
    and-int/lit8 v6, v6, 0xe

    .line 150
    .line 151
    const/4 v9, 0x0

    .line 152
    invoke-static {v1, v9, v4, v6, v8}, Landroidx/compose/animation/core/ArcSplineKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    iget-object v9, v6, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 157
    .line 158
    iget-object v10, v6, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 159
    .line 160
    sget-object v13, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 161
    .line 162
    invoke-static {v13, v4}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 163
    .line 164
    .line 165
    move-result-object v19

    .line 166
    sget-object v16, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 167
    .line 168
    invoke-virtual {v10}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    check-cast v13, Landroidx/compose/ui/state/ToggleableState;

    .line 173
    .line 174
    const v14, -0x2dcb949a

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 181
    .line 182
    .line 183
    move-result v13

    .line 184
    const/16 v20, 0x0

    .line 185
    .line 186
    const/high16 v21, 0x3f800000    # 1.0f

    .line 187
    .line 188
    if-eqz v13, :cond_d

    .line 189
    .line 190
    if-eq v13, v7, :cond_f

    .line 191
    .line 192
    if-ne v13, v8, :cond_e

    .line 193
    .line 194
    :cond_d
    move/from16 v13, v21

    .line 195
    .line 196
    goto :goto_8

    .line 197
    :cond_e
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_f
    move/from16 v13, v20

    .line 202
    .line 203
    :goto_8
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 204
    .line 205
    .line 206
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v15

    .line 214
    check-cast v15, Landroidx/compose/ui/state/ToggleableState;

    .line 215
    .line 216
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 220
    .line 221
    .line 222
    move-result v14

    .line 223
    if-eqz v14, :cond_10

    .line 224
    .line 225
    if-eq v14, v7, :cond_12

    .line 226
    .line 227
    if-ne v14, v8, :cond_11

    .line 228
    .line 229
    :cond_10
    move/from16 v14, v21

    .line 230
    .line 231
    goto :goto_9

    .line 232
    :cond_11
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_12
    move/from16 v14, v20

    .line 237
    .line 238
    :goto_9
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 239
    .line 240
    .line 241
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 242
    .line 243
    .line 244
    move-result-object v14

    .line 245
    invoke-virtual {v6}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 246
    .line 247
    .line 248
    move-result-object v15

    .line 249
    const v8, 0x6a24c466

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 253
    .line 254
    .line 255
    invoke-interface {v15}, Landroidx/compose/animation/core/Transition$Segment;->getInitialState()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    const/16 v7, 0x64

    .line 260
    .line 261
    sget-object v12, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    .line 262
    .line 263
    if-ne v8, v12, :cond_14

    .line 264
    .line 265
    :cond_13
    move-object/from16 v15, v19

    .line 266
    .line 267
    :goto_a
    const/4 v8, 0x0

    .line 268
    goto :goto_b

    .line 269
    :cond_14
    invoke-interface {v15}, Landroidx/compose/animation/core/Transition$Segment;->getTargetState()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    if-ne v8, v12, :cond_13

    .line 274
    .line 275
    new-instance v8, Landroidx/compose/animation/core/SnapSpec;

    .line 276
    .line 277
    invoke-direct {v8, v7}, Landroidx/compose/animation/core/SnapSpec;-><init>(I)V

    .line 278
    .line 279
    .line 280
    move-object v15, v8

    .line 281
    goto :goto_a

    .line 282
    :goto_b
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 283
    .line 284
    .line 285
    const/16 v18, 0x0

    .line 286
    .line 287
    move-object/from16 v17, v12

    .line 288
    .line 289
    move-object v12, v6

    .line 290
    move-object/from16 v6, v17

    .line 291
    .line 292
    move-object/from16 v17, v4

    .line 293
    .line 294
    move v4, v8

    .line 295
    invoke-static/range {v12 .. v18}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 296
    .line 297
    .line 298
    move-result-object v8

    .line 299
    move-object v13, v12

    .line 300
    move-object/from16 v12, v17

    .line 301
    .line 302
    invoke-virtual {v10}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v10

    .line 306
    check-cast v10, Landroidx/compose/ui/state/ToggleableState;

    .line 307
    .line 308
    const v14, 0x6dad01af

    .line 309
    .line 310
    .line 311
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 315
    .line 316
    .line 317
    move-result v10

    .line 318
    if-eqz v10, :cond_16

    .line 319
    .line 320
    const/4 v15, 0x1

    .line 321
    if-eq v10, v15, :cond_16

    .line 322
    .line 323
    const/4 v15, 0x2

    .line 324
    if-ne v10, v15, :cond_15

    .line 325
    .line 326
    move/from16 v10, v21

    .line 327
    .line 328
    goto :goto_c

    .line 329
    :cond_15
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :cond_16
    move/from16 v10, v20

    .line 334
    .line 335
    :goto_c
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 336
    .line 337
    .line 338
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    check-cast v9, Landroidx/compose/ui/state/ToggleableState;

    .line 347
    .line 348
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 352
    .line 353
    .line 354
    move-result v9

    .line 355
    if-eqz v9, :cond_18

    .line 356
    .line 357
    const/4 v15, 0x1

    .line 358
    if-eq v9, v15, :cond_18

    .line 359
    .line 360
    const/4 v15, 0x2

    .line 361
    if-ne v9, v15, :cond_17

    .line 362
    .line 363
    move/from16 v20, v21

    .line 364
    .line 365
    goto :goto_d

    .line 366
    :cond_17
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 367
    .line 368
    .line 369
    return-void

    .line 370
    :cond_18
    :goto_d
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 371
    .line 372
    .line 373
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 374
    .line 375
    .line 376
    move-result-object v14

    .line 377
    invoke-virtual {v13}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 378
    .line 379
    .line 380
    move-result-object v9

    .line 381
    const v15, 0x25991aaf

    .line 382
    .line 383
    .line 384
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v9}, Landroidx/compose/animation/core/Transition$Segment;->getInitialState()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v15

    .line 391
    if-ne v15, v6, :cond_1a

    .line 392
    .line 393
    invoke-static {}, Landroidx/compose/animation/core/ArcSplineKt;->snap$default()Landroidx/compose/animation/core/SnapSpec;

    .line 394
    .line 395
    .line 396
    move-result-object v19

    .line 397
    :cond_19
    move-object/from16 v15, v19

    .line 398
    .line 399
    goto :goto_e

    .line 400
    :cond_1a
    invoke-interface {v9}, Landroidx/compose/animation/core/Transition$Segment;->getTargetState()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v9

    .line 404
    if-ne v9, v6, :cond_19

    .line 405
    .line 406
    new-instance v9, Landroidx/compose/animation/core/SnapSpec;

    .line 407
    .line 408
    invoke-direct {v9, v7}, Landroidx/compose/animation/core/SnapSpec;-><init>(I)V

    .line 409
    .line 410
    .line 411
    move-object v15, v9

    .line 412
    :goto_e
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 413
    .line 414
    .line 415
    move-object/from16 v17, v12

    .line 416
    .line 417
    move-object v12, v13

    .line 418
    move-object v13, v10

    .line 419
    invoke-static/range {v12 .. v18}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 420
    .line 421
    .line 422
    move-result-object v10

    .line 423
    move-object/from16 v13, v17

    .line 424
    .line 425
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 430
    .line 431
    if-ne v7, v9, :cond_1b

    .line 432
    .line 433
    new-instance v7, Landroidx/compose/material3/CheckDrawingCache;

    .line 434
    .line 435
    invoke-direct {v7}, Landroidx/compose/material3/CheckDrawingCache;-><init>()V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    :cond_1b
    move-object v12, v7

    .line 442
    check-cast v12, Landroidx/compose/material3/CheckDrawingCache;

    .line 443
    .line 444
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    if-ne v1, v6, :cond_1c

    .line 448
    .line 449
    iget-wide v6, v3, Landroidx/compose/material3/CheckboxColors;->uncheckedCheckmarkColor:J

    .line 450
    .line 451
    goto :goto_f

    .line 452
    :cond_1c
    iget-wide v6, v3, Landroidx/compose/material3/CheckboxColors;->checkedCheckmarkColor:J

    .line 453
    .line 454
    :goto_f
    invoke-static {v1, v13}, Landroidx/compose/material3/CheckboxColors;->colorAnimationSpecForState(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 455
    .line 456
    .line 457
    move-result-object v14

    .line 458
    invoke-static {v6, v7, v14, v13}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/SpringSpec;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;

    .line 459
    .line 460
    .line 461
    move-result-object v6

    .line 462
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 463
    .line 464
    .line 465
    move-result v7

    .line 466
    if-eqz v7, :cond_1f

    .line 467
    .line 468
    const/4 v15, 0x1

    .line 469
    if-eq v7, v15, :cond_1e

    .line 470
    .line 471
    const/4 v15, 0x2

    .line 472
    if-ne v7, v15, :cond_1d

    .line 473
    .line 474
    goto :goto_10

    .line 475
    :cond_1d
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 476
    .line 477
    .line 478
    return-void

    .line 479
    :cond_1e
    iget-wide v14, v3, Landroidx/compose/material3/CheckboxColors;->uncheckedBoxColor:J

    .line 480
    .line 481
    goto :goto_11

    .line 482
    :cond_1f
    :goto_10
    iget-wide v14, v3, Landroidx/compose/material3/CheckboxColors;->checkedBoxColor:J

    .line 483
    .line 484
    :goto_11
    const v7, 0x1d912603

    .line 485
    .line 486
    .line 487
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 488
    .line 489
    .line 490
    invoke-static {v1, v13}, Landroidx/compose/material3/CheckboxColors;->colorAnimationSpecForState(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 491
    .line 492
    .line 493
    move-result-object v7

    .line 494
    invoke-static {v14, v15, v7, v13}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/SpringSpec;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;

    .line 495
    .line 496
    .line 497
    move-result-object v7

    .line 498
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 502
    .line 503
    .line 504
    move-result v14

    .line 505
    if-eqz v14, :cond_22

    .line 506
    .line 507
    const/4 v15, 0x1

    .line 508
    if-eq v14, v15, :cond_21

    .line 509
    .line 510
    const/4 v15, 0x2

    .line 511
    if-ne v14, v15, :cond_20

    .line 512
    .line 513
    goto :goto_12

    .line 514
    :cond_20
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 515
    .line 516
    .line 517
    return-void

    .line 518
    :cond_21
    iget-wide v14, v3, Landroidx/compose/material3/CheckboxColors;->uncheckedBorderColor:J

    .line 519
    .line 520
    goto :goto_13

    .line 521
    :cond_22
    :goto_12
    iget-wide v14, v3, Landroidx/compose/material3/CheckboxColors;->checkedBorderColor:J

    .line 522
    .line 523
    :goto_13
    const v4, 0x25be58c6

    .line 524
    .line 525
    .line 526
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 527
    .line 528
    .line 529
    invoke-static {v1, v13}, Landroidx/compose/material3/CheckboxColors;->colorAnimationSpecForState(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    invoke-static {v14, v15, v4, v13}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/SpringSpec;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;

    .line 534
    .line 535
    .line 536
    move-result-object v4

    .line 537
    const/4 v14, 0x0

    .line 538
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 539
    .line 540
    .line 541
    const/4 v15, 0x2

    .line 542
    invoke-static {v2, v15}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;I)Landroidx/compose/ui/Modifier;

    .line 543
    .line 544
    .line 545
    move-result-object v15

    .line 546
    const/high16 v14, 0x41a00000    # 20.0f

    .line 547
    .line 548
    invoke-static {v15, v14}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 549
    .line 550
    .line 551
    move-result-object v14

    .line 552
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    move-result v15

    .line 556
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v16

    .line 560
    or-int v15, v15, v16

    .line 561
    .line 562
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v16

    .line 566
    or-int v15, v15, v16

    .line 567
    .line 568
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v16

    .line 572
    or-int v15, v15, v16

    .line 573
    .line 574
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v16

    .line 578
    or-int v15, v15, v16

    .line 579
    .line 580
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-result v16

    .line 584
    or-int v15, v15, v16

    .line 585
    .line 586
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v16

    .line 590
    or-int v15, v15, v16

    .line 591
    .line 592
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    if-nez v15, :cond_23

    .line 597
    .line 598
    if-ne v0, v9, :cond_24

    .line 599
    .line 600
    :cond_23
    move-object v9, v8

    .line 601
    move-object v8, v6

    .line 602
    move-object v6, v4

    .line 603
    goto :goto_14

    .line 604
    :cond_24
    move-object v4, v0

    .line 605
    const/4 v0, 0x0

    .line 606
    goto :goto_15

    .line 607
    :goto_14
    new-instance v4, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda0;

    .line 608
    .line 609
    move-object v0, v7

    .line 610
    move-object v7, v5

    .line 611
    move-object v5, v0

    .line 612
    const/4 v0, 0x0

    .line 613
    invoke-direct/range {v4 .. v12}, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/runtime/State;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/material3/CheckDrawingCache;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 617
    .line 618
    .line 619
    :goto_15
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 620
    .line 621
    invoke-static {v0, v13, v14, v4}, Landroidx/compose/foundation/ImageKt;->Canvas(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 622
    .line 623
    .line 624
    goto :goto_16

    .line 625
    :cond_25
    move-object v13, v4

    .line 626
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 627
    .line 628
    .line 629
    :goto_16
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 630
    .line 631
    .line 632
    move-result-object v7

    .line 633
    if-eqz v7, :cond_26

    .line 634
    .line 635
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;

    .line 636
    .line 637
    move-object/from16 v4, p3

    .line 638
    .line 639
    move-object/from16 v5, p4

    .line 640
    .line 641
    move/from16 v6, p6

    .line 642
    .line 643
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 644
    .line 645
    .line 646
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 647
    .line 648
    :cond_26
    return-void
.end method

.method public static final DropdownMenuContent-Qj0Zi0g(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    move-object/from16 v9, p8

    .line 8
    .line 9
    move-object/from16 v15, p9

    .line 10
    .line 11
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v3, 0x329a8275

    .line 14
    .line 15
    .line 16
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v3, 0x2

    .line 28
    :goto_0
    or-int v3, p10, v3

    .line 29
    .line 30
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    const/16 v4, 0x20

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/16 v4, 0x10

    .line 40
    .line 41
    :goto_1
    or-int/2addr v3, v4

    .line 42
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    const/16 v4, 0x800

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v4, 0x400

    .line 52
    .line 53
    :goto_2
    or-int/2addr v3, v4

    .line 54
    move-object/from16 v8, p4

    .line 55
    .line 56
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    const/16 v4, 0x4000

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/16 v4, 0x2000

    .line 66
    .line 67
    :goto_3
    or-int/2addr v3, v4

    .line 68
    move-wide/from16 v6, p5

    .line 69
    .line 70
    invoke-virtual {v15, v6, v7}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    const/high16 v4, 0x20000

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_4
    const/high16 v4, 0x10000

    .line 80
    .line 81
    :goto_4
    or-int/2addr v3, v4

    .line 82
    const/4 v4, 0x0

    .line 83
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    if-eqz v10, :cond_5

    .line 88
    .line 89
    const/high16 v10, 0x100000

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_5
    const/high16 v10, 0x80000

    .line 93
    .line 94
    :goto_5
    or-int/2addr v3, v10

    .line 95
    move/from16 v10, p7

    .line 96
    .line 97
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    if-eqz v11, :cond_6

    .line 102
    .line 103
    const/high16 v11, 0x800000

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_6
    const/high16 v11, 0x400000

    .line 107
    .line 108
    :goto_6
    or-int/2addr v3, v11

    .line 109
    const/4 v11, 0x0

    .line 110
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    if-eqz v12, :cond_7

    .line 115
    .line 116
    const/high16 v12, 0x4000000

    .line 117
    .line 118
    goto :goto_7

    .line 119
    :cond_7
    const/high16 v12, 0x2000000

    .line 120
    .line 121
    :goto_7
    or-int/2addr v3, v12

    .line 122
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    if-eqz v12, :cond_8

    .line 127
    .line 128
    const/high16 v12, 0x20000000

    .line 129
    .line 130
    goto :goto_8

    .line 131
    :cond_8
    const/high16 v12, 0x10000000

    .line 132
    .line 133
    :goto_8
    or-int v17, v3, v12

    .line 134
    .line 135
    const v3, 0x12492493

    .line 136
    .line 137
    .line 138
    and-int v3, v17, v3

    .line 139
    .line 140
    const v12, 0x12492492

    .line 141
    .line 142
    .line 143
    const/16 v18, 0x1

    .line 144
    .line 145
    const/4 v13, 0x0

    .line 146
    if-eq v3, v12, :cond_9

    .line 147
    .line 148
    move/from16 v3, v18

    .line 149
    .line 150
    goto :goto_9

    .line 151
    :cond_9
    move v3, v13

    .line 152
    :goto_9
    and-int/lit8 v12, v17, 0x1

    .line 153
    .line 154
    invoke-virtual {v15, v12, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_11

    .line 159
    .line 160
    shr-int/lit8 v3, v17, 0x3

    .line 161
    .line 162
    and-int/lit8 v3, v3, 0xe

    .line 163
    .line 164
    const/16 v12, 0x30

    .line 165
    .line 166
    or-int/2addr v3, v12

    .line 167
    and-int/lit8 v3, v3, 0x7e

    .line 168
    .line 169
    const-string v12, "DropDownMenu"

    .line 170
    .line 171
    invoke-static {v2, v12, v15, v3}, Landroidx/compose/animation/core/ArcSplineKt;->rememberTransition(Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    sget-object v12, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 176
    .line 177
    invoke-static {v12, v15}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    sget-object v14, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 182
    .line 183
    invoke-static {v14, v15}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 184
    .line 185
    .line 186
    move-result-object v19

    .line 187
    sget-object v14, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 188
    .line 189
    iget-object v4, v3, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 190
    .line 191
    iget-object v5, v3, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 192
    .line 193
    invoke-virtual {v4}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    check-cast v4, Ljava/lang/Boolean;

    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    const v11, 0x894b891

    .line 204
    .line 205
    .line 206
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 207
    .line 208
    .line 209
    const v21, 0x3f4ccccd    # 0.8f

    .line 210
    .line 211
    .line 212
    const/high16 v22, 0x3f800000    # 1.0f

    .line 213
    .line 214
    if-eqz v4, :cond_a

    .line 215
    .line 216
    move/from16 v4, v22

    .line 217
    .line 218
    goto :goto_a

    .line 219
    :cond_a
    move/from16 v4, v21

    .line 220
    .line 221
    :goto_a
    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 222
    .line 223
    .line 224
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v23

    .line 232
    check-cast v23, Ljava/lang/Boolean;

    .line 233
    .line 234
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    .line 235
    .line 236
    .line 237
    move-result v23

    .line 238
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 239
    .line 240
    .line 241
    if-eqz v23, :cond_b

    .line 242
    .line 243
    move/from16 v21, v22

    .line 244
    .line 245
    :cond_b
    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 246
    .line 247
    .line 248
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 249
    .line 250
    .line 251
    move-result-object v11

    .line 252
    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 253
    .line 254
    .line 255
    const v2, -0x2c766954

    .line 256
    .line 257
    .line 258
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 262
    .line 263
    .line 264
    const/4 v2, 0x0

    .line 265
    const/16 v16, 0x0

    .line 266
    .line 267
    move/from16 v10, v18

    .line 268
    .line 269
    move-object/from16 v18, v2

    .line 270
    .line 271
    move v2, v10

    .line 272
    move-object v10, v3

    .line 273
    move v3, v13

    .line 274
    move-object v13, v12

    .line 275
    move-object v12, v11

    .line 276
    move-object v11, v4

    .line 277
    invoke-static/range {v10 .. v16}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    iget-object v11, v10, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 282
    .line 283
    invoke-virtual {v11}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    check-cast v11, Ljava/lang/Boolean;

    .line 288
    .line 289
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    const v12, 0x353675a5

    .line 294
    .line 295
    .line 296
    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 297
    .line 298
    .line 299
    const/4 v13, 0x0

    .line 300
    if-eqz v11, :cond_c

    .line 301
    .line 302
    move/from16 v11, v22

    .line 303
    .line 304
    goto :goto_b

    .line 305
    :cond_c
    move v11, v13

    .line 306
    :goto_b
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 307
    .line 308
    .line 309
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 310
    .line 311
    .line 312
    move-result-object v11

    .line 313
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    check-cast v5, Ljava/lang/Boolean;

    .line 318
    .line 319
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 324
    .line 325
    .line 326
    if-eqz v5, :cond_d

    .line 327
    .line 328
    goto :goto_c

    .line 329
    :cond_d
    move/from16 v22, v13

    .line 330
    .line 331
    :goto_c
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 332
    .line 333
    .line 334
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 335
    .line 336
    .line 337
    move-result-object v12

    .line 338
    invoke-virtual {v10}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 339
    .line 340
    .line 341
    const v5, 0x2b53c0

    .line 342
    .line 343
    .line 344
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 348
    .line 349
    .line 350
    move-object/from16 v13, v19

    .line 351
    .line 352
    invoke-static/range {v10 .. v16}, Landroidx/compose/animation/core/ArcSplineKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    sget-object v10, Landroidx/compose/ui/platform/InspectionModeKt;->LocalInspectionMode:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 357
    .line 358
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v10

    .line 362
    check-cast v10, Ljava/lang/Boolean;

    .line 363
    .line 364
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 365
    .line 366
    .line 367
    move-result v10

    .line 368
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 369
    .line 370
    .line 371
    move-result v11

    .line 372
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v12

    .line 376
    or-int/2addr v11, v12

    .line 377
    and-int/lit8 v12, v17, 0x70

    .line 378
    .line 379
    const/16 v13, 0x20

    .line 380
    .line 381
    if-eq v12, v13, :cond_e

    .line 382
    .line 383
    move v2, v3

    .line 384
    :cond_e
    or-int/2addr v2, v11

    .line 385
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    or-int/2addr v2, v3

    .line 390
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    if-nez v2, :cond_10

    .line 395
    .line 396
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 397
    .line 398
    if-ne v3, v2, :cond_f

    .line 399
    .line 400
    goto :goto_d

    .line 401
    :cond_f
    const/16 v16, 0x0

    .line 402
    .line 403
    goto :goto_e

    .line 404
    :cond_10
    :goto_d
    new-instance v2, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda0;

    .line 405
    .line 406
    move-object v6, v4

    .line 407
    move-object v7, v5

    .line 408
    move v3, v10

    .line 409
    const/16 v16, 0x0

    .line 410
    .line 411
    move-object/from16 v4, p1

    .line 412
    .line 413
    move-object/from16 v5, p2

    .line 414
    .line 415
    invoke-direct/range {v2 .. v7}, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda0;-><init>(ZLandroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    move-object v3, v2

    .line 422
    :goto_e
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 423
    .line 424
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 425
    .line 426
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 427
    .line 428
    .line 429
    move-result-object v10

    .line 430
    new-instance v2, Landroidx/compose/material3/TooltipKt$TooltipBox$3;

    .line 431
    .line 432
    invoke-direct {v2, v1, v0, v9}, Landroidx/compose/material3/TooltipKt$TooltipBox$3;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 433
    .line 434
    .line 435
    const v3, -0x5739c786

    .line 436
    .line 437
    .line 438
    invoke-static {v3, v2, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 439
    .line 440
    .line 441
    move-result-object v19

    .line 442
    shr-int/lit8 v2, v17, 0x9

    .line 443
    .line 444
    and-int/lit8 v3, v2, 0x70

    .line 445
    .line 446
    const/high16 v4, 0xc00000

    .line 447
    .line 448
    or-int/2addr v3, v4

    .line 449
    and-int/lit16 v2, v2, 0x380

    .line 450
    .line 451
    or-int/2addr v2, v3

    .line 452
    shr-int/lit8 v3, v17, 0x6

    .line 453
    .line 454
    const v4, 0xe000

    .line 455
    .line 456
    .line 457
    and-int/2addr v4, v3

    .line 458
    or-int/2addr v2, v4

    .line 459
    const/high16 v4, 0x70000

    .line 460
    .line 461
    and-int/2addr v4, v3

    .line 462
    or-int/2addr v2, v4

    .line 463
    const/high16 v4, 0x380000

    .line 464
    .line 465
    and-int/2addr v3, v4

    .line 466
    or-int v21, v2, v3

    .line 467
    .line 468
    const/16 v22, 0x8

    .line 469
    .line 470
    move-object/from16 v20, v15

    .line 471
    .line 472
    const-wide/16 v14, 0x0

    .line 473
    .line 474
    move-wide/from16 v12, p5

    .line 475
    .line 476
    move/from16 v17, p7

    .line 477
    .line 478
    move-object v11, v8

    .line 479
    invoke-static/range {v10 .. v22}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 480
    .line 481
    .line 482
    move-object/from16 v15, v20

    .line 483
    .line 484
    goto :goto_f

    .line 485
    :cond_11
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 486
    .line 487
    .line 488
    :goto_f
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 489
    .line 490
    .line 491
    move-result-object v11

    .line 492
    if-eqz v11, :cond_12

    .line 493
    .line 494
    new-instance v0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;

    .line 495
    .line 496
    move-object/from16 v2, p1

    .line 497
    .line 498
    move-object/from16 v3, p2

    .line 499
    .line 500
    move-object/from16 v4, p3

    .line 501
    .line 502
    move-object/from16 v5, p4

    .line 503
    .line 504
    move-wide/from16 v6, p5

    .line 505
    .line 506
    move/from16 v8, p7

    .line 507
    .line 508
    move/from16 v10, p10

    .line 509
    .line 510
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 511
    .line 512
    .line 513
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 514
    .line 515
    :cond_12
    return-void
.end method

.method public static final DropdownMenuItemContent(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    .line 1
    move/from16 v3, p3

    .line 2
    .line 3
    move-object/from16 v7, p4

    .line 4
    .line 5
    move-object/from16 v8, p5

    .line 6
    .line 7
    move/from16 v9, p7

    .line 8
    .line 9
    move-object/from16 v10, p6

    .line 10
    .line 11
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, -0x4efcd6dc

    .line 14
    .line 15
    .line 16
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, v9, 0x6

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    or-int/2addr v0, v9

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v0, v9

    .line 35
    :goto_1
    and-int/lit8 v1, v9, 0x30

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v1, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v0, v1

    .line 51
    :cond_3
    and-int/lit16 v1, v9, 0x180

    .line 52
    .line 53
    if-nez v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {v10, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    const/16 v2, 0x100

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v2, 0x80

    .line 65
    .line 66
    :goto_3
    or-int/2addr v0, v2

    .line 67
    :cond_5
    and-int/lit16 v2, v9, 0xc00

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    if-nez v2, :cond_7

    .line 71
    .line 72
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_6

    .line 77
    .line 78
    const/16 v2, 0x800

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_6
    const/16 v2, 0x400

    .line 82
    .line 83
    :goto_4
    or-int/2addr v0, v2

    .line 84
    :cond_7
    and-int/lit16 v2, v9, 0x6000

    .line 85
    .line 86
    if-nez v2, :cond_9

    .line 87
    .line 88
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_8

    .line 93
    .line 94
    const/16 v2, 0x4000

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_8
    const/16 v2, 0x2000

    .line 98
    .line 99
    :goto_5
    or-int/2addr v0, v2

    .line 100
    :cond_9
    const/high16 v2, 0x30000

    .line 101
    .line 102
    and-int/2addr v2, v9

    .line 103
    if-nez v2, :cond_b

    .line 104
    .line 105
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_a

    .line 110
    .line 111
    const/high16 v2, 0x20000

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_a
    const/high16 v2, 0x10000

    .line 115
    .line 116
    :goto_6
    or-int/2addr v0, v2

    .line 117
    :cond_b
    const/high16 v2, 0x180000

    .line 118
    .line 119
    and-int/2addr v2, v9

    .line 120
    if-nez v2, :cond_d

    .line 121
    .line 122
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_c

    .line 127
    .line 128
    const/high16 v2, 0x100000

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_c
    const/high16 v2, 0x80000

    .line 132
    .line 133
    :goto_7
    or-int/2addr v0, v2

    .line 134
    :cond_d
    const/high16 v2, 0xc00000

    .line 135
    .line 136
    and-int/2addr v2, v9

    .line 137
    if-nez v2, :cond_f

    .line 138
    .line 139
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_e

    .line 144
    .line 145
    const/high16 v2, 0x800000

    .line 146
    .line 147
    goto :goto_8

    .line 148
    :cond_e
    const/high16 v2, 0x400000

    .line 149
    .line 150
    :goto_8
    or-int/2addr v0, v2

    .line 151
    :cond_f
    const/high16 v2, 0x6000000

    .line 152
    .line 153
    and-int/2addr v2, v9

    .line 154
    const/4 v1, 0x0

    .line 155
    if-nez v2, :cond_11

    .line 156
    .line 157
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_10

    .line 162
    .line 163
    const/high16 v2, 0x4000000

    .line 164
    .line 165
    goto :goto_9

    .line 166
    :cond_10
    const/high16 v2, 0x2000000

    .line 167
    .line 168
    :goto_9
    or-int/2addr v0, v2

    .line 169
    :cond_11
    const v2, 0x2492493

    .line 170
    .line 171
    .line 172
    and-int/2addr v2, v0

    .line 173
    const v4, 0x2492492

    .line 174
    .line 175
    .line 176
    const/4 v11, 0x1

    .line 177
    if-eq v2, v4, :cond_12

    .line 178
    .line 179
    move v2, v11

    .line 180
    goto :goto_a

    .line 181
    :cond_12
    const/4 v2, 0x0

    .line 182
    :goto_a
    and-int/2addr v0, v11

    .line 183
    invoke-virtual {v10, v0, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_16

    .line 188
    .line 189
    const/4 v0, 0x0

    .line 190
    const/4 v2, 0x6

    .line 191
    invoke-static {v11, v0, v2}, Landroidx/compose/material3/RippleKt;->ripple-H2RKhps$default(ZFI)Landroidx/compose/material3/RippleNodeFactory;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    const/4 v4, 0x0

    .line 196
    const/16 v6, 0x18

    .line 197
    .line 198
    move-object v5, p1

    .line 199
    move-object v0, p2

    .line 200
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/ImageKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/material3/RippleNodeFactory;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 205
    .line 206
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    const/high16 v1, 0x42400000    # 48.0f

    .line 211
    .line 212
    const/16 v2, 0x8

    .line 213
    .line 214
    const/high16 v4, 0x42e00000    # 112.0f

    .line 215
    .line 216
    const/high16 v5, 0x438c0000    # 280.0f

    .line 217
    .line 218
    invoke-static {v0, v4, v1, v5, v2}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFI)Landroidx/compose/ui/Modifier;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-static {v0, v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 227
    .line 228
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 229
    .line 230
    const/16 v4, 0x30

    .line 231
    .line 232
    invoke-static {v2, v1, v10, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-static {v10, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 249
    .line 250
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 254
    .line 255
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 256
    .line 257
    .line 258
    iget-boolean v12, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 259
    .line 260
    if-eqz v12, :cond_13

    .line 261
    .line 262
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 263
    .line 264
    .line 265
    goto :goto_b

    .line 266
    :cond_13
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 267
    .line 268
    .line 269
    :goto_b
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 270
    .line 271
    invoke-static {v10, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 272
    .line 273
    .line 274
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 275
    .line 276
    invoke-static {v10, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 277
    .line 278
    .line 279
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 280
    .line 281
    iget-boolean v5, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 282
    .line 283
    if-nez v5, :cond_14

    .line 284
    .line 285
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-nez v5, :cond_15

    .line 298
    .line 299
    :cond_14
    invoke-static {v2, v10, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 300
    .line 301
    .line 302
    :cond_15
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 303
    .line 304
    invoke-static {v10, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 305
    .line 306
    .line 307
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 308
    .line 309
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 314
    .line 315
    iget-object v0, v0, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 316
    .line 317
    new-instance v1, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;

    .line 318
    .line 319
    invoke-direct {v1, v7, v3, p0}, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;-><init>(Landroidx/compose/material3/MenuItemColors;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 320
    .line 321
    .line 322
    const v2, 0x339e1c39

    .line 323
    .line 324
    .line 325
    invoke-static {v2, v1, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-static {v0, v1, v10, v4}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 333
    .line 334
    .line 335
    goto :goto_c

    .line 336
    :cond_16
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 337
    .line 338
    .line 339
    :goto_c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 340
    .line 341
    .line 342
    move-result-object v10

    .line 343
    if-eqz v10, :cond_17

    .line 344
    .line 345
    new-instance v0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda2;

    .line 346
    .line 347
    move-object v1, p0

    .line 348
    move-object v2, p1

    .line 349
    move v4, v3

    .line 350
    move-object v5, v7

    .line 351
    move-object v6, v8

    .line 352
    move v7, v9

    .line 353
    move-object v3, p2

    .line 354
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;I)V

    .line 355
    .line 356
    .line 357
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 358
    .line 359
    :cond_17
    return-void
.end method

.method public static final ElevatedCard(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move/from16 v6, p6

    .line 2
    .line 3
    move-object/from16 v13, p5

    .line 4
    .line 5
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, -0x574d206a

    .line 8
    .line 9
    .line 10
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v0, v6, 0x6

    .line 14
    .line 15
    move-object/from16 v1, p0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int/2addr v0, v6

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v6

    .line 31
    :goto_1
    and-int/lit8 v2, v6, 0x30

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    move-object/from16 v2, p1

    .line 36
    .line 37
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    const/16 v3, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v3, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v0, v3

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    move-object/from16 v2, p1

    .line 51
    .line 52
    :goto_3
    and-int/lit16 v3, v6, 0x180

    .line 53
    .line 54
    move-object/from16 v9, p2

    .line 55
    .line 56
    if-nez v3, :cond_5

    .line 57
    .line 58
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    const/16 v3, 0x100

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_4
    const/16 v3, 0x80

    .line 68
    .line 69
    :goto_4
    or-int/2addr v0, v3

    .line 70
    :cond_5
    and-int/lit16 v3, v6, 0xc00

    .line 71
    .line 72
    move-object/from16 v10, p3

    .line 73
    .line 74
    if-nez v3, :cond_7

    .line 75
    .line 76
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_6

    .line 81
    .line 82
    const/16 v3, 0x800

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_6
    const/16 v3, 0x400

    .line 86
    .line 87
    :goto_5
    or-int/2addr v0, v3

    .line 88
    :cond_7
    and-int/lit16 v3, v6, 0x6000

    .line 89
    .line 90
    move-object/from16 v12, p4

    .line 91
    .line 92
    if-nez v3, :cond_9

    .line 93
    .line 94
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_8

    .line 99
    .line 100
    const/16 v3, 0x4000

    .line 101
    .line 102
    goto :goto_6

    .line 103
    :cond_8
    const/16 v3, 0x2000

    .line 104
    .line 105
    :goto_6
    or-int/2addr v0, v3

    .line 106
    :cond_9
    and-int/lit16 v3, v0, 0x2493

    .line 107
    .line 108
    const/16 v4, 0x2492

    .line 109
    .line 110
    if-eq v3, v4, :cond_a

    .line 111
    .line 112
    const/4 v3, 0x1

    .line 113
    goto :goto_7

    .line 114
    :cond_a
    const/4 v3, 0x0

    .line 115
    :goto_7
    and-int/lit8 v4, v0, 0x1

    .line 116
    .line 117
    invoke-virtual {v13, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_d

    .line 122
    .line 123
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 124
    .line 125
    .line 126
    and-int/lit8 v3, v6, 0x1

    .line 127
    .line 128
    if-eqz v3, :cond_c

    .line 129
    .line 130
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_b

    .line 135
    .line 136
    goto :goto_8

    .line 137
    :cond_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 138
    .line 139
    .line 140
    :cond_c
    :goto_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 141
    .line 142
    .line 143
    and-int/lit8 v3, v0, 0xe

    .line 144
    .line 145
    or-int/lit16 v3, v3, 0x6000

    .line 146
    .line 147
    and-int/lit8 v4, v0, 0x70

    .line 148
    .line 149
    or-int/2addr v3, v4

    .line 150
    and-int/lit16 v4, v0, 0x380

    .line 151
    .line 152
    or-int/2addr v3, v4

    .line 153
    and-int/lit16 v4, v0, 0x1c00

    .line 154
    .line 155
    or-int/2addr v3, v4

    .line 156
    shl-int/lit8 v0, v0, 0x3

    .line 157
    .line 158
    const/high16 v4, 0x70000

    .line 159
    .line 160
    and-int/2addr v0, v4

    .line 161
    or-int v14, v3, v0

    .line 162
    .line 163
    const/4 v15, 0x0

    .line 164
    const/4 v11, 0x0

    .line 165
    move-object v7, v1

    .line 166
    move-object v8, v2

    .line 167
    invoke-static/range {v7 .. v15}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 168
    .line 169
    .line 170
    goto :goto_9

    .line 171
    :cond_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 172
    .line 173
    .line 174
    :goto_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    if-eqz v8, :cond_e

    .line 179
    .line 180
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;

    .line 181
    .line 182
    const/4 v7, 0x0

    .line 183
    move-object/from16 v1, p0

    .line 184
    .line 185
    move-object/from16 v2, p1

    .line 186
    .line 187
    move-object/from16 v3, p2

    .line 188
    .line 189
    move-object/from16 v4, p3

    .line 190
    .line 191
    move-object/from16 v5, p4

    .line 192
    .line 193
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 194
    .line 195
    .line 196
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 197
    .line 198
    :cond_e
    return-void
.end method

.method public static final ExposedDropdownMenuBox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 25

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v12, p3

    .line 6
    .line 7
    move/from16 v13, p5

    .line 8
    .line 9
    move-object/from16 v14, p4

    .line 10
    .line 11
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, 0x5f3457e4

    .line 14
    .line 15
    .line 16
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, v13, 0x6

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    or-int/2addr v0, v13

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v0, v13

    .line 35
    :goto_1
    and-int/lit8 v2, v13, 0x30

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    const/16 v2, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v0, v2

    .line 51
    :cond_3
    and-int/lit8 v2, p6, 0x4

    .line 52
    .line 53
    if-eqz v2, :cond_5

    .line 54
    .line 55
    or-int/lit16 v0, v0, 0x180

    .line 56
    .line 57
    :cond_4
    move-object/from16 v4, p2

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_5
    and-int/lit16 v4, v13, 0x180

    .line 61
    .line 62
    if-nez v4, :cond_4

    .line 63
    .line 64
    move-object/from16 v4, p2

    .line 65
    .line 66
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_6

    .line 71
    .line 72
    const/16 v5, 0x100

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_6
    const/16 v5, 0x80

    .line 76
    .line 77
    :goto_3
    or-int/2addr v0, v5

    .line 78
    :goto_4
    and-int/lit16 v5, v13, 0xc00

    .line 79
    .line 80
    if-nez v5, :cond_8

    .line 81
    .line 82
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_7

    .line 87
    .line 88
    const/16 v5, 0x800

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_7
    const/16 v5, 0x400

    .line 92
    .line 93
    :goto_5
    or-int/2addr v0, v5

    .line 94
    :cond_8
    and-int/lit16 v5, v0, 0x493

    .line 95
    .line 96
    const/16 v6, 0x492

    .line 97
    .line 98
    const/4 v7, 0x0

    .line 99
    if-eq v5, v6, :cond_9

    .line 100
    .line 101
    const/4 v5, 0x1

    .line 102
    goto :goto_6

    .line 103
    :cond_9
    move v5, v7

    .line 104
    :goto_6
    and-int/lit8 v6, v0, 0x1

    .line 105
    .line 106
    invoke-virtual {v14, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_25

    .line 111
    .line 112
    if-eqz v2, :cond_a

    .line 113
    .line 114
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_a
    move-object v2, v4

    .line 118
    :goto_7
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 119
    .line 120
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Landroid/content/res/Configuration;

    .line 125
    .line 126
    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 127
    .line 128
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Landroid/view/View;

    .line 133
    .line 134
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    or-int/2addr v4, v6

    .line 143
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 148
    .line 149
    if-nez v4, :cond_b

    .line 150
    .line 151
    if-ne v6, v10, :cond_c

    .line 152
    .line 153
    :cond_b
    new-instance v6, Landroidx/compose/material3/WindowBoundsCalculator;

    .line 154
    .line 155
    invoke-direct {v6, v5}, Landroidx/compose/material3/WindowBoundsCalculator;-><init>(Landroid/view/View;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_c
    move-object v4, v6

    .line 162
    check-cast v4, Landroidx/compose/material3/WindowBoundsCalculator;

    .line 163
    .line 164
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 165
    .line 166
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 171
    .line 172
    const/high16 v6, 0x42400000    # 48.0f

    .line 173
    .line 174
    invoke-interface {v5, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 175
    .line 176
    .line 177
    move-result v18

    .line 178
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    if-ne v6, v10, :cond_d

    .line 183
    .line 184
    const/4 v6, 0x0

    .line 185
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    :cond_d
    move-object/from16 v19, v6

    .line 193
    .line 194
    check-cast v19, Landroidx/compose/runtime/MutableState;

    .line 195
    .line 196
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    if-ne v6, v10, :cond_e

    .line 201
    .line 202
    new-instance v6, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 203
    .line 204
    invoke-direct {v6, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_e
    move-object/from16 v20, v6

    .line 211
    .line 212
    check-cast v20, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 213
    .line 214
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    if-ne v6, v10, :cond_f

    .line 219
    .line 220
    new-instance v6, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 221
    .line 222
    invoke-direct {v6, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :cond_f
    move-object v11, v6

    .line 229
    check-cast v11, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 230
    .line 231
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    if-ne v6, v10, :cond_10

    .line 236
    .line 237
    new-instance v6, Landroidx/compose/ui/focus/FocusRequester;

    .line 238
    .line 239
    invoke-direct {v6}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    :cond_10
    check-cast v6, Landroidx/compose/ui/focus/FocusRequester;

    .line 246
    .line 247
    sget-object v7, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalSoftwareKeyboardController:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 248
    .line 249
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    check-cast v7, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    .line 254
    .line 255
    const v8, 0x7f1203e8

    .line 256
    .line 257
    .line 258
    invoke-static {v14, v8}, Landroidx/compose/material3/internal/Icons$Filled;->getString-2EP1pXo(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    const v3, 0x7f1203e7

    .line 263
    .line 264
    .line 265
    invoke-static {v14, v3}, Landroidx/compose/material3/internal/Icons$Filled;->getString-2EP1pXo(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    const v15, 0x7f1203e9

    .line 270
    .line 271
    .line 272
    invoke-static {v14, v15}, Landroidx/compose/material3/internal/Icons$Filled;->getString-2EP1pXo(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v15

    .line 276
    move/from16 v21, v0

    .line 277
    .line 278
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    if-ne v0, v10, :cond_11

    .line 283
    .line 284
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenuAnchorType;

    .line 285
    .line 286
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_11
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 297
    .line 298
    move-object/from16 p2, v0

    .line 299
    .line 300
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    if-ne v0, v10, :cond_12

    .line 305
    .line 306
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 307
    .line 308
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    :cond_12
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 316
    .line 317
    and-int/lit8 v13, v21, 0xe

    .line 318
    .line 319
    move-object/from16 v22, v0

    .line 320
    .line 321
    const/4 v0, 0x4

    .line 322
    if-ne v13, v0, :cond_13

    .line 323
    .line 324
    const/4 v0, 0x1

    .line 325
    goto :goto_8

    .line 326
    :cond_13
    const/4 v0, 0x0

    .line 327
    :goto_8
    move-object/from16 v23, v15

    .line 328
    .line 329
    and-int/lit8 v15, v21, 0x70

    .line 330
    .line 331
    move/from16 v24, v0

    .line 332
    .line 333
    const/16 v0, 0x20

    .line 334
    .line 335
    if-ne v15, v0, :cond_14

    .line 336
    .line 337
    const/16 v17, 0x1

    .line 338
    .line 339
    goto :goto_9

    .line 340
    :cond_14
    const/16 v17, 0x0

    .line 341
    .line 342
    :goto_9
    or-int v17, v24, v17

    .line 343
    .line 344
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v24

    .line 348
    or-int v17, v17, v24

    .line 349
    .line 350
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v5

    .line 354
    or-int v5, v17, v5

    .line 355
    .line 356
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    if-nez v5, :cond_16

    .line 361
    .line 362
    if-ne v0, v10, :cond_15

    .line 363
    .line 364
    goto :goto_a

    .line 365
    :cond_15
    move-object/from16 v23, v2

    .line 366
    .line 367
    move/from16 p2, v13

    .line 368
    .line 369
    move/from16 v24, v15

    .line 370
    .line 371
    move/from16 v12, v18

    .line 372
    .line 373
    move/from16 v22, v21

    .line 374
    .line 375
    move-object v13, v4

    .line 376
    move-object v15, v10

    .line 377
    move-object/from16 v10, v20

    .line 378
    .line 379
    goto :goto_b

    .line 380
    :cond_16
    :goto_a
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;

    .line 381
    .line 382
    move-object v5, v8

    .line 383
    move-object/from16 v8, p2

    .line 384
    .line 385
    move/from16 p2, v13

    .line 386
    .line 387
    move-object v13, v4

    .line 388
    move-object v4, v5

    .line 389
    move-object v5, v2

    .line 390
    move v2, v1

    .line 391
    move-object v1, v6

    .line 392
    move-object/from16 v6, v23

    .line 393
    .line 394
    move-object/from16 v23, v5

    .line 395
    .line 396
    move-object v5, v3

    .line 397
    move/from16 v24, v15

    .line 398
    .line 399
    move/from16 v12, v18

    .line 400
    .line 401
    move-object/from16 v3, v22

    .line 402
    .line 403
    move-object v15, v10

    .line 404
    move-object/from16 v10, v20

    .line 405
    .line 406
    move/from16 v22, v21

    .line 407
    .line 408
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;-><init>(Landroidx/compose/ui/focus/FocusRequester;ZLandroidx/compose/runtime/MutableState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/platform/SoftwareKeyboardController;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;)V

    .line 409
    .line 410
    .line 411
    move-object v6, v1

    .line 412
    move v1, v2

    .line 413
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    :goto_b
    check-cast v0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;

    .line 417
    .line 418
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    or-int/2addr v2, v3

    .line 427
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    if-nez v2, :cond_18

    .line 432
    .line 433
    if-ne v3, v15, :cond_17

    .line 434
    .line 435
    goto :goto_c

    .line 436
    :cond_17
    move-object/from16 v2, v19

    .line 437
    .line 438
    goto :goto_d

    .line 439
    :cond_18
    :goto_c
    new-instance v16, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda0;

    .line 440
    .line 441
    move-object/from16 v20, v10

    .line 442
    .line 443
    move-object/from16 v21, v11

    .line 444
    .line 445
    move/from16 v18, v12

    .line 446
    .line 447
    move-object/from16 v17, v13

    .line 448
    .line 449
    invoke-direct/range {v16 .. v21}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/WindowBoundsCalculator;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;)V

    .line 450
    .line 451
    .line 452
    move-object/from16 v3, v16

    .line 453
    .line 454
    move-object/from16 v2, v19

    .line 455
    .line 456
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    :goto_d
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 460
    .line 461
    move-object/from16 v4, v23

    .line 462
    .line 463
    invoke-static {v4, v3}, Landroidx/compose/ui/layout/RulerKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 468
    .line 469
    const/4 v7, 0x0

    .line 470
    invoke-static {v5, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 475
    .line 476
    .line 477
    move-result v7

    .line 478
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 479
    .line 480
    .line 481
    move-result-object v8

    .line 482
    invoke-static {v14, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 487
    .line 488
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 492
    .line 493
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 494
    .line 495
    .line 496
    iget-boolean v4, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 497
    .line 498
    if-eqz v4, :cond_19

    .line 499
    .line 500
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 501
    .line 502
    .line 503
    goto :goto_e

    .line 504
    :cond_19
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 505
    .line 506
    .line 507
    :goto_e
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 508
    .line 509
    invoke-static {v14, v5, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 510
    .line 511
    .line 512
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 513
    .line 514
    invoke-static {v14, v8, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 515
    .line 516
    .line 517
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 518
    .line 519
    iget-boolean v5, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 520
    .line 521
    if-nez v5, :cond_1a

    .line 522
    .line 523
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v5

    .line 527
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 528
    .line 529
    .line 530
    move-result-object v8

    .line 531
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result v5

    .line 535
    if-nez v5, :cond_1b

    .line 536
    .line 537
    :cond_1a
    invoke-static {v7, v14, v7, v4}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 538
    .line 539
    .line 540
    :cond_1b
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 541
    .line 542
    invoke-static {v14, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 543
    .line 544
    .line 545
    shr-int/lit8 v3, v22, 0x6

    .line 546
    .line 547
    and-int/lit8 v3, v3, 0x70

    .line 548
    .line 549
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    move-object/from16 v5, p3

    .line 554
    .line 555
    invoke-virtual {v5, v0, v14, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    const/4 v0, 0x1

    .line 559
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 560
    .line 561
    .line 562
    if-eqz v1, :cond_1e

    .line 563
    .line 564
    const v3, 0xc82bd43

    .line 565
    .line 566
    .line 567
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 575
    .line 576
    .line 577
    move-result v4

    .line 578
    or-int/2addr v3, v4

    .line 579
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v4

    .line 583
    if-nez v3, :cond_1c

    .line 584
    .line 585
    if-ne v4, v15, :cond_1d

    .line 586
    .line 587
    :cond_1c
    new-instance v4, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;

    .line 588
    .line 589
    invoke-direct {v4, v13, v12, v2, v11}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/material3/WindowBoundsCalculator;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    :cond_1d
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 596
    .line 597
    const/4 v7, 0x0

    .line 598
    invoke-static {v4, v14, v7}, Landroidx/compose/material3/CardKt;->OnPlatformWindowBoundsChange(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 602
    .line 603
    .line 604
    :goto_f
    move/from16 v2, p2

    .line 605
    .line 606
    const/4 v3, 0x4

    .line 607
    goto :goto_10

    .line 608
    :cond_1e
    const/4 v7, 0x0

    .line 609
    const v2, 0xc87d3de

    .line 610
    .line 611
    .line 612
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 616
    .line 617
    .line 618
    goto :goto_f

    .line 619
    :goto_10
    if-ne v2, v3, :cond_1f

    .line 620
    .line 621
    move v7, v0

    .line 622
    goto :goto_11

    .line 623
    :cond_1f
    const/4 v7, 0x0

    .line 624
    :goto_11
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    if-nez v7, :cond_20

    .line 629
    .line 630
    if-ne v3, v15, :cond_21

    .line 631
    .line 632
    :cond_20
    new-instance v3, Lcom/fsck/k9/ui/messagelist/MessageListViewModel$$ExternalSyntheticLambda0;

    .line 633
    .line 634
    const/4 v4, 0x3

    .line 635
    invoke-direct {v3, v4, v6, v1}, Lcom/fsck/k9/ui/messagelist/MessageListViewModel$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Z)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    :cond_21
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 642
    .line 643
    invoke-static {v3, v14}, Landroidx/compose/runtime/Updater;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    .line 644
    .line 645
    .line 646
    move/from16 v3, v24

    .line 647
    .line 648
    const/16 v4, 0x20

    .line 649
    .line 650
    if-ne v3, v4, :cond_22

    .line 651
    .line 652
    move v7, v0

    .line 653
    goto :goto_12

    .line 654
    :cond_22
    const/4 v7, 0x0

    .line 655
    :goto_12
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    if-nez v7, :cond_23

    .line 660
    .line 661
    if-ne v0, v15, :cond_24

    .line 662
    .line 663
    :cond_23
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 664
    .line 665
    const/4 v7, 0x0

    .line 666
    invoke-direct {v0, v7, v9}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 670
    .line 671
    .line 672
    :cond_24
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 673
    .line 674
    invoke-static {v1, v0, v14, v2}, Landroidx/compose/material3/internal/Icons$Filled;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 675
    .line 676
    .line 677
    move-object/from16 v3, v23

    .line 678
    .line 679
    goto :goto_13

    .line 680
    :cond_25
    move-object v5, v12

    .line 681
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 682
    .line 683
    .line 684
    move-object v3, v4

    .line 685
    :goto_13
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 686
    .line 687
    .line 688
    move-result-object v7

    .line 689
    if-eqz v7, :cond_26

    .line 690
    .line 691
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda4;

    .line 692
    .line 693
    move/from16 v6, p6

    .line 694
    .line 695
    move-object v4, v5

    .line 696
    move-object v2, v9

    .line 697
    move/from16 v5, p5

    .line 698
    .line 699
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda4;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 700
    .line 701
    .line 702
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 703
    .line 704
    :cond_26
    return-void
.end method

.method public static final FadeInFadeOutWithScale(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    sget-object v0, Landroidx/compose/material3/ComposableSingletons$SnackbarHostKt;->lambda$-1548712596:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v1, -0x3a448173    # -5999.819f

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v1, p3, 0x6

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x2

    .line 24
    :goto_0
    or-int/2addr v1, p3

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v1, p3

    .line 27
    :goto_1
    and-int/lit8 v2, p3, 0x30

    .line 28
    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    const/16 v2, 0x20

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/16 v2, 0x10

    .line 41
    .line 42
    :goto_2
    or-int/2addr v1, v2

    .line 43
    :cond_3
    and-int/lit16 v2, p3, 0x180

    .line 44
    .line 45
    if-nez v2, :cond_5

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    const/16 v0, 0x100

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const/16 v0, 0x80

    .line 57
    .line 58
    :goto_3
    or-int/2addr v1, v0

    .line 59
    :cond_5
    and-int/lit16 v0, v1, 0x93

    .line 60
    .line 61
    const/16 v2, 0x92

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x1

    .line 65
    if-eq v0, v2, :cond_6

    .line 66
    .line 67
    move v0, v4

    .line 68
    goto :goto_4

    .line 69
    :cond_6
    move v0, v3

    .line 70
    :goto_4
    and-int/2addr v1, v4

    .line 71
    invoke-virtual {p2, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_13

    .line 76
    .line 77
    const v0, 0x7f1203ee

    .line 78
    .line 79
    .line 80
    invoke-static {p2, v0}, Landroidx/compose/material3/internal/Icons$Filled;->getString-2EP1pXo(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 89
    .line 90
    if-ne v1, v2, :cond_7

    .line 91
    .line 92
    new-instance v1, Landroidx/compose/material3/FadeInFadeOutState;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance v2, Ljava/lang/Object;

    .line 98
    .line 99
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v2, v1, Landroidx/compose/material3/FadeInFadeOutState;->current:Ljava/lang/Object;

    .line 103
    .line 104
    new-instance v2, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v2, v1, Landroidx/compose/material3/FadeInFadeOutState;->items:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_7
    check-cast v1, Landroidx/compose/material3/FadeInFadeOutState;

    .line 115
    .line 116
    iget-object v2, v1, Landroidx/compose/material3/FadeInFadeOutState;->current:Ljava/lang/Object;

    .line 117
    .line 118
    iget-object v5, v1, Landroidx/compose/material3/FadeInFadeOutState;->items:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_d

    .line 125
    .line 126
    const v2, 0x44d63ff1

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 130
    .line 131
    .line 132
    iput-object p0, v1, Landroidx/compose/material3/FadeInFadeOutState;->current:Ljava/lang/Object;

    .line 133
    .line 134
    new-instance v2, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    move v7, v3

    .line 148
    :goto_5
    if-ge v7, v6, :cond_8

    .line 149
    .line 150
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    check-cast v8, Landroidx/compose/material3/FadeInFadeOutAnimationItem;

    .line 155
    .line 156
    iget-object v8, v8, Landroidx/compose/material3/FadeInFadeOutAnimationItem;->key:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v8, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    .line 159
    .line 160
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    add-int/lit8 v7, v7, 0x1

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-nez v2, :cond_9

    .line 176
    .line 177
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 181
    .line 182
    .line 183
    new-instance v2, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    move v8, v3

    .line 197
    :goto_6
    if-ge v8, v7, :cond_b

    .line 198
    .line 199
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    if-eqz v9, :cond_a

    .line 204
    .line 205
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    move v7, v3

    .line 216
    :goto_7
    if-ge v7, v6, :cond_c

    .line 217
    .line 218
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    check-cast v8, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    .line 223
    .line 224
    new-instance v9, Landroidx/compose/material3/FadeInFadeOutAnimationItem;

    .line 225
    .line 226
    new-instance v10, Landroidx/compose/material3/SnackbarHostKt$FadeInFadeOutWithScale$1$1;

    .line 227
    .line 228
    invoke-direct {v10, v8, p0, v1, v0}, Landroidx/compose/material3/SnackbarHostKt$FadeInFadeOutWithScale$1$1;-><init>(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;Landroidx/compose/material3/FadeInFadeOutState;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    const v11, -0x745f45a5

    .line 232
    .line 233
    .line 234
    invoke-static {v11, v10, p2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 235
    .line 236
    .line 237
    move-result-object v10

    .line 238
    invoke-direct {v9, v8, v10}, Landroidx/compose/material3/FadeInFadeOutAnimationItem;-><init>(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    add-int/lit8 v7, v7, 0x1

    .line 245
    .line 246
    goto :goto_7

    .line 247
    :cond_c
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 248
    .line 249
    .line 250
    goto :goto_8

    .line 251
    :cond_d
    const v0, 0x56104d55

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 258
    .line 259
    .line 260
    :goto_8
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 261
    .line 262
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    invoke-static {p2, p1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 279
    .line 280
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 284
    .line 285
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 286
    .line 287
    .line 288
    iget-boolean v9, p2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 289
    .line 290
    if-eqz v9, :cond_e

    .line 291
    .line 292
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 293
    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_e
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 297
    .line 298
    .line 299
    :goto_9
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 300
    .line 301
    invoke-static {p2, v0, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 302
    .line 303
    .line 304
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 305
    .line 306
    invoke-static {p2, v6, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 307
    .line 308
    .line 309
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 310
    .line 311
    iget-boolean v6, p2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 312
    .line 313
    if-nez v6, :cond_f

    .line 314
    .line 315
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v8

    .line 323
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    if-nez v6, :cond_10

    .line 328
    .line 329
    :cond_f
    invoke-static {v2, p2, v2, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 330
    .line 331
    .line 332
    :cond_10
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 333
    .line 334
    invoke-static {p2, v7, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    if-eqz v0, :cond_12

    .line 342
    .line 343
    iget v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 344
    .line 345
    or-int/2addr v2, v4

    .line 346
    iput v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 347
    .line 348
    iput-object v0, v1, Landroidx/compose/material3/FadeInFadeOutState;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 349
    .line 350
    const v0, -0x708b5fa1

    .line 351
    .line 352
    .line 353
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    move v1, v3

    .line 361
    :goto_a
    if-ge v1, v0, :cond_11

    .line 362
    .line 363
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    check-cast v2, Landroidx/compose/material3/FadeInFadeOutAnimationItem;

    .line 368
    .line 369
    iget-object v6, v2, Landroidx/compose/material3/FadeInFadeOutAnimationItem;->key:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v6, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    .line 372
    .line 373
    iget-object v2, v2, Landroidx/compose/material3/FadeInFadeOutAnimationItem;->transition:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 374
    .line 375
    const v7, 0x4efa0ca5

    .line 376
    .line 377
    .line 378
    invoke-virtual {p2, v7, v6}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    new-instance v7, Landroidx/compose/material3/SnackbarKt$Snackbar$3;

    .line 382
    .line 383
    const/4 v8, 0x6

    .line 384
    invoke-direct {v7, v6, v8}, Landroidx/compose/material3/SnackbarKt$Snackbar$3;-><init>(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;I)V

    .line 385
    .line 386
    .line 387
    const v6, -0x70e0f892

    .line 388
    .line 389
    .line 390
    invoke-static {v6, v7, p2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v7

    .line 398
    invoke-virtual {v2, v6, p2, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 402
    .line 403
    .line 404
    add-int/lit8 v1, v1, 0x1

    .line 405
    .line 406
    goto :goto_a

    .line 407
    :cond_11
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 411
    .line 412
    .line 413
    goto :goto_b

    .line 414
    :cond_12
    const-string p0, "no recompose scope found"

    .line 415
    .line 416
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    return-void

    .line 420
    :cond_13
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 421
    .line 422
    .line 423
    :goto_b
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 424
    .line 425
    .line 426
    move-result-object p2

    .line 427
    if-eqz p2, :cond_14

    .line 428
    .line 429
    new-instance v0, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda3;

    .line 430
    .line 431
    invoke-direct {v0, p0, p1, p3}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;Landroidx/compose/ui/Modifier;I)V

    .line 432
    .line 433
    .line 434
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 435
    .line 436
    :cond_14
    return-void
.end method

.method public static final HorizontalDivider-9IZ8Weo(FIJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V
    .locals 7

    .line 1
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x47a9d25

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p1, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p4, p5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p1

    .line 25
    :goto_1
    and-int/lit8 v1, p1, 0x30

    .line 26
    .line 27
    const/16 v2, 0x20

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    move v1, v2

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/16 v1, 0x10

    .line 40
    .line 41
    :goto_2
    or-int/2addr v0, v1

    .line 42
    :cond_3
    and-int/lit16 v1, p1, 0x180

    .line 43
    .line 44
    const/16 v3, 0x100

    .line 45
    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    invoke-virtual {p4, p2, p3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    move v1, v3

    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const/16 v1, 0x80

    .line 57
    .line 58
    :goto_3
    or-int/2addr v0, v1

    .line 59
    :cond_5
    and-int/lit16 v1, v0, 0x93

    .line 60
    .line 61
    const/16 v4, 0x92

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x1

    .line 65
    if-eq v1, v4, :cond_6

    .line 66
    .line 67
    move v1, v6

    .line 68
    goto :goto_4

    .line 69
    :cond_6
    move v1, v5

    .line 70
    :goto_4
    and-int/lit8 v4, v0, 0x1

    .line 71
    .line 72
    invoke-virtual {p4, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_f

    .line 77
    .line 78
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 79
    .line 80
    .line 81
    and-int/lit8 v1, p1, 0x1

    .line 82
    .line 83
    if-eqz v1, :cond_8

    .line 84
    .line 85
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_7

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_7
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 93
    .line 94
    .line 95
    :cond_8
    :goto_5
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 96
    .line 97
    .line 98
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 99
    .line 100
    invoke-interface {p5, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v1, p0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    and-int/lit8 v4, v0, 0x70

    .line 109
    .line 110
    if-ne v4, v2, :cond_9

    .line 111
    .line 112
    move v2, v6

    .line 113
    goto :goto_6

    .line 114
    :cond_9
    move v2, v5

    .line 115
    :goto_6
    and-int/lit16 v4, v0, 0x380

    .line 116
    .line 117
    xor-int/lit16 v4, v4, 0x180

    .line 118
    .line 119
    if-le v4, v3, :cond_a

    .line 120
    .line 121
    invoke-virtual {p4, p2, p3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-nez v4, :cond_b

    .line 126
    .line 127
    :cond_a
    and-int/lit16 v0, v0, 0x180

    .line 128
    .line 129
    if-ne v0, v3, :cond_c

    .line 130
    .line 131
    :cond_b
    move v0, v6

    .line 132
    goto :goto_7

    .line 133
    :cond_c
    move v0, v5

    .line 134
    :goto_7
    or-int/2addr v0, v2

    .line 135
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-nez v0, :cond_d

    .line 140
    .line 141
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 142
    .line 143
    if-ne v2, v0, :cond_e

    .line 144
    .line 145
    :cond_d
    new-instance v2, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda0;

    .line 146
    .line 147
    invoke-direct {v2, p0, v6, p2, p3}, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda0;-><init>(FIJ)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p4, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_e
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 154
    .line 155
    invoke-static {v5, p4, v1, v2}, Landroidx/compose/foundation/ImageKt;->Canvas(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 156
    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_f
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 160
    .line 161
    .line 162
    :goto_8
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 163
    .line 164
    .line 165
    move-result-object p4

    .line 166
    if-eqz p4, :cond_10

    .line 167
    .line 168
    new-instance v0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;

    .line 169
    .line 170
    const/4 v6, 0x1

    .line 171
    move v2, p0

    .line 172
    move v5, p1

    .line 173
    move-wide v3, p2

    .line 174
    move-object v1, p5

    .line 175
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;FJII)V

    .line 176
    .line 177
    .line 178
    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 179
    .line 180
    :cond_10
    return-void
.end method

.method public static final IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    .line 1
    move/from16 v7, p7

    .line 2
    .line 3
    move-object/from16 v14, p6

    .line 4
    .line 5
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, 0x5438da46

    .line 8
    .line 9
    .line 10
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v0, v7, 0x6

    .line 14
    .line 15
    move-object/from16 v9, p0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int/2addr v0, v7

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v7

    .line 31
    :goto_1
    and-int/lit8 v1, p8, 0x2

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    or-int/lit8 v0, v0, 0x30

    .line 36
    .line 37
    :cond_2
    move-object/from16 v2, p1

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_3
    and-int/lit8 v2, v7, 0x30

    .line 41
    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    move-object/from16 v2, p1

    .line 45
    .line 46
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_4

    .line 51
    .line 52
    const/16 v3, 0x20

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    const/16 v3, 0x10

    .line 56
    .line 57
    :goto_2
    or-int/2addr v0, v3

    .line 58
    :goto_3
    and-int/lit8 v3, p8, 0x4

    .line 59
    .line 60
    if-eqz v3, :cond_6

    .line 61
    .line 62
    or-int/lit16 v0, v0, 0x180

    .line 63
    .line 64
    :cond_5
    move/from16 v4, p2

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_6
    and-int/lit16 v4, v7, 0x180

    .line 68
    .line 69
    if-nez v4, :cond_5

    .line 70
    .line 71
    move/from16 v4, p2

    .line 72
    .line 73
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_7

    .line 78
    .line 79
    const/16 v5, 0x100

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_7
    const/16 v5, 0x80

    .line 83
    .line 84
    :goto_4
    or-int/2addr v0, v5

    .line 85
    :goto_5
    and-int/lit16 v5, v7, 0xc00

    .line 86
    .line 87
    if-nez v5, :cond_a

    .line 88
    .line 89
    and-int/lit8 v5, p8, 0x8

    .line 90
    .line 91
    if-nez v5, :cond_8

    .line 92
    .line 93
    move-object/from16 v5, p3

    .line 94
    .line 95
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_9

    .line 100
    .line 101
    const/16 v6, 0x800

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_8
    move-object/from16 v5, p3

    .line 105
    .line 106
    :cond_9
    const/16 v6, 0x400

    .line 107
    .line 108
    :goto_6
    or-int/2addr v0, v6

    .line 109
    goto :goto_7

    .line 110
    :cond_a
    move-object/from16 v5, p3

    .line 111
    .line 112
    :goto_7
    or-int/lit16 v6, v0, 0x6000

    .line 113
    .line 114
    const/high16 v8, 0x30000

    .line 115
    .line 116
    and-int/2addr v8, v7

    .line 117
    if-nez v8, :cond_b

    .line 118
    .line 119
    const v6, 0x16000

    .line 120
    .line 121
    .line 122
    or-int/2addr v6, v0

    .line 123
    :cond_b
    const/high16 v0, 0x180000

    .line 124
    .line 125
    and-int/2addr v0, v7

    .line 126
    move-object/from16 v13, p5

    .line 127
    .line 128
    if-nez v0, :cond_d

    .line 129
    .line 130
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_c

    .line 135
    .line 136
    const/high16 v0, 0x100000

    .line 137
    .line 138
    goto :goto_8

    .line 139
    :cond_c
    const/high16 v0, 0x80000

    .line 140
    .line 141
    :goto_8
    or-int/2addr v6, v0

    .line 142
    :cond_d
    const v0, 0x92493

    .line 143
    .line 144
    .line 145
    and-int/2addr v0, v6

    .line 146
    const v8, 0x92492

    .line 147
    .line 148
    .line 149
    const/4 v10, 0x1

    .line 150
    if-eq v0, v8, :cond_e

    .line 151
    .line 152
    move v0, v10

    .line 153
    goto :goto_9

    .line 154
    :cond_e
    const/4 v0, 0x0

    .line 155
    :goto_9
    and-int/lit8 v8, v6, 0x1

    .line 156
    .line 157
    invoke-virtual {v14, v8, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_15

    .line 162
    .line 163
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 164
    .line 165
    .line 166
    and-int/lit8 v0, v7, 0x1

    .line 167
    .line 168
    const v8, -0x70001

    .line 169
    .line 170
    .line 171
    if-eqz v0, :cond_11

    .line 172
    .line 173
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_f

    .line 178
    .line 179
    goto :goto_a

    .line 180
    :cond_f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 181
    .line 182
    .line 183
    and-int/lit8 v0, p8, 0x8

    .line 184
    .line 185
    if-eqz v0, :cond_10

    .line 186
    .line 187
    and-int/lit16 v6, v6, -0x1c01

    .line 188
    .line 189
    :cond_10
    and-int v0, v6, v8

    .line 190
    .line 191
    move-object/from16 v11, p4

    .line 192
    .line 193
    move-object v8, v2

    .line 194
    move v10, v4

    .line 195
    move-object v12, v5

    .line 196
    goto :goto_e

    .line 197
    :cond_11
    :goto_a
    if-eqz v1, :cond_12

    .line 198
    .line 199
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 200
    .line 201
    goto :goto_b

    .line 202
    :cond_12
    move-object v0, v2

    .line 203
    :goto_b
    if-eqz v3, :cond_13

    .line 204
    .line 205
    goto :goto_c

    .line 206
    :cond_13
    move v10, v4

    .line 207
    :goto_c
    and-int/lit8 v1, p8, 0x8

    .line 208
    .line 209
    if-eqz v1, :cond_14

    .line 210
    .line 211
    invoke-static {v14}, Landroidx/compose/material3/CardKt;->iconButtonColors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/IconButtonColors;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    and-int/lit16 v6, v6, -0x1c01

    .line 216
    .line 217
    goto :goto_d

    .line 218
    :cond_14
    move-object v1, v5

    .line 219
    :goto_d
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ContainerShapeRound$1:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 220
    .line 221
    invoke-static {v2, v14}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    and-int v3, v6, v8

    .line 226
    .line 227
    move-object v8, v0

    .line 228
    move-object v12, v1

    .line 229
    move-object v11, v2

    .line 230
    move v0, v3

    .line 231
    :goto_e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 232
    .line 233
    .line 234
    shr-int/lit8 v1, v0, 0x3

    .line 235
    .line 236
    and-int/lit8 v1, v1, 0xe

    .line 237
    .line 238
    shl-int/lit8 v2, v0, 0x3

    .line 239
    .line 240
    and-int/lit8 v3, v2, 0x70

    .line 241
    .line 242
    or-int/2addr v1, v3

    .line 243
    and-int/lit16 v3, v0, 0x380

    .line 244
    .line 245
    or-int/2addr v1, v3

    .line 246
    const v3, 0xe000

    .line 247
    .line 248
    .line 249
    and-int/2addr v3, v2

    .line 250
    or-int/2addr v1, v3

    .line 251
    const/high16 v3, 0x70000

    .line 252
    .line 253
    and-int/2addr v2, v3

    .line 254
    or-int/2addr v1, v2

    .line 255
    const/high16 v2, 0x380000

    .line 256
    .line 257
    and-int/2addr v0, v2

    .line 258
    or-int v15, v1, v0

    .line 259
    .line 260
    invoke-static/range {v8 .. v15}, Landroidx/compose/material3/CardKt;->IconButtonImpl(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 261
    .line 262
    .line 263
    move-object v2, v8

    .line 264
    move v3, v10

    .line 265
    move-object v5, v11

    .line 266
    move-object v4, v12

    .line 267
    goto :goto_f

    .line 268
    :cond_15
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 269
    .line 270
    .line 271
    move v3, v4

    .line 272
    move-object v4, v5

    .line 273
    move-object/from16 v5, p4

    .line 274
    .line 275
    :goto_f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    if-eqz v9, :cond_16

    .line 280
    .line 281
    new-instance v0, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;

    .line 282
    .line 283
    move-object/from16 v1, p0

    .line 284
    .line 285
    move-object/from16 v6, p5

    .line 286
    .line 287
    move/from16 v8, p8

    .line 288
    .line 289
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 290
    .line 291
    .line 292
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 293
    .line 294
    :cond_16
    return-void
.end method

.method public static final IconButtonImpl(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    move-object/from16 v9, p4

    .line 8
    .line 9
    move-object/from16 v10, p5

    .line 10
    .line 11
    move/from16 v11, p7

    .line 12
    .line 13
    move-object/from16 v12, p6

    .line 14
    .line 15
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v2, -0x439bfd92

    .line 18
    .line 19
    .line 20
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v2, v11, 0x6

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x2

    .line 36
    :goto_0
    or-int/2addr v2, v11

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v2, v11

    .line 39
    :goto_1
    and-int/lit8 v4, v11, 0x30

    .line 40
    .line 41
    move-object/from16 v7, p1

    .line 42
    .line 43
    if-nez v4, :cond_3

    .line 44
    .line 45
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    const/16 v4, 0x20

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v4, 0x10

    .line 55
    .line 56
    :goto_2
    or-int/2addr v2, v4

    .line 57
    :cond_3
    and-int/lit16 v4, v11, 0x180

    .line 58
    .line 59
    if-nez v4, :cond_5

    .line 60
    .line 61
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    const/16 v4, 0x100

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/16 v4, 0x80

    .line 71
    .line 72
    :goto_3
    or-int/2addr v2, v4

    .line 73
    :cond_5
    and-int/lit16 v4, v11, 0xc00

    .line 74
    .line 75
    if-nez v4, :cond_7

    .line 76
    .line 77
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_6

    .line 82
    .line 83
    const/16 v4, 0x800

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    const/16 v4, 0x400

    .line 87
    .line 88
    :goto_4
    or-int/2addr v2, v4

    .line 89
    :cond_7
    and-int/lit16 v4, v11, 0x6000

    .line 90
    .line 91
    if-nez v4, :cond_9

    .line 92
    .line 93
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_8

    .line 98
    .line 99
    const/16 v4, 0x4000

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_8
    const/16 v4, 0x2000

    .line 103
    .line 104
    :goto_5
    or-int/2addr v2, v4

    .line 105
    :cond_9
    const/high16 v4, 0x30000

    .line 106
    .line 107
    and-int/2addr v4, v11

    .line 108
    if-nez v4, :cond_b

    .line 109
    .line 110
    const/4 v4, 0x0

    .line 111
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_a

    .line 116
    .line 117
    const/high16 v4, 0x20000

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_a
    const/high16 v4, 0x10000

    .line 121
    .line 122
    :goto_6
    or-int/2addr v2, v4

    .line 123
    :cond_b
    const/high16 v4, 0x180000

    .line 124
    .line 125
    and-int/2addr v4, v11

    .line 126
    if-nez v4, :cond_d

    .line 127
    .line 128
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_c

    .line 133
    .line 134
    const/high16 v4, 0x100000

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_c
    const/high16 v4, 0x80000

    .line 138
    .line 139
    :goto_7
    or-int/2addr v2, v4

    .line 140
    :cond_d
    move v13, v2

    .line 141
    const v2, 0x92493

    .line 142
    .line 143
    .line 144
    and-int/2addr v2, v13

    .line 145
    const v4, 0x92492

    .line 146
    .line 147
    .line 148
    const/4 v14, 0x1

    .line 149
    const/4 v15, 0x0

    .line 150
    if-eq v2, v4, :cond_e

    .line 151
    .line 152
    move v2, v14

    .line 153
    goto :goto_8

    .line 154
    :cond_e
    move v2, v15

    .line 155
    :goto_8
    and-int/lit8 v4, v13, 0x1

    .line 156
    .line 157
    invoke-virtual {v12, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_15

    .line 162
    .line 163
    const v2, 0x3a3c87ed

    .line 164
    .line 165
    .line 166
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 174
    .line 175
    if-ne v2, v4, :cond_f

    .line 176
    .line 177
    new-instance v2, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 178
    .line 179
    invoke-direct {v2}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_f
    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 186
    .line 187
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 188
    .line 189
    .line 190
    sget-object v4, Landroidx/compose/material3/InteractiveComponentSizeKt;->MinimumInteractiveTopAlignmentLine:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 191
    .line 192
    sget-object v4, Landroidx/compose/material3/MinimumInteractiveModifier;->INSTANCE:Landroidx/compose/material3/MinimumInteractiveModifier;

    .line 193
    .line 194
    invoke-interface {v1, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    sget v5, Landroidx/compose/material3/tokens/ListTokens;->DefaultLeadingSpace:F

    .line 199
    .line 200
    add-float/2addr v5, v5

    .line 201
    sget v6, Landroidx/compose/material3/tokens/ListTokens;->IconSize$2:F

    .line 202
    .line 203
    add-float/2addr v6, v5

    .line 204
    const/high16 v5, 0x42200000    # 40.0f

    .line 205
    .line 206
    invoke-static {v6, v5}, Landroidx/work/OperationKt;->DpSize-YgX7TsA(FF)J

    .line 207
    .line 208
    .line 209
    move-result-wide v5

    .line 210
    sget-object v8, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 211
    .line 212
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    invoke-static {v4, v8, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-static {v4, v0}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    if-eqz v3, :cond_10

    .line 229
    .line 230
    iget-wide v5, v9, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    .line 231
    .line 232
    goto :goto_9

    .line 233
    :cond_10
    iget-wide v5, v9, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    .line 234
    .line 235
    :goto_9
    invoke-static {v4, v5, v6, v0}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    const/4 v5, 0x0

    .line 240
    const/4 v6, 0x7

    .line 241
    invoke-static {v15, v5, v6}, Landroidx/compose/material3/RippleKt;->ripple-H2RKhps$default(ZFI)Landroidx/compose/material3/RippleNodeFactory;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    new-instance v6, Landroidx/compose/ui/semantics/Role;

    .line 246
    .line 247
    invoke-direct {v6, v15}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    .line 248
    .line 249
    .line 250
    const/16 v8, 0x8

    .line 251
    .line 252
    move/from16 v16, v3

    .line 253
    .line 254
    move-object v3, v2

    .line 255
    move-object v2, v4

    .line 256
    move-object v4, v5

    .line 257
    move/from16 v5, v16

    .line 258
    .line 259
    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/ImageKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/material3/RippleNodeFactory;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-static {v2}, Landroidx/compose/material3/internal/Icons$Filled;->childSemantics$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 268
    .line 269
    invoke-static {v3, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    invoke-static {v12, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 286
    .line 287
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 291
    .line 292
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 293
    .line 294
    .line 295
    iget-boolean v7, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 296
    .line 297
    if-eqz v7, :cond_11

    .line 298
    .line 299
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 300
    .line 301
    .line 302
    goto :goto_a

    .line 303
    :cond_11
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 304
    .line 305
    .line 306
    :goto_a
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 307
    .line 308
    invoke-static {v12, v3, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 309
    .line 310
    .line 311
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 312
    .line 313
    invoke-static {v12, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 314
    .line 315
    .line 316
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 317
    .line 318
    iget-boolean v5, v12, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 319
    .line 320
    if-nez v5, :cond_12

    .line 321
    .line 322
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    if-nez v5, :cond_13

    .line 335
    .line 336
    :cond_12
    invoke-static {v4, v12, v4, v3}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 337
    .line 338
    .line 339
    :cond_13
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 340
    .line 341
    invoke-static {v12, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 342
    .line 343
    .line 344
    if-eqz p2, :cond_14

    .line 345
    .line 346
    iget-wide v2, v9, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    .line 347
    .line 348
    goto :goto_b

    .line 349
    :cond_14
    iget-wide v2, v9, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    .line 350
    .line 351
    :goto_b
    sget-object v4, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 352
    .line 353
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 354
    .line 355
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    shr-int/lit8 v3, v13, 0xf

    .line 363
    .line 364
    and-int/lit8 v3, v3, 0x70

    .line 365
    .line 366
    const/16 v4, 0x8

    .line 367
    .line 368
    or-int/2addr v3, v4

    .line 369
    invoke-static {v2, v10, v12, v3}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 373
    .line 374
    .line 375
    goto :goto_c

    .line 376
    :cond_15
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 377
    .line 378
    .line 379
    :goto_c
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 380
    .line 381
    .line 382
    move-result-object v8

    .line 383
    if-eqz v8, :cond_16

    .line 384
    .line 385
    new-instance v0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda2;

    .line 386
    .line 387
    move-object/from16 v2, p1

    .line 388
    .line 389
    move/from16 v3, p2

    .line 390
    .line 391
    move-object/from16 v4, p3

    .line 392
    .line 393
    move-object v5, v9

    .line 394
    move-object v6, v10

    .line 395
    move v7, v11

    .line 396
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 397
    .line 398
    .line 399
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 400
    .line 401
    :cond_16
    return-void
.end method

.method public static final ModalBottomSheetDialog-sW7UJKQ(Lkotlin/jvm/functions/Function0;JLandroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 1
    move-object/from16 v9, p4

    .line 2
    .line 3
    move-object/from16 v11, p5

    .line 4
    .line 5
    move/from16 v12, p7

    .line 6
    .line 7
    move-object/from16 v13, p6

    .line 8
    .line 9
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, 0x2db43478

    .line 12
    .line 13
    .line 14
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, v12, 0x6

    .line 18
    .line 19
    move-object/from16 v1, p0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    or-int/2addr v0, v12

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v0, v12

    .line 35
    :goto_1
    and-int/lit8 v2, v12, 0x30

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    move-wide/from16 v2, p1

    .line 40
    .line 41
    invoke-virtual {v13, v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    const/16 v4, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v4, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v4

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move-wide/from16 v2, p1

    .line 55
    .line 56
    :goto_3
    and-int/lit16 v4, v12, 0x180

    .line 57
    .line 58
    if-nez v4, :cond_5

    .line 59
    .line 60
    move-object/from16 v4, p3

    .line 61
    .line 62
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_4

    .line 67
    .line 68
    const/16 v6, 0x100

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_4
    const/16 v6, 0x80

    .line 72
    .line 73
    :goto_4
    or-int/2addr v0, v6

    .line 74
    goto :goto_5

    .line 75
    :cond_5
    move-object/from16 v4, p3

    .line 76
    .line 77
    :goto_5
    and-int/lit16 v6, v12, 0xc00

    .line 78
    .line 79
    if-nez v6, :cond_8

    .line 80
    .line 81
    and-int/lit16 v6, v12, 0x1000

    .line 82
    .line 83
    if-nez v6, :cond_6

    .line 84
    .line 85
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    goto :goto_6

    .line 90
    :cond_6
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    :goto_6
    if-eqz v6, :cond_7

    .line 95
    .line 96
    const/16 v6, 0x800

    .line 97
    .line 98
    goto :goto_7

    .line 99
    :cond_7
    const/16 v6, 0x400

    .line 100
    .line 101
    :goto_7
    or-int/2addr v0, v6

    .line 102
    :cond_8
    and-int/lit16 v6, v12, 0x6000

    .line 103
    .line 104
    if-nez v6, :cond_a

    .line 105
    .line 106
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_9

    .line 111
    .line 112
    const/16 v6, 0x4000

    .line 113
    .line 114
    goto :goto_8

    .line 115
    :cond_9
    const/16 v6, 0x2000

    .line 116
    .line 117
    :goto_8
    or-int/2addr v0, v6

    .line 118
    :cond_a
    and-int/lit16 v6, v0, 0x2493

    .line 119
    .line 120
    const/16 v7, 0x2492

    .line 121
    .line 122
    const/4 v10, 0x0

    .line 123
    if-eq v6, v7, :cond_b

    .line 124
    .line 125
    const/4 v6, 0x1

    .line 126
    goto :goto_9

    .line 127
    :cond_b
    move v6, v10

    .line 128
    :goto_9
    and-int/lit8 v7, v0, 0x1

    .line 129
    .line 130
    invoke-virtual {v13, v7, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_17

    .line 135
    .line 136
    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 137
    .line 138
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    check-cast v6, Landroid/view/View;

    .line 143
    .line 144
    sget-object v7, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 145
    .line 146
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 151
    .line 152
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 153
    .line 154
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 159
    .line 160
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->rememberCompositionContext(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    .line 161
    .line 162
    .line 163
    move-result-object v15

    .line 164
    invoke-static {v11, v13}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 165
    .line 166
    .line 167
    move-result-object v14

    .line 168
    new-array v8, v10, [Ljava/lang/Object;

    .line 169
    .line 170
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 175
    .line 176
    if-ne v10, v11, :cond_c

    .line 177
    .line 178
    new-instance v10, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda4;

    .line 179
    .line 180
    move/from16 v17, v0

    .line 181
    .line 182
    const/4 v0, 0x5

    .line 183
    invoke-direct {v10, v0}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda4;-><init>(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    goto :goto_a

    .line 190
    :cond_c
    move/from16 v17, v0

    .line 191
    .line 192
    :goto_a
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 193
    .line 194
    const/16 v0, 0x30

    .line 195
    .line 196
    invoke-static {v8, v10, v13, v0}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    move-object v8, v0

    .line 201
    check-cast v8, Ljava/util/UUID;

    .line 202
    .line 203
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-ne v0, v11, :cond_d

    .line 208
    .line 209
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_d
    move-object v10, v0

    .line 217
    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    .line 218
    .line 219
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v18

    .line 227
    or-int v0, v0, v18

    .line 228
    .line 229
    move/from16 v18, v0

    .line 230
    .line 231
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    const/4 v12, 0x3

    .line 236
    if-nez v18, :cond_f

    .line 237
    .line 238
    if-ne v0, v11, :cond_e

    .line 239
    .line 240
    goto :goto_b

    .line 241
    :cond_e
    move-object v6, v5

    .line 242
    move/from16 v19, v17

    .line 243
    .line 244
    const/4 v4, 0x1

    .line 245
    const/16 v16, 0x0

    .line 246
    .line 247
    goto :goto_c

    .line 248
    :cond_f
    :goto_b
    new-instance v0, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;

    .line 249
    .line 250
    move-wide/from16 v20, v2

    .line 251
    .line 252
    move-object v2, v4

    .line 253
    move-wide/from16 v3, v20

    .line 254
    .line 255
    move-object/from16 v16, v6

    .line 256
    .line 257
    move-object v6, v5

    .line 258
    move-object/from16 v5, v16

    .line 259
    .line 260
    move/from16 v19, v17

    .line 261
    .line 262
    const/16 v16, 0x0

    .line 263
    .line 264
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ModalBottomSheetProperties;JLandroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;)V

    .line 265
    .line 266
    .line 267
    new-instance v1, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 268
    .line 269
    invoke-direct {v1, v12, v14}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 273
    .line 274
    const v3, -0x3eaaaf9b

    .line 275
    .line 276
    .line 277
    const/4 v4, 0x1

    .line 278
    invoke-direct {v2, v3, v1, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 279
    .line 280
    .line 281
    iget-object v1, v0, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;->dialogLayout:Landroidx/compose/material3/ModalBottomSheetDialogLayout;

    .line 282
    .line 283
    invoke-virtual {v1, v15}, Landroidx/compose/ui/platform/AbstractComposeView;->setParentCompositionContext(Landroidx/compose/runtime/CompositionContext;)V

    .line 284
    .line 285
    .line 286
    iget-object v3, v1, Landroidx/compose/material3/ModalBottomSheetDialogLayout;->content$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 287
    .line 288
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    iput-boolean v4, v1, Landroidx/compose/material3/ModalBottomSheetDialogLayout;->shouldCreateCompositionOnAttachedToWindow:Z

    .line 292
    .line 293
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AbstractComposeView;->createComposition()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    :goto_c
    move-object v2, v0

    .line 300
    check-cast v2, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;

    .line 301
    .line 302
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    if-nez v0, :cond_10

    .line 311
    .line 312
    if-ne v1, v11, :cond_11

    .line 313
    .line 314
    :cond_10
    new-instance v1, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 315
    .line 316
    invoke-direct {v1, v12, v2}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    :cond_11
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 323
    .line 324
    invoke-static {v2, v1, v13}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    move/from16 v1, v19

    .line 332
    .line 333
    and-int/lit8 v3, v1, 0xe

    .line 334
    .line 335
    const/4 v5, 0x4

    .line 336
    if-ne v3, v5, :cond_12

    .line 337
    .line 338
    move v8, v4

    .line 339
    goto :goto_d

    .line 340
    :cond_12
    move/from16 v8, v16

    .line 341
    .line 342
    :goto_d
    or-int/2addr v0, v8

    .line 343
    and-int/lit16 v3, v1, 0x380

    .line 344
    .line 345
    const/16 v5, 0x100

    .line 346
    .line 347
    if-ne v3, v5, :cond_13

    .line 348
    .line 349
    move v8, v4

    .line 350
    goto :goto_e

    .line 351
    :cond_13
    move/from16 v8, v16

    .line 352
    .line 353
    :goto_e
    or-int/2addr v0, v8

    .line 354
    and-int/lit8 v1, v1, 0x70

    .line 355
    .line 356
    const/16 v3, 0x20

    .line 357
    .line 358
    if-ne v1, v3, :cond_14

    .line 359
    .line 360
    move v8, v4

    .line 361
    goto :goto_f

    .line 362
    :cond_14
    move/from16 v8, v16

    .line 363
    .line 364
    :goto_f
    or-int/2addr v0, v8

    .line 365
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    or-int/2addr v0, v1

    .line 374
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    if-nez v0, :cond_15

    .line 379
    .line 380
    if-ne v1, v11, :cond_16

    .line 381
    .line 382
    :cond_15
    new-instance v1, Landroidx/compose/material3/ModalBottomSheet_androidKt$$ExternalSyntheticLambda2;

    .line 383
    .line 384
    move-object/from16 v3, p0

    .line 385
    .line 386
    move-object/from16 v4, p3

    .line 387
    .line 388
    move-object v7, v6

    .line 389
    move-wide/from16 v5, p1

    .line 390
    .line 391
    invoke-direct/range {v1 .. v7}, Landroidx/compose/material3/ModalBottomSheet_androidKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/material3/ModalBottomSheetDialogWrapper;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/ModalBottomSheetProperties;JLandroidx/compose/ui/unit/LayoutDirection;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    :cond_16
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 398
    .line 399
    invoke-static {v1, v13}, Landroidx/compose/runtime/Updater;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    .line 400
    .line 401
    .line 402
    goto :goto_10

    .line 403
    :cond_17
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 404
    .line 405
    .line 406
    :goto_10
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 407
    .line 408
    .line 409
    move-result-object v8

    .line 410
    if-eqz v8, :cond_18

    .line 411
    .line 412
    new-instance v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$$ExternalSyntheticLambda3;

    .line 413
    .line 414
    move-object/from16 v1, p0

    .line 415
    .line 416
    move-wide/from16 v2, p1

    .line 417
    .line 418
    move-object/from16 v4, p3

    .line 419
    .line 420
    move-object/from16 v5, p4

    .line 421
    .line 422
    move-object/from16 v6, p5

    .line 423
    .line 424
    move/from16 v7, p7

    .line 425
    .line 426
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/ModalBottomSheet_androidKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;JLandroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 427
    .line 428
    .line 429
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 430
    .line 431
    :cond_18
    return-void
.end method

.method public static final OnPlatformWindowBoundsChange(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x62247185

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    or-int/2addr v0, p2

    .line 20
    and-int/lit8 v2, v0, 0x3

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-eq v2, v1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v1, v3

    .line 28
    :goto_1
    and-int/lit8 v2, v0, 0x1

    .line 29
    .line 30
    invoke-virtual {p1, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/view/View;

    .line 43
    .line 44
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 51
    .line 52
    shl-int/lit8 v0, v0, 0x6

    .line 53
    .line 54
    and-int/lit16 v0, v0, 0x380

    .line 55
    .line 56
    invoke-static {v1, v2, p0, p1, v0}, Landroidx/compose/material3/CardKt;->SoftKeyboardListener(Landroid/view/View;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 61
    .line 62
    .line 63
    :goto_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    invoke-direct {v0, p2, v3, p0}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;-><init>(IILkotlin/jvm/functions/Function0;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 75
    .line 76
    :cond_3
    return-void
.end method

.method public static final OneRowSnackbar-kKq0p4A(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/Composer;I)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-wide/from16 v5, p4

    .line 10
    .line 11
    move-wide/from16 v7, p6

    .line 12
    .line 13
    move-object/from16 v0, p8

    .line 14
    .line 15
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v9, -0x3782e5cc

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    if-eqz v9, :cond_0

    .line 28
    .line 29
    const/4 v9, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v9, 0x2

    .line 32
    :goto_0
    or-int v9, p9, v9

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v11

    .line 38
    if-eqz v11, :cond_1

    .line 39
    .line 40
    const/16 v11, 0x20

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v11, 0x10

    .line 44
    .line 45
    :goto_1
    or-int/2addr v9, v11

    .line 46
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    if-eqz v11, :cond_2

    .line 51
    .line 52
    const/16 v11, 0x100

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v11, 0x80

    .line 56
    .line 57
    :goto_2
    or-int/2addr v9, v11

    .line 58
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    if-eqz v11, :cond_3

    .line 63
    .line 64
    const/16 v11, 0x800

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    const/16 v11, 0x400

    .line 68
    .line 69
    :goto_3
    or-int/2addr v9, v11

    .line 70
    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    if-eqz v11, :cond_4

    .line 75
    .line 76
    const/16 v11, 0x4000

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_4
    const/16 v11, 0x2000

    .line 80
    .line 81
    :goto_4
    or-int/2addr v9, v11

    .line 82
    invoke-virtual {v0, v7, v8}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    if-eqz v11, :cond_5

    .line 87
    .line 88
    const/high16 v11, 0x20000

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_5
    const/high16 v11, 0x10000

    .line 92
    .line 93
    :goto_5
    or-int/2addr v9, v11

    .line 94
    const v11, 0x12493

    .line 95
    .line 96
    .line 97
    and-int/2addr v11, v9

    .line 98
    const v12, 0x12492

    .line 99
    .line 100
    .line 101
    const/4 v14, 0x0

    .line 102
    if-eq v11, v12, :cond_6

    .line 103
    .line 104
    const/4 v11, 0x1

    .line 105
    goto :goto_6

    .line 106
    :cond_6
    move v11, v14

    .line 107
    :goto_6
    and-int/lit8 v12, v9, 0x1

    .line 108
    .line 109
    invoke-virtual {v0, v12, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-eqz v11, :cond_17

    .line 114
    .line 115
    if-nez v3, :cond_7

    .line 116
    .line 117
    const/high16 v12, 0x41000000    # 8.0f

    .line 118
    .line 119
    move/from16 v18, v12

    .line 120
    .line 121
    goto :goto_7

    .line 122
    :cond_7
    const/16 v18, 0x0

    .line 123
    .line 124
    :goto_7
    const/16 v19, 0x0

    .line 125
    .line 126
    const/16 v20, 0xa

    .line 127
    .line 128
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 129
    .line 130
    const/high16 v16, 0x41800000    # 16.0f

    .line 131
    .line 132
    const/16 v17, 0x0

    .line 133
    .line 134
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 143
    .line 144
    if-ne v10, v11, :cond_8

    .line 145
    .line 146
    new-instance v10, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;

    .line 147
    .line 148
    invoke-direct {v10, v14}, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;-><init>(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_8
    check-cast v10, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 155
    .line 156
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 157
    .line 158
    .line 159
    move-result v11

    .line 160
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 161
    .line 162
    .line 163
    move-result-object v14

    .line 164
    invoke-static {v0, v12}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 169
    .line 170
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 174
    .line 175
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 176
    .line 177
    .line 178
    move/from16 v19, v9

    .line 179
    .line 180
    iget-boolean v9, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 181
    .line 182
    if-eqz v9, :cond_9

    .line 183
    .line 184
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 185
    .line 186
    .line 187
    goto :goto_8

    .line 188
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 189
    .line 190
    .line 191
    :goto_8
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 192
    .line 193
    invoke-static {v0, v10, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 194
    .line 195
    .line 196
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 197
    .line 198
    invoke-static {v0, v14, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 199
    .line 200
    .line 201
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 202
    .line 203
    iget-boolean v3, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 204
    .line 205
    if-nez v3, :cond_a

    .line 206
    .line 207
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-nez v3, :cond_b

    .line 220
    .line 221
    :cond_a
    invoke-static {v11, v0, v11, v14}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 222
    .line 223
    .line 224
    :cond_b
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 225
    .line 226
    invoke-static {v0, v12, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 227
    .line 228
    .line 229
    const-string v7, "text"

    .line 230
    .line 231
    invoke-static {v15, v7}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    const/high16 v8, 0x40c00000    # 6.0f

    .line 236
    .line 237
    const/4 v11, 0x0

    .line 238
    const/4 v12, 0x1

    .line 239
    invoke-static {v7, v11, v8, v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 244
    .line 245
    const/4 v11, 0x0

    .line 246
    invoke-static {v8, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 247
    .line 248
    .line 249
    move-result-object v12

    .line 250
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 251
    .line 252
    .line 253
    move-result v11

    .line 254
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-static {v0, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 263
    .line 264
    .line 265
    iget-boolean v4, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 266
    .line 267
    if-eqz v4, :cond_c

    .line 268
    .line 269
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 270
    .line 271
    .line 272
    goto :goto_9

    .line 273
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 274
    .line 275
    .line 276
    :goto_9
    invoke-static {v0, v12, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 277
    .line 278
    .line 279
    invoke-static {v0, v2, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 280
    .line 281
    .line 282
    iget-boolean v2, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 283
    .line 284
    if-nez v2, :cond_d

    .line 285
    .line 286
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-nez v2, :cond_e

    .line 299
    .line 300
    :cond_d
    invoke-static {v11, v0, v11, v14}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 301
    .line 302
    .line 303
    :cond_e
    invoke-static {v0, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 304
    .line 305
    .line 306
    and-int/lit8 v2, v19, 0xe

    .line 307
    .line 308
    const/4 v12, 0x1

    .line 309
    invoke-static {v2, v1, v0, v12}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;Z)V

    .line 310
    .line 311
    .line 312
    if-eqz p1, :cond_12

    .line 313
    .line 314
    const v4, -0x3c72f9f1

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 318
    .line 319
    .line 320
    const-string v4, "action"

    .line 321
    .line 322
    invoke-static {v15, v4}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    const/4 v11, 0x0

    .line 327
    invoke-static {v8, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 332
    .line 333
    .line 334
    move-result v11

    .line 335
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 336
    .line 337
    .line 338
    move-result-object v12

    .line 339
    invoke-static {v0, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 344
    .line 345
    .line 346
    const/16 v16, 0x8

    .line 347
    .line 348
    iget-boolean v2, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 349
    .line 350
    if-eqz v2, :cond_f

    .line 351
    .line 352
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 353
    .line 354
    .line 355
    goto :goto_a

    .line 356
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 357
    .line 358
    .line 359
    :goto_a
    invoke-static {v0, v7, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 360
    .line 361
    .line 362
    invoke-static {v0, v12, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 363
    .line 364
    .line 365
    iget-boolean v2, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 366
    .line 367
    if-nez v2, :cond_10

    .line 368
    .line 369
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-nez v2, :cond_11

    .line 382
    .line 383
    :cond_10
    invoke-static {v11, v0, v11, v14}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 384
    .line 385
    .line 386
    :cond_11
    invoke-static {v0, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 387
    .line 388
    .line 389
    sget-object v2, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 390
    .line 391
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    .line 392
    .line 393
    invoke-direct {v4, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    sget-object v4, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 401
    .line 402
    move-object/from16 v7, p3

    .line 403
    .line 404
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    const/4 v11, 0x2

    .line 409
    new-array v11, v11, [Landroidx/compose/runtime/ProvidedValue;

    .line 410
    .line 411
    const/4 v12, 0x0

    .line 412
    aput-object v2, v11, v12

    .line 413
    .line 414
    const/4 v2, 0x1

    .line 415
    aput-object v4, v11, v2

    .line 416
    .line 417
    and-int/lit8 v4, v19, 0x70

    .line 418
    .line 419
    or-int v4, v16, v4

    .line 420
    .line 421
    move-object/from16 v12, p1

    .line 422
    .line 423
    invoke-static {v11, v12, v0, v4}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 427
    .line 428
    .line 429
    const/4 v11, 0x0

    .line 430
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 431
    .line 432
    .line 433
    goto :goto_b

    .line 434
    :cond_12
    move-object/from16 v12, p1

    .line 435
    .line 436
    move-object/from16 v7, p3

    .line 437
    .line 438
    const/4 v11, 0x0

    .line 439
    const/16 v16, 0x8

    .line 440
    .line 441
    const v2, -0x3c6e2aa9

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 448
    .line 449
    .line 450
    :goto_b
    if-eqz p2, :cond_16

    .line 451
    .line 452
    const v2, -0x3c6d6dc1

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 456
    .line 457
    .line 458
    const-string v2, "dismissAction"

    .line 459
    .line 460
    invoke-static {v15, v2}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-static {v8, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 469
    .line 470
    .line 471
    move-result v8

    .line 472
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 473
    .line 474
    .line 475
    move-result-object v11

    .line 476
    invoke-static {v0, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 481
    .line 482
    .line 483
    iget-boolean v15, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 484
    .line 485
    if-eqz v15, :cond_13

    .line 486
    .line 487
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 488
    .line 489
    .line 490
    goto :goto_c

    .line 491
    :cond_13
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 492
    .line 493
    .line 494
    :goto_c
    invoke-static {v0, v4, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 495
    .line 496
    .line 497
    invoke-static {v0, v11, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 498
    .line 499
    .line 500
    iget-boolean v4, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 501
    .line 502
    if-nez v4, :cond_14

    .line 503
    .line 504
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 509
    .line 510
    .line 511
    move-result-object v9

    .line 512
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v4

    .line 516
    if-nez v4, :cond_15

    .line 517
    .line 518
    :cond_14
    invoke-static {v8, v0, v8, v14}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 519
    .line 520
    .line 521
    :cond_15
    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 522
    .line 523
    .line 524
    sget-object v2, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 525
    .line 526
    new-instance v3, Landroidx/compose/ui/graphics/Color;

    .line 527
    .line 528
    move-wide/from16 v8, p6

    .line 529
    .line 530
    invoke-direct {v3, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    shr-int/lit8 v3, v19, 0x3

    .line 538
    .line 539
    and-int/lit8 v3, v3, 0x70

    .line 540
    .line 541
    or-int v3, v16, v3

    .line 542
    .line 543
    move-object/from16 v4, p2

    .line 544
    .line 545
    invoke-static {v2, v4, v0, v3}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 546
    .line 547
    .line 548
    const/4 v2, 0x1

    .line 549
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 550
    .line 551
    .line 552
    const/4 v11, 0x0

    .line 553
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 554
    .line 555
    .line 556
    goto :goto_d

    .line 557
    :cond_16
    move-object/from16 v4, p2

    .line 558
    .line 559
    move-wide/from16 v8, p6

    .line 560
    .line 561
    const/4 v2, 0x1

    .line 562
    const v3, -0x3c6952a9

    .line 563
    .line 564
    .line 565
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 569
    .line 570
    .line 571
    :goto_d
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 572
    .line 573
    .line 574
    goto :goto_e

    .line 575
    :cond_17
    move-object v12, v2

    .line 576
    move-wide v8, v7

    .line 577
    move-object v7, v4

    .line 578
    move-object v4, v3

    .line 579
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 580
    .line 581
    .line 582
    :goto_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 583
    .line 584
    .line 585
    move-result-object v10

    .line 586
    if-eqz v10, :cond_18

    .line 587
    .line 588
    new-instance v0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda2;

    .line 589
    .line 590
    move-object v3, v4

    .line 591
    move-object v4, v7

    .line 592
    move-wide v7, v8

    .line 593
    move-object v2, v12

    .line 594
    move/from16 v9, p9

    .line 595
    .line 596
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJI)V

    .line 597
    .line 598
    .line 599
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 600
    .line 601
    :cond_18
    return-void
.end method

.method public static final OutlinedButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 22

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
    const v1, 0x17d7208e

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
    move-object/from16 v11, p1

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    const/16 v2, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v2, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v1, v2

    .line 49
    :cond_3
    and-int/lit16 v2, v9, 0x180

    .line 50
    .line 51
    move/from16 v12, p2

    .line 52
    .line 53
    if-nez v2, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    const/16 v2, 0x100

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v2, 0x80

    .line 65
    .line 66
    :goto_3
    or-int/2addr v1, v2

    .line 67
    :cond_5
    and-int/lit16 v2, v9, 0xc00

    .line 68
    .line 69
    move-object/from16 v13, p3

    .line 70
    .line 71
    if-nez v2, :cond_7

    .line 72
    .line 73
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_6

    .line 78
    .line 79
    const/16 v2, 0x800

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    const/16 v2, 0x400

    .line 83
    .line 84
    :goto_4
    or-int/2addr v1, v2

    .line 85
    :cond_7
    and-int/lit16 v2, v9, 0x6000

    .line 86
    .line 87
    move-object/from16 v14, p4

    .line 88
    .line 89
    if-nez v2, :cond_9

    .line 90
    .line 91
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_8

    .line 96
    .line 97
    const/16 v2, 0x4000

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_8
    const/16 v2, 0x2000

    .line 101
    .line 102
    :goto_5
    or-int/2addr v1, v2

    .line 103
    :cond_9
    const/high16 v2, 0x30000

    .line 104
    .line 105
    or-int/2addr v1, v2

    .line 106
    const/high16 v2, 0x180000

    .line 107
    .line 108
    and-int/2addr v2, v9

    .line 109
    move-object/from16 v6, p5

    .line 110
    .line 111
    if-nez v2, :cond_b

    .line 112
    .line 113
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_a

    .line 118
    .line 119
    const/high16 v2, 0x100000

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_a
    const/high16 v2, 0x80000

    .line 123
    .line 124
    :goto_6
    or-int/2addr v1, v2

    .line 125
    :cond_b
    const/high16 v2, 0xc00000

    .line 126
    .line 127
    and-int/2addr v2, v9

    .line 128
    move-object/from16 v7, p6

    .line 129
    .line 130
    if-nez v2, :cond_d

    .line 131
    .line 132
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_c

    .line 137
    .line 138
    const/high16 v2, 0x800000

    .line 139
    .line 140
    goto :goto_7

    .line 141
    :cond_c
    const/high16 v2, 0x400000

    .line 142
    .line 143
    :goto_7
    or-int/2addr v1, v2

    .line 144
    :cond_d
    const/high16 v2, 0x6000000

    .line 145
    .line 146
    or-int/2addr v1, v2

    .line 147
    const/high16 v2, 0x30000000

    .line 148
    .line 149
    and-int/2addr v2, v9

    .line 150
    move-object/from16 v8, p7

    .line 151
    .line 152
    if-nez v2, :cond_f

    .line 153
    .line 154
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_e

    .line 159
    .line 160
    const/high16 v2, 0x20000000

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_e
    const/high16 v2, 0x10000000

    .line 164
    .line 165
    :goto_8
    or-int/2addr v1, v2

    .line 166
    :cond_f
    const v2, 0x12492493

    .line 167
    .line 168
    .line 169
    and-int/2addr v2, v1

    .line 170
    const v3, 0x12492492

    .line 171
    .line 172
    .line 173
    if-eq v2, v3, :cond_10

    .line 174
    .line 175
    const/4 v2, 0x1

    .line 176
    goto :goto_9

    .line 177
    :cond_10
    const/4 v2, 0x0

    .line 178
    :goto_9
    and-int/lit8 v3, v1, 0x1

    .line 179
    .line 180
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_13

    .line 185
    .line 186
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 187
    .line 188
    .line 189
    and-int/lit8 v2, v9, 0x1

    .line 190
    .line 191
    if-eqz v2, :cond_12

    .line 192
    .line 193
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_11

    .line 198
    .line 199
    goto :goto_a

    .line 200
    :cond_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 201
    .line 202
    .line 203
    :cond_12
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 204
    .line 205
    .line 206
    const v2, 0x7ffffffe

    .line 207
    .line 208
    .line 209
    and-int v20, v1, v2

    .line 210
    .line 211
    const/16 v21, 0x0

    .line 212
    .line 213
    const/4 v15, 0x0

    .line 214
    move-object/from16 v19, v0

    .line 215
    .line 216
    move-object/from16 v16, v6

    .line 217
    .line 218
    move-object/from16 v17, v7

    .line 219
    .line 220
    move-object/from16 v18, v8

    .line 221
    .line 222
    invoke-static/range {v10 .. v21}, Landroidx/compose/material3/CardKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 223
    .line 224
    .line 225
    goto :goto_b

    .line 226
    :cond_13
    move-object/from16 v19, v0

    .line 227
    .line 228
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 229
    .line 230
    .line 231
    :goto_b
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    if-eqz v10, :cond_14

    .line 236
    .line 237
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda2;

    .line 238
    .line 239
    move-object/from16 v1, p0

    .line 240
    .line 241
    move-object/from16 v2, p1

    .line 242
    .line 243
    move/from16 v3, p2

    .line 244
    .line 245
    move-object/from16 v4, p3

    .line 246
    .line 247
    move-object/from16 v5, p4

    .line 248
    .line 249
    move-object/from16 v6, p5

    .line 250
    .line 251
    move-object/from16 v7, p6

    .line 252
    .line 253
    move-object/from16 v8, p7

    .line 254
    .line 255
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 256
    .line 257
    .line 258
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 259
    .line 260
    :cond_14
    return-void
.end method

.method public static final OutlinedCard(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move/from16 v7, p7

    .line 246
    move-object/from16 v14, p6

    check-cast v14, Landroidx/compose/runtime/GapComposer;

    const v0, -0x73f82920

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v0, v7, 0x6

    move-object/from16 v8, p0

    if-nez v0, :cond_1

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v7

    goto :goto_1

    :cond_1
    move v0, v7

    :goto_1
    and-int/lit8 v1, v7, 0x30

    move-object/from16 v9, p1

    if-nez v1, :cond_3

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, v7, 0x180

    move-object/from16 v10, p2

    if-nez v1, :cond_5

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v7, 0xc00

    move-object/from16 v11, p3

    if-nez v1, :cond_7

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x800

    goto :goto_4

    :cond_6
    const/16 v1, 0x400

    :goto_4
    or-int/2addr v0, v1

    :cond_7
    and-int/lit16 v1, v7, 0x6000

    move-object/from16 v12, p4

    if-nez v1, :cond_9

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x4000

    goto :goto_5

    :cond_8
    const/16 v1, 0x2000

    :goto_5
    or-int/2addr v0, v1

    :cond_9
    const/high16 v1, 0x30000

    and-int/2addr v1, v7

    move-object/from16 v13, p5

    if-nez v1, :cond_b

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/high16 v1, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v1, 0x10000

    :goto_6
    or-int/2addr v0, v1

    :cond_b
    const v1, 0x12493

    and-int/2addr v1, v0

    const v2, 0x12492

    if-eq v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :goto_7
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {v14, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v1, v7, 0x1

    if-eqz v1, :cond_e

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_8

    .line 247
    :cond_d
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    :cond_e
    :goto_8
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    const v1, 0x7fffe

    and-int v15, v0, v1

    const/16 v16, 0x0

    .line 248
    invoke-static/range {v8 .. v16}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    goto :goto_9

    .line 249
    :cond_f
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 250
    :goto_9
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_10

    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;II)V

    .line 251
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method

.method public static final OutlinedCard(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 21

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
    const v1, 0x538acf0b

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
    move-object/from16 v11, p1

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    const/16 v2, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v2, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v1, v2

    .line 49
    :cond_3
    or-int/lit16 v1, v1, 0x180

    .line 50
    .line 51
    and-int/lit16 v2, v9, 0xc00

    .line 52
    .line 53
    move-object/from16 v13, p3

    .line 54
    .line 55
    if-nez v2, :cond_5

    .line 56
    .line 57
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    const/16 v2, 0x800

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v2, 0x400

    .line 67
    .line 68
    :goto_3
    or-int/2addr v1, v2

    .line 69
    :cond_5
    and-int/lit16 v2, v9, 0x6000

    .line 70
    .line 71
    move-object/from16 v14, p4

    .line 72
    .line 73
    if-nez v2, :cond_7

    .line 74
    .line 75
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_6

    .line 80
    .line 81
    const/16 v2, 0x4000

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_6
    const/16 v2, 0x2000

    .line 85
    .line 86
    :goto_4
    or-int/2addr v1, v2

    .line 87
    :cond_7
    const/high16 v2, 0x30000

    .line 88
    .line 89
    and-int/2addr v2, v9

    .line 90
    move-object/from16 v6, p5

    .line 91
    .line 92
    if-nez v2, :cond_9

    .line 93
    .line 94
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_8

    .line 99
    .line 100
    const/high16 v2, 0x20000

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_8
    const/high16 v2, 0x10000

    .line 104
    .line 105
    :goto_5
    or-int/2addr v1, v2

    .line 106
    :cond_9
    const/high16 v2, 0x180000

    .line 107
    .line 108
    and-int/2addr v2, v9

    .line 109
    move-object/from16 v7, p6

    .line 110
    .line 111
    if-nez v2, :cond_b

    .line 112
    .line 113
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_a

    .line 118
    .line 119
    const/high16 v2, 0x100000

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_a
    const/high16 v2, 0x80000

    .line 123
    .line 124
    :goto_6
    or-int/2addr v1, v2

    .line 125
    :cond_b
    const/high16 v2, 0xc00000

    .line 126
    .line 127
    or-int/2addr v1, v2

    .line 128
    const/high16 v2, 0x6000000

    .line 129
    .line 130
    and-int/2addr v2, v9

    .line 131
    move-object/from16 v8, p7

    .line 132
    .line 133
    if-nez v2, :cond_d

    .line 134
    .line 135
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_c

    .line 140
    .line 141
    const/high16 v2, 0x4000000

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_c
    const/high16 v2, 0x2000000

    .line 145
    .line 146
    :goto_7
    or-int/2addr v1, v2

    .line 147
    :cond_d
    const v2, 0x2492493

    .line 148
    .line 149
    .line 150
    and-int/2addr v2, v1

    .line 151
    const v3, 0x2492492

    .line 152
    .line 153
    .line 154
    const/4 v4, 0x1

    .line 155
    if-eq v2, v3, :cond_e

    .line 156
    .line 157
    move v2, v4

    .line 158
    goto :goto_8

    .line 159
    :cond_e
    const/4 v2, 0x0

    .line 160
    :goto_8
    and-int/lit8 v3, v1, 0x1

    .line 161
    .line 162
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_11

    .line 167
    .line 168
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 169
    .line 170
    .line 171
    and-int/lit8 v2, v9, 0x1

    .line 172
    .line 173
    if-eqz v2, :cond_10

    .line 174
    .line 175
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eqz v2, :cond_f

    .line 180
    .line 181
    goto :goto_9

    .line 182
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 183
    .line 184
    .line 185
    move/from16 v12, p2

    .line 186
    .line 187
    goto :goto_a

    .line 188
    :cond_10
    :goto_9
    move v12, v4

    .line 189
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 190
    .line 191
    .line 192
    const v2, 0xffffffe

    .line 193
    .line 194
    .line 195
    and-int v19, v1, v2

    .line 196
    .line 197
    const/16 v20, 0x0

    .line 198
    .line 199
    move-object/from16 v18, v0

    .line 200
    .line 201
    move-object v15, v6

    .line 202
    move-object/from16 v16, v7

    .line 203
    .line 204
    move-object/from16 v17, v8

    .line 205
    .line 206
    invoke-static/range {v10 .. v20}, Landroidx/compose/material3/CardKt;->Card(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 207
    .line 208
    .line 209
    move v3, v12

    .line 210
    goto :goto_b

    .line 211
    :cond_11
    move-object/from16 v18, v0

    .line 212
    .line 213
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 214
    .line 215
    .line 216
    move/from16 v3, p2

    .line 217
    .line 218
    :goto_b
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    if-eqz v10, :cond_12

    .line 223
    .line 224
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda2;

    .line 225
    .line 226
    move-object/from16 v1, p0

    .line 227
    .line 228
    move-object/from16 v2, p1

    .line 229
    .line 230
    move-object/from16 v4, p3

    .line 231
    .line 232
    move-object/from16 v5, p4

    .line 233
    .line 234
    move-object/from16 v6, p5

    .line 235
    .line 236
    move-object/from16 v7, p6

    .line 237
    .line 238
    move-object/from16 v8, p7

    .line 239
    .line 240
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 241
    .line 242
    .line 243
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 244
    .line 245
    :cond_12
    return-void
.end method

.method public static final OutlinedTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)V
    .locals 34

    move/from16 v4, p3

    move/from16 v3, p6

    move/from16 v11, p10

    move/from16 v0, p16

    move/from16 v1, p17

    .line 36
    move-object/from16 v2, p15

    check-cast v2, Landroidx/compose/runtime/GapComposer;

    const v5, 0x7a9fbaf5

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v5, v0, 0x6

    if-nez v5, :cond_1

    move-object/from16 v5, p0

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v0

    goto :goto_1

    :cond_1
    move-object/from16 v5, p0

    move v6, v0

    :goto_1
    and-int/lit8 v7, v0, 0x30

    if-nez v7, :cond_3

    move-object/from16 v7, p1

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v6, v8

    goto :goto_3

    :cond_3
    move-object/from16 v7, p1

    :goto_3
    and-int/lit16 v8, v0, 0x180

    if-nez v8, :cond_5

    move-object/from16 v8, p2

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x100

    goto :goto_4

    :cond_4
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v6, v9

    goto :goto_5

    :cond_5
    move-object/from16 v8, p2

    :goto_5
    and-int/lit16 v9, v0, 0xc00

    if-nez v9, :cond_7

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x800

    goto :goto_6

    :cond_6
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v6, v9

    :cond_7
    and-int/lit16 v9, v0, 0x6000

    const/4 v13, 0x0

    if-nez v9, :cond_9

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x4000

    goto :goto_7

    :cond_8
    const/16 v9, 0x2000

    :goto_7
    or-int/2addr v6, v9

    :cond_9
    const/high16 v9, 0x30000

    and-int v14, v0, v9

    const/high16 v15, 0x10000

    if-nez v14, :cond_a

    or-int/2addr v6, v15

    :cond_a
    const/high16 v14, 0x180000

    and-int v16, v0, v14

    move/from16 p15, v9

    move-object/from16 v9, p5

    if-nez v16, :cond_c

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/high16 v16, 0x100000

    goto :goto_8

    :cond_b
    const/high16 v16, 0x80000

    :goto_8
    or-int v6, v6, v16

    :cond_c
    const/high16 v16, 0x6c00000

    or-int v6, v6, v16

    const/high16 v16, 0x30000000

    and-int v17, v0, v16

    if-nez v17, :cond_e

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/high16 v10, 0x20000000

    goto :goto_9

    :cond_d
    const/high16 v10, 0x10000000

    :goto_9
    or-int/2addr v6, v10

    :cond_e
    or-int/lit16 v10, v1, 0x1b6

    and-int/lit16 v12, v1, 0xc00

    if-nez v12, :cond_10

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_f

    const/16 v17, 0x800

    goto :goto_a

    :cond_f
    const/16 v17, 0x400

    :goto_a
    or-int v10, v10, v17

    :cond_10
    or-int/lit16 v10, v10, 0x6000

    and-int v12, v1, p15

    if-nez v12, :cond_12

    move-object/from16 v12, p8

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v15, 0x20000

    :cond_11
    or-int/2addr v10, v15

    goto :goto_b

    :cond_12
    move-object/from16 v12, p8

    :goto_b
    or-int/2addr v10, v14

    const/high16 v14, 0xc00000

    and-int/2addr v14, v1

    if-nez v14, :cond_14

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v14

    if-eqz v14, :cond_13

    const/high16 v14, 0x800000

    goto :goto_c

    :cond_13
    const/high16 v14, 0x400000

    :goto_c
    or-int/2addr v10, v14

    :cond_14
    const/high16 v14, 0x6000000

    and-int/2addr v14, v1

    if-nez v14, :cond_15

    const/high16 v14, 0x2000000

    or-int/2addr v10, v14

    :cond_15
    or-int v10, v10, v16

    const v14, 0x12492493

    and-int v15, v6, v14

    move/from16 p15, v14

    const v14, 0x12492492

    const/16 v16, 0x1

    if-ne v15, v14, :cond_16

    and-int v10, v10, p15

    if-ne v10, v14, :cond_16

    move v10, v13

    goto :goto_d

    :cond_16
    move/from16 v10, v16

    :goto_d
    and-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_18

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_e

    .line 37
    :cond_17
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v6, p4

    move-object/from16 v14, p7

    move-object/from16 v10, p9

    move/from16 v12, p11

    move/from16 v16, p12

    move-object/from16 v15, p13

    move-object/from16 v4, p14

    goto :goto_10

    .line 38
    :cond_18
    :goto_e
    sget-object v6, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 39
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/TextStyle;

    if-eqz v11, :cond_19

    move/from16 v10, v16

    goto :goto_f

    :cond_19
    const v10, 0x7fffffff

    .line 40
    :goto_f
    sget-object v14, Landroidx/compose/material3/tokens/ListTokens;->ContainerShape$5:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 41
    invoke-static {v14, v2}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v14

    .line 42
    invoke-static {v2}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;

    move-result-object v15

    sget-object v17, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->None:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    sget-object v18, Landroidx/compose/foundation/text/KeyboardActions;->Default:Landroidx/compose/foundation/text/KeyboardActions;

    move v12, v10

    move-object v4, v15

    move-object/from16 v10, v18

    move-object v15, v14

    move-object/from16 v14, v17

    .line 43
    :goto_10
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    const v13, -0x1defba1a

    .line 44
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 45
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .line 46
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v13, v0, :cond_1a

    .line 47
    new-instance v13, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v13}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 48
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 49
    :cond_1a
    check-cast v13, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    const/4 v0, 0x0

    .line 50
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    const v0, 0x519d82ef

    .line 51
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 52
    invoke-virtual {v6}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v17

    const-wide/16 v19, 0x10

    cmp-long v0, v17, v19

    if-eqz v0, :cond_1b

    :goto_11
    move-wide/from16 v20, v17

    const/4 v0, 0x0

    goto :goto_13

    :cond_1b
    const/4 v0, 0x0

    .line 53
    invoke-static {v13, v2, v0}, Lcom/fsck/k9/sasl/OAuthBearer;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez p3, :cond_1c

    .line 54
    iget-wide v0, v4, Landroidx/compose/material3/TextFieldColors;->disabledTextColor:J

    :goto_12
    move-wide/from16 v17, v0

    goto :goto_11

    :cond_1c
    if-eqz v3, :cond_1d

    .line 55
    iget-wide v0, v4, Landroidx/compose/material3/TextFieldColors;->errorTextColor:J

    goto :goto_12

    :cond_1d
    if-eqz v0, :cond_1e

    .line 56
    iget-wide v0, v4, Landroidx/compose/material3/TextFieldColors;->focusedTextColor:J

    goto :goto_12

    .line 57
    :cond_1e
    iget-wide v0, v4, Landroidx/compose/material3/TextFieldColors;->unfocusedTextColor:J

    goto :goto_12

    .line 58
    :goto_13
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 59
    new-instance v19, Landroidx/compose/ui/text/TextStyle;

    const-wide/16 v28, 0x0

    const v30, 0xfffffe

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v19 .. v30}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    .line 60
    sget-object v1, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    move-object/from16 p4, v0

    .line 61
    iget-object v0, v4, Landroidx/compose/material3/TextFieldColors;->textSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 62
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    move-object v1, v0

    .line 63
    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$5;

    move-object/from16 v17, v15

    move-object v15, v13

    move/from16 v13, v16

    move-object/from16 v16, v17

    move-object/from16 v32, v1

    move-object/from16 v31, v2

    move-object/from16 v17, v6

    move-object v6, v7

    move-object v1, v8

    move-object v2, v9

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$5;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/Shape;)V

    const v1, -0x7cd4204b

    move-object/from16 v2, v31

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v1, 0x38

    move-object/from16 v3, v32

    invoke-static {v3, v0, v2, v1}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object v15, v4

    move-object v8, v14

    move-object/from16 v14, v16

    move-object/from16 v5, v17

    goto :goto_14

    .line 64
    :cond_1f
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v5, p4

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    .line 65
    :goto_14
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_20

    move-object v1, v0

    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldKt$$ExternalSyntheticLambda3;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v11, p10

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v33, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v17}, Landroidx/compose/material3/OutlinedTextFieldKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;II)V

    move-object/from16 v1, v33

    .line 66
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method

.method public static final OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V
    .locals 37

    move/from16 v12, p12

    move/from16 v0, p19

    move/from16 v1, p20

    move/from16 v2, p22

    .line 1
    move-object/from16 v3, p18

    check-cast v3, Landroidx/compose/runtime/GapComposer;

    const v4, 0x71569c68

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v4, v0, 0x6

    if-nez v4, :cond_1

    move-object/from16 v4, p0

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v0

    goto :goto_1

    :cond_1
    move-object/from16 v4, p0

    move v7, v0

    :goto_1
    and-int/lit8 v8, v0, 0x30

    if-nez v8, :cond_3

    move-object/from16 v8, p1

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_2

    :cond_2
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v7, v9

    goto :goto_3

    :cond_3
    move-object/from16 v8, p1

    :goto_3
    and-int/lit16 v9, v0, 0x180

    if-nez v9, :cond_5

    move-object/from16 v9, p2

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x100

    goto :goto_4

    :cond_4
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v7, v10

    goto :goto_5

    :cond_5
    move-object/from16 v9, p2

    :goto_5
    and-int/lit8 v10, v2, 0x8

    if-eqz v10, :cond_7

    or-int/lit16 v7, v7, 0xc00

    :cond_6
    move/from16 v14, p3

    goto :goto_7

    :cond_7
    and-int/lit16 v14, v0, 0xc00

    if-nez v14, :cond_6

    move/from16 v14, p3

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v15

    if-eqz v15, :cond_8

    const/16 v15, 0x800

    goto :goto_6

    :cond_8
    const/16 v15, 0x400

    :goto_6
    or-int/2addr v7, v15

    :goto_7
    and-int/lit16 v15, v0, 0x6000

    const/16 v16, 0x2000

    const/16 v17, 0x4000

    if-nez v15, :cond_a

    move/from16 v15, p4

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_9

    move/from16 v18, v17

    goto :goto_8

    :cond_9
    move/from16 v18, v16

    :goto_8
    or-int v7, v7, v18

    goto :goto_9

    :cond_a
    move/from16 v15, p4

    :goto_9
    const/high16 v18, 0x30000

    and-int v19, v0, v18

    const/high16 v20, 0x10000

    if-nez v19, :cond_b

    or-int v7, v7, v20

    :cond_b
    const/high16 v19, 0x180000

    and-int v21, v0, v19

    const/high16 v22, 0x100000

    move-object/from16 v5, p6

    if-nez v21, :cond_d

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    move/from16 v21, v22

    goto :goto_a

    :cond_c
    const/high16 v21, 0x80000

    :goto_a
    or-int v7, v7, v21

    :cond_d
    const/high16 v21, 0x6c00000

    or-int v21, v7, v21

    and-int/lit16 v6, v2, 0x200

    const/high16 v24, 0x30000000

    if-eqz v6, :cond_f

    const/high16 v21, 0x36c00000

    or-int v21, v7, v21

    :cond_e
    move-object/from16 v7, p7

    goto :goto_c

    :cond_f
    and-int v7, v0, v24

    if-nez v7, :cond_e

    move-object/from16 v7, p7

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    const/high16 v25, 0x20000000

    goto :goto_b

    :cond_10
    const/high16 v25, 0x10000000

    :goto_b
    or-int v21, v21, v25

    :goto_c
    or-int/lit16 v11, v1, 0x1b6

    and-int/lit16 v13, v2, 0x2000

    if-eqz v13, :cond_12

    or-int/lit16 v11, v1, 0xdb6

    :cond_11
    move/from16 v0, p8

    goto :goto_e

    :cond_12
    and-int/lit16 v0, v1, 0xc00

    if-nez v0, :cond_11

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v27

    if-eqz v27, :cond_13

    const/16 v25, 0x800

    goto :goto_d

    :cond_13
    const/16 v25, 0x400

    :goto_d
    or-int v11, v11, v25

    :goto_e
    and-int/lit16 v0, v2, 0x4000

    if-eqz v0, :cond_15

    or-int/lit16 v11, v11, 0x6000

    move/from16 v25, v0

    :cond_14
    move-object/from16 v0, p9

    goto :goto_f

    :cond_15
    move/from16 v25, v0

    and-int/lit16 v0, v1, 0x6000

    if-nez v0, :cond_14

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    move/from16 v16, v17

    :cond_16
    or-int v11, v11, v16

    :goto_f
    const v16, 0x8000

    and-int v16, v2, v16

    if-eqz v16, :cond_17

    or-int v11, v11, v18

    move-object/from16 v0, p10

    goto :goto_10

    :cond_17
    and-int v17, v1, v18

    move-object/from16 v0, p10

    if-nez v17, :cond_19

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    const/high16 v20, 0x20000

    :cond_18
    or-int v11, v11, v20

    :cond_19
    :goto_10
    or-int v11, v11, v19

    const/high16 v17, 0xc00000

    and-int v17, v1, v17

    if-nez v17, :cond_1b

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/high16 v17, 0x800000

    goto :goto_11

    :cond_1a
    const/high16 v17, 0x400000

    :goto_11
    or-int v11, v11, v17

    :cond_1b
    const/high16 v17, 0x6000000

    and-int v17, v1, v17

    if-nez v17, :cond_1c

    const/high16 v17, 0x2000000

    or-int v11, v11, v17

    :cond_1c
    or-int v11, v11, v24

    and-int v17, v2, v22

    if-eqz v17, :cond_1d

    const/16 v18, 0x6

    :goto_12
    move/from16 v0, v18

    goto :goto_14

    :cond_1d
    and-int/lit8 v18, p21, 0x6

    move-object/from16 v0, p15

    if-nez v18, :cond_1f

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    const/16 v23, 0x4

    goto :goto_13

    :cond_1e
    const/16 v23, 0x2

    :goto_13
    or-int v18, p21, v23

    goto :goto_12

    :cond_1f
    move/from16 v0, p21

    :goto_14
    or-int/lit16 v0, v0, 0x90

    const v18, 0x12492493

    and-int v1, v21, v18

    const v2, 0x12492492

    const/16 v19, 0x1

    if-ne v1, v2, :cond_21

    and-int v1, v11, v18

    if-ne v1, v2, :cond_21

    and-int/lit16 v0, v0, 0x93

    const/16 v1, 0x92

    if-eq v0, v1, :cond_20

    goto :goto_15

    :cond_20
    const/4 v0, 0x0

    goto :goto_16

    :cond_21
    :goto_15
    move/from16 v0, v19

    :goto_16
    and-int/lit8 v1, v21, 0x1

    invoke-virtual {v3, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v0, p19, 0x1

    if-eqz v0, :cond_23

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_17

    .line 2
    :cond_22
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v0, p5

    move/from16 v2, p8

    move-object/from16 v15, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v13, p13

    move-object/from16 v19, p15

    move-object/from16 v18, p16

    move-object/from16 v1, p17

    move-object/from16 v17, v7

    move v7, v14

    move/from16 v14, p14

    goto :goto_1d

    :cond_23
    :goto_17
    if-eqz v10, :cond_24

    move/from16 v14, v19

    .line 3
    :cond_24
    sget-object v0, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 4
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextStyle;

    const/4 v1, 0x0

    if-eqz v6, :cond_25

    move-object v7, v1

    :cond_25
    if-eqz v13, :cond_26

    const/4 v2, 0x0

    goto :goto_18

    :cond_26
    move/from16 v2, p8

    :goto_18
    if-eqz v25, :cond_27

    .line 5
    sget-object v6, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->None:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    goto :goto_19

    :cond_27
    move-object/from16 v6, p9

    :goto_19
    if-eqz v16, :cond_28

    .line 6
    sget-object v10, Landroidx/compose/foundation/text/KeyboardOptions;->Default:Landroidx/compose/foundation/text/KeyboardOptions;

    goto :goto_1a

    :cond_28
    move-object/from16 v10, p10

    :goto_1a
    if-eqz v12, :cond_29

    move/from16 v11, v19

    goto :goto_1b

    :cond_29
    const v11, 0x7fffffff

    :goto_1b
    if-eqz v17, :cond_2a

    goto :goto_1c

    :cond_2a
    move-object/from16 v1, p15

    .line 7
    :goto_1c
    sget-object v13, Landroidx/compose/material3/tokens/ListTokens;->ContainerShape$5:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 8
    invoke-static {v13, v3}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v13

    .line 9
    invoke-static {v3}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TextFieldColors;

    move-result-object v16

    sget-object v17, Landroidx/compose/foundation/text/KeyboardActions;->Default:Landroidx/compose/foundation/text/KeyboardActions;

    move-object v15, v6

    move-object/from16 v18, v13

    move v13, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v7

    move v7, v14

    move/from16 v14, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    .line 10
    :goto_1d
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    if-nez v19, :cond_2c

    const v6, 0x4e15cd93    # 6.283194E8f

    .line 11
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 12
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .line 13
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v6, v4, :cond_2b

    .line 14
    new-instance v6, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v6}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 15
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 16
    :cond_2b
    check-cast v6, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    const/4 v4, 0x0

    .line 17
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_1e

    :cond_2c
    const/4 v4, 0x0

    const v6, 0x7621b9c4

    .line 18
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 19
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    move-object/from16 v6, v19

    :goto_1e
    const v4, 0x7621d1a2

    .line 20
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v20

    const-wide/16 v22, 0x10

    cmp-long v4, v20, v22

    if-eqz v4, :cond_2d

    :goto_1f
    move-wide/from16 v23, v20

    const/4 v4, 0x0

    goto :goto_21

    :cond_2d
    const/4 v4, 0x0

    .line 22
    invoke-static {v6, v3, v4}, Lcom/fsck/k9/sasl/OAuthBearer;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v7, :cond_2e

    .line 23
    iget-wide v4, v1, Landroidx/compose/material3/TextFieldColors;->disabledTextColor:J

    :goto_20
    move-wide/from16 v20, v4

    goto :goto_1f

    :cond_2e
    if-eqz v2, :cond_2f

    .line 24
    iget-wide v4, v1, Landroidx/compose/material3/TextFieldColors;->errorTextColor:J

    goto :goto_20

    :cond_2f
    if-eqz v4, :cond_30

    .line 25
    iget-wide v4, v1, Landroidx/compose/material3/TextFieldColors;->focusedTextColor:J

    goto :goto_20

    .line 26
    :cond_30
    iget-wide v4, v1, Landroidx/compose/material3/TextFieldColors;->unfocusedTextColor:J

    goto :goto_20

    .line 27
    :goto_21
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 28
    new-instance v22, Landroidx/compose/ui/text/TextStyle;

    const-wide/16 v31, 0x0

    const v33, 0xfffffe

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v22 .. v33}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    move-object/from16 v4, v22

    invoke-virtual {v0, v4}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    .line 29
    sget-object v5, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    move-object/from16 p3, v0

    .line 30
    iget-object v0, v1, Landroidx/compose/material3/TextFieldColors;->textSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 31
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    move-object v5, v0

    .line 32
    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;

    move-object/from16 v16, v4

    move-object v4, v1

    move-object v1, v9

    move-object/from16 v9, v16

    move-object/from16 v20, p3

    move-object/from16 v34, v3

    move-object/from16 v35, v5

    move-object/from16 v16, v6

    move-object v6, v8

    move-object/from16 v5, p0

    move/from16 v8, p4

    move v3, v2

    move-object/from16 v2, p6

    invoke-direct/range {v0 .. v18}, Landroidx/compose/material3/OutlinedTextFieldKt$OutlinedTextField$3;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldColors;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;)V

    const v1, 0x6fb38128

    move-object/from16 v2, v34

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v1, 0x38

    move-object/from16 v5, v35

    invoke-static {v5, v0, v2, v1}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move v9, v3

    move-object v12, v11

    move-object/from16 v8, v17

    move-object/from16 v17, v18

    move-object/from16 v16, v19

    move-object/from16 v6, v20

    move-object/from16 v18, v4

    move v4, v7

    move-object v11, v10

    move-object v10, v15

    move v15, v14

    move v14, v13

    goto :goto_22

    :cond_31
    move-object v2, v3

    .line 33
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v6, p5

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object v8, v7

    move v4, v14

    move/from16 v14, p13

    .line 34
    :goto_22
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_32

    move-object v1, v0

    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldKt$$ExternalSyntheticLambda4;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v13, p12

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v36, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v22}, Landroidx/compose/material3/OutlinedTextFieldKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;IIII)V

    move-object/from16 v1, v36

    .line 35
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_32
    return-void
.end method

.method public static final OutlinedTextFieldLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    move-object/from16 v0, p11

    move-object/from16 v15, p12

    move-object/from16 v13, p13

    move/from16 v8, p15

    move/from16 v9, p16

    .line 1
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    move-object/from16 v14, p14

    check-cast v14, Landroidx/compose/runtime/GapComposer;

    move-object/from16 v16, v11

    const v11, 0x2cec89be

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v11, v8, 0x6

    move/from16 p14, v11

    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v17, v12

    if-nez p14, :cond_1

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v20, v8, 0x30

    const/16 v21, 0x10

    if-nez v20, :cond_3

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v20, 0x20

    goto :goto_2

    :cond_2
    move/from16 v20, v21

    :goto_2
    or-int v19, v19, v20

    :cond_3
    and-int/lit16 v12, v8, 0x180

    const/16 v22, 0x80

    const/16 v23, 0x100

    if-nez v12, :cond_5

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move/from16 v12, v23

    goto :goto_3

    :cond_4
    move/from16 v12, v22

    :goto_3
    or-int v19, v19, v12

    :cond_5
    and-int/lit16 v12, v8, 0xc00

    const/16 v24, 0x400

    const/16 v25, 0x800

    if-nez v12, :cond_7

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move/from16 v12, v25

    goto :goto_4

    :cond_6
    move/from16 v12, v24

    :goto_4
    or-int v19, v19, v12

    :cond_7
    and-int/lit16 v12, v8, 0x6000

    const/16 v26, 0x2000

    if-nez v12, :cond_9

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x4000

    goto :goto_5

    :cond_8
    move/from16 v12, v26

    :goto_5
    or-int v19, v19, v12

    :cond_9
    const/high16 v12, 0x30000

    and-int v12, p15, v12

    if-nez v12, :cond_b

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/high16 v12, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v12, 0x10000

    :goto_6
    or-int v19, v19, v12

    :cond_b
    const/high16 v12, 0x180000

    and-int v12, p15, v12

    if-nez v12, :cond_d

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/high16 v12, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v12, 0x80000

    :goto_7
    or-int v19, v19, v12

    :cond_d
    const/high16 v12, 0xc00000

    and-int v12, p15, v12

    if-nez v12, :cond_f

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/high16 v12, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v12, 0x400000

    :goto_8
    or-int v19, v19, v12

    :cond_f
    const/high16 v12, 0x6000000

    and-int v12, p15, v12

    if-nez v12, :cond_11

    move/from16 v12, p7

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result v28

    if-eqz v28, :cond_10

    const/high16 v28, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v28, 0x2000000

    :goto_9
    or-int v19, v19, v28

    goto :goto_a

    :cond_11
    move/from16 v12, p7

    :goto_a
    const/high16 v28, 0x30000000

    and-int v28, p15, v28

    move-object/from16 v8, p8

    if-nez v28, :cond_13

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    const/high16 v30, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v30, 0x10000000

    :goto_b
    or-int v19, v19, v30

    :cond_13
    and-int/lit8 v30, v9, 0x6

    if-nez v30, :cond_16

    and-int/lit8 v30, v9, 0x8

    if-nez v30, :cond_14

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v30

    goto :goto_c

    :cond_14
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v30

    :goto_c
    if-eqz v30, :cond_15

    const/16 v30, 0x4

    goto :goto_d

    :cond_15
    const/16 v30, 0x2

    :goto_d
    or-int v30, v9, v30

    goto :goto_e

    :cond_16
    move/from16 v30, v9

    :goto_e
    and-int/lit8 v31, v9, 0x30

    move-object/from16 v8, p10

    if-nez v31, :cond_18

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_17

    const/16 v21, 0x20

    :cond_17
    or-int v30, v30, v21

    :cond_18
    and-int/lit16 v8, v9, 0x180

    if-nez v8, :cond_1a

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    move/from16 v22, v23

    :cond_19
    or-int v30, v30, v22

    :cond_1a
    and-int/lit16 v8, v9, 0xc00

    if-nez v8, :cond_1c

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    move/from16 v24, v25

    :cond_1b
    or-int v30, v30, v24

    :cond_1c
    and-int/lit16 v8, v9, 0x6000

    if-nez v8, :cond_1e

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    const/16 v26, 0x4000

    :cond_1d
    or-int v30, v30, v26

    :cond_1e
    move/from16 v8, v30

    const v21, 0x12492493

    and-int v9, v19, v21

    move-object/from16 v21, v11

    const v11, 0x12492492

    if-ne v9, v11, :cond_20

    and-int/lit16 v9, v8, 0x2493

    const/16 v11, 0x2492

    if-eq v9, v11, :cond_1f

    goto :goto_f

    :cond_1f
    const/4 v9, 0x0

    goto :goto_10

    :cond_20
    :goto_f
    const/4 v9, 0x1

    :goto_10
    and-int/lit8 v11, v19, 0x1

    invoke-virtual {v14, v11, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v9

    if-eqz v9, :cond_51

    .line 2
    invoke-static {v14}, Landroidx/compose/material3/internal/Icons$Filled;->textFieldHorizontalIconPadding(Landroidx/compose/runtime/Composer;)F

    move-result v9

    and-int/lit8 v11, v8, 0x70

    const/16 v15, 0x20

    if-ne v11, v15, :cond_21

    const/4 v11, 0x1

    goto :goto_11

    :cond_21
    const/4 v11, 0x0

    :goto_11
    const/high16 v15, 0xe000000

    and-int v15, v19, v15

    move/from16 v20, v8

    const/high16 v8, 0x4000000

    if-ne v15, v8, :cond_22

    const/4 v8, 0x1

    goto :goto_12

    :cond_22
    const/4 v8, 0x0

    :goto_12
    or-int/2addr v8, v11

    const/high16 v11, 0x70000000

    and-int v11, v19, v11

    const/high16 v15, 0x20000000

    if-ne v11, v15, :cond_23

    const/4 v11, 0x1

    goto :goto_13

    :cond_23
    const/4 v11, 0x0

    :goto_13
    or-int/2addr v8, v11

    and-int/lit8 v15, v20, 0xe

    const/4 v11, 0x4

    if-eq v15, v11, :cond_25

    and-int/lit8 v18, v20, 0x8

    if-eqz v18, :cond_24

    .line 3
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_24

    goto :goto_14

    :cond_24
    const/16 v18, 0x0

    goto :goto_15

    :cond_25
    :goto_14
    const/16 v18, 0x1

    :goto_15
    or-int v8, v8, v18

    const v18, 0xe000

    and-int v11, v20, v18

    move/from16 v18, v8

    const/16 v8, 0x4000

    if-ne v11, v8, :cond_26

    const/4 v8, 0x1

    goto :goto_16

    :cond_26
    const/4 v8, 0x0

    :goto_16
    or-int v8, v18, v8

    .line 4
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    move-result v11

    or-int/2addr v8, v11

    .line 5
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .line 6
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v8, :cond_28

    if-ne v11, v3, :cond_27

    goto :goto_17

    :cond_27
    move-object/from16 p14, v3

    move-object v1, v14

    move-object/from16 v3, v16

    move-object/from16 v2, v21

    const/4 v7, 0x2

    move v14, v9

    move/from16 v16, v15

    move-object/from16 v15, v17

    goto :goto_18

    .line 7
    :cond_28
    :goto_17
    new-instance v8, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    move/from16 p14, v12

    move-object v12, v10

    move/from16 v10, p14

    move-object/from16 v11, p8

    move-object/from16 p14, v3

    move-object v1, v14

    move-object/from16 v3, v16

    move-object/from16 v2, v21

    const/4 v7, 0x2

    move v14, v9

    move/from16 v16, v15

    move-object/from16 v15, v17

    move-object/from16 v9, p10

    invoke-direct/range {v8 .. v14}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;Landroidx/compose/foundation/layout/PaddingValues;F)V

    .line 8
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v11, v8

    .line 9
    :goto_18
    check-cast v11, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy;

    .line 10
    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 11
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    .line 12
    check-cast v8, Landroidx/compose/ui/unit/LayoutDirection;

    .line 13
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    move-result v9

    .line 14
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v12

    .line 15
    invoke-static {v1, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 16
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v18, v14

    .line 17
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 18
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 19
    iget-boolean v10, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-eqz v10, :cond_29

    .line 20
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_19

    .line 21
    :cond_29
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 22
    :goto_19
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 23
    invoke-static {v1, v11, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 24
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 25
    invoke-static {v1, v12, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 26
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 27
    iget-boolean v6, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-nez v6, :cond_2a

    .line 28
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v21, v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_1a

    :cond_2a
    move-object/from16 v21, v15

    .line 29
    :goto_1a
    invoke-static {v9, v1, v9, v12}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 30
    :cond_2b
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 31
    invoke-static {v1, v7, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v7, v20, 0x6

    and-int/lit8 v7, v7, 0xe

    .line 32
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v7, Landroidx/compose/material3/MinimumInteractiveModifier;->INSTANCE:Landroidx/compose/material3/MinimumInteractiveModifier;

    if-eqz v4, :cond_2f

    const v9, 0x7fe3b06d

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 34
    const-string v9, "Leading"

    invoke-static {v2, v9}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 35
    invoke-interface {v9, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/4 v15, 0x0

    .line 36
    invoke-static {v3, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    .line 37
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    move-result v15

    move-object/from16 v24, v8

    .line 38
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v8

    .line 39
    invoke-static {v1, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 40
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 41
    iget-boolean v13, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-eqz v13, :cond_2c

    .line 42
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1b

    .line 43
    :cond_2c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 44
    :goto_1b
    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 45
    invoke-static {v1, v8, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 46
    iget-boolean v0, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-nez v0, :cond_2d

    .line 47
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 48
    :cond_2d
    invoke-static {v15, v1, v15, v12}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 49
    :cond_2e
    invoke-static {v1, v9, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v19, 0xc

    and-int/lit8 v0, v0, 0xe

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 51
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    const/4 v15, 0x0

    .line 52
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_1c

    :cond_2f
    move-object/from16 v24, v8

    const/4 v15, 0x0

    const v0, 0x7fe7716d

    .line 53
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 54
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    :goto_1c
    if-eqz v5, :cond_33

    const v0, 0x7fe8184b

    .line 55
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 56
    const-string v0, "Trailing"

    invoke-static {v2, v0}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 57
    invoke-interface {v0, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 58
    invoke-static {v3, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    .line 59
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    move-result v7

    .line 60
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v8

    .line 61
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 62
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 63
    iget-boolean v9, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-eqz v9, :cond_30

    .line 64
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1d

    .line 65
    :cond_30
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 66
    :goto_1d
    invoke-static {v1, v3, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 67
    invoke-static {v1, v8, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 68
    iget-boolean v3, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-nez v3, :cond_31

    .line 69
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 70
    :cond_31
    invoke-static {v7, v1, v7, v12}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 71
    :cond_32
    invoke-static {v1, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v19, 0xf

    and-int/lit8 v0, v0, 0xe

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 73
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    const/4 v15, 0x0

    .line 74
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    :goto_1e
    move-object/from16 v13, p13

    move-object/from16 v8, v24

    goto :goto_1f

    :cond_33
    const v0, 0x7febe0cd

    .line 75
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 76
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_1e

    .line 77
    :goto_1f
    invoke-static {v13, v8}, Landroidx/compose/foundation/layout/OffsetKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v0

    .line 78
    invoke-static {v13, v8}, Landroidx/compose/foundation/layout/OffsetKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v3

    const/4 v7, 0x0

    if-eqz v4, :cond_34

    sub-float v0, v0, v18

    cmpg-float v8, v0, v7

    if-gez v8, :cond_34

    move v0, v7

    :cond_34
    move/from16 v25, v0

    if-eqz v5, :cond_35

    sub-float v3, v3, v18

    cmpg-float v0, v3, v7

    if-gez v0, :cond_35

    move v3, v7

    :cond_35
    const/high16 v0, 0x41c00000    # 24.0f

    if-eqz p5, :cond_39

    const v8, 0x7ff69eb8

    .line 79
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 80
    const-string v8, "Prefix"

    invoke-static {v2, v8}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const/4 v9, 0x2

    .line 81
    invoke-static {v8, v0, v9}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 82
    invoke-static {v8}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v24

    const/16 v28, 0x0

    const/16 v29, 0xa

    const/16 v26, 0x0

    const/high16 v27, 0x40000000    # 2.0f

    .line 83
    invoke-static/range {v24 .. v29}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v8

    move-object/from16 v15, v21

    const/4 v9, 0x0

    .line 84
    invoke-static {v15, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    .line 85
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    move-result v9

    .line 86
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v0

    .line 87
    invoke-static {v1, v8}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    .line 88
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    move/from16 v29, v3

    .line 89
    iget-boolean v3, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-eqz v3, :cond_36

    .line 90
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_20

    .line 91
    :cond_36
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 92
    :goto_20
    invoke-static {v1, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 93
    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 94
    iget-boolean v0, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-nez v0, :cond_37

    .line 95
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 96
    :cond_37
    invoke-static {v9, v1, v9, v12}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 97
    :cond_38
    invoke-static {v1, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v19, 0x12

    and-int/lit8 v0, v0, 0xe

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p5

    invoke-interface {v3, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 99
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    const/4 v9, 0x0

    .line 100
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_21

    :cond_39
    move/from16 v29, v3

    move-object/from16 v15, v21

    const/4 v9, 0x0

    move-object/from16 v3, p5

    const v0, 0x7ffb9ecd

    .line 101
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 102
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    :goto_21
    if-eqz p6, :cond_3d

    const v0, 0x7ffc47ba

    .line 103
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 104
    const-string v0, "Suffix"

    invoke-static {v2, v0}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v7, 0x41c00000    # 24.0f

    const/4 v9, 0x2

    .line 105
    invoke-static {v0, v7, v9}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 106
    invoke-static {v0}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v26

    const/16 v30, 0x0

    const/16 v31, 0xa

    const/high16 v27, 0x40000000    # 2.0f

    const/16 v28, 0x0

    .line 107
    invoke-static/range {v26 .. v31}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v9, 0x0

    .line 108
    invoke-static {v15, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    .line 109
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    move-result v8

    .line 110
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v9

    .line 111
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 112
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 113
    iget-boolean v3, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-eqz v3, :cond_3a

    .line 114
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_22

    .line 115
    :cond_3a
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 116
    :goto_22
    invoke-static {v1, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 117
    invoke-static {v1, v9, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 118
    iget-boolean v3, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-nez v3, :cond_3b

    .line 119
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 120
    :cond_3b
    invoke-static {v8, v1, v8, v12}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 121
    :cond_3c
    invoke-static {v1, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v19, 0x15

    and-int/lit8 v0, v0, 0xe

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v7, p6

    invoke-interface {v7, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 123
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    const/4 v9, 0x0

    .line 124
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    :goto_23
    const/high16 v0, 0x41c00000    # 24.0f

    const/4 v9, 0x2

    goto :goto_24

    :cond_3d
    move-object/from16 v7, p6

    const/4 v9, 0x0

    const v0, -0x7ffebfb3

    .line 125
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 126
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_23

    .line 127
    :goto_24
    invoke-static {v2, v0, v9}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v32

    if-nez p5, :cond_3e

    move/from16 v33, v25

    goto :goto_25

    :cond_3e
    const/16 v33, 0x0

    :goto_25
    if-nez v7, :cond_3f

    move/from16 v35, v29

    goto :goto_26

    :cond_3f
    const/16 v35, 0x0

    :goto_26
    const/16 v36, 0x0

    const/16 v37, 0xa

    const/16 v34, 0x0

    .line 129
    invoke-static/range {v32 .. v37}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz p1, :cond_40

    const v3, -0x7ff91a72

    .line 130
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 131
    const-string v3, "Hint"

    invoke-static {v2, v3}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v3, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    shr-int/lit8 v8, v19, 0x3

    and-int/lit8 v8, v8, 0x70

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-interface {v9, v3, v1, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 132
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_27

    :cond_40
    move-object/from16 v9, p1

    const/4 v3, 0x0

    const v8, -0x7ff7b5d3

    .line 133
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 134
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 135
    :goto_27
    const-string v3, "TextField"

    invoke-static {v2, v3}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v3, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v3, 0x1

    .line 136
    invoke-static {v15, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    .line 137
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    move-result v3

    .line 138
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v4

    .line 139
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 140
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 141
    iget-boolean v5, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-eqz v5, :cond_41

    .line 142
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_28

    .line 143
    :cond_41
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 144
    :goto_28
    invoke-static {v1, v8, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 145
    invoke-static {v1, v4, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 146
    iget-boolean v4, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-nez v4, :cond_42

    .line 147
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 148
    :cond_42
    invoke-static {v3, v1, v3, v12}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 149
    :cond_43
    invoke-static {v1, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v19, 0x3

    and-int/lit8 v0, v0, 0xe

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p0

    invoke-interface {v3, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 151
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    if-eqz p2, :cond_4c

    const v0, -0x7fedc0ae

    .line 152
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    move/from16 v0, v16

    const/4 v4, 0x4

    if-eq v0, v4, :cond_46

    and-int/lit8 v0, v20, 0x8

    if-eqz v0, :cond_44

    move-object/from16 v0, p9

    .line 153
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    goto :goto_29

    :cond_44
    move-object/from16 v0, p9

    :cond_45
    const/4 v4, 0x0

    goto :goto_2a

    :cond_46
    move-object/from16 v0, p9

    :goto_29
    const/4 v4, 0x1

    .line 154
    :goto_2a
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_47

    move-object/from16 v4, p14

    if-ne v5, v4, :cond_48

    .line 155
    :cond_47
    new-instance v5, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;

    const/4 v4, 0x3

    invoke-direct {v5, v4, v0}, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 156
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 157
    :cond_48
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 158
    new-instance v4, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;

    const/4 v8, 0x0

    invoke-direct {v4, v8, v5}, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v4}, Landroidx/compose/ui/layout/RulerKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 159
    invoke-static {v4}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 160
    const-string v5, "Label"

    invoke-static {v4, v5}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 161
    invoke-interface {v4, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 162
    invoke-static {v15, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    .line 163
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    move-result v8

    .line 164
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v0

    .line 165
    invoke-static {v1, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 166
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 167
    iget-boolean v3, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-eqz v3, :cond_49

    .line 168
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2b

    .line 169
    :cond_49
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 170
    :goto_2b
    invoke-static {v1, v5, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 171
    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 172
    iget-boolean v0, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-nez v0, :cond_4a

    .line 173
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 174
    :cond_4a
    invoke-static {v8, v1, v8, v12}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 175
    :cond_4b
    invoke-static {v1, v4, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v19, 0x9

    and-int/lit8 v0, v0, 0xe

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p2

    invoke-interface {v3, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 177
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    const/4 v8, 0x0

    .line 178
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_2c

    :cond_4c
    move-object/from16 v3, p2

    const/4 v8, 0x0

    const v0, -0x7fe7b9d3

    .line 179
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 180
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    :goto_2c
    if-eqz p12, :cond_50

    const v0, -0x7fe6fc50

    .line 181
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 182
    const-string v0, "Supporting"

    invoke-static {v2, v0}, Landroidx/compose/ui/layout/RulerKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v4, 0x2

    .line 183
    invoke-static {v0, v2, v4}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 184
    invoke-static {v0}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 185
    new-instance v4, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/high16 v5, 0x40800000    # 4.0f

    const/4 v8, 0x0

    invoke-direct {v4, v2, v5, v2, v8}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 186
    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v8, 0x0

    .line 187
    invoke-static {v15, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    .line 188
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    move-result v4

    .line 189
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v5

    .line 190
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 191
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 192
    iget-boolean v8, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-eqz v8, :cond_4d

    .line 193
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2d

    .line 194
    :cond_4d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 195
    :goto_2d
    invoke-static {v1, v2, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 196
    invoke-static {v1, v5, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 197
    iget-boolean v2, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    if-nez v2, :cond_4e

    .line 198
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 199
    :cond_4e
    invoke-static {v4, v1, v4, v12}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 200
    :cond_4f
    invoke-static {v1, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v20, 0x9

    and-int/lit8 v0, v0, 0xe

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v15, p12

    invoke-interface {v15, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 202
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    const/4 v8, 0x0

    .line 203
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_2e

    :cond_50
    move-object/from16 v15, p12

    const/4 v0, 0x1

    const/4 v8, 0x0

    const v2, -0x7fe1de33

    .line 204
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 205
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 206
    :goto_2e
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_2f

    :cond_51
    move-object/from16 v15, p12

    move-object v9, v2

    move-object v1, v14

    .line 207
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 208
    :goto_2f
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_52

    move-object v1, v0

    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldKt$$ExternalSyntheticLambda2;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v16, p16

    move-object/from16 v38, v1

    move-object v2, v9

    move-object v14, v13

    move-object v13, v15

    move-object/from16 v1, p0

    move-object/from16 v9, p8

    move/from16 v15, p15

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material3/OutlinedTextFieldKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/TextFieldLabelPosition$Attached;Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;II)V

    move-object/from16 v1, v38

    .line 209
    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_52
    return-void
.end method

.method public static final RadioButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v4, p3

    .line 6
    .line 7
    move/from16 v7, p6

    .line 8
    .line 9
    move-object/from16 v8, p5

    .line 10
    .line 11
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, 0x185a72e8

    .line 14
    .line 15
    .line 16
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, v7, 0x6

    .line 20
    .line 21
    const/4 v9, 0x2

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

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
    move v0, v9

    .line 33
    :goto_0
    or-int/2addr v0, v7

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v0, v7

    .line 36
    :goto_1
    and-int/lit8 v5, v7, 0x30

    .line 37
    .line 38
    if-nez v5, :cond_3

    .line 39
    .line 40
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    const/16 v5, 0x20

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v5, 0x10

    .line 50
    .line 51
    :goto_2
    or-int/2addr v0, v5

    .line 52
    :cond_3
    or-int/lit16 v0, v0, 0x180

    .line 53
    .line 54
    and-int/lit16 v5, v7, 0xc00

    .line 55
    .line 56
    if-nez v5, :cond_5

    .line 57
    .line 58
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_4

    .line 63
    .line 64
    const/16 v5, 0x800

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    const/16 v5, 0x400

    .line 68
    .line 69
    :goto_3
    or-int/2addr v0, v5

    .line 70
    :cond_5
    and-int/lit16 v5, v7, 0x6000

    .line 71
    .line 72
    if-nez v5, :cond_6

    .line 73
    .line 74
    or-int/lit16 v0, v0, 0x2000

    .line 75
    .line 76
    :cond_6
    const/high16 v5, 0x30000

    .line 77
    .line 78
    or-int/2addr v0, v5

    .line 79
    const v5, 0x12493

    .line 80
    .line 81
    .line 82
    and-int/2addr v5, v0

    .line 83
    const v6, 0x12492

    .line 84
    .line 85
    .line 86
    const/4 v10, 0x0

    .line 87
    const/4 v11, 0x1

    .line 88
    if-eq v5, v6, :cond_7

    .line 89
    .line 90
    move v5, v11

    .line 91
    goto :goto_4

    .line 92
    :cond_7
    move v5, v10

    .line 93
    :goto_4
    and-int/2addr v0, v11

    .line 94
    invoke-virtual {v8, v0, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_14

    .line 99
    .line 100
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 101
    .line 102
    .line 103
    and-int/lit8 v0, v7, 0x1

    .line 104
    .line 105
    move v5, v0

    .line 106
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 107
    .line 108
    if-eqz v5, :cond_9

    .line 109
    .line 110
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_8

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_8
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 118
    .line 119
    .line 120
    move-object/from16 v11, p2

    .line 121
    .line 122
    move-object/from16 v12, p4

    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_9
    :goto_5
    sget-object v5, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 126
    .line 127
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Landroidx/compose/material3/ColorScheme;

    .line 132
    .line 133
    iget-object v6, v5, Landroidx/compose/material3/ColorScheme;->defaultRadioButtonColorsCached:Landroidx/compose/material3/RadioButtonColors;

    .line 134
    .line 135
    if-nez v6, :cond_a

    .line 136
    .line 137
    new-instance v11, Landroidx/compose/material3/RadioButtonColors;

    .line 138
    .line 139
    sget-object v6, Landroidx/compose/material3/tokens/ListTokens;->SelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 140
    .line 141
    invoke-static {v5, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 142
    .line 143
    .line 144
    move-result-wide v12

    .line 145
    sget-object v6, Landroidx/compose/material3/tokens/ListTokens;->UnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 146
    .line 147
    invoke-static {v5, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 148
    .line 149
    .line 150
    move-result-wide v14

    .line 151
    sget-object v6, Landroidx/compose/material3/tokens/ListTokens;->DisabledSelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 152
    .line 153
    invoke-static {v5, v6}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v3

    .line 157
    const v6, 0x3ec28f5c    # 0.38f

    .line 158
    .line 159
    .line 160
    invoke-static {v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 161
    .line 162
    .line 163
    move-result-wide v16

    .line 164
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->DisabledUnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 165
    .line 166
    invoke-static {v5, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 167
    .line 168
    .line 169
    move-result-wide v3

    .line 170
    invoke-static {v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 171
    .line 172
    .line 173
    move-result-wide v18

    .line 174
    invoke-direct/range {v11 .. v19}, Landroidx/compose/material3/RadioButtonColors;-><init>(JJJJ)V

    .line 175
    .line 176
    .line 177
    iput-object v11, v5, Landroidx/compose/material3/ColorScheme;->defaultRadioButtonColorsCached:Landroidx/compose/material3/RadioButtonColors;

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_a
    move-object v11, v6

    .line 181
    :goto_6
    move-object v12, v11

    .line 182
    move-object v11, v0

    .line 183
    :goto_7
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 184
    .line 185
    .line 186
    if-eqz v1, :cond_b

    .line 187
    .line 188
    const/high16 v3, 0x40c00000    # 6.0f

    .line 189
    .line 190
    goto :goto_8

    .line 191
    :cond_b
    const/4 v3, 0x0

    .line 192
    :goto_8
    sget-object v4, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 193
    .line 194
    invoke-static {v4, v8}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    const/16 v5, 0xc

    .line 199
    .line 200
    invoke-static {v3, v4, v8, v10, v5}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/SpringSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    if-eqz p3, :cond_c

    .line 208
    .line 209
    if-eqz v1, :cond_c

    .line 210
    .line 211
    iget-wide v3, v12, Landroidx/compose/material3/RadioButtonColors;->selectedColor:J

    .line 212
    .line 213
    goto :goto_9

    .line 214
    :cond_c
    if-eqz p3, :cond_d

    .line 215
    .line 216
    if-nez v1, :cond_d

    .line 217
    .line 218
    iget-wide v3, v12, Landroidx/compose/material3/RadioButtonColors;->unselectedColor:J

    .line 219
    .line 220
    goto :goto_9

    .line 221
    :cond_d
    if-nez p3, :cond_e

    .line 222
    .line 223
    if-eqz v1, :cond_e

    .line 224
    .line 225
    iget-wide v3, v12, Landroidx/compose/material3/RadioButtonColors;->disabledSelectedColor:J

    .line 226
    .line 227
    goto :goto_9

    .line 228
    :cond_e
    iget-wide v3, v12, Landroidx/compose/material3/RadioButtonColors;->disabledUnselectedColor:J

    .line 229
    .line 230
    :goto_9
    if-eqz p3, :cond_f

    .line 231
    .line 232
    const v5, 0x47359f1d

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 236
    .line 237
    .line 238
    sget-object v5, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 239
    .line 240
    invoke-static {v5, v8}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-static {v3, v4, v5, v8}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/SpringSpec;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 249
    .line 250
    .line 251
    :goto_a
    move-object v14, v3

    .line 252
    goto :goto_b

    .line 253
    :cond_f
    const v5, 0x4738551a

    .line 254
    .line 255
    .line 256
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 257
    .line 258
    .line 259
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 260
    .line 261
    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 262
    .line 263
    .line 264
    invoke-static {v5, v8}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 269
    .line 270
    .line 271
    goto :goto_a

    .line 272
    :goto_b
    const/high16 v15, 0x40000000    # 2.0f

    .line 273
    .line 274
    if-eqz v2, :cond_10

    .line 275
    .line 276
    sget v3, Landroidx/compose/material3/tokens/ListTokens;->StateLayerSize:F

    .line 277
    .line 278
    div-float/2addr v3, v15

    .line 279
    const/4 v4, 0x4

    .line 280
    invoke-static {v10, v3, v4}, Landroidx/compose/material3/RippleKt;->ripple-H2RKhps$default(ZFI)Landroidx/compose/material3/RippleNodeFactory;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    new-instance v5, Landroidx/compose/ui/semantics/Role;

    .line 285
    .line 286
    const/4 v4, 0x3

    .line 287
    invoke-direct {v5, v4}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    .line 288
    .line 289
    .line 290
    const/4 v2, 0x0

    .line 291
    move-object/from16 v6, p1

    .line 292
    .line 293
    move/from16 v4, p3

    .line 294
    .line 295
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/SelectableKt;->selectable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/material3/RippleNodeFactory;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    goto :goto_c

    .line 300
    :cond_10
    move-object v2, v0

    .line 301
    :goto_c
    if-eqz p1, :cond_11

    .line 302
    .line 303
    sget-object v0, Landroidx/compose/material3/InteractiveComponentSizeKt;->MinimumInteractiveTopAlignmentLine:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 304
    .line 305
    sget-object v0, Landroidx/compose/material3/MinimumInteractiveModifier;->INSTANCE:Landroidx/compose/material3/MinimumInteractiveModifier;

    .line 306
    .line 307
    :cond_11
    invoke-interface {v11, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-static {v0, v9}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;I)Landroidx/compose/ui/Modifier;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-static {v0, v15}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    sget v1, Landroidx/compose/material3/tokens/ListTokens;->IconSize$1:F

    .line 324
    .line 325
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    or-int/2addr v1, v2

    .line 338
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    if-nez v1, :cond_12

    .line 343
    .line 344
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 345
    .line 346
    if-ne v2, v1, :cond_13

    .line 347
    .line 348
    :cond_12
    new-instance v2, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 349
    .line 350
    const/16 v1, 0x11

    .line 351
    .line 352
    invoke-direct {v2, v1, v14, v13}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    :cond_13
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 359
    .line 360
    invoke-static {v10, v8, v0, v2}, Landroidx/compose/foundation/ImageKt;->Canvas(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 361
    .line 362
    .line 363
    move-object v3, v11

    .line 364
    move-object v5, v12

    .line 365
    goto :goto_d

    .line 366
    :cond_14
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 367
    .line 368
    .line 369
    move-object/from16 v3, p2

    .line 370
    .line 371
    move-object/from16 v5, p4

    .line 372
    .line 373
    :goto_d
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    if-eqz v8, :cond_15

    .line 378
    .line 379
    new-instance v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;

    .line 380
    .line 381
    move/from16 v1, p0

    .line 382
    .line 383
    move-object/from16 v2, p1

    .line 384
    .line 385
    move/from16 v4, p3

    .line 386
    .line 387
    move v6, v7

    .line 388
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;I)V

    .line 389
    .line 390
    .line 391
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 392
    .line 393
    :cond_15
    return-void
.end method

.method public static final Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v13, p13

    .line 4
    .line 5
    move-object/from16 v0, p12

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v2, -0x4835c278

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v2, v13, 0x6

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x2

    .line 28
    :goto_0
    or-int/2addr v2, v13

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v2, v13

    .line 31
    :goto_1
    and-int/lit8 v3, v13, 0x30

    .line 32
    .line 33
    move-object/from16 v6, p1

    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    const/16 v3, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v3, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v2, v3

    .line 49
    :cond_3
    and-int/lit16 v3, v13, 0x180

    .line 50
    .line 51
    if-nez v3, :cond_5

    .line 52
    .line 53
    move-object/from16 v3, p2

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_4

    .line 60
    .line 61
    const/16 v4, 0x100

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v4, 0x80

    .line 65
    .line 66
    :goto_3
    or-int/2addr v2, v4

    .line 67
    goto :goto_4

    .line 68
    :cond_5
    move-object/from16 v3, p2

    .line 69
    .line 70
    :goto_4
    and-int/lit16 v4, v13, 0xc00

    .line 71
    .line 72
    if-nez v4, :cond_7

    .line 73
    .line 74
    move-object/from16 v4, p3

    .line 75
    .line 76
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_6

    .line 81
    .line 82
    const/16 v5, 0x800

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_6
    const/16 v5, 0x400

    .line 86
    .line 87
    :goto_5
    or-int/2addr v2, v5

    .line 88
    goto :goto_6

    .line 89
    :cond_7
    move-object/from16 v4, p3

    .line 90
    .line 91
    :goto_6
    and-int/lit16 v5, v13, 0x6000

    .line 92
    .line 93
    if-nez v5, :cond_9

    .line 94
    .line 95
    move-object/from16 v5, p4

    .line 96
    .line 97
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_8

    .line 102
    .line 103
    const/16 v7, 0x4000

    .line 104
    .line 105
    goto :goto_7

    .line 106
    :cond_8
    const/16 v7, 0x2000

    .line 107
    .line 108
    :goto_7
    or-int/2addr v2, v7

    .line 109
    goto :goto_8

    .line 110
    :cond_9
    move-object/from16 v5, p4

    .line 111
    .line 112
    :goto_8
    const/high16 v7, 0x30000

    .line 113
    .line 114
    and-int/2addr v7, v13

    .line 115
    if-nez v7, :cond_b

    .line 116
    .line 117
    move/from16 v7, p5

    .line 118
    .line 119
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    if-eqz v8, :cond_a

    .line 124
    .line 125
    const/high16 v8, 0x20000

    .line 126
    .line 127
    goto :goto_9

    .line 128
    :cond_a
    const/high16 v8, 0x10000

    .line 129
    .line 130
    :goto_9
    or-int/2addr v2, v8

    .line 131
    goto :goto_a

    .line 132
    :cond_b
    move/from16 v7, p5

    .line 133
    .line 134
    :goto_a
    const/high16 v8, 0x180000

    .line 135
    .line 136
    and-int/2addr v8, v13

    .line 137
    if-nez v8, :cond_c

    .line 138
    .line 139
    const/high16 v8, 0x80000

    .line 140
    .line 141
    or-int/2addr v2, v8

    .line 142
    :cond_c
    const/high16 v8, 0xc00000

    .line 143
    .line 144
    and-int/2addr v8, v13

    .line 145
    if-nez v8, :cond_d

    .line 146
    .line 147
    const/high16 v8, 0x400000

    .line 148
    .line 149
    or-int/2addr v2, v8

    .line 150
    :cond_d
    const/high16 v8, 0x6000000

    .line 151
    .line 152
    and-int/2addr v8, v13

    .line 153
    if-nez v8, :cond_e

    .line 154
    .line 155
    const/high16 v8, 0x2000000

    .line 156
    .line 157
    or-int/2addr v2, v8

    .line 158
    :cond_e
    const/high16 v8, 0x30000000

    .line 159
    .line 160
    and-int/2addr v8, v13

    .line 161
    move-object/from16 v12, p11

    .line 162
    .line 163
    if-nez v8, :cond_10

    .line 164
    .line 165
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    if-eqz v8, :cond_f

    .line 170
    .line 171
    const/high16 v8, 0x20000000

    .line 172
    .line 173
    goto :goto_b

    .line 174
    :cond_f
    const/high16 v8, 0x10000000

    .line 175
    .line 176
    :goto_b
    or-int/2addr v2, v8

    .line 177
    :cond_10
    const v8, 0x12492493

    .line 178
    .line 179
    .line 180
    and-int/2addr v8, v2

    .line 181
    const v9, 0x12492492

    .line 182
    .line 183
    .line 184
    const/4 v10, 0x1

    .line 185
    if-eq v8, v9, :cond_11

    .line 186
    .line 187
    move v8, v10

    .line 188
    goto :goto_c

    .line 189
    :cond_11
    const/4 v8, 0x0

    .line 190
    :goto_c
    and-int/2addr v2, v10

    .line 191
    invoke-virtual {v0, v2, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_18

    .line 196
    .line 197
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 198
    .line 199
    .line 200
    and-int/lit8 v2, v13, 0x1

    .line 201
    .line 202
    if-eqz v2, :cond_13

    .line 203
    .line 204
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_12

    .line 209
    .line 210
    goto :goto_d

    .line 211
    :cond_12
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 212
    .line 213
    .line 214
    move-wide/from16 v16, p6

    .line 215
    .line 216
    move-wide/from16 v18, p8

    .line 217
    .line 218
    move-object/from16 v2, p10

    .line 219
    .line 220
    goto :goto_e

    .line 221
    :cond_13
    :goto_d
    sget-object v2, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 222
    .line 223
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    check-cast v2, Landroidx/compose/material3/ColorScheme;

    .line 228
    .line 229
    iget-wide v8, v2, Landroidx/compose/material3/ColorScheme;->background:J

    .line 230
    .line 231
    invoke-static {v8, v9, v0}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J

    .line 232
    .line 233
    .line 234
    move-result-wide v10

    .line 235
    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 236
    .line 237
    invoke-static {v0}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    iget-object v2, v2, Landroidx/compose/foundation/layout/WindowInsetsHolder;->systemBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 242
    .line 243
    invoke-static {v0}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 244
    .line 245
    .line 246
    move-result-object v14

    .line 247
    iget-object v14, v14, Landroidx/compose/foundation/layout/WindowInsetsHolder;->displayCutout:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 248
    .line 249
    new-instance v15, Landroidx/compose/foundation/layout/UnionInsets;

    .line 250
    .line 251
    invoke-direct {v15, v2, v14}, Landroidx/compose/foundation/layout/UnionInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 252
    .line 253
    .line 254
    move-wide/from16 v16, v8

    .line 255
    .line 256
    move-wide/from16 v18, v10

    .line 257
    .line 258
    move-object v2, v15

    .line 259
    :goto_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 271
    .line 272
    if-nez v8, :cond_14

    .line 273
    .line 274
    if-ne v9, v10, :cond_15

    .line 275
    .line 276
    :cond_14
    new-instance v9, Landroidx/compose/material3/internal/MutableWindowInsets;

    .line 277
    .line 278
    invoke-direct {v9, v2}, Landroidx/compose/material3/internal/MutableWindowInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    :cond_15
    check-cast v9, Landroidx/compose/material3/internal/MutableWindowInsets;

    .line 285
    .line 286
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v11

    .line 294
    or-int/2addr v8, v11

    .line 295
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v11

    .line 299
    if-nez v8, :cond_16

    .line 300
    .line 301
    if-ne v11, v10, :cond_17

    .line 302
    .line 303
    :cond_16
    new-instance v11, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 304
    .line 305
    const/16 v8, 0x12

    .line 306
    .line 307
    invoke-direct {v11, v8, v9, v2}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    :cond_17
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 314
    .line 315
    invoke-static {v1, v11}, Landroidx/compose/foundation/layout/OffsetKt;->onConsumedWindowInsetsChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 316
    .line 317
    .line 318
    move-result-object v14

    .line 319
    new-instance v4, Landroidx/compose/material3/ScaffoldKt$Scaffold$2;

    .line 320
    .line 321
    move-object/from16 v8, p3

    .line 322
    .line 323
    move-object v11, v3

    .line 324
    move-object v10, v9

    .line 325
    move-object v9, v5

    .line 326
    move v5, v7

    .line 327
    move-object v7, v12

    .line 328
    invoke-direct/range {v4 .. v11}, Landroidx/compose/material3/ScaffoldKt$Scaffold$2;-><init>(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/internal/MutableWindowInsets;Lkotlin/jvm/functions/Function2;)V

    .line 329
    .line 330
    .line 331
    const v3, 0x329906e3

    .line 332
    .line 333
    .line 334
    invoke-static {v3, v4, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 335
    .line 336
    .line 337
    move-result-object v23

    .line 338
    const/high16 v25, 0xc00000

    .line 339
    .line 340
    const/16 v26, 0x72

    .line 341
    .line 342
    const/4 v15, 0x0

    .line 343
    const/16 v20, 0x0

    .line 344
    .line 345
    const/16 v21, 0x0

    .line 346
    .line 347
    const/16 v22, 0x0

    .line 348
    .line 349
    move-object/from16 v24, v0

    .line 350
    .line 351
    invoke-static/range {v14 .. v26}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 352
    .line 353
    .line 354
    move-object v11, v2

    .line 355
    move-wide/from16 v7, v16

    .line 356
    .line 357
    move-wide/from16 v9, v18

    .line 358
    .line 359
    goto :goto_f

    .line 360
    :cond_18
    move-object/from16 v24, v0

    .line 361
    .line 362
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 363
    .line 364
    .line 365
    move-wide/from16 v7, p6

    .line 366
    .line 367
    move-wide/from16 v9, p8

    .line 368
    .line 369
    move-object/from16 v11, p10

    .line 370
    .line 371
    :goto_f
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 372
    .line 373
    .line 374
    move-result-object v14

    .line 375
    if-eqz v14, :cond_19

    .line 376
    .line 377
    new-instance v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;

    .line 378
    .line 379
    move-object/from16 v2, p1

    .line 380
    .line 381
    move-object/from16 v3, p2

    .line 382
    .line 383
    move-object/from16 v4, p3

    .line 384
    .line 385
    move-object/from16 v5, p4

    .line 386
    .line 387
    move/from16 v6, p5

    .line 388
    .line 389
    move-object/from16 v12, p11

    .line 390
    .line 391
    invoke-direct/range {v0 .. v13}, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 392
    .line 393
    .line 394
    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 395
    .line 396
    :cond_19
    return-void
.end method

.method public static final ScaffoldLayout-FMILGgc(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move-object/from16 v7, p6

    .line 10
    .line 11
    move-object/from16 v0, p7

    .line 12
    .line 13
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v1, -0x10b4d90d

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    move/from16 v13, p0

    .line 22
    .line 23
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x2

    .line 32
    :goto_0
    or-int v1, p8, v1

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    const/16 v10, 0x20

    .line 39
    .line 40
    if-eqz v9, :cond_1

    .line 41
    .line 42
    move v9, v10

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v9, 0x10

    .line 45
    .line 46
    :goto_1
    or-int/2addr v1, v9

    .line 47
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    if-eqz v9, :cond_2

    .line 52
    .line 53
    const/16 v9, 0x100

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v9, 0x80

    .line 57
    .line 58
    :goto_2
    or-int/2addr v1, v9

    .line 59
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    const/16 v12, 0x800

    .line 64
    .line 65
    if-eqz v9, :cond_3

    .line 66
    .line 67
    move v9, v12

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    const/16 v9, 0x400

    .line 70
    .line 71
    :goto_3
    or-int/2addr v1, v9

    .line 72
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-eqz v9, :cond_4

    .line 77
    .line 78
    const/16 v9, 0x4000

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_4
    const/16 v9, 0x2000

    .line 82
    .line 83
    :goto_4
    or-int/2addr v1, v9

    .line 84
    move-object/from16 v9, p5

    .line 85
    .line 86
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v15

    .line 90
    if-eqz v15, :cond_5

    .line 91
    .line 92
    const/high16 v15, 0x20000

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_5
    const/high16 v15, 0x10000

    .line 96
    .line 97
    :goto_5
    or-int/2addr v1, v15

    .line 98
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    if-eqz v15, :cond_6

    .line 103
    .line 104
    const/high16 v15, 0x100000

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_6
    const/high16 v15, 0x80000

    .line 108
    .line 109
    :goto_6
    or-int/2addr v1, v15

    .line 110
    const v15, 0x92493

    .line 111
    .line 112
    .line 113
    and-int/2addr v15, v1

    .line 114
    const v6, 0x92492

    .line 115
    .line 116
    .line 117
    const/4 v14, 0x1

    .line 118
    if-eq v15, v6, :cond_7

    .line 119
    .line 120
    move v6, v14

    .line 121
    goto :goto_7

    .line 122
    :cond_7
    const/4 v6, 0x0

    .line 123
    :goto_7
    and-int/lit8 v15, v1, 0x1

    .line 124
    .line 125
    invoke-virtual {v0, v15, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_1c

    .line 130
    .line 131
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 136
    .line 137
    if-ne v6, v15, :cond_8

    .line 138
    .line 139
    new-instance v6, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

    .line 140
    .line 141
    invoke-direct {v6}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_8
    check-cast v6, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

    .line 148
    .line 149
    and-int/lit8 v11, v1, 0x70

    .line 150
    .line 151
    if-ne v11, v10, :cond_9

    .line 152
    .line 153
    move v10, v14

    .line 154
    goto :goto_8

    .line 155
    :cond_9
    const/4 v10, 0x0

    .line 156
    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    if-nez v10, :cond_a

    .line 161
    .line 162
    if-ne v11, v15, :cond_b

    .line 163
    .line 164
    :cond_a
    new-instance v10, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$1$1$1$1;

    .line 165
    .line 166
    const/4 v11, 0x5

    .line 167
    invoke-direct {v10, v11, v2}, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$1$1$1$1;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 168
    .line 169
    .line 170
    new-instance v11, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 171
    .line 172
    const v8, 0x24128b30

    .line 173
    .line 174
    .line 175
    invoke-direct {v11, v8, v10, v14}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_b
    move-object v10, v11

    .line 182
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 183
    .line 184
    and-int/lit16 v8, v1, 0x1c00

    .line 185
    .line 186
    if-ne v8, v12, :cond_c

    .line 187
    .line 188
    move v8, v14

    .line 189
    goto :goto_9

    .line 190
    :cond_c
    const/4 v8, 0x0

    .line 191
    :goto_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    if-nez v8, :cond_d

    .line 196
    .line 197
    if-ne v11, v15, :cond_e

    .line 198
    .line 199
    :cond_d
    new-instance v8, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$1$1$1$1;

    .line 200
    .line 201
    const/4 v11, 0x4

    .line 202
    invoke-direct {v8, v11, v4}, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$1$1$1$1;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 203
    .line 204
    .line 205
    new-instance v11, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 206
    .line 207
    const v12, 0x18f7e4f7

    .line 208
    .line 209
    .line 210
    invoke-direct {v11, v12, v8, v14}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_e
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 217
    .line 218
    const v8, 0xe000

    .line 219
    .line 220
    .line 221
    and-int/2addr v8, v1

    .line 222
    const/16 v12, 0x4000

    .line 223
    .line 224
    if-ne v8, v12, :cond_f

    .line 225
    .line 226
    move v8, v14

    .line 227
    goto :goto_a

    .line 228
    :cond_f
    const/4 v8, 0x0

    .line 229
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v12

    .line 233
    if-nez v8, :cond_10

    .line 234
    .line 235
    if-ne v12, v15, :cond_11

    .line 236
    .line 237
    :cond_10
    new-instance v8, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$1$1$1$1;

    .line 238
    .line 239
    const/4 v12, 0x3

    .line 240
    invoke-direct {v8, v12, v5}, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$1$1$1$1;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 241
    .line 242
    .line 243
    new-instance v12, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 244
    .line 245
    const v2, 0x142ea147

    .line 246
    .line 247
    .line 248
    invoke-direct {v12, v2, v8, v14}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    :cond_11
    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 255
    .line 256
    and-int/lit16 v2, v1, 0x380

    .line 257
    .line 258
    const/16 v8, 0x100

    .line 259
    .line 260
    if-ne v2, v8, :cond_12

    .line 261
    .line 262
    move v2, v14

    .line 263
    goto :goto_b

    .line 264
    :cond_12
    const/4 v2, 0x0

    .line 265
    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    if-nez v2, :cond_14

    .line 270
    .line 271
    if-ne v8, v15, :cond_13

    .line 272
    .line 273
    goto :goto_c

    .line 274
    :cond_13
    move/from16 v17, v1

    .line 275
    .line 276
    goto :goto_d

    .line 277
    :cond_14
    :goto_c
    new-instance v2, Landroidx/compose/material3/ButtonKt$Button$2$1;

    .line 278
    .line 279
    invoke-direct {v2, v3, v6}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;)V

    .line 280
    .line 281
    .line 282
    new-instance v8, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 283
    .line 284
    move/from16 v17, v1

    .line 285
    .line 286
    const v1, -0x69e1890d

    .line 287
    .line 288
    .line 289
    invoke-direct {v8, v1, v2, v14}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    :goto_d
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 296
    .line 297
    const/high16 v1, 0x380000

    .line 298
    .line 299
    and-int v1, v17, v1

    .line 300
    .line 301
    const/high16 v2, 0x100000

    .line 302
    .line 303
    if-ne v1, v2, :cond_15

    .line 304
    .line 305
    move v1, v14

    .line 306
    goto :goto_e

    .line 307
    :cond_15
    const/4 v1, 0x0

    .line 308
    :goto_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    if-nez v1, :cond_16

    .line 313
    .line 314
    if-ne v2, v15, :cond_17

    .line 315
    .line 316
    :cond_16
    new-instance v1, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$1$1$1$1;

    .line 317
    .line 318
    const/4 v2, 0x2

    .line 319
    invoke-direct {v1, v2, v7}, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$1$1$1$1;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 320
    .line 321
    .line 322
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 323
    .line 324
    const v3, -0x67371298

    .line 325
    .line 326
    .line 327
    invoke-direct {v2, v3, v1, v14}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    :cond_17
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 334
    .line 335
    const/high16 v1, 0x70000

    .line 336
    .line 337
    and-int v1, v17, v1

    .line 338
    .line 339
    const/high16 v3, 0x20000

    .line 340
    .line 341
    if-ne v1, v3, :cond_18

    .line 342
    .line 343
    move v1, v14

    .line 344
    goto :goto_f

    .line 345
    :cond_18
    const/4 v1, 0x0

    .line 346
    :goto_f
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    or-int/2addr v1, v3

    .line 351
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    or-int/2addr v1, v3

    .line 356
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    or-int/2addr v1, v3

    .line 361
    and-int/lit8 v3, v17, 0xe

    .line 362
    .line 363
    const/4 v14, 0x4

    .line 364
    if-ne v3, v14, :cond_19

    .line 365
    .line 366
    const/4 v3, 0x1

    .line 367
    goto :goto_10

    .line 368
    :cond_19
    const/4 v3, 0x0

    .line 369
    :goto_10
    or-int/2addr v1, v3

    .line 370
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    or-int/2addr v1, v3

    .line 375
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    or-int/2addr v1, v3

    .line 380
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    if-nez v1, :cond_1a

    .line 385
    .line 386
    if-ne v3, v15, :cond_1b

    .line 387
    .line 388
    :cond_1a
    move-object/from16 v16, v8

    .line 389
    .line 390
    goto :goto_11

    .line 391
    :cond_1b
    const/4 v1, 0x0

    .line 392
    const/4 v2, 0x1

    .line 393
    goto :goto_12

    .line 394
    :goto_11
    new-instance v8, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda2;

    .line 395
    .line 396
    move-object v14, v2

    .line 397
    move-object v15, v6

    .line 398
    const/4 v1, 0x0

    .line 399
    const/4 v2, 0x1

    .line 400
    invoke-direct/range {v8 .. v16}, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;Lkotlin/jvm/functions/Function2;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    move-object v3, v8

    .line 407
    :goto_12
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 408
    .line 409
    const/4 v6, 0x0

    .line 410
    invoke-static {v6, v3, v0, v1, v2}, Landroidx/compose/ui/layout/RulerKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 411
    .line 412
    .line 413
    goto :goto_13

    .line 414
    :cond_1c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 415
    .line 416
    .line 417
    :goto_13
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 418
    .line 419
    .line 420
    move-result-object v9

    .line 421
    if-eqz v9, :cond_1d

    .line 422
    .line 423
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;

    .line 424
    .line 425
    move/from16 v1, p0

    .line 426
    .line 427
    move-object/from16 v2, p1

    .line 428
    .line 429
    move-object/from16 v3, p2

    .line 430
    .line 431
    move-object/from16 v6, p5

    .line 432
    .line 433
    move/from16 v8, p8

    .line 434
    .line 435
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;-><init>(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;I)V

    .line 436
    .line 437
    .line 438
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 439
    .line 440
    :cond_1d
    return-void
.end method

.method public static final SegmentedButton(Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 42

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p12

    .line 6
    .line 7
    move-object/from16 v14, p11

    .line 8
    .line 9
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v3, 0x5b5117a6

    .line 12
    .line 13
    .line 14
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v3, v0, 0x6

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v3, 0x2

    .line 30
    :goto_0
    or-int/2addr v3, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v3, v0

    .line 33
    :goto_1
    and-int/lit8 v5, v0, 0x30

    .line 34
    .line 35
    if-nez v5, :cond_3

    .line 36
    .line 37
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    const/16 v5, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v5, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v3, v5

    .line 49
    :cond_3
    and-int/lit16 v5, v0, 0x180

    .line 50
    .line 51
    if-nez v5, :cond_5

    .line 52
    .line 53
    move-object/from16 v5, p2

    .line 54
    .line 55
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_4

    .line 60
    .line 61
    const/16 v6, 0x100

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v6, 0x80

    .line 65
    .line 66
    :goto_3
    or-int/2addr v3, v6

    .line 67
    goto :goto_4

    .line 68
    :cond_5
    move-object/from16 v5, p2

    .line 69
    .line 70
    :goto_4
    and-int/lit16 v6, v0, 0xc00

    .line 71
    .line 72
    if-nez v6, :cond_7

    .line 73
    .line 74
    move-object/from16 v6, p3

    .line 75
    .line 76
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_6

    .line 81
    .line 82
    const/16 v7, 0x800

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_6
    const/16 v7, 0x400

    .line 86
    .line 87
    :goto_5
    or-int/2addr v3, v7

    .line 88
    goto :goto_6

    .line 89
    :cond_7
    move-object/from16 v6, p3

    .line 90
    .line 91
    :goto_6
    const v7, 0x36000

    .line 92
    .line 93
    .line 94
    or-int/2addr v7, v3

    .line 95
    const/high16 v8, 0x180000

    .line 96
    .line 97
    and-int/2addr v8, v0

    .line 98
    if-nez v8, :cond_8

    .line 99
    .line 100
    const v7, 0xb6000

    .line 101
    .line 102
    .line 103
    or-int/2addr v7, v3

    .line 104
    :cond_8
    const/high16 v3, 0xc00000

    .line 105
    .line 106
    and-int/2addr v3, v0

    .line 107
    if-nez v3, :cond_9

    .line 108
    .line 109
    const/high16 v3, 0x400000

    .line 110
    .line 111
    or-int/2addr v7, v3

    .line 112
    :cond_9
    const/high16 v3, 0x36000000

    .line 113
    .line 114
    or-int/2addr v3, v7

    .line 115
    const v7, 0x12492493

    .line 116
    .line 117
    .line 118
    and-int/2addr v7, v3

    .line 119
    const v8, 0x12492492

    .line 120
    .line 121
    .line 122
    const/4 v9, 0x0

    .line 123
    const/4 v10, 0x1

    .line 124
    if-ne v7, v8, :cond_a

    .line 125
    .line 126
    move v7, v9

    .line 127
    goto :goto_7

    .line 128
    :cond_a
    move v7, v10

    .line 129
    :goto_7
    and-int/lit8 v8, v3, 0x1

    .line 130
    .line 131
    invoke-virtual {v14, v8, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-eqz v7, :cond_1b

    .line 136
    .line 137
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 138
    .line 139
    .line 140
    and-int/lit8 v7, v0, 0x1

    .line 141
    .line 142
    const v8, -0x1f80001

    .line 143
    .line 144
    .line 145
    if-eqz v7, :cond_c

    .line 146
    .line 147
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-eqz v7, :cond_b

    .line 152
    .line 153
    goto :goto_8

    .line 154
    :cond_b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 155
    .line 156
    .line 157
    and-int/2addr v3, v8

    .line 158
    move/from16 v5, p5

    .line 159
    .line 160
    move-object/from16 v4, p6

    .line 161
    .line 162
    move-object/from16 v11, p7

    .line 163
    .line 164
    move-object/from16 v7, p8

    .line 165
    .line 166
    move-object/from16 v8, p9

    .line 167
    .line 168
    move v10, v3

    .line 169
    move-object/from16 v3, p4

    .line 170
    .line 171
    goto/16 :goto_b

    .line 172
    .line 173
    :cond_c
    :goto_8
    sget-object v7, Landroidx/compose/material3/SegmentedButtonDefaults;->INSTANCE:Landroidx/compose/material3/SegmentedButtonDefaults;

    .line 174
    .line 175
    sget-object v7, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 176
    .line 177
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    check-cast v7, Landroidx/compose/material3/ColorScheme;

    .line 182
    .line 183
    iget-object v11, v7, Landroidx/compose/material3/ColorScheme;->defaultSegmentedButtonColorsCached:Landroidx/compose/material3/SegmentedButtonColors;

    .line 184
    .line 185
    if-nez v11, :cond_d

    .line 186
    .line 187
    new-instance v15, Landroidx/compose/material3/SegmentedButtonColors;

    .line 188
    .line 189
    sget-object v11, Landroidx/compose/material3/tokens/ListTokens;->SelectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 190
    .line 191
    invoke-static {v7, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 192
    .line 193
    .line 194
    move-result-wide v16

    .line 195
    sget-object v12, Landroidx/compose/material3/tokens/ListTokens;->SelectedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 196
    .line 197
    invoke-static {v7, v12}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 198
    .line 199
    .line 200
    move-result-wide v18

    .line 201
    sget-object v12, Landroidx/compose/material3/tokens/ListTokens;->OutlineColor$2:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 202
    .line 203
    invoke-static {v7, v12}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 204
    .line 205
    .line 206
    move-result-wide v20

    .line 207
    sget-wide v22, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 208
    .line 209
    sget-object v13, Landroidx/compose/material3/tokens/ListTokens;->UnselectedLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 210
    .line 211
    invoke-static {v7, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 212
    .line 213
    .line 214
    move-result-wide v24

    .line 215
    invoke-static {v7, v12}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 216
    .line 217
    .line 218
    move-result-wide v26

    .line 219
    invoke-static {v7, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 220
    .line 221
    .line 222
    move-result-wide v28

    .line 223
    sget-object v11, Landroidx/compose/material3/tokens/ListTokens;->DisabledLabelTextColor$2:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 224
    .line 225
    invoke-static {v7, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 226
    .line 227
    .line 228
    move-result-wide v4

    .line 229
    sget v13, Landroidx/compose/material3/tokens/ListTokens;->DisabledLabelTextOpacity$2:F

    .line 230
    .line 231
    invoke-static {v13, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 232
    .line 233
    .line 234
    move-result-wide v30

    .line 235
    invoke-static {v7, v12}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 236
    .line 237
    .line 238
    move-result-wide v4

    .line 239
    move/from16 v40, v8

    .line 240
    .line 241
    sget v8, Landroidx/compose/material3/tokens/ListTokens;->DisabledOutlineOpacity:F

    .line 242
    .line 243
    invoke-static {v8, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 244
    .line 245
    .line 246
    move-result-wide v32

    .line 247
    invoke-static {v7, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 248
    .line 249
    .line 250
    move-result-wide v4

    .line 251
    invoke-static {v13, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 252
    .line 253
    .line 254
    move-result-wide v36

    .line 255
    invoke-static {v7, v12}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 256
    .line 257
    .line 258
    move-result-wide v4

    .line 259
    invoke-static {v8, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 260
    .line 261
    .line 262
    move-result-wide v38

    .line 263
    move-wide/from16 v34, v22

    .line 264
    .line 265
    invoke-direct/range {v15 .. v39}, Landroidx/compose/material3/SegmentedButtonColors;-><init>(JJJJJJJJJJJJ)V

    .line 266
    .line 267
    .line 268
    iput-object v15, v7, Landroidx/compose/material3/ColorScheme;->defaultSegmentedButtonColorsCached:Landroidx/compose/material3/SegmentedButtonColors;

    .line 269
    .line 270
    move-object v11, v15

    .line 271
    goto :goto_9

    .line 272
    :cond_d
    move/from16 v40, v8

    .line 273
    .line 274
    :goto_9
    if-eqz v2, :cond_e

    .line 275
    .line 276
    iget-wide v4, v11, Landroidx/compose/material3/SegmentedButtonColors;->activeBorderColor:J

    .line 277
    .line 278
    goto :goto_a

    .line 279
    :cond_e
    if-nez v2, :cond_f

    .line 280
    .line 281
    iget-wide v4, v11, Landroidx/compose/material3/SegmentedButtonColors;->inactiveBorderColor:J

    .line 282
    .line 283
    goto :goto_a

    .line 284
    :cond_f
    iget-wide v4, v11, Landroidx/compose/material3/SegmentedButtonColors;->disabledInactiveBorderColor:J

    .line 285
    .line 286
    :goto_a
    sget v7, Landroidx/compose/material3/SegmentedButtonDefaults;->BorderWidth:F

    .line 287
    .line 288
    invoke-static {v7, v4, v5}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    and-int v3, v3, v40

    .line 293
    .line 294
    sget-object v5, Landroidx/compose/material3/SegmentedButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 295
    .line 296
    new-instance v7, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButton$4;

    .line 297
    .line 298
    invoke-direct {v7, v2}, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButton$4;-><init>(Z)V

    .line 299
    .line 300
    .line 301
    const v8, -0x265fab81

    .line 302
    .line 303
    .line 304
    invoke-static {v8, v7, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 309
    .line 310
    move/from16 v41, v10

    .line 311
    .line 312
    move v10, v3

    .line 313
    move-object v3, v8

    .line 314
    move-object v8, v7

    .line 315
    move-object v7, v5

    .line 316
    move/from16 v5, v41

    .line 317
    .line 318
    move-object/from16 v41, v11

    .line 319
    .line 320
    move-object v11, v4

    .line 321
    move-object/from16 v4, v41

    .line 322
    .line 323
    :goto_b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 324
    .line 325
    .line 326
    const v12, -0x5e2631cb

    .line 327
    .line 328
    .line 329
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v12

    .line 336
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 337
    .line 338
    if-ne v12, v13, :cond_10

    .line 339
    .line 340
    new-instance v12, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 341
    .line 342
    invoke-direct {v12}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    :cond_10
    check-cast v12, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 349
    .line 350
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    if-eqz v5, :cond_11

    .line 357
    .line 358
    if-eqz v2, :cond_11

    .line 359
    .line 360
    move/from16 p4, v10

    .line 361
    .line 362
    iget-wide v9, v4, Landroidx/compose/material3/SegmentedButtonColors;->activeContainerColor:J

    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_11
    move/from16 p4, v10

    .line 366
    .line 367
    if-eqz v5, :cond_12

    .line 368
    .line 369
    if-nez v2, :cond_12

    .line 370
    .line 371
    iget-wide v9, v4, Landroidx/compose/material3/SegmentedButtonColors;->inactiveContainerColor:J

    .line 372
    .line 373
    goto :goto_c

    .line 374
    :cond_12
    if-nez v5, :cond_13

    .line 375
    .line 376
    if-eqz v2, :cond_13

    .line 377
    .line 378
    iget-wide v9, v4, Landroidx/compose/material3/SegmentedButtonColors;->disabledActiveContainerColor:J

    .line 379
    .line 380
    goto :goto_c

    .line 381
    :cond_13
    iget-wide v9, v4, Landroidx/compose/material3/SegmentedButtonColors;->disabledInactiveContainerColor:J

    .line 382
    .line 383
    :goto_c
    if-eqz v5, :cond_14

    .line 384
    .line 385
    if-eqz v2, :cond_14

    .line 386
    .line 387
    move/from16 p5, v5

    .line 388
    .line 389
    iget-wide v5, v4, Landroidx/compose/material3/SegmentedButtonColors;->activeContentColor:J

    .line 390
    .line 391
    goto :goto_d

    .line 392
    :cond_14
    move/from16 p5, v5

    .line 393
    .line 394
    if-eqz p5, :cond_15

    .line 395
    .line 396
    if-nez v2, :cond_15

    .line 397
    .line 398
    iget-wide v5, v4, Landroidx/compose/material3/SegmentedButtonColors;->inactiveContentColor:J

    .line 399
    .line 400
    goto :goto_d

    .line 401
    :cond_15
    if-nez p5, :cond_16

    .line 402
    .line 403
    if-eqz v2, :cond_16

    .line 404
    .line 405
    iget-wide v5, v4, Landroidx/compose/material3/SegmentedButtonColors;->disabledActiveContentColor:J

    .line 406
    .line 407
    goto :goto_d

    .line 408
    :cond_16
    iget-wide v5, v4, Landroidx/compose/material3/SegmentedButtonColors;->disabledInactiveContentColor:J

    .line 409
    .line 410
    :goto_d
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v15

    .line 414
    if-ne v15, v13, :cond_17

    .line 415
    .line 416
    new-instance v15, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 417
    .line 418
    const/4 v0, 0x0

    .line 419
    invoke-direct {v15, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    :cond_17
    check-cast v15, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 426
    .line 427
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v16

    .line 431
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    if-nez v16, :cond_19

    .line 436
    .line 437
    if-ne v0, v13, :cond_18

    .line 438
    .line 439
    goto :goto_e

    .line 440
    :cond_18
    move-object/from16 p7, v4

    .line 441
    .line 442
    move-wide/from16 p8, v5

    .line 443
    .line 444
    goto :goto_f

    .line 445
    :cond_19
    :goto_e
    new-instance v0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 446
    .line 447
    move-object/from16 p7, v4

    .line 448
    .line 449
    const/16 v4, 0x1b

    .line 450
    .line 451
    move-wide/from16 p8, v5

    .line 452
    .line 453
    const/4 v5, 0x0

    .line 454
    invoke-direct {v0, v12, v15, v5, v4}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    :goto_f
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 461
    .line 462
    invoke-static {v14, v12, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 463
    .line 464
    .line 465
    const/high16 v0, 0x3f800000    # 1.0f

    .line 466
    .line 467
    invoke-virtual {v1, v3, v0}, Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;->weight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    new-instance v4, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda3;

    .line 472
    .line 473
    const/4 v5, 0x0

    .line 474
    invoke-direct {v4, v5, v15, v2}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Z)V

    .line 475
    .line 476
    .line 477
    invoke-static {v0, v4}, Landroidx/compose/ui/layout/RulerKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    sget v4, Landroidx/compose/material3/ButtonDefaults;->MinWidth:F

    .line 482
    .line 483
    sget v5, Landroidx/compose/material3/ButtonDefaults;->MinHeight:F

    .line 484
    .line 485
    invoke-static {v0, v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    if-ne v4, v13, :cond_1a

    .line 494
    .line 495
    new-instance v4, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;

    .line 496
    .line 497
    const/16 v5, 0xd

    .line 498
    .line 499
    invoke-direct {v4, v5}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    :cond_1a
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 506
    .line 507
    const/4 v15, 0x0

    .line 508
    invoke-static {v0, v15, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    new-instance v0, Landroidx/compose/material3/TooltipKt$TooltipBox$3;

    .line 513
    .line 514
    move-object/from16 v5, p10

    .line 515
    .line 516
    const/4 v6, 0x2

    .line 517
    invoke-direct {v0, v6, v5, v8, v7}, Landroidx/compose/material3/TooltipKt$TooltipBox$3;-><init>(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    const v6, -0x4801d9c4

    .line 521
    .line 522
    .line 523
    invoke-static {v6, v0, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 524
    .line 525
    .line 526
    move-result-object v13

    .line 527
    shr-int/lit8 v0, p4, 0x3

    .line 528
    .line 529
    and-int/lit8 v0, v0, 0x7e

    .line 530
    .line 531
    shr-int/lit8 v6, p4, 0x6

    .line 532
    .line 533
    and-int/lit16 v6, v6, 0x1c00

    .line 534
    .line 535
    or-int/2addr v0, v6

    .line 536
    const v6, 0xe000

    .line 537
    .line 538
    .line 539
    shl-int/lit8 v15, p4, 0x3

    .line 540
    .line 541
    and-int/2addr v6, v15

    .line 542
    or-int v15, v0, v6

    .line 543
    .line 544
    const/16 v16, 0x180

    .line 545
    .line 546
    move-object/from16 v6, p3

    .line 547
    .line 548
    move/from16 v5, p5

    .line 549
    .line 550
    move-object/from16 v17, p7

    .line 551
    .line 552
    move-object v0, v3

    .line 553
    move-object/from16 v19, v7

    .line 554
    .line 555
    move-object/from16 v18, v8

    .line 556
    .line 557
    move-wide v7, v9

    .line 558
    move-object/from16 v3, p2

    .line 559
    .line 560
    move-wide/from16 v9, p8

    .line 561
    .line 562
    invoke-static/range {v2 .. v16}, Landroidx/compose/material3/SurfaceKt;->Surface-d85dljk(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 563
    .line 564
    .line 565
    move v6, v5

    .line 566
    move-object v8, v11

    .line 567
    move-object/from16 v7, v17

    .line 568
    .line 569
    move-object/from16 v10, v18

    .line 570
    .line 571
    move-object/from16 v9, v19

    .line 572
    .line 573
    move-object v5, v0

    .line 574
    goto :goto_10

    .line 575
    :cond_1b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 576
    .line 577
    .line 578
    move-object/from16 v5, p4

    .line 579
    .line 580
    move/from16 v6, p5

    .line 581
    .line 582
    move-object/from16 v7, p6

    .line 583
    .line 584
    move-object/from16 v8, p7

    .line 585
    .line 586
    move-object/from16 v9, p8

    .line 587
    .line 588
    move-object/from16 v10, p9

    .line 589
    .line 590
    :goto_10
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 591
    .line 592
    .line 593
    move-result-object v13

    .line 594
    if-eqz v13, :cond_1c

    .line 595
    .line 596
    new-instance v0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;

    .line 597
    .line 598
    move/from16 v2, p1

    .line 599
    .line 600
    move-object/from16 v3, p2

    .line 601
    .line 602
    move-object/from16 v4, p3

    .line 603
    .line 604
    move-object/from16 v11, p10

    .line 605
    .line 606
    move/from16 v12, p12

    .line 607
    .line 608
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 609
    .line 610
    .line 611
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 612
    .line 613
    :cond_1c
    return-void
.end method

.method public static final SegmentedButtonContent(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x3fbbb0b1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 v1, 0x10

    .line 29
    .line 30
    :goto_1
    or-int/2addr v0, v1

    .line 31
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/16 v1, 0x100

    .line 38
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
    const/16 v2, 0x92

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x1

    .line 49
    if-eq v1, v2, :cond_3

    .line 50
    .line 51
    move v1, v4

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    move v1, v3

    .line 54
    :goto_3
    and-int/2addr v0, v4

    .line 55
    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_7

    .line 60
    .line 61
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 62
    .line 63
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 64
    .line 65
    invoke-static {v1, p2}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {p3, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 91
    .line 92
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 93
    .line 94
    .line 95
    iget-boolean v6, p3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 96
    .line 97
    if-eqz v6, :cond_4

    .line 98
    .line 99
    invoke-virtual {p3, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_4
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 104
    .line 105
    .line 106
    :goto_4
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 107
    .line 108
    invoke-static {p3, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 109
    .line 110
    .line 111
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 112
    .line 113
    invoke-static {p3, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 114
    .line 115
    .line 116
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 117
    .line 118
    iget-boolean v3, p3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 119
    .line 120
    if-nez v3, :cond_5

    .line 121
    .line 122
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-nez v3, :cond_6

    .line 135
    .line 136
    :cond_5
    invoke-static {v2, p3, v2, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 137
    .line 138
    .line 139
    :cond_6
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 140
    .line 141
    invoke-static {p3, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 142
    .line 143
    .line 144
    sget-object v0, Landroidx/compose/material3/tokens/ListTokens;->LabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 145
    .line 146
    invoke-static {v0, p3}, Landroidx/compose/material3/TypographyKt;->getValue(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextStyle;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    sget-object v1, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    .line 151
    .line 152
    invoke-static {v1, p3}, Landroidx/compose/material3/CardKt;->value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    new-instance v2, Landroidx/compose/material3/TooltipKt$TooltipBox$3;

    .line 157
    .line 158
    const/4 v3, 0x3

    .line 159
    invoke-direct {v2, v3, p1, p0, v1}, Landroidx/compose/material3/TooltipKt$TooltipBox$3;-><init>(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    const v1, -0x51d06dc8

    .line 163
    .line 164
    .line 165
    invoke-static {v1, v2, p3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const/16 v2, 0x30

    .line 170
    .line 171
    invoke-static {v0, v1, p3, v2}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_7
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 179
    .line 180
    .line 181
    :goto_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    if-eqz p3, :cond_8

    .line 186
    .line 187
    new-instance v0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 188
    .line 189
    const/4 v5, 0x0

    .line 190
    move-object v1, p0

    .line 191
    move-object v2, p1

    .line 192
    move-object v3, p2

    .line 193
    move v4, p4

    .line 194
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 195
    .line 196
    .line 197
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 198
    .line 199
    :cond_8
    return-void
.end method

.method public static final SingleChoiceSegmentedButtonRow-uFdPcIQ(Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x79ad6569

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p4, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p4

    .line 25
    :goto_1
    const/16 v1, 0x30

    .line 26
    .line 27
    or-int/2addr v0, v1

    .line 28
    and-int/lit16 v2, p4, 0x180

    .line 29
    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    const/16 v2, 0x100

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v2, 0x80

    .line 42
    .line 43
    :goto_2
    or-int/2addr v0, v2

    .line 44
    :cond_3
    and-int/lit16 v2, v0, 0x93

    .line 45
    .line 46
    const/16 v3, 0x92

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x1

    .line 50
    if-eq v2, v3, :cond_4

    .line 51
    .line 52
    move v2, v5

    .line 53
    goto :goto_3

    .line 54
    :cond_4
    move v2, v4

    .line 55
    :goto_3
    and-int/lit8 v3, v0, 0x1

    .line 56
    .line 57
    invoke-virtual {p3, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_9

    .line 62
    .line 63
    sget p1, Landroidx/compose/material3/SegmentedButtonDefaults;->BorderWidth:F

    .line 64
    .line 65
    new-instance v2, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 66
    .line 67
    const/16 v3, 0x10

    .line 68
    .line 69
    invoke-direct {v2, v3}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0, v4, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const/4 v3, 0x0

    .line 77
    const/high16 v4, 0x42200000    # 40.0f

    .line 78
    .line 79
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    sget-object v3, Landroidx/compose/foundation/layout/IntrinsicSize;->Min:Landroidx/compose/foundation/layout/IntrinsicSize;

    .line 84
    .line 85
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/OffsetKt;->width(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/IntrinsicSize;)Landroidx/compose/ui/Modifier;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    neg-float v3, p1

    .line 90
    new-instance v4, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 91
    .line 92
    new-instance v6, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 93
    .line 94
    const/4 v7, 0x7

    .line 95
    invoke-direct {v6, v7}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v4, v3, v5, v6}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 99
    .line 100
    .line 101
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 102
    .line 103
    invoke-static {v4, v3, p3, v1}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-static {p3, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 125
    .line 126
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 127
    .line 128
    .line 129
    iget-boolean v7, p3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 130
    .line 131
    if-eqz v7, :cond_5

    .line 132
    .line 133
    invoke-virtual {p3, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 138
    .line 139
    .line 140
    :goto_4
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 141
    .line 142
    invoke-static {p3, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 143
    .line 144
    .line 145
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 146
    .line 147
    invoke-static {p3, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 148
    .line 149
    .line 150
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 151
    .line 152
    iget-boolean v4, p3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 153
    .line 154
    if-nez v4, :cond_6

    .line 155
    .line 156
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-nez v4, :cond_7

    .line 169
    .line 170
    :cond_6
    invoke-static {v3, p3, v3, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 171
    .line 172
    .line 173
    :cond_7
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 174
    .line 175
    invoke-static {p3, v2, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 183
    .line 184
    if-ne v1, v2, :cond_8

    .line 185
    .line 186
    new-instance v1, Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;

    .line 187
    .line 188
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    :cond_8
    check-cast v1, Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;

    .line 195
    .line 196
    shr-int/lit8 v0, v0, 0x3

    .line 197
    .line 198
    and-int/lit8 v0, v0, 0x70

    .line 199
    .line 200
    or-int/lit8 v0, v0, 0x6

    .line 201
    .line 202
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p2, v1, p3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p3, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_9
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 214
    .line 215
    .line 216
    :goto_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 217
    .line 218
    .line 219
    move-result-object p3

    .line 220
    if-eqz p3, :cond_a

    .line 221
    .line 222
    new-instance v0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda0;

    .line 223
    .line 224
    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 225
    .line 226
    .line 227
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 228
    .line 229
    :cond_a
    return-void
.end method

.method public static final Snackbar-sDKtq54(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJJJJLandroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move/from16 v14, p14

    .line 2
    .line 3
    move-object/from16 v0, p13

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, 0x105e641f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, v14, 0x6

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    move-object/from16 v1, p0

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x2

    .line 28
    :goto_0
    or-int/2addr v2, v14

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-object/from16 v1, p0

    .line 31
    .line 32
    move v2, v14

    .line 33
    :goto_1
    or-int/lit16 v3, v2, 0x1b0

    .line 34
    .line 35
    and-int/lit16 v4, v14, 0xc00

    .line 36
    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    or-int/lit16 v3, v2, 0x5b0

    .line 40
    .line 41
    :cond_2
    and-int/lit16 v2, v14, 0x6000

    .line 42
    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    or-int/lit16 v3, v3, 0x2000

    .line 46
    .line 47
    :cond_3
    const/high16 v2, 0x30000

    .line 48
    .line 49
    and-int/2addr v2, v14

    .line 50
    if-nez v2, :cond_4

    .line 51
    .line 52
    const/high16 v2, 0x10000

    .line 53
    .line 54
    or-int/2addr v3, v2

    .line 55
    :cond_4
    const/high16 v2, 0x180000

    .line 56
    .line 57
    and-int/2addr v2, v14

    .line 58
    if-nez v2, :cond_5

    .line 59
    .line 60
    const/high16 v2, 0x80000

    .line 61
    .line 62
    or-int/2addr v3, v2

    .line 63
    :cond_5
    const/high16 v2, 0xc00000

    .line 64
    .line 65
    and-int/2addr v2, v14

    .line 66
    if-nez v2, :cond_6

    .line 67
    .line 68
    const/high16 v2, 0x400000

    .line 69
    .line 70
    or-int/2addr v3, v2

    .line 71
    :cond_6
    const/high16 v2, 0x6000000

    .line 72
    .line 73
    and-int/2addr v2, v14

    .line 74
    if-nez v2, :cond_7

    .line 75
    .line 76
    const/high16 v2, 0x2000000

    .line 77
    .line 78
    or-int/2addr v3, v2

    .line 79
    :cond_7
    const v2, 0x2492493

    .line 80
    .line 81
    .line 82
    and-int/2addr v2, v3

    .line 83
    const v4, 0x2492492

    .line 84
    .line 85
    .line 86
    const/4 v5, 0x1

    .line 87
    if-eq v2, v4, :cond_8

    .line 88
    .line 89
    move v2, v5

    .line 90
    goto :goto_2

    .line 91
    :cond_8
    const/4 v2, 0x0

    .line 92
    :goto_2
    and-int/2addr v3, v5

    .line 93
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_b

    .line 98
    .line 99
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 100
    .line 101
    .line 102
    and-int/lit8 v2, v14, 0x1

    .line 103
    .line 104
    if-eqz v2, :cond_a

    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_9

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_a
    :goto_3
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ContainerShape$7:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 118
    .line 119
    invoke-static {v2, v0}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    .line 120
    .line 121
    .line 122
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ContainerColor$10:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 123
    .line 124
    invoke-static {v2, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 125
    .line 126
    .line 127
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->SupportingTextColor$2:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 128
    .line 129
    invoke-static {v2, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 130
    .line 131
    .line 132
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->ActionLabelTextColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 133
    .line 134
    invoke-static {v2, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 135
    .line 136
    .line 137
    invoke-static {v2, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 138
    .line 139
    .line 140
    sget-object v2, Landroidx/compose/material3/tokens/ListTokens;->IconColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 141
    .line 142
    invoke-static {v2, v0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 143
    .line 144
    .line 145
    :goto_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    const/4 v0, 0x0

    .line 152
    throw v0

    .line 153
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 157
    .line 158
    .line 159
    move-result-object v15

    .line 160
    if-eqz v15, :cond_c

    .line 161
    .line 162
    new-instance v0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;

    .line 163
    .line 164
    move-object/from16 v2, p1

    .line 165
    .line 166
    move-object/from16 v3, p2

    .line 167
    .line 168
    move-wide/from16 v4, p3

    .line 169
    .line 170
    move-wide/from16 v6, p5

    .line 171
    .line 172
    move-wide/from16 v8, p7

    .line 173
    .line 174
    move-wide/from16 v10, p9

    .line 175
    .line 176
    move-wide/from16 v12, p11

    .line 177
    .line 178
    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJJJJI)V

    .line 179
    .line 180
    .line 181
    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 182
    .line 183
    :cond_c
    return-void
.end method

.method public static final SnackbarHost(Landroidx/camera/view/PreviewView$1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/camera/view/PreviewView$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 4
    .line 5
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, -0x4032f612

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, p4, 0x6

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x2

    .line 26
    :goto_0
    or-int/2addr v1, p4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v1, p4

    .line 29
    :goto_1
    and-int/lit8 v2, p4, 0x30

    .line 30
    .line 31
    if-nez v2, :cond_3

    .line 32
    .line 33
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    const/16 v2, 0x20

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/16 v2, 0x10

    .line 43
    .line 44
    :goto_2
    or-int/2addr v1, v2

    .line 45
    :cond_3
    or-int/lit16 v1, v1, 0x180

    .line 46
    .line 47
    and-int/lit16 v2, v1, 0x93

    .line 48
    .line 49
    const/16 v3, 0x92

    .line 50
    .line 51
    if-eq v2, v3, :cond_4

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    goto :goto_3

    .line 55
    :cond_4
    const/4 v2, 0x0

    .line 56
    :goto_3
    and-int/lit8 v3, v1, 0x1

    .line 57
    .line 58
    invoke-virtual {p3, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_7

    .line 63
    .line 64
    sget-object p2, Landroidx/compose/material3/ComposableSingletons$SnackbarHostKt;->lambda$-1548712596:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    .line 71
    .line 72
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalAccessibilityManager:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 73
    .line 74
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroidx/compose/ui/platform/AccessibilityManager;

    .line 79
    .line 80
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    or-int/2addr v4, v5

    .line 89
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-nez v4, :cond_5

    .line 94
    .line 95
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 96
    .line 97
    if-ne v5, v4, :cond_6

    .line 98
    .line 99
    :cond_5
    new-instance v5, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 100
    .line 101
    const/4 v4, 0x0

    .line 102
    invoke-direct {v5, v2, v3, v4}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;Landroidx/compose/ui/platform/AccessibilityManager;Lkotlin/coroutines/Continuation;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 109
    .line 110
    invoke-static {p3, v2, v5}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    .line 118
    .line 119
    and-int/lit16 v1, v1, 0x3f0

    .line 120
    .line 121
    invoke-static {v0, p1, p3, v1}, Landroidx/compose/material3/CardKt;->FadeInFadeOutWithScale(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 122
    .line 123
    .line 124
    :goto_4
    move-object v5, p2

    .line 125
    goto :goto_5

    .line 126
    :cond_7
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :goto_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    if-eqz p2, :cond_8

    .line 135
    .line 136
    new-instance v2, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;

    .line 137
    .line 138
    const/16 v7, 0xa

    .line 139
    .line 140
    move-object v3, p0

    .line 141
    move-object v4, p1

    .line 142
    move v6, p4

    .line 143
    invoke-direct/range {v2 .. v7}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 144
    .line 145
    .line 146
    iput-object v2, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 147
    .line 148
    :cond_8
    return-void
.end method

.method public static final SoftKeyboardListener(Landroid/view/View;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x4ea650a8

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p4, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p4

    .line 25
    :goto_1
    and-int/lit8 v1, p4, 0x30

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit16 v1, p4, 0x180

    .line 42
    .line 43
    const/16 v2, 0x100

    .line 44
    .line 45
    if-nez v1, :cond_5

    .line 46
    .line 47
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    move v1, v2

    .line 54
    goto :goto_3

    .line 55
    :cond_4
    const/16 v1, 0x80

    .line 56
    .line 57
    :goto_3
    or-int/2addr v0, v1

    .line 58
    :cond_5
    and-int/lit16 v1, v0, 0x93

    .line 59
    .line 60
    const/16 v3, 0x92

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x1

    .line 64
    if-eq v1, v3, :cond_6

    .line 65
    .line 66
    move v1, v5

    .line 67
    goto :goto_4

    .line 68
    :cond_6
    move v1, v4

    .line 69
    :goto_4
    and-int/lit8 v3, v0, 0x1

    .line 70
    .line 71
    invoke-virtual {p3, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_a

    .line 76
    .line 77
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    and-int/lit16 v0, v0, 0x380

    .line 82
    .line 83
    if-ne v0, v2, :cond_7

    .line 84
    .line 85
    move v4, v5

    .line 86
    :cond_7
    or-int v0, v1, v4

    .line 87
    .line 88
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-nez v0, :cond_8

    .line 93
    .line 94
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 95
    .line 96
    if-ne v1, v0, :cond_9

    .line 97
    .line 98
    :cond_8
    new-instance v1, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 99
    .line 100
    const/16 v0, 0xe

    .line 101
    .line 102
    invoke-direct {v1, v0, p0, p2}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_9
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 109
    .line 110
    invoke-static {p0, p1, v1, p3}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 111
    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_a
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 115
    .line 116
    .line 117
    :goto_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    if-eqz p3, :cond_b

    .line 122
    .line 123
    new-instance v0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;

    .line 124
    .line 125
    const/16 v5, 0x9

    .line 126
    .line 127
    move-object v1, p0

    .line 128
    move-object v2, p1

    .line 129
    move-object v3, p2

    .line 130
    move v4, p4

    .line 131
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;II)V

    .line 132
    .line 133
    .line 134
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 135
    .line 136
    :cond_b
    return-void
.end method

.method public static final TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
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
    const v1, -0x3f43489d

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
    move-object/from16 v9, p0

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, p9, 0x2

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    or-int/lit8 v1, v1, 0x30

    .line 36
    .line 37
    :cond_2
    move-object/from16 v3, p1

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_3
    and-int/lit8 v3, v8, 0x30

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    move-object/from16 v3, p1

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    const/16 v4, 0x20

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    const/16 v4, 0x10

    .line 56
    .line 57
    :goto_2
    or-int/2addr v1, v4

    .line 58
    :goto_3
    and-int/lit8 v4, p9, 0x4

    .line 59
    .line 60
    if-eqz v4, :cond_6

    .line 61
    .line 62
    or-int/lit16 v1, v1, 0x180

    .line 63
    .line 64
    :cond_5
    move/from16 v5, p2

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_6
    and-int/lit16 v5, v8, 0x180

    .line 68
    .line 69
    if-nez v5, :cond_5

    .line 70
    .line 71
    move/from16 v5, p2

    .line 72
    .line 73
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_7

    .line 78
    .line 79
    const/16 v6, 0x100

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_7
    const/16 v6, 0x80

    .line 83
    .line 84
    :goto_4
    or-int/2addr v1, v6

    .line 85
    :goto_5
    and-int/lit16 v6, v8, 0xc00

    .line 86
    .line 87
    if-nez v6, :cond_8

    .line 88
    .line 89
    or-int/lit16 v1, v1, 0x400

    .line 90
    .line 91
    :cond_8
    and-int/lit16 v6, v8, 0x6000

    .line 92
    .line 93
    move-object/from16 v13, p4

    .line 94
    .line 95
    if-nez v6, :cond_a

    .line 96
    .line 97
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_9

    .line 102
    .line 103
    const/16 v6, 0x4000

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_9
    const/16 v6, 0x2000

    .line 107
    .line 108
    :goto_6
    or-int/2addr v1, v6

    .line 109
    :cond_a
    const/high16 v6, 0x6db0000

    .line 110
    .line 111
    or-int/2addr v1, v6

    .line 112
    const/high16 v6, 0x30000000

    .line 113
    .line 114
    and-int/2addr v6, v8

    .line 115
    move-object/from16 v7, p6

    .line 116
    .line 117
    if-nez v6, :cond_c

    .line 118
    .line 119
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_b

    .line 124
    .line 125
    const/high16 v6, 0x20000000

    .line 126
    .line 127
    goto :goto_7

    .line 128
    :cond_b
    const/high16 v6, 0x10000000

    .line 129
    .line 130
    :goto_7
    or-int/2addr v1, v6

    .line 131
    :cond_c
    const v6, 0x12492493

    .line 132
    .line 133
    .line 134
    and-int/2addr v6, v1

    .line 135
    const v10, 0x12492492

    .line 136
    .line 137
    .line 138
    const/4 v11, 0x1

    .line 139
    if-eq v6, v10, :cond_d

    .line 140
    .line 141
    move v6, v11

    .line 142
    goto :goto_8

    .line 143
    :cond_d
    const/4 v6, 0x0

    .line 144
    :goto_8
    and-int/lit8 v10, v1, 0x1

    .line 145
    .line 146
    invoke-virtual {v0, v10, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-eqz v6, :cond_12

    .line 151
    .line 152
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 153
    .line 154
    .line 155
    and-int/lit8 v6, v8, 0x1

    .line 156
    .line 157
    if-eqz v6, :cond_f

    .line 158
    .line 159
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-eqz v6, :cond_e

    .line 164
    .line 165
    goto :goto_9

    .line 166
    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 167
    .line 168
    .line 169
    and-int/lit16 v1, v1, -0x1c01

    .line 170
    .line 171
    move-object/from16 v12, p3

    .line 172
    .line 173
    move-object/from16 v16, p5

    .line 174
    .line 175
    move-object v10, v3

    .line 176
    move v11, v5

    .line 177
    goto :goto_c

    .line 178
    :cond_f
    :goto_9
    if-eqz v2, :cond_10

    .line 179
    .line 180
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 181
    .line 182
    goto :goto_a

    .line 183
    :cond_10
    move-object v2, v3

    .line 184
    :goto_a
    if-eqz v4, :cond_11

    .line 185
    .line 186
    goto :goto_b

    .line 187
    :cond_11
    move v11, v5

    .line 188
    :goto_b
    sget-object v3, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 189
    .line 190
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ContainerShapeRound:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 191
    .line 192
    invoke-static {v3, v0}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    and-int/lit16 v1, v1, -0x1c01

    .line 197
    .line 198
    sget-object v4, Landroidx/compose/material3/ButtonDefaults;->TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 199
    .line 200
    move-object v10, v2

    .line 201
    move-object v12, v3

    .line 202
    move-object/from16 v16, v4

    .line 203
    .line 204
    :goto_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 205
    .line 206
    .line 207
    const v2, 0x7ffffffe

    .line 208
    .line 209
    .line 210
    and-int v19, v1, v2

    .line 211
    .line 212
    const/16 v20, 0x0

    .line 213
    .line 214
    const/4 v14, 0x0

    .line 215
    const/4 v15, 0x0

    .line 216
    move-object/from16 v18, v0

    .line 217
    .line 218
    move-object/from16 v17, v7

    .line 219
    .line 220
    invoke-static/range {v9 .. v20}, Landroidx/compose/material3/CardKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 221
    .line 222
    .line 223
    move-object v2, v10

    .line 224
    move v3, v11

    .line 225
    move-object v4, v12

    .line 226
    move-object/from16 v6, v16

    .line 227
    .line 228
    goto :goto_d

    .line 229
    :cond_12
    move-object/from16 v18, v0

    .line 230
    .line 231
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 232
    .line 233
    .line 234
    move-object/from16 v4, p3

    .line 235
    .line 236
    move-object/from16 v6, p5

    .line 237
    .line 238
    move-object v2, v3

    .line 239
    move v3, v5

    .line 240
    :goto_d
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    if-eqz v10, :cond_13

    .line 245
    .line 246
    new-instance v0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda0;

    .line 247
    .line 248
    move-object/from16 v1, p0

    .line 249
    .line 250
    move-object/from16 v5, p4

    .line 251
    .line 252
    move-object/from16 v7, p6

    .line 253
    .line 254
    move/from16 v9, p9

    .line 255
    .line 256
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 257
    .line 258
    .line 259
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 260
    .line 261
    :cond_13
    return-void
.end method

.method public static final TriStateCheckbox(Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    move-object v5, p6

    .line 2
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p6, -0x1836c9b1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v5, p6}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 p6, p7, 0x6

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-nez p6, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p6

    .line 19
    invoke-virtual {v5, p6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 20
    .line 21
    .line 22
    move-result p6

    .line 23
    if-eqz p6, :cond_0

    .line 24
    .line 25
    move p6, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p6, 0x2

    .line 28
    :goto_0
    or-int/2addr p6, p7

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move p6, p7

    .line 31
    :goto_1
    and-int/lit8 v1, p7, 0x30

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    const/16 v1, 0x20

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/16 v1, 0x10

    .line 45
    .line 46
    :goto_2
    or-int/2addr p6, v1

    .line 47
    :cond_3
    and-int/lit16 v1, p7, 0x180

    .line 48
    .line 49
    if-nez v1, :cond_5

    .line 50
    .line 51
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    const/16 v1, 0x100

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    const/16 v1, 0x80

    .line 61
    .line 62
    :goto_3
    or-int/2addr p6, v1

    .line 63
    :cond_5
    and-int/lit16 v1, p7, 0xc00

    .line 64
    .line 65
    if-nez v1, :cond_7

    .line 66
    .line 67
    invoke-virtual {v5, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_6

    .line 72
    .line 73
    const/16 v1, 0x800

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_6
    const/16 v1, 0x400

    .line 77
    .line 78
    :goto_4
    or-int/2addr p6, v1

    .line 79
    :cond_7
    and-int/lit16 v1, p7, 0x6000

    .line 80
    .line 81
    if-nez v1, :cond_9

    .line 82
    .line 83
    invoke-virtual {v5, p4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_8

    .line 88
    .line 89
    const/16 v1, 0x4000

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_8
    const/16 v1, 0x2000

    .line 93
    .line 94
    :goto_5
    or-int/2addr p6, v1

    .line 95
    :cond_9
    const/high16 v1, 0x30000

    .line 96
    .line 97
    and-int/2addr v1, p7

    .line 98
    const/4 v2, 0x1

    .line 99
    if-nez v1, :cond_b

    .line 100
    .line 101
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_a

    .line 106
    .line 107
    const/high16 v1, 0x20000

    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_a
    const/high16 v1, 0x10000

    .line 111
    .line 112
    :goto_6
    or-int/2addr p6, v1

    .line 113
    :cond_b
    const/high16 v1, 0x180000

    .line 114
    .line 115
    and-int/2addr v1, p7

    .line 116
    if-nez v1, :cond_d

    .line 117
    .line 118
    invoke-virtual {v5, p5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_c

    .line 123
    .line 124
    const/high16 v1, 0x100000

    .line 125
    .line 126
    goto :goto_7

    .line 127
    :cond_c
    const/high16 v1, 0x80000

    .line 128
    .line 129
    :goto_7
    or-int/2addr p6, v1

    .line 130
    :cond_d
    const/high16 v1, 0xc00000

    .line 131
    .line 132
    and-int/2addr v1, p7

    .line 133
    if-nez v1, :cond_f

    .line 134
    .line 135
    const/4 v1, 0x0

    .line 136
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_e

    .line 141
    .line 142
    const/high16 v1, 0x800000

    .line 143
    .line 144
    goto :goto_8

    .line 145
    :cond_e
    const/high16 v1, 0x400000

    .line 146
    .line 147
    :goto_8
    or-int/2addr p6, v1

    .line 148
    :cond_f
    const v1, 0x492493

    .line 149
    .line 150
    .line 151
    and-int/2addr v1, p6

    .line 152
    const v3, 0x492492

    .line 153
    .line 154
    .line 155
    const/4 v4, 0x0

    .line 156
    if-eq v1, v3, :cond_10

    .line 157
    .line 158
    move v1, v2

    .line 159
    goto :goto_9

    .line 160
    :cond_10
    move v1, v4

    .line 161
    :goto_9
    and-int/lit8 v3, p6, 0x1

    .line 162
    .line 163
    invoke-virtual {v5, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_15

    .line 168
    .line 169
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 170
    .line 171
    .line 172
    and-int/lit8 v1, p7, 0x1

    .line 173
    .line 174
    if-eqz v1, :cond_12

    .line 175
    .line 176
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_11

    .line 181
    .line 182
    goto :goto_a

    .line 183
    :cond_11
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 184
    .line 185
    .line 186
    :cond_12
    :goto_a
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 187
    .line 188
    .line 189
    const/high16 v1, 0x40000000    # 2.0f

    .line 190
    .line 191
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 192
    .line 193
    if-eqz p1, :cond_13

    .line 194
    .line 195
    sget v6, Landroidx/compose/material3/tokens/CheckboxTokens;->StateLayerSize:F

    .line 196
    .line 197
    div-float/2addr v6, v1

    .line 198
    invoke-static {v4, v6, v0}, Landroidx/compose/material3/RippleKt;->ripple-H2RKhps$default(ZFI)Landroidx/compose/material3/RippleNodeFactory;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    new-instance v4, Landroidx/compose/ui/semantics/Role;

    .line 203
    .line 204
    invoke-direct {v4, v2}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    .line 205
    .line 206
    .line 207
    invoke-static {p0, v0, v4, p1}, Landroidx/compose/foundation/selection/SelectableKt;->triStateToggleable-O2vRcR0(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/material3/RippleNodeFactory;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    goto :goto_b

    .line 212
    :cond_13
    move-object v0, v3

    .line 213
    :goto_b
    if-eqz p1, :cond_14

    .line 214
    .line 215
    sget-object v2, Landroidx/compose/material3/InteractiveComponentSizeKt;->MinimumInteractiveTopAlignmentLine:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 216
    .line 217
    sget-object v3, Landroidx/compose/material3/MinimumInteractiveModifier;->INSTANCE:Landroidx/compose/material3/MinimumInteractiveModifier;

    .line 218
    .line 219
    :cond_14
    invoke-interface {p4, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-interface {v2, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    shr-int/lit8 v0, p6, 0xf

    .line 232
    .line 233
    and-int/lit8 v0, v0, 0xe

    .line 234
    .line 235
    shl-int/lit8 v2, p6, 0x3

    .line 236
    .line 237
    and-int/lit8 v2, v2, 0x70

    .line 238
    .line 239
    or-int/2addr v0, v2

    .line 240
    shr-int/lit8 v2, p6, 0x9

    .line 241
    .line 242
    and-int/lit16 v2, v2, 0x1c00

    .line 243
    .line 244
    or-int/2addr v0, v2

    .line 245
    shl-int/lit8 p6, p6, 0x6

    .line 246
    .line 247
    const v2, 0xe000

    .line 248
    .line 249
    .line 250
    and-int/2addr v2, p6

    .line 251
    or-int/2addr v0, v2

    .line 252
    const/high16 v2, 0x70000

    .line 253
    .line 254
    and-int/2addr p6, v2

    .line 255
    or-int v6, v0, p6

    .line 256
    .line 257
    move-object v0, p0

    .line 258
    move-object v3, p2

    .line 259
    move-object v4, p3

    .line 260
    move-object v2, p5

    .line 261
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/CardKt;->CheckboxImpl(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/runtime/Composer;I)V

    .line 262
    .line 263
    .line 264
    move-object p6, v2

    .line 265
    move-object p3, v3

    .line 266
    goto :goto_c

    .line 267
    :cond_15
    move-object v0, p0

    .line 268
    move-object v4, p3

    .line 269
    move-object p6, p5

    .line 270
    move-object p3, p2

    .line 271
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 272
    .line 273
    .line 274
    :goto_c
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    if-eqz v1, :cond_16

    .line 279
    .line 280
    new-instance p0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;

    .line 281
    .line 282
    move-object p2, p1

    .line 283
    move-object p5, p4

    .line 284
    move-object p1, v0

    .line 285
    move-object p4, v4

    .line 286
    invoke-direct/range {p0 .. p7}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;I)V

    .line 287
    .line 288
    .line 289
    iput-object p0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 290
    .line 291
    :cond_16
    return-void
.end method

.method public static final VerticalDivider-9IZ8Weo(FIJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V
    .locals 7

    .line 1
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x5b7bfc6d

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p1, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p4, p5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p1

    .line 25
    :goto_1
    and-int/lit8 v1, p1, 0x30

    .line 26
    .line 27
    const/16 v2, 0x20

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    move v1, v2

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/16 v1, 0x10

    .line 40
    .line 41
    :goto_2
    or-int/2addr v0, v1

    .line 42
    :cond_3
    and-int/lit16 v1, p1, 0x180

    .line 43
    .line 44
    const/16 v3, 0x100

    .line 45
    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    invoke-virtual {p4, p2, p3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    move v1, v3

    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const/16 v1, 0x80

    .line 57
    .line 58
    :goto_3
    or-int/2addr v0, v1

    .line 59
    :cond_5
    and-int/lit16 v1, v0, 0x93

    .line 60
    .line 61
    const/16 v4, 0x92

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x1

    .line 65
    if-eq v1, v4, :cond_6

    .line 66
    .line 67
    move v1, v6

    .line 68
    goto :goto_4

    .line 69
    :cond_6
    move v1, v5

    .line 70
    :goto_4
    and-int/lit8 v4, v0, 0x1

    .line 71
    .line 72
    invoke-virtual {p4, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_f

    .line 77
    .line 78
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 79
    .line 80
    .line 81
    and-int/lit8 v1, p1, 0x1

    .line 82
    .line 83
    if-eqz v1, :cond_8

    .line 84
    .line 85
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_7

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_7
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 93
    .line 94
    .line 95
    :cond_8
    :goto_5
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 96
    .line 97
    .line 98
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillElement;

    .line 99
    .line 100
    invoke-interface {p5, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v1, p0}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    and-int/lit8 v4, v0, 0x70

    .line 109
    .line 110
    if-ne v4, v2, :cond_9

    .line 111
    .line 112
    move v2, v6

    .line 113
    goto :goto_6

    .line 114
    :cond_9
    move v2, v5

    .line 115
    :goto_6
    and-int/lit16 v4, v0, 0x380

    .line 116
    .line 117
    xor-int/lit16 v4, v4, 0x180

    .line 118
    .line 119
    if-le v4, v3, :cond_a

    .line 120
    .line 121
    invoke-virtual {p4, p2, p3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-nez v4, :cond_c

    .line 126
    .line 127
    :cond_a
    and-int/lit16 v0, v0, 0x180

    .line 128
    .line 129
    if-ne v0, v3, :cond_b

    .line 130
    .line 131
    goto :goto_7

    .line 132
    :cond_b
    move v6, v5

    .line 133
    :cond_c
    :goto_7
    or-int v0, v2, v6

    .line 134
    .line 135
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-nez v0, :cond_d

    .line 140
    .line 141
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 142
    .line 143
    if-ne v2, v0, :cond_e

    .line 144
    .line 145
    :cond_d
    new-instance v2, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda0;

    .line 146
    .line 147
    invoke-direct {v2, p0, v5, p2, p3}, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda0;-><init>(FIJ)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p4, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_e
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 154
    .line 155
    invoke-static {v5, p4, v1, v2}, Landroidx/compose/foundation/ImageKt;->Canvas(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 156
    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_f
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 160
    .line 161
    .line 162
    :goto_8
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 163
    .line 164
    .line 165
    move-result-object p4

    .line 166
    if-eqz p4, :cond_10

    .line 167
    .line 168
    new-instance v0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;

    .line 169
    .line 170
    const/4 v6, 0x0

    .line 171
    move v2, p0

    .line 172
    move v5, p1

    .line 173
    move-wide v3, p2

    .line 174
    move-object v1, p5

    .line 175
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;FJII)V

    .line 176
    .line 177
    .line 178
    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 179
    .line 180
    :cond_10
    return-void
.end method

.method public static iconButtonColors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/IconButtonColors;
    .locals 11

    .line 1
    sget v0, Landroidx/compose/material3/tokens/ListTokens;->DisabledOpacity$1:F

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 12
    .line 13
    iget-wide v5, v1, Landroidx/compose/ui/graphics/Color;->value:J

    .line 14
    .line 15
    sget-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroidx/compose/material3/ColorScheme;

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/material3/ColorScheme;->defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    new-instance v2, Landroidx/compose/material3/IconButtonColors;

    .line 28
    .line 29
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 30
    .line 31
    invoke-static {v0, v5, v6}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v9

    .line 35
    move-wide v7, v3

    .line 36
    invoke-direct/range {v2 .. v10}, Landroidx/compose/material3/IconButtonColors;-><init>(JJJJ)V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Landroidx/compose/material3/ColorScheme;->defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object v2, v1

    .line 43
    :goto_0
    iget-wide v3, v2, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    .line 44
    .line 45
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_1
    invoke-static {v0, v5, v6}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide v9

    .line 56
    iget-wide v3, v2, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    .line 57
    .line 58
    iget-wide v7, v2, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    .line 59
    .line 60
    invoke-virtual/range {v2 .. v10}, Landroidx/compose/material3/IconButtonColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/IconButtonColors;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method

.method public static final isDark-8_81llA(J)Z
    .locals 7

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 2
    .line 3
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-wide v1, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    .line 14
    .line 15
    const-wide v3, 0x300000000L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->equals-impl0(JJ)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "The specified color must be encoded in an RGB color space. The supplied color space is "

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-wide v2, v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    .line 34
    .line 35
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->toString-impl(J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    check-cast v0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 50
    .line 51
    iget-object v0, v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfFunc:Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    float-to-double v1, v1

    .line 58
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    float-to-double v3, v3

    .line 67
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    float-to-double p0, p0

    .line 76
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/graphics/colorspace/Rgb$$ExternalSyntheticLambda0;->invoke(D)D

    .line 77
    .line 78
    .line 79
    move-result-wide p0

    .line 80
    const-wide v5, 0x3fcb367a0f9096bcL    # 0.2126

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    mul-double/2addr v1, v5

    .line 86
    const-wide v5, 0x3fe6e2eb1c432ca5L    # 0.7152

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    mul-double/2addr v3, v5

    .line 92
    add-double/2addr v3, v1

    .line 93
    const-wide v0, 0x3fb27bb2fec56d5dL    # 0.0722

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    mul-double/2addr p0, v0

    .line 99
    add-double/2addr p0, v3

    .line 100
    double-to-float p0, p0

    .line 101
    const/4 p1, 0x0

    .line 102
    cmpg-float v0, p0, p1

    .line 103
    .line 104
    if-gez v0, :cond_1

    .line 105
    .line 106
    move p0, p1

    .line 107
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 108
    .line 109
    cmpl-float v0, p0, p1

    .line 110
    .line 111
    if-lez v0, :cond_2

    .line 112
    .line 113
    move p0, p1

    .line 114
    :cond_2
    float-to-double p0, p0

    .line 115
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 116
    .line 117
    cmpg-double p0, p0, v0

    .line 118
    .line 119
    if-gtz p0, :cond_3

    .line 120
    .line 121
    const/4 p0, 0x1

    .line 122
    return p0

    .line 123
    :cond_3
    const/4 p0, 0x0

    .line 124
    return p0
.end method

.method public static topAppBarColors-5tl4gsc(JLandroidx/compose/runtime/Composer;)Landroidx/compose/material3/TopAppBarColors;
    .locals 21

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 2
    .line 3
    sget-object v2, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroidx/compose/material3/ColorScheme;

    .line 14
    .line 15
    iget-object v3, v2, Landroidx/compose/material3/ColorScheme;->defaultTopAppBarColorsCached:Landroidx/compose/material3/TopAppBarColors;

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    new-instance v4, Landroidx/compose/material3/TopAppBarColors;

    .line 20
    .line 21
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 22
    .line 23
    invoke-static {v2, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->OnScrollContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 28
    .line 29
    invoke-static {v2, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v7

    .line 33
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->LeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 34
    .line 35
    invoke-static {v2, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v9

    .line 39
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->TitleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 40
    .line 41
    invoke-static {v2, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v11

    .line 45
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->TrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 46
    .line 47
    invoke-static {v2, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v13

    .line 51
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->SubtitleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 52
    .line 53
    invoke-static {v2, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v15

    .line 57
    invoke-direct/range {v4 .. v16}, Landroidx/compose/material3/TopAppBarColors;-><init>(JJJJJJ)V

    .line 58
    .line 59
    .line 60
    iput-object v4, v2, Landroidx/compose/material3/ColorScheme;->defaultTopAppBarColorsCached:Landroidx/compose/material3/TopAppBarColors;

    .line 61
    .line 62
    move-object v3, v4

    .line 63
    :cond_0
    const-wide/16 v4, 0x10

    .line 64
    .line 65
    cmp-long v2, p0, v4

    .line 66
    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    move-wide/from16 v9, p0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-wide v6, v3, Landroidx/compose/material3/TopAppBarColors;->containerColor:J

    .line 73
    .line 74
    move-wide v9, v6

    .line 75
    :goto_0
    cmp-long v2, v0, v4

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    move-wide v11, v0

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    iget-wide v6, v3, Landroidx/compose/material3/TopAppBarColors;->scrolledContainerColor:J

    .line 82
    .line 83
    move-wide v11, v6

    .line 84
    :goto_1
    cmp-long v2, v0, v4

    .line 85
    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    move-wide v13, v0

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    iget-wide v6, v3, Landroidx/compose/material3/TopAppBarColors;->navigationIconContentColor:J

    .line 91
    .line 92
    move-wide v13, v6

    .line 93
    :goto_2
    cmp-long v2, v0, v4

    .line 94
    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    move-wide v15, v0

    .line 98
    goto :goto_3

    .line 99
    :cond_4
    iget-wide v6, v3, Landroidx/compose/material3/TopAppBarColors;->titleContentColor:J

    .line 100
    .line 101
    move-wide v15, v6

    .line 102
    :goto_3
    cmp-long v2, v0, v4

    .line 103
    .line 104
    if-eqz v2, :cond_5

    .line 105
    .line 106
    move-wide/from16 v17, v0

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_5
    iget-wide v6, v3, Landroidx/compose/material3/TopAppBarColors;->actionIconContentColor:J

    .line 110
    .line 111
    move-wide/from16 v17, v6

    .line 112
    .line 113
    :goto_4
    cmp-long v2, v0, v4

    .line 114
    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    :goto_5
    move-wide/from16 v19, v0

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_6
    iget-wide v0, v3, Landroidx/compose/material3/TopAppBarColors;->subtitleContentColor:J

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :goto_6
    new-instance v8, Landroidx/compose/material3/TopAppBarColors;

    .line 124
    .line 125
    invoke-direct/range {v8 .. v20}, Landroidx/compose/material3/TopAppBarColors;-><init>(JJJJJJ)V

    .line 126
    .line 127
    .line 128
    return-object v8
.end method

.method public static final value(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/SpringSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/MaterialThemeKt;->_localMotionScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/compose/material3/MotionScheme$StandardMotionSchemeImpl;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_5

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq p0, v0, :cond_4

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    if-eq p0, v0, :cond_3

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    if-eq p0, v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    if-eq p0, v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x5

    .line 30
    if-ne p0, v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget-object p0, Landroidx/compose/material3/MotionScheme$StandardMotionSchemeImpl;->slowEffectsSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0

    .line 46
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    sget-object p0, Landroidx/compose/material3/MotionScheme$StandardMotionSchemeImpl;->fastEffectsSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    sget-object p0, Landroidx/compose/material3/MotionScheme$StandardMotionSchemeImpl;->defaultEffectsSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    sget-object p0, Landroidx/compose/material3/MotionScheme$StandardMotionSchemeImpl;->slowSpatialSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    sget-object p0, Landroidx/compose/material3/MotionScheme$StandardMotionSchemeImpl;->fastSpatialSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    sget-object p0, Landroidx/compose/material3/MotionScheme$StandardMotionSchemeImpl;->defaultSpatialSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    return-object p0
.end method
