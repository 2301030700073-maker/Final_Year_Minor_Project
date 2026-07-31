.class public final synthetic Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Landroidx/compose/animation/core/InfiniteTransition;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/animation/core/InfiniteTransition;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x206

    .line 6
    .line 7
    const/high16 v3, 0x41c00000    # 24.0f

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    const/high16 v6, 0x3f800000    # 1.0f

    .line 13
    .line 14
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    const/16 v9, 0x80

    .line 18
    .line 19
    const/4 v10, 0x1

    .line 20
    iget-object v11, v0, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/animation/core/InfiniteTransition;

    .line 21
    .line 22
    iget-object v0, v0, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    .line 23
    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    move-object/from16 v1, p1

    .line 28
    .line 29
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 30
    .line 31
    move-object/from16 v12, p2

    .line 32
    .line 33
    check-cast v12, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-object/from16 v12, p3

    .line 39
    .line 40
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 41
    .line 42
    move-object/from16 v13, p4

    .line 43
    .line 44
    check-cast v13, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v13

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    and-int/lit16 v1, v13, 0x81

    .line 54
    .line 55
    if-eq v1, v9, :cond_0

    .line 56
    .line 57
    move v8, v10

    .line 58
    :cond_0
    and-int/lit8 v1, v13, 0x1

    .line 59
    .line 60
    invoke-virtual {v12, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1, v4, v3, v10}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1, v0, v11, v12, v2}, Lorg/wikipedia/compose/components/TabsBoxKt;->ListItemSkeletonLoader(Landroidx/compose/ui/Modifier;Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/GapComposer;I)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-object v5

    .line 82
    :pswitch_0
    move-object/from16 v1, p1

    .line 83
    .line 84
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 85
    .line 86
    move-object/from16 v12, p2

    .line 87
    .line 88
    check-cast v12, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-object/from16 v12, p3

    .line 94
    .line 95
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 96
    .line 97
    move-object/from16 v13, p4

    .line 98
    .line 99
    check-cast v13, Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    and-int/lit16 v1, v13, 0x81

    .line 109
    .line 110
    if-eq v1, v9, :cond_2

    .line 111
    .line 112
    move v8, v10

    .line 113
    :cond_2
    and-int/lit8 v1, v13, 0x1

    .line 114
    .line 115
    invoke-virtual {v12, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v1, v4, v3, v10}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v1, v0, v11, v12, v2}, Lorg/wikipedia/compose/components/TabsBoxKt;->ListItemSkeletonLoader(Landroidx/compose/ui/Modifier;Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/GapComposer;I)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 134
    .line 135
    .line 136
    :goto_1
    return-object v5

    .line 137
    :pswitch_1
    move-object/from16 v1, p1

    .line 138
    .line 139
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 140
    .line 141
    move-object/from16 v12, p2

    .line 142
    .line 143
    check-cast v12, Ljava/lang/Integer;

    .line 144
    .line 145
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    move-object/from16 v12, p3

    .line 149
    .line 150
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 151
    .line 152
    move-object/from16 v13, p4

    .line 153
    .line 154
    check-cast v13, Ljava/lang/Integer;

    .line 155
    .line 156
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    and-int/lit16 v1, v13, 0x81

    .line 164
    .line 165
    if-eq v1, v9, :cond_4

    .line 166
    .line 167
    move v8, v10

    .line 168
    :cond_4
    and-int/lit8 v1, v13, 0x1

    .line 169
    .line 170
    invoke-virtual {v12, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_5

    .line 175
    .line 176
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v1, v4, v3, v10}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-static {v1, v0, v11, v12, v2}, Lorg/wikipedia/compose/components/TabsBoxKt;->ListItemSkeletonLoader(Landroidx/compose/ui/Modifier;Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/GapComposer;I)V

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 189
    .line 190
    .line 191
    :goto_2
    return-object v5

    .line 192
    :pswitch_2
    move-object/from16 v1, p1

    .line 193
    .line 194
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 195
    .line 196
    move-object/from16 v2, p2

    .line 197
    .line 198
    check-cast v2, Ljava/lang/Integer;

    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    move-object/from16 v2, p3

    .line 204
    .line 205
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 206
    .line 207
    move-object/from16 v3, p4

    .line 208
    .line 209
    check-cast v3, Ljava/lang/Integer;

    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    and-int/lit16 v1, v3, 0x81

    .line 219
    .line 220
    if-eq v1, v9, :cond_6

    .line 221
    .line 222
    move v1, v10

    .line 223
    goto :goto_3

    .line 224
    :cond_6
    move v1, v8

    .line 225
    :goto_3
    and-int/2addr v3, v10

    .line 226
    invoke-virtual {v2, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_9

    .line 231
    .line 232
    const/high16 v1, 0x43920000    # 292.0f

    .line 233
    .line 234
    const/high16 v3, 0x43fa0000    # 500.0f

    .line 235
    .line 236
    invoke-static {v7, v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    const/high16 v3, 0x41800000    # 16.0f

    .line 241
    .line 242
    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-static {v1, v4}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 251
    .line 252
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 257
    .line 258
    iget-wide v12, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 259
    .line 260
    sget-object v4, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 261
    .line 262
    invoke-static {v1, v12, v13, v4}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    new-instance v4, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 271
    .line 272
    new-instance v9, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 273
    .line 274
    const/16 v12, 0xa

    .line 275
    .line 276
    invoke-direct {v9, v12}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 277
    .line 278
    .line 279
    const/high16 v12, 0x41000000    # 8.0f

    .line 280
    .line 281
    invoke-direct {v4, v12, v10, v9}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 282
    .line 283
    .line 284
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 285
    .line 286
    const/4 v12, 0x6

    .line 287
    invoke-static {v4, v9, v2, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    iget-wide v13, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 292
    .line 293
    const/16 v9, 0x20

    .line 294
    .line 295
    ushr-long v15, v13, v9

    .line 296
    .line 297
    xor-long/2addr v13, v15

    .line 298
    long-to-int v9, v13

    .line 299
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 300
    .line 301
    .line 302
    move-result-object v13

    .line 303
    invoke-static {v2, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 308
    .line 309
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 313
    .line 314
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 315
    .line 316
    .line 317
    iget-boolean v15, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 318
    .line 319
    if-eqz v15, :cond_7

    .line 320
    .line 321
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 322
    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_7
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 326
    .line 327
    .line 328
    :goto_4
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 329
    .line 330
    invoke-static {v2, v4, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 331
    .line 332
    .line 333
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 334
    .line 335
    invoke-static {v2, v13, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 336
    .line 337
    .line 338
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 343
    .line 344
    invoke-static {v2, v4, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 345
    .line 346
    .line 347
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 348
    .line 349
    invoke-static {v2, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 350
    .line 351
    .line 352
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 353
    .line 354
    invoke-static {v2, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 355
    .line 356
    .line 357
    const v1, 0x5692eec6

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 361
    .line 362
    .line 363
    move v1, v8

    .line 364
    :goto_5
    const/16 v4, 0x1f

    .line 365
    .line 366
    if-ge v1, v4, :cond_8

    .line 367
    .line 368
    invoke-static {v7, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    const/high16 v9, 0x40800000    # 4.0f

    .line 377
    .line 378
    invoke-static {v9}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    invoke-static {v4, v9}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    invoke-static {v4, v0, v11, v12}, Lorg/jsoup/Jsoup;->shimmerEffect$default(Landroidx/compose/ui/Modifier;Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;I)Landroidx/compose/ui/Modifier;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    invoke-static {v4, v2, v8}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 391
    .line 392
    .line 393
    add-int/lit8 v1, v1, 0x1

    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_8
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 400
    .line 401
    .line 402
    goto :goto_6

    .line 403
    :cond_9
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 404
    .line 405
    .line 406
    :goto_6
    return-object v5

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
