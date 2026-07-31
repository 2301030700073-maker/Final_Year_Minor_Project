.class public final synthetic Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$10:I

.field public final synthetic f$2:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$4:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f$5:J

.field public final synthetic f$6:J

.field public final synthetic f$7:J

.field public final synthetic f$8:J

.field public final synthetic f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function2;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$4:Landroidx/compose/ui/graphics/Shape;

    .line 11
    .line 12
    iput-wide p5, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$5:J

    .line 13
    .line 14
    iput-wide p7, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$6:J

    .line 15
    .line 16
    iput-wide p9, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$7:J

    .line 17
    .line 18
    iput-wide p11, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$8:J

    .line 19
    .line 20
    iput-object p13, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 21
    .line 22
    iput p14, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$10:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v2, v0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$10:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    or-int/2addr v2, v3

    .line 18
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    move-object v14, v1

    .line 23
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    const v1, -0x48a51b14

    .line 26
    .line 27
    .line 28
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    .line 31
    and-int/lit8 v1, v2, 0x6

    .line 32
    .line 33
    iget-object v4, v0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x2

    .line 46
    :goto_0
    or-int/2addr v1, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v1, v2

    .line 49
    :goto_1
    and-int/lit8 v5, v2, 0x30

    .line 50
    .line 51
    iget-object v6, v0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function2;

    .line 52
    .line 53
    if-nez v5, :cond_3

    .line 54
    .line 55
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    const/16 v5, 0x20

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/16 v5, 0x10

    .line 65
    .line 66
    :goto_2
    or-int/2addr v1, v5

    .line 67
    :cond_3
    and-int/lit16 v5, v2, 0x180

    .line 68
    .line 69
    iget-object v7, v0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function2;

    .line 70
    .line 71
    if-nez v5, :cond_5

    .line 72
    .line 73
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_4

    .line 78
    .line 79
    const/16 v5, 0x100

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_4
    const/16 v5, 0x80

    .line 83
    .line 84
    :goto_3
    or-int/2addr v1, v5

    .line 85
    :cond_5
    and-int/lit16 v5, v2, 0xc00

    .line 86
    .line 87
    const/4 v8, 0x0

    .line 88
    if-nez v5, :cond_7

    .line 89
    .line 90
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_6

    .line 95
    .line 96
    const/16 v5, 0x800

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_6
    const/16 v5, 0x400

    .line 100
    .line 101
    :goto_4
    or-int/2addr v1, v5

    .line 102
    :cond_7
    and-int/lit16 v5, v2, 0x6000

    .line 103
    .line 104
    move v9, v5

    .line 105
    iget-object v5, v0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$4:Landroidx/compose/ui/graphics/Shape;

    .line 106
    .line 107
    if-nez v9, :cond_9

    .line 108
    .line 109
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-eqz v9, :cond_8

    .line 114
    .line 115
    const/16 v9, 0x4000

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_8
    const/16 v9, 0x2000

    .line 119
    .line 120
    :goto_5
    or-int/2addr v1, v9

    .line 121
    :cond_9
    const/high16 v9, 0x30000

    .line 122
    .line 123
    and-int/2addr v9, v2

    .line 124
    iget-wide v10, v0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$5:J

    .line 125
    .line 126
    if-nez v9, :cond_b

    .line 127
    .line 128
    invoke-virtual {v14, v10, v11}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-eqz v9, :cond_a

    .line 133
    .line 134
    const/high16 v9, 0x20000

    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_a
    const/high16 v9, 0x10000

    .line 138
    .line 139
    :goto_6
    or-int/2addr v1, v9

    .line 140
    :cond_b
    const/high16 v9, 0x180000

    .line 141
    .line 142
    and-int/2addr v9, v2

    .line 143
    iget-wide v12, v0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$6:J

    .line 144
    .line 145
    if-nez v9, :cond_d

    .line 146
    .line 147
    invoke-virtual {v14, v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    if-eqz v9, :cond_c

    .line 152
    .line 153
    const/high16 v9, 0x100000

    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_c
    const/high16 v9, 0x80000

    .line 157
    .line 158
    :goto_7
    or-int/2addr v1, v9

    .line 159
    :cond_d
    const/high16 v9, 0xc00000

    .line 160
    .line 161
    and-int/2addr v9, v2

    .line 162
    move-wide v15, v10

    .line 163
    iget-wide v10, v0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$7:J

    .line 164
    .line 165
    if-nez v9, :cond_f

    .line 166
    .line 167
    invoke-virtual {v14, v10, v11}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    if-eqz v9, :cond_e

    .line 172
    .line 173
    const/high16 v9, 0x800000

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_e
    const/high16 v9, 0x400000

    .line 177
    .line 178
    :goto_8
    or-int/2addr v1, v9

    .line 179
    :cond_f
    const/high16 v9, 0x6000000

    .line 180
    .line 181
    and-int/2addr v9, v2

    .line 182
    move-wide/from16 v17, v12

    .line 183
    .line 184
    iget-wide v12, v0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$8:J

    .line 185
    .line 186
    if-nez v9, :cond_11

    .line 187
    .line 188
    invoke-virtual {v14, v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    if-eqz v9, :cond_10

    .line 193
    .line 194
    const/high16 v9, 0x4000000

    .line 195
    .line 196
    goto :goto_9

    .line 197
    :cond_10
    const/high16 v9, 0x2000000

    .line 198
    .line 199
    :goto_9
    or-int/2addr v1, v9

    .line 200
    :cond_11
    const/high16 v9, 0x30000000

    .line 201
    .line 202
    and-int/2addr v9, v2

    .line 203
    iget-object v0, v0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;->f$9:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 204
    .line 205
    if-nez v9, :cond_13

    .line 206
    .line 207
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    if-eqz v9, :cond_12

    .line 212
    .line 213
    const/high16 v9, 0x20000000

    .line 214
    .line 215
    goto :goto_a

    .line 216
    :cond_12
    const/high16 v9, 0x10000000

    .line 217
    .line 218
    :goto_a
    or-int/2addr v1, v9

    .line 219
    :cond_13
    const v9, 0x12492493

    .line 220
    .line 221
    .line 222
    and-int/2addr v9, v1

    .line 223
    const v3, 0x12492492

    .line 224
    .line 225
    .line 226
    if-eq v9, v3, :cond_14

    .line 227
    .line 228
    const/4 v3, 0x1

    .line 229
    goto :goto_b

    .line 230
    :cond_14
    move v3, v8

    .line 231
    :goto_b
    and-int/lit8 v8, v1, 0x1

    .line 232
    .line 233
    invoke-virtual {v14, v8, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-eqz v3, :cond_17

    .line 238
    .line 239
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 240
    .line 241
    .line 242
    and-int/lit8 v3, v2, 0x1

    .line 243
    .line 244
    if-eqz v3, :cond_16

    .line 245
    .line 246
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_15

    .line 251
    .line 252
    goto :goto_c

    .line 253
    :cond_15
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 254
    .line 255
    .line 256
    :cond_16
    :goto_c
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 257
    .line 258
    .line 259
    sget v3, Landroidx/compose/material3/tokens/ListTokens;->ContainerElevation$2:F

    .line 260
    .line 261
    move-object v9, v7

    .line 262
    move-object v7, v6

    .line 263
    new-instance v6, Landroidx/compose/material3/SnackbarKt$Snackbar$1;

    .line 264
    .line 265
    move-object v8, v0

    .line 266
    invoke-direct/range {v6 .. v13}, Landroidx/compose/material3/SnackbarKt$Snackbar$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;JJ)V

    .line 267
    .line 268
    .line 269
    move-object v0, v7

    .line 270
    move-object/from16 v19, v9

    .line 271
    .line 272
    move-wide/from16 v20, v10

    .line 273
    .line 274
    move-wide/from16 v22, v12

    .line 275
    .line 276
    move-wide/from16 v24, v17

    .line 277
    .line 278
    move-object/from16 v17, v8

    .line 279
    .line 280
    move-wide/from16 v8, v24

    .line 281
    .line 282
    const v7, -0x5014900f

    .line 283
    .line 284
    .line 285
    invoke-static {v7, v6, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 286
    .line 287
    .line 288
    move-result-object v13

    .line 289
    and-int/lit8 v6, v1, 0xe

    .line 290
    .line 291
    const/high16 v7, 0xc30000

    .line 292
    .line 293
    or-int/2addr v6, v7

    .line 294
    shr-int/lit8 v1, v1, 0x9

    .line 295
    .line 296
    and-int/lit8 v7, v1, 0x70

    .line 297
    .line 298
    or-int/2addr v6, v7

    .line 299
    and-int/lit16 v7, v1, 0x380

    .line 300
    .line 301
    or-int/2addr v6, v7

    .line 302
    and-int/lit16 v1, v1, 0x1c00

    .line 303
    .line 304
    or-int/2addr v1, v6

    .line 305
    move-wide v6, v15

    .line 306
    const/16 v16, 0x50

    .line 307
    .line 308
    const/4 v10, 0x0

    .line 309
    const/4 v12, 0x0

    .line 310
    move v15, v1

    .line 311
    move v11, v3

    .line 312
    invoke-static/range {v4 .. v16}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 313
    .line 314
    .line 315
    move-wide v15, v6

    .line 316
    goto :goto_d

    .line 317
    :cond_17
    move-object/from16 v19, v7

    .line 318
    .line 319
    move-wide/from16 v20, v10

    .line 320
    .line 321
    move-wide/from16 v22, v12

    .line 322
    .line 323
    move-wide/from16 v8, v17

    .line 324
    .line 325
    move-object/from16 v17, v0

    .line 326
    .line 327
    move-object v0, v6

    .line 328
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 329
    .line 330
    .line 331
    :goto_d
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    if-eqz v1, :cond_18

    .line 336
    .line 337
    move-wide v11, v8

    .line 338
    move-object v8, v5

    .line 339
    move-object v5, v4

    .line 340
    new-instance v4, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;

    .line 341
    .line 342
    move-object v6, v0

    .line 343
    move/from16 v18, v2

    .line 344
    .line 345
    move-wide v9, v15

    .line 346
    move-object/from16 v7, v19

    .line 347
    .line 348
    move-wide/from16 v13, v20

    .line 349
    .line 350
    move-wide/from16 v15, v22

    .line 351
    .line 352
    invoke-direct/range {v4 .. v18}, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 353
    .line 354
    .line 355
    iput-object v4, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 356
    .line 357
    :cond_18
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 358
    .line 359
    return-object v0
.end method
