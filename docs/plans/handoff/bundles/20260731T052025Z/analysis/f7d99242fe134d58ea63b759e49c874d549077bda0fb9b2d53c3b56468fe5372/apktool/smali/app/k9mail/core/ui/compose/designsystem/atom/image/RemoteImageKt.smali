.class public abstract Lapp/k9mail/core/ui/compose/designsystem/atom/image/RemoteImageKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final RemoteImage(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/Composer;II)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v0, p5

    .line 6
    .line 7
    move/from16 v7, p7

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-object/from16 v2, p6

    .line 13
    .line 14
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    const v4, 0x70d75e0a

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    .line 22
    and-int/lit8 v4, v7, 0x6

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    const/4 v6, 0x4

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    move v4, v6

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v4, v5

    .line 37
    :goto_0
    or-int/2addr v4, v7

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v4, v7

    .line 40
    :goto_1
    and-int/lit8 v8, v7, 0x30

    .line 41
    .line 42
    move-object/from16 v9, p1

    .line 43
    .line 44
    if-nez v8, :cond_3

    .line 45
    .line 46
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-eqz v8, :cond_2

    .line 51
    .line 52
    const/16 v8, 0x20

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v8, 0x10

    .line 56
    .line 57
    :goto_2
    or-int/2addr v4, v8

    .line 58
    :cond_3
    and-int/lit16 v8, v7, 0x180

    .line 59
    .line 60
    if-nez v8, :cond_5

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_4

    .line 67
    .line 68
    const/16 v8, 0x100

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/16 v8, 0x80

    .line 72
    .line 73
    :goto_3
    or-int/2addr v4, v8

    .line 74
    :cond_5
    or-int/lit16 v8, v4, 0xc00

    .line 75
    .line 76
    and-int/lit8 v10, p8, 0x10

    .line 77
    .line 78
    const/4 v11, 0x0

    .line 79
    if-eqz v10, :cond_6

    .line 80
    .line 81
    or-int/lit16 v8, v4, 0x6c00

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_6
    and-int/lit16 v4, v7, 0x6000

    .line 85
    .line 86
    if-nez v4, :cond_8

    .line 87
    .line 88
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_7

    .line 93
    .line 94
    const/16 v4, 0x4000

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_7
    const/16 v4, 0x2000

    .line 98
    .line 99
    :goto_4
    or-int/2addr v8, v4

    .line 100
    :cond_8
    :goto_5
    const/high16 v4, 0x30000

    .line 101
    .line 102
    or-int/2addr v4, v8

    .line 103
    and-int/lit8 v10, p8, 0x40

    .line 104
    .line 105
    if-eqz v10, :cond_9

    .line 106
    .line 107
    const/high16 v4, 0x1b0000

    .line 108
    .line 109
    or-int/2addr v4, v8

    .line 110
    goto :goto_8

    .line 111
    :cond_9
    const/high16 v8, 0x180000

    .line 112
    .line 113
    and-int/2addr v8, v7

    .line 114
    if-nez v8, :cond_c

    .line 115
    .line 116
    const/high16 v8, 0x200000

    .line 117
    .line 118
    and-int/2addr v8, v7

    .line 119
    if-nez v8, :cond_a

    .line 120
    .line 121
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    goto :goto_6

    .line 126
    :cond_a
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    :goto_6
    if-eqz v8, :cond_b

    .line 131
    .line 132
    const/high16 v8, 0x100000

    .line 133
    .line 134
    goto :goto_7

    .line 135
    :cond_b
    const/high16 v8, 0x80000

    .line 136
    .line 137
    :goto_7
    or-int/2addr v4, v8

    .line 138
    :cond_c
    :goto_8
    const v8, 0x92493

    .line 139
    .line 140
    .line 141
    and-int/2addr v8, v4

    .line 142
    const v12, 0x92492

    .line 143
    .line 144
    .line 145
    const/4 v13, 0x0

    .line 146
    const/4 v14, 0x1

    .line 147
    if-eq v8, v12, :cond_d

    .line 148
    .line 149
    move v8, v14

    .line 150
    goto :goto_9

    .line 151
    :cond_d
    move v8, v13

    .line 152
    :goto_9
    and-int/lit8 v12, v4, 0x1

    .line 153
    .line 154
    invoke-virtual {v2, v12, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-eqz v8, :cond_12

    .line 159
    .line 160
    sget-object v16, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 161
    .line 162
    if-eqz v10, :cond_e

    .line 163
    .line 164
    goto :goto_a

    .line 165
    :cond_e
    move-object v11, v0

    .line 166
    :goto_a
    new-instance v15, Lcom/skydoves/landscapist/ImageOptions;

    .line 167
    .line 168
    const/16 v25, 0xf8

    .line 169
    .line 170
    const/16 v26, 0x0

    .line 171
    .line 172
    const/16 v17, 0x0

    .line 173
    .line 174
    sget-object v18, Landroidx/compose/ui/layout/ContentScale$Companion;->Crop:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 175
    .line 176
    const/16 v19, 0x0

    .line 177
    .line 178
    const/16 v20, 0x0

    .line 179
    .line 180
    const-wide/16 v21, 0x0

    .line 181
    .line 182
    const/16 v23, 0x0

    .line 183
    .line 184
    const/16 v24, 0x0

    .line 185
    .line 186
    invoke-direct/range {v15 .. v26}, Lcom/skydoves/landscapist/ImageOptions;-><init>(Landroidx/compose/ui/Alignment;Ljava/lang/String;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/graphics/ColorFilter;FJLjava/lang/String;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 187
    .line 188
    .line 189
    move-object/from16 v0, v16

    .line 190
    .line 191
    move-object/from16 v23, v18

    .line 192
    .line 193
    and-int/lit8 v8, v4, 0xe

    .line 194
    .line 195
    if-ne v8, v6, :cond_f

    .line 196
    .line 197
    move v13, v14

    .line 198
    :cond_f
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    const/4 v8, 0x3

    .line 203
    if-nez v13, :cond_10

    .line 204
    .line 205
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 206
    .line 207
    if-ne v6, v10, :cond_11

    .line 208
    .line 209
    :cond_10
    new-instance v6, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 210
    .line 211
    invoke-direct {v6, v1, v8}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_11
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 218
    .line 219
    new-instance v10, Landroidx/compose/foundation/lazy/LazyListIntervalContent$$ExternalSyntheticLambda2;

    .line 220
    .line 221
    invoke-direct {v10, v3, v14}, Landroidx/compose/foundation/lazy/LazyListIntervalContent$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function3;I)V

    .line 222
    .line 223
    .line 224
    const v12, -0x1977e080

    .line 225
    .line 226
    .line 227
    invoke-static {v12, v10, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 228
    .line 229
    .line 230
    move-result-object v16

    .line 231
    new-instance v10, Landroidx/compose/foundation/lazy/LazyListIntervalContent$$ExternalSyntheticLambda2;

    .line 232
    .line 233
    invoke-direct {v10, v3, v5}, Landroidx/compose/foundation/lazy/LazyListIntervalContent$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function3;I)V

    .line 234
    .line 235
    .line 236
    const v5, -0x69339597

    .line 237
    .line 238
    .line 239
    invoke-static {v5, v10, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 240
    .line 241
    .line 242
    move-result-object v18

    .line 243
    and-int/lit8 v5, v4, 0x70

    .line 244
    .line 245
    const/high16 v10, 0x7000000

    .line 246
    .line 247
    or-int/2addr v5, v10

    .line 248
    const/high16 v10, 0x1c00000

    .line 249
    .line 250
    shl-int/2addr v4, v8

    .line 251
    and-int/2addr v4, v10

    .line 252
    or-int v20, v5, v4

    .line 253
    .line 254
    const/16 v21, 0x6

    .line 255
    .line 256
    const/16 v22, 0x25c

    .line 257
    .line 258
    const/4 v10, 0x0

    .line 259
    move-object v13, v15

    .line 260
    move-object v15, v11

    .line 261
    const/4 v11, 0x0

    .line 262
    const/4 v12, 0x0

    .line 263
    const/4 v14, 0x0

    .line 264
    const/16 v17, 0x0

    .line 265
    .line 266
    move-object/from16 v19, v2

    .line 267
    .line 268
    move-object v8, v6

    .line 269
    invoke-static/range {v8 .. v22}, Lcom/skydoves/landscapist/coil3/CoilImageKt;->CoilImage(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lcom/skydoves/landscapist/components/ImageComponent;Lkotlin/jvm/functions/Function0;Lcom/skydoves/landscapist/ImageOptions;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function5;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V

    .line 270
    .line 271
    .line 272
    move-object v4, v0

    .line 273
    move-object v6, v15

    .line 274
    move-object/from16 v5, v23

    .line 275
    .line 276
    goto :goto_b

    .line 277
    :cond_12
    move-object/from16 v19, v2

    .line 278
    .line 279
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 280
    .line 281
    .line 282
    move-object/from16 v4, p3

    .line 283
    .line 284
    move-object/from16 v5, p4

    .line 285
    .line 286
    move-object v6, v0

    .line 287
    :goto_b
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    if-eqz v9, :cond_13

    .line 292
    .line 293
    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda4;

    .line 294
    .line 295
    move-object/from16 v2, p1

    .line 296
    .line 297
    move/from16 v8, p8

    .line 298
    .line 299
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/graphics/painter/Painter;II)V

    .line 300
    .line 301
    .line 302
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 303
    .line 304
    :cond_13
    return-void
.end method
