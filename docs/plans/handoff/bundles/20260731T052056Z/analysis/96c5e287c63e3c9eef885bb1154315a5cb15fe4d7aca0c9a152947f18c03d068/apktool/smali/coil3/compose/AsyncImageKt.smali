.class public abstract Lcoil3/compose/AsyncImageKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final useExistingImageAsPlaceholderKey:Lcoil3/Extras$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil3/Extras$Key;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcoil3/compose/AsyncImageKt;->useExistingImageAsPlaceholderKey:Lcoil3/Extras$Key;

    .line 9
    .line 10
    return-void
.end method

.method public static final AsyncImage-10Xjiaw(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;)V
    .locals 10

    .line 1
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcoil3/SingletonImageLoader;->get(Landroid/content/Context;)Lcoil3/RealImageLoader;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v1, v0

    .line 16
    new-instance v0, Lcoil3/compose/internal/AsyncImageState;

    .line 17
    .line 18
    sget-object v2, Lcoil3/compose/LocalAsyncImageModelEqualityDelegateKt;->LocalAsyncImageModelEqualityDelegate:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 19
    .line 20
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 25
    .line 26
    invoke-direct {v0, p0, v2, v1}, Lcoil3/compose/internal/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;Lcoil3/RealImageLoader;)V

    .line 27
    .line 28
    .line 29
    const v8, 0x180030

    .line 30
    .line 31
    .line 32
    const/4 v9, 0x0

    .line 33
    const/4 v1, 0x0

    .line 34
    sget-object v3, Lcoil3/compose/AsyncImagePainter;->DefaultTransform:Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    sget-object v6, Landroidx/compose/ui/layout/ContentScale$Companion;->Crop:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 38
    .line 39
    move-object v2, p1

    .line 40
    move-object v7, p2

    .line 41
    invoke-static/range {v0 .. v9}, Lcoil3/compose/AsyncImageKt;->AsyncImage-76YX9Dk(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/GapComposer;II)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static final AsyncImage-76YX9Dk(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/GapComposer;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v7, p6

    .line 6
    .line 7
    move-object/from16 v0, p7

    .line 8
    .line 9
    move/from16 v2, p8

    .line 10
    .line 11
    const v4, 0x49b4d5f6    # 1481406.8f

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v4, v2, 0x6

    .line 18
    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, 0x2

    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    move v4, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v4, v6

    .line 32
    :goto_0
    or-int/2addr v4, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v4, v2

    .line 35
    :goto_1
    and-int/lit8 v8, v2, 0x30

    .line 36
    .line 37
    const/16 v14, 0x20

    .line 38
    .line 39
    move-object/from16 v13, p1

    .line 40
    .line 41
    if-nez v8, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_2

    .line 48
    .line 49
    move v8, v14

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v8, 0x10

    .line 52
    .line 53
    :goto_2
    or-int/2addr v4, v8

    .line 54
    :cond_3
    and-int/lit16 v8, v2, 0x180

    .line 55
    .line 56
    if-nez v8, :cond_5

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_4

    .line 63
    .line 64
    const/16 v8, 0x100

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    const/16 v8, 0x80

    .line 68
    .line 69
    :goto_3
    or-int/2addr v4, v8

    .line 70
    :cond_5
    and-int/lit16 v8, v2, 0xc00

    .line 71
    .line 72
    if-nez v8, :cond_7

    .line 73
    .line 74
    move-object/from16 v8, p3

    .line 75
    .line 76
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_6

    .line 81
    .line 82
    const/16 v9, 0x800

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    const/16 v9, 0x400

    .line 86
    .line 87
    :goto_4
    or-int/2addr v4, v9

    .line 88
    goto :goto_5

    .line 89
    :cond_7
    move-object/from16 v8, p3

    .line 90
    .line 91
    :goto_5
    and-int/lit16 v9, v2, 0x6000

    .line 92
    .line 93
    if-nez v9, :cond_9

    .line 94
    .line 95
    move-object/from16 v9, p4

    .line 96
    .line 97
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    if-eqz v10, :cond_8

    .line 102
    .line 103
    const/16 v10, 0x4000

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_8
    const/16 v10, 0x2000

    .line 107
    .line 108
    :goto_6
    or-int/2addr v4, v10

    .line 109
    goto :goto_7

    .line 110
    :cond_9
    move-object/from16 v9, p4

    .line 111
    .line 112
    :goto_7
    const/high16 v10, 0x30000

    .line 113
    .line 114
    and-int/2addr v10, v2

    .line 115
    if-nez v10, :cond_b

    .line 116
    .line 117
    move-object/from16 v10, p5

    .line 118
    .line 119
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    if-eqz v11, :cond_a

    .line 124
    .line 125
    const/high16 v11, 0x20000

    .line 126
    .line 127
    goto :goto_8

    .line 128
    :cond_a
    const/high16 v11, 0x10000

    .line 129
    .line 130
    :goto_8
    or-int/2addr v4, v11

    .line 131
    goto :goto_9

    .line 132
    :cond_b
    move-object/from16 v10, p5

    .line 133
    .line 134
    :goto_9
    const/high16 v11, 0x180000

    .line 135
    .line 136
    and-int/2addr v11, v2

    .line 137
    if-nez v11, :cond_d

    .line 138
    .line 139
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v11

    .line 143
    if-eqz v11, :cond_c

    .line 144
    .line 145
    const/high16 v11, 0x100000

    .line 146
    .line 147
    goto :goto_a

    .line 148
    :cond_c
    const/high16 v11, 0x80000

    .line 149
    .line 150
    :goto_a
    or-int/2addr v4, v11

    .line 151
    :cond_d
    const/high16 v11, 0xc00000

    .line 152
    .line 153
    and-int/2addr v11, v2

    .line 154
    if-nez v11, :cond_f

    .line 155
    .line 156
    const/high16 v11, 0x3f800000    # 1.0f

    .line 157
    .line 158
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    if-eqz v11, :cond_e

    .line 163
    .line 164
    const/high16 v11, 0x800000

    .line 165
    .line 166
    goto :goto_b

    .line 167
    :cond_e
    const/high16 v11, 0x400000

    .line 168
    .line 169
    :goto_b
    or-int/2addr v4, v11

    .line 170
    :cond_f
    const/high16 v11, 0x6000000

    .line 171
    .line 172
    and-int/2addr v11, v2

    .line 173
    if-nez v11, :cond_11

    .line 174
    .line 175
    const/4 v11, 0x0

    .line 176
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    if-eqz v11, :cond_10

    .line 181
    .line 182
    const/high16 v11, 0x4000000

    .line 183
    .line 184
    goto :goto_c

    .line 185
    :cond_10
    const/high16 v11, 0x2000000

    .line 186
    .line 187
    :goto_c
    or-int/2addr v4, v11

    .line 188
    :cond_11
    const/high16 v11, 0x30000000

    .line 189
    .line 190
    and-int/2addr v11, v2

    .line 191
    const/4 v15, 0x1

    .line 192
    if-nez v11, :cond_13

    .line 193
    .line 194
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    if-eqz v11, :cond_12

    .line 199
    .line 200
    const/high16 v11, 0x20000000

    .line 201
    .line 202
    goto :goto_d

    .line 203
    :cond_12
    const/high16 v11, 0x10000000

    .line 204
    .line 205
    :goto_d
    or-int/2addr v4, v11

    .line 206
    :cond_13
    and-int/lit8 v11, p9, 0x6

    .line 207
    .line 208
    if-nez v11, :cond_15

    .line 209
    .line 210
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 211
    .line 212
    .line 213
    move-result v11

    .line 214
    if-eqz v11, :cond_14

    .line 215
    .line 216
    goto :goto_e

    .line 217
    :cond_14
    move v5, v6

    .line 218
    :goto_e
    or-int v5, p9, v5

    .line 219
    .line 220
    goto :goto_f

    .line 221
    :cond_15
    move/from16 v5, p9

    .line 222
    .line 223
    :goto_f
    const v11, 0x12492493

    .line 224
    .line 225
    .line 226
    and-int/2addr v11, v4

    .line 227
    const v12, 0x12492492

    .line 228
    .line 229
    .line 230
    if-ne v11, v12, :cond_17

    .line 231
    .line 232
    and-int/lit8 v5, v5, 0x3

    .line 233
    .line 234
    if-eq v5, v6, :cond_16

    .line 235
    .line 236
    goto :goto_10

    .line 237
    :cond_16
    const/4 v5, 0x0

    .line 238
    goto :goto_11

    .line 239
    :cond_17
    :goto_10
    move v5, v15

    .line 240
    :goto_11
    and-int/lit8 v6, v4, 0x1

    .line 241
    .line 242
    invoke-virtual {v0, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-eqz v5, :cond_1b

    .line 247
    .line 248
    iget-object v5, v1, Lcoil3/compose/internal/AsyncImageState;->model:Ljava/lang/Object;

    .line 249
    .line 250
    shr-int/lit8 v4, v4, 0xf

    .line 251
    .line 252
    and-int/lit8 v4, v4, 0x70

    .line 253
    .line 254
    invoke-static {v5, v7, v0, v4}, Lcoil3/compose/internal/UtilsKt;->requestOfWithSizeResolver(Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/GapComposer;I)Lcoil3/request/ImageRequest;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-static {v5}, Lcoil3/compose/internal/UtilsKt;->validateRequest(Lcoil3/request/ImageRequest;)V

    .line 259
    .line 260
    .line 261
    iget-object v6, v1, Lcoil3/compose/internal/AsyncImageState;->imageLoader:Lcoil3/RealImageLoader;

    .line 262
    .line 263
    iget-object v7, v1, Lcoil3/compose/internal/AsyncImageState;->modelEqualityDelegate:Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 264
    .line 265
    invoke-static {v0}, Lcoil3/compose/internal/UtilsKt;->previewHandler(Landroidx/compose/runtime/GapComposer;)Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

    .line 266
    .line 267
    .line 268
    move-result-object v12

    .line 269
    new-instance v4, Lcoil3/compose/internal/ContentPainterElement;

    .line 270
    .line 271
    move-object/from16 v11, p6

    .line 272
    .line 273
    invoke-direct/range {v4 .. v13}, Lcoil3/compose/internal/ContentPainterElement;-><init>(Lcoil3/request/ImageRequest;Lcoil3/RealImageLoader;Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-interface {v3, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    iget-wide v5, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 281
    .line 282
    ushr-long v7, v5, v14

    .line 283
    .line 284
    xor-long/2addr v5, v7

    .line 285
    long-to-int v5, v5

    .line 286
    invoke-static {v0, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 295
    .line 296
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 300
    .line 301
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 302
    .line 303
    .line 304
    iget-boolean v8, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 305
    .line 306
    if-eqz v8, :cond_18

    .line 307
    .line 308
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 309
    .line 310
    .line 311
    goto :goto_12

    .line 312
    :cond_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 313
    .line 314
    .line 315
    :goto_12
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 316
    .line 317
    sget-object v8, Lcoil3/compose/internal/UtilsKt$UseMinConstraintsMeasurePolicy$1;->INSTANCE:Lcoil3/compose/internal/UtilsKt$UseMinConstraintsMeasurePolicy$1;

    .line 318
    .line 319
    invoke-static {v0, v8, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 320
    .line 321
    .line 322
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 323
    .line 324
    invoke-static {v0, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 325
    .line 326
    .line 327
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 328
    .line 329
    invoke-static {v0, v4, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 330
    .line 331
    .line 332
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 333
    .line 334
    iget-boolean v6, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 335
    .line 336
    if-nez v6, :cond_19

    .line 337
    .line 338
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    if-nez v6, :cond_1a

    .line 351
    .line 352
    :cond_19
    invoke-static {v5, v0, v5, v4}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 353
    .line 354
    .line 355
    :cond_1a
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 356
    .line 357
    .line 358
    goto :goto_13

    .line 359
    :cond_1b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 360
    .line 361
    .line 362
    :goto_13
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    if-eqz v10, :cond_1c

    .line 367
    .line 368
    new-instance v0, Lcoil3/compose/AsyncImageKt$$ExternalSyntheticLambda0;

    .line 369
    .line 370
    move-object/from16 v4, p3

    .line 371
    .line 372
    move-object/from16 v5, p4

    .line 373
    .line 374
    move-object/from16 v6, p5

    .line 375
    .line 376
    move-object/from16 v7, p6

    .line 377
    .line 378
    move/from16 v9, p9

    .line 379
    .line 380
    move v8, v2

    .line 381
    move-object/from16 v2, p1

    .line 382
    .line 383
    invoke-direct/range {v0 .. v9}, Lcoil3/compose/AsyncImageKt$$ExternalSyntheticLambda0;-><init>(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;II)V

    .line 384
    .line 385
    .line 386
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 387
    .line 388
    :cond_1c
    return-void
.end method

.method public static final AsyncImage-x1rPTaM(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/GapComposer;III)V
    .locals 17

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    move-object/from16 v7, p8

    .line 4
    .line 5
    move/from16 v1, p11

    .line 6
    .line 7
    and-int/lit8 v2, v1, 0x8

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object/from16 v2, p3

    .line 14
    .line 15
    :goto_0
    and-int/lit8 v4, v1, 0x40

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object/from16 v4, p5

    .line 22
    .line 23
    :goto_1
    and-int/lit16 v1, v1, 0x80

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move-object/from16 v1, p6

    .line 30
    .line 31
    :goto_2
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 32
    .line 33
    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 34
    .line 35
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v6}, Lcoil3/SingletonImageLoader;->get(Landroid/content/Context;)Lcoil3/RealImageLoader;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    and-int/lit8 v8, p9, 0x7e

    .line 46
    .line 47
    shl-int/lit8 v9, p9, 0x3

    .line 48
    .line 49
    and-int/lit16 v10, v9, 0x1c00

    .line 50
    .line 51
    or-int/2addr v8, v10

    .line 52
    const v10, 0xe000

    .line 53
    .line 54
    .line 55
    and-int v11, v9, v10

    .line 56
    .line 57
    or-int/2addr v8, v11

    .line 58
    const/high16 v11, 0x70000

    .line 59
    .line 60
    and-int v12, v9, v11

    .line 61
    .line 62
    or-int/2addr v8, v12

    .line 63
    const/high16 v12, 0x380000

    .line 64
    .line 65
    and-int v13, v9, v12

    .line 66
    .line 67
    or-int/2addr v8, v13

    .line 68
    const/high16 v13, 0x1c00000

    .line 69
    .line 70
    and-int v14, v9, v13

    .line 71
    .line 72
    or-int/2addr v8, v14

    .line 73
    const/high16 v14, 0xe000000

    .line 74
    .line 75
    and-int v15, v9, v14

    .line 76
    .line 77
    or-int/2addr v8, v15

    .line 78
    const/high16 v15, 0x70000000

    .line 79
    .line 80
    and-int/2addr v9, v15

    .line 81
    or-int/2addr v8, v9

    .line 82
    shr-int/lit8 v9, p9, 0x1b

    .line 83
    .line 84
    and-int/lit8 v9, v9, 0xe

    .line 85
    .line 86
    shl-int/lit8 v3, p10, 0x3

    .line 87
    .line 88
    and-int/lit8 v16, v3, 0x70

    .line 89
    .line 90
    or-int v9, v9, v16

    .line 91
    .line 92
    move/from16 p3, v10

    .line 93
    .line 94
    and-int/lit16 v10, v3, 0x380

    .line 95
    .line 96
    or-int/2addr v9, v10

    .line 97
    and-int/lit16 v10, v3, 0x1c00

    .line 98
    .line 99
    or-int/2addr v9, v10

    .line 100
    and-int v10, v3, p3

    .line 101
    .line 102
    or-int/2addr v9, v10

    .line 103
    and-int/2addr v3, v11

    .line 104
    or-int/2addr v3, v9

    .line 105
    shr-int/lit8 v9, v8, 0x3

    .line 106
    .line 107
    new-instance v10, Lcoil3/compose/internal/AsyncImageState;

    .line 108
    .line 109
    move/from16 p3, v11

    .line 110
    .line 111
    sget-object v11, Lcoil3/compose/LocalAsyncImageModelEqualityDelegateKt;->LocalAsyncImageModelEqualityDelegate:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 112
    .line 113
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    check-cast v11, Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 118
    .line 119
    move/from16 p5, v12

    .line 120
    .line 121
    move-object/from16 v12, p0

    .line 122
    .line 123
    invoke-direct {v10, v12, v11, v6}, Lcoil3/compose/internal/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;Lcoil3/RealImageLoader;)V

    .line 124
    .line 125
    .line 126
    sget v6, Lcoil3/compose/internal/UtilsKt;->$r8$clinit:I

    .line 127
    .line 128
    const/4 v6, 0x0

    .line 129
    if-nez v2, :cond_4

    .line 130
    .line 131
    if-nez v0, :cond_4

    .line 132
    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_3
    sget-object v0, Lcoil3/compose/AsyncImagePainter;->DefaultTransform:Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_4
    :goto_3
    new-instance v11, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 140
    .line 141
    invoke-direct {v11, v2, v0, v0, v6}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 142
    .line 143
    .line 144
    move-object v0, v11

    .line 145
    :goto_4
    if-nez v4, :cond_5

    .line 146
    .line 147
    if-nez v1, :cond_5

    .line 148
    .line 149
    const/4 v4, 0x0

    .line 150
    goto :goto_5

    .line 151
    :cond_5
    new-instance v2, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda0;

    .line 152
    .line 153
    invoke-direct {v2, v4, v1, v6}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    .line 154
    .line 155
    .line 156
    move-object v4, v2

    .line 157
    :goto_5
    and-int/lit8 v1, v8, 0x70

    .line 158
    .line 159
    and-int/lit16 v2, v9, 0x380

    .line 160
    .line 161
    or-int/2addr v1, v2

    .line 162
    shl-int/lit8 v2, v3, 0xf

    .line 163
    .line 164
    and-int v6, v2, p3

    .line 165
    .line 166
    or-int/2addr v1, v6

    .line 167
    and-int v6, v2, p5

    .line 168
    .line 169
    or-int/2addr v1, v6

    .line 170
    and-int v6, v2, v13

    .line 171
    .line 172
    or-int/2addr v1, v6

    .line 173
    and-int v6, v2, v14

    .line 174
    .line 175
    or-int/2addr v1, v6

    .line 176
    and-int/2addr v2, v15

    .line 177
    or-int v8, v1, v2

    .line 178
    .line 179
    shr-int/lit8 v1, v3, 0xf

    .line 180
    .line 181
    and-int/lit8 v9, v1, 0xe

    .line 182
    .line 183
    move-object/from16 v1, p1

    .line 184
    .line 185
    move-object/from16 v2, p2

    .line 186
    .line 187
    move-object/from16 v6, p7

    .line 188
    .line 189
    move-object v3, v0

    .line 190
    move-object v0, v10

    .line 191
    invoke-static/range {v0 .. v9}, Lcoil3/compose/AsyncImageKt;->AsyncImage-76YX9Dk(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/GapComposer;II)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public static final SubcomposeAsyncImage-gl8XCv8(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    move-object/from16 v9, p4

    .line 8
    .line 9
    move-object/from16 v6, p5

    .line 10
    .line 11
    move-object/from16 v7, p6

    .line 12
    .line 13
    move-object/from16 v12, p7

    .line 14
    .line 15
    move-object/from16 v10, p8

    .line 16
    .line 17
    move/from16 v11, p9

    .line 18
    .line 19
    const v3, -0xc43f3ee

    .line 20
    .line 21
    .line 22
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x2

    .line 30
    const/4 v5, 0x4

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    move v3, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v3, v4

    .line 36
    :goto_0
    or-int/2addr v3, v11

    .line 37
    and-int/lit8 v8, v11, 0x30

    .line 38
    .line 39
    if-nez v8, :cond_2

    .line 40
    .line 41
    move-object/from16 v8, p1

    .line 42
    .line 43
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v15

    .line 47
    if-eqz v15, :cond_1

    .line 48
    .line 49
    const/16 v15, 0x20

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/16 v15, 0x10

    .line 53
    .line 54
    :goto_1
    or-int/2addr v3, v15

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move-object/from16 v8, p1

    .line 57
    .line 58
    :goto_2
    and-int/lit16 v15, v11, 0x180

    .line 59
    .line 60
    if-nez v15, :cond_4

    .line 61
    .line 62
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v15

    .line 66
    if-eqz v15, :cond_3

    .line 67
    .line 68
    const/16 v15, 0x100

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/16 v15, 0x80

    .line 72
    .line 73
    :goto_3
    or-int/2addr v3, v15

    .line 74
    :cond_4
    and-int/lit16 v15, v11, 0xc00

    .line 75
    .line 76
    if-nez v15, :cond_6

    .line 77
    .line 78
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v15

    .line 82
    if-eqz v15, :cond_5

    .line 83
    .line 84
    const/16 v15, 0x800

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_5
    const/16 v15, 0x400

    .line 88
    .line 89
    :goto_4
    or-int/2addr v3, v15

    .line 90
    :cond_6
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v15

    .line 94
    if-eqz v15, :cond_7

    .line 95
    .line 96
    const/16 v15, 0x4000

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_7
    const/16 v15, 0x2000

    .line 100
    .line 101
    :goto_5
    or-int/2addr v3, v15

    .line 102
    const/high16 v15, 0x30000

    .line 103
    .line 104
    and-int/2addr v15, v11

    .line 105
    if-nez v15, :cond_9

    .line 106
    .line 107
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v15

    .line 111
    if-eqz v15, :cond_8

    .line 112
    .line 113
    const/high16 v15, 0x20000

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_8
    const/high16 v15, 0x10000

    .line 117
    .line 118
    :goto_6
    or-int/2addr v3, v15

    .line 119
    :cond_9
    const/high16 v15, 0x180000

    .line 120
    .line 121
    and-int/2addr v15, v11

    .line 122
    if-nez v15, :cond_b

    .line 123
    .line 124
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    if-eqz v15, :cond_a

    .line 129
    .line 130
    const/high16 v15, 0x100000

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_a
    const/high16 v15, 0x80000

    .line 134
    .line 135
    :goto_7
    or-int/2addr v3, v15

    .line 136
    :cond_b
    const/high16 v15, 0xc00000

    .line 137
    .line 138
    and-int/2addr v15, v11

    .line 139
    if-nez v15, :cond_d

    .line 140
    .line 141
    const/high16 v15, 0x3f800000    # 1.0f

    .line 142
    .line 143
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 144
    .line 145
    .line 146
    move-result v15

    .line 147
    if-eqz v15, :cond_c

    .line 148
    .line 149
    const/high16 v15, 0x800000

    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_c
    const/high16 v15, 0x400000

    .line 153
    .line 154
    :goto_8
    or-int/2addr v3, v15

    .line 155
    :cond_d
    const/high16 v15, 0x6000000

    .line 156
    .line 157
    and-int/2addr v15, v11

    .line 158
    if-nez v15, :cond_f

    .line 159
    .line 160
    const/4 v15, 0x0

    .line 161
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v15

    .line 165
    if-eqz v15, :cond_e

    .line 166
    .line 167
    const/high16 v15, 0x4000000

    .line 168
    .line 169
    goto :goto_9

    .line 170
    :cond_e
    const/high16 v15, 0x2000000

    .line 171
    .line 172
    :goto_9
    or-int/2addr v3, v15

    .line 173
    :cond_f
    const/high16 v15, 0x30000000

    .line 174
    .line 175
    and-int/2addr v15, v11

    .line 176
    const/4 v13, 0x1

    .line 177
    if-nez v15, :cond_11

    .line 178
    .line 179
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 180
    .line 181
    .line 182
    move-result v15

    .line 183
    if-eqz v15, :cond_10

    .line 184
    .line 185
    const/high16 v15, 0x20000000

    .line 186
    .line 187
    goto :goto_a

    .line 188
    :cond_10
    const/high16 v15, 0x10000000

    .line 189
    .line 190
    :goto_a
    or-int/2addr v3, v15

    .line 191
    :cond_11
    and-int/lit8 v15, p10, 0x6

    .line 192
    .line 193
    if-nez v15, :cond_13

    .line 194
    .line 195
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 196
    .line 197
    .line 198
    move-result v15

    .line 199
    if-eqz v15, :cond_12

    .line 200
    .line 201
    move v4, v5

    .line 202
    :cond_12
    or-int v4, p10, v4

    .line 203
    .line 204
    goto :goto_b

    .line 205
    :cond_13
    move/from16 v4, p10

    .line 206
    .line 207
    :goto_b
    and-int/lit8 v5, p10, 0x30

    .line 208
    .line 209
    if-nez v5, :cond_15

    .line 210
    .line 211
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_14

    .line 216
    .line 217
    const/16 v16, 0x20

    .line 218
    .line 219
    goto :goto_c

    .line 220
    :cond_14
    const/16 v16, 0x10

    .line 221
    .line 222
    :goto_c
    or-int v4, v4, v16

    .line 223
    .line 224
    :cond_15
    move v15, v4

    .line 225
    const v4, 0x12492493

    .line 226
    .line 227
    .line 228
    and-int/2addr v4, v3

    .line 229
    const v5, 0x12492492

    .line 230
    .line 231
    .line 232
    if-ne v4, v5, :cond_17

    .line 233
    .line 234
    and-int/lit8 v4, v15, 0x13

    .line 235
    .line 236
    const/16 v5, 0x12

    .line 237
    .line 238
    if-eq v4, v5, :cond_16

    .line 239
    .line 240
    goto :goto_d

    .line 241
    :cond_16
    const/4 v4, 0x0

    .line 242
    goto :goto_e

    .line 243
    :cond_17
    :goto_d
    const/4 v4, 0x1

    .line 244
    :goto_e
    and-int/lit8 v5, v3, 0x1

    .line 245
    .line 246
    invoke-virtual {v10, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-eqz v4, :cond_1e

    .line 251
    .line 252
    iget-object v4, v1, Lcoil3/compose/internal/AsyncImageState;->model:Ljava/lang/Object;

    .line 253
    .line 254
    shr-int/lit8 v5, v3, 0xf

    .line 255
    .line 256
    and-int/lit8 v5, v5, 0x70

    .line 257
    .line 258
    invoke-static {v4, v7, v10, v5}, Lcoil3/compose/internal/UtilsKt;->requestOfWithSizeResolver(Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/GapComposer;I)Lcoil3/request/ImageRequest;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    iget-object v5, v1, Lcoil3/compose/internal/AsyncImageState;->imageLoader:Lcoil3/RealImageLoader;

    .line 263
    .line 264
    shr-int/lit8 v18, v3, 0x6

    .line 265
    .line 266
    shr-int/lit8 v3, v3, 0xc

    .line 267
    .line 268
    const/16 v17, 0x20

    .line 269
    .line 270
    sget-object v14, Lcoil3/compose/LocalAsyncImageModelEqualityDelegateKt;->LocalAsyncImageModelEqualityDelegate:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 271
    .line 272
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v14

    .line 276
    check-cast v14, Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 277
    .line 278
    const v13, -0x4a168af5

    .line 279
    .line 280
    .line 281
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 282
    .line 283
    .line 284
    const-string v13, "rememberAsyncImagePainter"

    .line 285
    .line 286
    invoke-static {v13}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :try_start_0
    invoke-static {v4, v10}, Lcoil3/compose/internal/UtilsKt;->requestOf(Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;)Lcoil3/request/ImageRequest;

    .line 290
    .line 291
    .line 292
    move-result-object v13

    .line 293
    invoke-static {v13}, Lcoil3/compose/internal/UtilsKt;->validateRequest(Lcoil3/request/ImageRequest;)V

    .line 294
    .line 295
    .line 296
    new-instance v1, Lcoil3/compose/AsyncImagePainter$Input;

    .line 297
    .line 298
    invoke-direct {v1, v5, v13, v14}, Lcoil3/compose/AsyncImagePainter$Input;-><init>(Lcoil3/RealImageLoader;Lcoil3/request/ImageRequest;Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 306
    .line 307
    if-ne v5, v13, :cond_18

    .line 308
    .line 309
    new-instance v5, Lcoil3/compose/AsyncImagePainter;

    .line 310
    .line 311
    invoke-direct {v5, v1}, Lcoil3/compose/AsyncImagePainter;-><init>(Lcoil3/compose/AsyncImagePainter$Input;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    :cond_18
    check-cast v5, Lcoil3/compose/AsyncImagePainter;

    .line 318
    .line 319
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v14

    .line 323
    if-ne v14, v13, :cond_19

    .line 324
    .line 325
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/GapComposer;)Lkotlinx/coroutines/CoroutineScope;

    .line 326
    .line 327
    .line 328
    move-result-object v14

    .line 329
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    :cond_19
    check-cast v14, Lkotlinx/coroutines/CoroutineScope;

    .line 333
    .line 334
    iput-object v14, v5, Lcoil3/compose/AsyncImagePainter;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 335
    .line 336
    iput-object v0, v5, Lcoil3/compose/AsyncImagePainter;->transform:Lkotlin/jvm/functions/Function1;

    .line 337
    .line 338
    iput-object v9, v5, Lcoil3/compose/AsyncImagePainter;->onState:Lkotlin/jvm/functions/Function1;

    .line 339
    .line 340
    iput-object v7, v5, Lcoil3/compose/AsyncImagePainter;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 341
    .line 342
    invoke-static {v10}, Lcoil3/compose/internal/UtilsKt;->previewHandler(Landroidx/compose/runtime/GapComposer;)Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

    .line 343
    .line 344
    .line 345
    move-result-object v13

    .line 346
    iput-object v13, v5, Lcoil3/compose/AsyncImagePainter;->previewHandler:Lcoil3/compose/AsyncImagePreviewHandler$Companion$Default$1;

    .line 347
    .line 348
    invoke-virtual {v5, v1}, Lcoil3/compose/AsyncImagePainter;->set_input$coil_compose_core(Lcoil3/compose/AsyncImagePainter$Input;)V

    .line 349
    .line 350
    .line 351
    const/4 v1, 0x0

    .line 352
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .line 354
    .line 355
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 356
    .line 357
    .line 358
    iget-object v1, v4, Lcoil3/request/ImageRequest;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 359
    .line 360
    instance-of v4, v1, Lcoil3/compose/ConstraintsSizeResolver;

    .line 361
    .line 362
    if-nez v4, :cond_1d

    .line 363
    .line 364
    const v1, -0x57b1a215

    .line 365
    .line 366
    .line 367
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 368
    .line 369
    .line 370
    const/4 v1, 0x1

    .line 371
    invoke-static {v6, v1}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    iget-wide v13, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 376
    .line 377
    ushr-long v17, v13, v17

    .line 378
    .line 379
    xor-long v13, v13, v17

    .line 380
    .line 381
    long-to-int v1, v13

    .line 382
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    invoke-static {v10, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 387
    .line 388
    .line 389
    move-result-object v13

    .line 390
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 391
    .line 392
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 396
    .line 397
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 398
    .line 399
    .line 400
    iget-boolean v0, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 401
    .line 402
    if-eqz v0, :cond_1a

    .line 403
    .line 404
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 405
    .line 406
    .line 407
    goto :goto_f

    .line 408
    :cond_1a
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 409
    .line 410
    .line 411
    :goto_f
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 412
    .line 413
    invoke-static {v10, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 414
    .line 415
    .line 416
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 417
    .line 418
    invoke-static {v10, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 419
    .line 420
    .line 421
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 422
    .line 423
    iget-boolean v3, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 424
    .line 425
    if-nez v3, :cond_1b

    .line 426
    .line 427
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    if-nez v3, :cond_1c

    .line 440
    .line 441
    :cond_1b
    invoke-static {v1, v10, v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 442
    .line 443
    .line 444
    :cond_1c
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 445
    .line 446
    invoke-static {v10, v13, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 447
    .line 448
    .line 449
    new-instance v3, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    .line 450
    .line 451
    sget-object v4, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 452
    .line 453
    move-object/from16 v19, v7

    .line 454
    .line 455
    move-object v7, v6

    .line 456
    move-object v6, v8

    .line 457
    move-object/from16 v8, v19

    .line 458
    .line 459
    invoke-direct/range {v3 .. v8}, Lcoil3/compose/RealSubcomposeAsyncImageScope;-><init>(Landroidx/compose/foundation/layout/BoxScope;Lcoil3/compose/AsyncImagePainter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;)V

    .line 460
    .line 461
    .line 462
    and-int/lit8 v0, v15, 0x70

    .line 463
    .line 464
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v12, v3, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    const/4 v1, 0x1

    .line 472
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 473
    .line 474
    .line 475
    const/4 v0, 0x0

    .line 476
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 477
    .line 478
    .line 479
    move-object v6, v10

    .line 480
    goto :goto_10

    .line 481
    :cond_1d
    const/4 v0, 0x0

    .line 482
    const v4, -0x57a71fbe

    .line 483
    .line 484
    .line 485
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 486
    .line 487
    .line 488
    new-instance v10, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;

    .line 489
    .line 490
    const/16 v17, 0x0

    .line 491
    .line 492
    move-object/from16 v14, p1

    .line 493
    .line 494
    move-object/from16 v15, p5

    .line 495
    .line 496
    move-object/from16 v16, p6

    .line 497
    .line 498
    move-object/from16 v6, p8

    .line 499
    .line 500
    move-object v11, v1

    .line 501
    move-object v13, v5

    .line 502
    invoke-direct/range {v10 .. v17}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 503
    .line 504
    .line 505
    const v1, -0x16596474

    .line 506
    .line 507
    .line 508
    invoke-static {v1, v10, v6}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 509
    .line 510
    .line 511
    move-result-object v5

    .line 512
    and-int/lit8 v1, v18, 0xe

    .line 513
    .line 514
    or-int/lit16 v1, v1, 0xd80

    .line 515
    .line 516
    and-int/lit8 v3, v3, 0x70

    .line 517
    .line 518
    or-int v7, v1, v3

    .line 519
    .line 520
    const/4 v8, 0x0

    .line 521
    const/4 v4, 0x1

    .line 522
    move-object/from16 v3, p5

    .line 523
    .line 524
    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/layout/OffsetKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 528
    .line 529
    .line 530
    goto :goto_10

    .line 531
    :catchall_0
    move-exception v0

    .line 532
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 533
    .line 534
    .line 535
    throw v0

    .line 536
    :cond_1e
    move-object v6, v10

    .line 537
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 538
    .line 539
    .line 540
    :goto_10
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 541
    .line 542
    .line 543
    move-result-object v11

    .line 544
    if-eqz v11, :cond_1f

    .line 545
    .line 546
    new-instance v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;

    .line 547
    .line 548
    move-object/from16 v1, p0

    .line 549
    .line 550
    move-object/from16 v2, p1

    .line 551
    .line 552
    move-object/from16 v3, p2

    .line 553
    .line 554
    move-object/from16 v4, p3

    .line 555
    .line 556
    move-object/from16 v6, p5

    .line 557
    .line 558
    move-object/from16 v7, p6

    .line 559
    .line 560
    move-object/from16 v8, p7

    .line 561
    .line 562
    move/from16 v10, p10

    .line 563
    .line 564
    move-object v5, v9

    .line 565
    move/from16 v9, p9

    .line 566
    .line 567
    invoke-direct/range {v0 .. v10}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;-><init>(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 568
    .line 569
    .line 570
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 571
    .line 572
    :cond_1f
    return-void
.end method

.method public static final SubcomposeAsyncImage-nc27qi8(Lcoil3/request/ImageRequest;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V
    .locals 11

    .line 1
    move-object/from16 v8, p6

    .line 2
    .line 3
    move/from16 v0, p8

    .line 4
    .line 5
    and-int/lit8 v1, v0, 0x10

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object p3, v2

    .line 11
    :cond_0
    and-int/lit16 v0, v0, 0x100

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move-object v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-object/from16 v0, p5

    .line 18
    .line 19
    :goto_0
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 20
    .line 21
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 22
    .line 23
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v1}, Lcoil3/SingletonImageLoader;->get(Landroid/content/Context;)Lcoil3/RealImageLoader;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    and-int/lit8 v3, p7, 0x7e

    .line 34
    .line 35
    shl-int/lit8 v4, p7, 0x3

    .line 36
    .line 37
    and-int/lit16 v6, v4, 0x1c00

    .line 38
    .line 39
    or-int/2addr v3, v6

    .line 40
    const/high16 v6, 0x70000

    .line 41
    .line 42
    and-int/2addr v4, v6

    .line 43
    or-int/2addr v3, v4

    .line 44
    const/high16 v4, 0x180000

    .line 45
    .line 46
    or-int/2addr v3, v4

    .line 47
    shr-int/lit8 v4, v3, 0x3

    .line 48
    .line 49
    new-instance v6, Lcoil3/compose/internal/AsyncImageState;

    .line 50
    .line 51
    sget-object v7, Lcoil3/compose/LocalAsyncImageModelEqualityDelegateKt;->LocalAsyncImageModelEqualityDelegate:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 52
    .line 53
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;

    .line 58
    .line 59
    invoke-direct {v6, p0, v7, v1}, Lcoil3/compose/internal/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;Lcoil3/RealImageLoader;)V

    .line 60
    .line 61
    .line 62
    sget p0, Lcoil3/compose/internal/UtilsKt;->$r8$clinit:I

    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    new-instance v1, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    invoke-direct {v1, v2, v0, p0}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    .line 71
    .line 72
    .line 73
    move-object v2, v1

    .line 74
    :goto_1
    new-instance v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;

    .line 75
    .line 76
    invoke-direct {v0, p0, p3, p4}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    new-instance v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 80
    .line 81
    const/4 p0, 0x1

    .line 82
    const p3, -0x41f77c73

    .line 83
    .line 84
    .line 85
    invoke-direct {v7, v0, p0, p3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 86
    .line 87
    .line 88
    and-int/lit8 p0, v3, 0x70

    .line 89
    .line 90
    and-int/lit16 p3, v4, 0x380

    .line 91
    .line 92
    or-int v9, p0, p3

    .line 93
    .line 94
    const/4 v10, 0x0

    .line 95
    sget-object v3, Lcoil3/compose/AsyncImagePainter;->DefaultTransform:Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    move-object v0, v6

    .line 98
    sget-object v6, Landroidx/compose/ui/layout/ContentScale$Companion;->Fit:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 99
    .line 100
    move-object v1, p1

    .line 101
    move-object v4, v2

    .line 102
    move-object v2, p2

    .line 103
    invoke-static/range {v0 .. v10}, Lcoil3/compose/AsyncImageKt;->SubcomposeAsyncImage-gl8XCv8(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public static final SubcomposeAsyncImageContent(Lcoil3/compose/RealSubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FZLandroidx/compose/runtime/GapComposer;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p8

    .line 4
    .line 5
    move/from16 v9, p9

    .line 6
    .line 7
    const v2, -0x52016e6e

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v2, v9, 0x6

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x2

    .line 26
    :goto_0
    or-int/2addr v2, v9

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v2, v9

    .line 29
    :goto_1
    or-int/lit8 v3, v2, 0x30

    .line 30
    .line 31
    and-int/lit16 v4, v9, 0x180

    .line 32
    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    or-int/lit16 v3, v2, 0xb0

    .line 36
    .line 37
    :cond_2
    and-int/lit16 v2, v9, 0xc00

    .line 38
    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    or-int/lit16 v3, v3, 0x400

    .line 42
    .line 43
    :cond_3
    and-int/lit16 v2, v9, 0x6000

    .line 44
    .line 45
    if-nez v2, :cond_4

    .line 46
    .line 47
    or-int/lit16 v3, v3, 0x2000

    .line 48
    .line 49
    :cond_4
    const/high16 v2, 0x30000

    .line 50
    .line 51
    and-int/2addr v2, v9

    .line 52
    if-nez v2, :cond_5

    .line 53
    .line 54
    const/high16 v2, 0x10000

    .line 55
    .line 56
    or-int/2addr v3, v2

    .line 57
    :cond_5
    const/high16 v2, 0x180000

    .line 58
    .line 59
    and-int/2addr v2, v9

    .line 60
    if-nez v2, :cond_6

    .line 61
    .line 62
    const/high16 v2, 0x80000

    .line 63
    .line 64
    or-int/2addr v3, v2

    .line 65
    :cond_6
    const/high16 v2, 0xc00000

    .line 66
    .line 67
    and-int/2addr v2, v9

    .line 68
    if-nez v2, :cond_7

    .line 69
    .line 70
    const/high16 v2, 0x400000

    .line 71
    .line 72
    or-int/2addr v3, v2

    .line 73
    :cond_7
    const/high16 v2, 0x6000000

    .line 74
    .line 75
    and-int/2addr v2, v9

    .line 76
    if-nez v2, :cond_8

    .line 77
    .line 78
    const/high16 v2, 0x2000000

    .line 79
    .line 80
    or-int/2addr v3, v2

    .line 81
    :cond_8
    const v2, 0x2492493

    .line 82
    .line 83
    .line 84
    and-int/2addr v2, v3

    .line 85
    const v4, 0x2492492

    .line 86
    .line 87
    .line 88
    const/4 v5, 0x1

    .line 89
    if-eq v2, v4, :cond_9

    .line 90
    .line 91
    move v2, v5

    .line 92
    goto :goto_2

    .line 93
    :cond_9
    const/4 v2, 0x0

    .line 94
    :goto_2
    and-int/2addr v3, v5

    .line 95
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_f

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 102
    .line 103
    .line 104
    and-int/lit8 v2, v9, 0x1

    .line 105
    .line 106
    if-eqz v2, :cond_b

    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_a

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 116
    .line 117
    .line 118
    move-object/from16 v7, p1

    .line 119
    .line 120
    move-object/from16 v2, p2

    .line 121
    .line 122
    move-object/from16 v3, p3

    .line 123
    .line 124
    move-object/from16 v4, p4

    .line 125
    .line 126
    move-object/from16 v6, p5

    .line 127
    .line 128
    move/from16 v8, p6

    .line 129
    .line 130
    move/from16 v10, p7

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_b
    :goto_3
    iget-object v2, v1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->painter:Lcoil3/compose/AsyncImagePainter;

    .line 134
    .line 135
    iget-object v3, v1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->contentDescription:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v4, v1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->alignment:Landroidx/compose/ui/Alignment;

    .line 138
    .line 139
    iget-object v6, v1, Lcoil3/compose/RealSubcomposeAsyncImageScope;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 151
    .line 152
    const/high16 v8, 0x3f800000    # 1.0f

    .line 153
    .line 154
    move v10, v5

    .line 155
    :goto_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 156
    .line 157
    .line 158
    new-instance v11, Lcoil3/compose/internal/SubcomposeContentPainterElement;

    .line 159
    .line 160
    move-object/from16 p2, v2

    .line 161
    .line 162
    move-object/from16 p7, v3

    .line 163
    .line 164
    move-object/from16 p3, v4

    .line 165
    .line 166
    move-object/from16 p4, v6

    .line 167
    .line 168
    move/from16 p5, v8

    .line 169
    .line 170
    move/from16 p6, v10

    .line 171
    .line 172
    move-object/from16 p1, v11

    .line 173
    .line 174
    invoke-direct/range {p1 .. p7}, Lcoil3/compose/internal/SubcomposeContentPainterElement;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FZLjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v7, v11}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 178
    .line 179
    .line 180
    move-result-object v11

    .line 181
    sget v12, Lcoil3/compose/internal/UtilsKt;->$r8$clinit:I

    .line 182
    .line 183
    iget-wide v12, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 184
    .line 185
    const/16 v14, 0x20

    .line 186
    .line 187
    ushr-long v14, v12, v14

    .line 188
    .line 189
    xor-long/2addr v12, v14

    .line 190
    long-to-int v12, v12

    .line 191
    invoke-static {v0, v11}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 196
    .line 197
    .line 198
    move-result-object v13

    .line 199
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 200
    .line 201
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 205
    .line 206
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 207
    .line 208
    .line 209
    iget-boolean v15, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 210
    .line 211
    if-eqz v15, :cond_c

    .line 212
    .line 213
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 214
    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 218
    .line 219
    .line 220
    :goto_5
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 221
    .line 222
    sget-object v15, Lcoil3/compose/internal/UtilsKt$UseMinConstraintsMeasurePolicy$1;->INSTANCE:Lcoil3/compose/internal/UtilsKt$UseMinConstraintsMeasurePolicy$1;

    .line 223
    .line 224
    invoke-static {v0, v15, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 225
    .line 226
    .line 227
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 228
    .line 229
    invoke-static {v0, v13, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 230
    .line 231
    .line 232
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 233
    .line 234
    invoke-static {v0, v11, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 235
    .line 236
    .line 237
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 238
    .line 239
    iget-boolean v13, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 240
    .line 241
    if-nez v13, :cond_d

    .line 242
    .line 243
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v13

    .line 247
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v14

    .line 251
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    if-nez v13, :cond_e

    .line 256
    .line 257
    :cond_d
    invoke-static {v12, v0, v12, v11}, Landroidx/compose/ui/Modifier$-CC;->m(ILandroidx/compose/runtime/GapComposer;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    .line 258
    .line 259
    .line 260
    :cond_e
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 261
    .line 262
    .line 263
    move-object v5, v4

    .line 264
    move-object v4, v3

    .line 265
    move-object v3, v2

    .line 266
    move-object v2, v7

    .line 267
    move v7, v8

    .line 268
    move v8, v10

    .line 269
    goto :goto_6

    .line 270
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 271
    .line 272
    .line 273
    move-object/from16 v2, p1

    .line 274
    .line 275
    move-object/from16 v3, p2

    .line 276
    .line 277
    move-object/from16 v4, p3

    .line 278
    .line 279
    move-object/from16 v5, p4

    .line 280
    .line 281
    move-object/from16 v6, p5

    .line 282
    .line 283
    move/from16 v7, p6

    .line 284
    .line 285
    move/from16 v8, p7

    .line 286
    .line 287
    :goto_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    if-eqz v10, :cond_10

    .line 292
    .line 293
    new-instance v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda3;

    .line 294
    .line 295
    invoke-direct/range {v0 .. v9}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda3;-><init>(Lcoil3/compose/RealSubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FZI)V

    .line 296
    .line 297
    .line 298
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 299
    .line 300
    :cond_10
    return-void
.end method

.method public static final asPainter-55t9-rM(Lcoil3/Image;Landroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 1

    .line 1
    instance-of v0, p0, Lcoil3/BitmapImage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcoil3/BitmapImage;

    .line 6
    .line 7
    iget-object p0, p0, Lcoil3/BitmapImage;->bitmap:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    new-instance p1, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/uuid/UuidKt;->BitmapPainter-QZhYCtY$default(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    instance-of v0, p0, Lcoil3/DrawableImage;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Lcom/google/accompanist/drawablepainter/DrawablePainter;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p0, p1}, Lcoil3/UriKt;->asDrawable(Lcoil3/Image;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Lcom/google/accompanist/drawablepainter/DrawablePainter;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    new-instance p1, Lcoil3/compose/ImagePainter;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcoil3/compose/ImagePainter;-><init>(Lcoil3/Image;)V

    .line 44
    .line 45
    .line 46
    return-object p1
.end method
