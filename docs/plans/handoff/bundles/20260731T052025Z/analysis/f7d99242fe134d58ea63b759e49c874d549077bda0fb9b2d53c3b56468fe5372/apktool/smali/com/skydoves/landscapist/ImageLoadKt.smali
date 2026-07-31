.class public abstract Lcom/skydoves/landscapist/ImageLoadKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final ZeroConstraints:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr v0, v0

    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "width and height must be >= 0"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-static {v0, v0, v0, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->createConstraints(IIII)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    sput-wide v0, Lcom/skydoves/landscapist/ImageLoadKt;->ZeroConstraints:J

    .line 17
    .line 18
    return-void
.end method

.method public static final ImageLoad(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/skydoves/landscapist/ImageOptions;Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)V
    .locals 14

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move/from16 v0, p7

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-object/from16 v1, p6

    .line 17
    .line 18
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    const v5, -0x2cd0dff3    # -7.52157E11f

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    .line 26
    and-int/lit8 v5, v0, 0x6

    .line 27
    .line 28
    const/4 v6, 0x4

    .line 29
    if-nez v5, :cond_2

    .line 30
    .line 31
    and-int/lit8 v5, v0, 0x8

    .line 32
    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    :goto_0
    if-eqz v5, :cond_1

    .line 45
    .line 46
    move v5, v6

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v5, 0x2

    .line 49
    :goto_1
    or-int/2addr v5, v0

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v5, v0

    .line 52
    :goto_2
    and-int/lit8 v7, v0, 0x30

    .line 53
    .line 54
    if-nez v7, :cond_4

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_3

    .line 61
    .line 62
    const/16 v7, 0x20

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/16 v7, 0x10

    .line 66
    .line 67
    :goto_3
    or-int/2addr v5, v7

    .line 68
    :cond_4
    and-int/lit16 v7, v0, 0x180

    .line 69
    .line 70
    if-nez v7, :cond_6

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_5

    .line 77
    .line 78
    const/16 v7, 0x100

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_5
    const/16 v7, 0x80

    .line 82
    .line 83
    :goto_4
    or-int/2addr v5, v7

    .line 84
    :cond_6
    and-int/lit16 v7, v0, 0xc00

    .line 85
    .line 86
    if-nez v7, :cond_8

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_7

    .line 93
    .line 94
    const/16 v7, 0x800

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_7
    const/16 v7, 0x400

    .line 98
    .line 99
    :goto_5
    or-int/2addr v5, v7

    .line 100
    :cond_8
    and-int/lit16 v7, v0, 0x6000

    .line 101
    .line 102
    move-object/from16 v8, p4

    .line 103
    .line 104
    if-nez v7, :cond_a

    .line 105
    .line 106
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_9

    .line 111
    .line 112
    const/16 v7, 0x4000

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_9
    const/16 v7, 0x2000

    .line 116
    .line 117
    :goto_6
    or-int/2addr v5, v7

    .line 118
    :cond_a
    const/high16 v7, 0x30000

    .line 119
    .line 120
    and-int/2addr v7, v0

    .line 121
    move-object/from16 v10, p5

    .line 122
    .line 123
    if-nez v7, :cond_c

    .line 124
    .line 125
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_b

    .line 130
    .line 131
    const/high16 v7, 0x20000

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_b
    const/high16 v7, 0x10000

    .line 135
    .line 136
    :goto_7
    or-int/2addr v5, v7

    .line 137
    :cond_c
    move v9, v5

    .line 138
    const v5, 0x12493

    .line 139
    .line 140
    .line 141
    and-int/2addr v5, v9

    .line 142
    const v7, 0x12492

    .line 143
    .line 144
    .line 145
    const/4 v11, 0x0

    .line 146
    const/4 v12, 0x1

    .line 147
    if-eq v5, v7, :cond_d

    .line 148
    .line 149
    move v5, v12

    .line 150
    goto :goto_8

    .line 151
    :cond_d
    move v5, v11

    .line 152
    :goto_8
    and-int/lit8 v7, v9, 0x1

    .line 153
    .line 154
    invoke-virtual {v1, v7, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_15

    .line 159
    .line 160
    invoke-virtual {v4}, Lcom/skydoves/landscapist/ImageOptions;->getLoadingOptionsKey()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    and-int/lit8 v7, v9, 0xe

    .line 165
    .line 166
    if-eq v7, v6, :cond_f

    .line 167
    .line 168
    and-int/lit8 v6, v9, 0x8

    .line 169
    .line 170
    if-eqz v6, :cond_e

    .line 171
    .line 172
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-eqz v6, :cond_e

    .line 177
    .line 178
    goto :goto_9

    .line 179
    :cond_e
    move v12, v11

    .line 180
    :cond_f
    :goto_9
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    or-int/2addr v6, v12

    .line 185
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 190
    .line 191
    if-nez v6, :cond_10

    .line 192
    .line 193
    if-ne v7, v12, :cond_11

    .line 194
    .line 195
    :cond_10
    sget-object v6, Lcom/skydoves/landscapist/ImageLoadState$None;->INSTANCE:Lcom/skydoves/landscapist/ImageLoadState$None;

    .line 196
    .line 197
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_11
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 205
    .line 206
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    or-int/2addr v6, v13

    .line 215
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v13

    .line 219
    if-nez v6, :cond_12

    .line 220
    .line 221
    if-ne v13, v12, :cond_13

    .line 222
    .line 223
    :cond_12
    new-instance v13, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 224
    .line 225
    const/16 v6, 0x11

    .line 226
    .line 227
    const/4 v12, 0x0

    .line 228
    invoke-direct {v13, p1, v7, v12, v6}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_13
    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 235
    .line 236
    invoke-static {p0, v5, v13, v1}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4}, Lcom/skydoves/landscapist/ImageOptions;->getContentDescription()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    if-eqz v6, :cond_14

    .line 247
    .line 248
    new-instance v6, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 249
    .line 250
    const/16 v12, 0x16

    .line 251
    .line 252
    invoke-direct {v6, v12, v4}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    invoke-static {v3, v11, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    move-object v12, v6

    .line 260
    goto :goto_a

    .line 261
    :cond_14
    move-object v12, v3

    .line 262
    :goto_a
    new-instance v4, Lcom/skydoves/landscapist/ImageLoadKt$$ExternalSyntheticLambda0;

    .line 263
    .line 264
    move-object v6, v5

    .line 265
    move-object v11, v7

    .line 266
    move-object v5, p0

    .line 267
    move-object/from16 v7, p3

    .line 268
    .line 269
    invoke-direct/range {v4 .. v11}, Lcom/skydoves/landscapist/ImageLoadKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/skydoves/landscapist/ImageOptions;Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver;ILkotlin/jvm/functions/Function4;Landroidx/compose/runtime/MutableState;)V

    .line 270
    .line 271
    .line 272
    const v5, -0x3603b309

    .line 273
    .line 274
    .line 275
    invoke-static {v5, v4, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    const/16 v9, 0xd80

    .line 280
    .line 281
    const/4 v10, 0x2

    .line 282
    const/4 v5, 0x0

    .line 283
    const/4 v6, 0x1

    .line 284
    move-object v8, v1

    .line 285
    move-object v4, v12

    .line 286
    invoke-static/range {v4 .. v10}, Landroidx/compose/foundation/layout/OffsetKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 287
    .line 288
    .line 289
    goto :goto_b

    .line 290
    :cond_15
    move-object v8, v1

    .line 291
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 292
    .line 293
    .line 294
    :goto_b
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    if-eqz v9, :cond_16

    .line 299
    .line 300
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;

    .line 301
    .line 302
    const/16 v8, 0xa

    .line 303
    .line 304
    move-object v1, p0

    .line 305
    move-object v2, p1

    .line 306
    move-object/from16 v4, p3

    .line 307
    .line 308
    move-object/from16 v5, p4

    .line 309
    .line 310
    move-object/from16 v6, p5

    .line 311
    .line 312
    move/from16 v7, p7

    .line 313
    .line 314
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 315
    .line 316
    .line 317
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 318
    .line 319
    :cond_16
    return-void
.end method
