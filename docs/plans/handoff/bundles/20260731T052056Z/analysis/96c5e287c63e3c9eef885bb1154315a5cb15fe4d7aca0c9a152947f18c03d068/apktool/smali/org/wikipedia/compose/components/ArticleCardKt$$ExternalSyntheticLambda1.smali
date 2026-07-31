.class public final synthetic Lorg/wikipedia/compose/components/ArticleCardKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZI)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    iput p3, p0, Lorg/wikipedia/compose/components/ArticleCardKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/compose/components/ArticleCardKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Lorg/wikipedia/compose/components/ArticleCardKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/page/PageTitle;Z)V
    .locals 1

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/compose/components/ArticleCardKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/compose/components/ArticleCardKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lorg/wikipedia/compose/components/ArticleCardKt$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 13
    const/4 p3, 0x2

    iput p3, p0, Lorg/wikipedia/compose/components/ArticleCardKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/wikipedia/compose/components/ArticleCardKt$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p2, p0, Lorg/wikipedia/compose/components/ArticleCardKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/compose/components/ArticleCardKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v0, Lorg/wikipedia/compose/components/ArticleCardKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    iget-boolean v0, v0, Lorg/wikipedia/compose/components/ArticleCardKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    move-object/from16 v5, p2

    .line 22
    .line 23
    check-cast v5, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v0, v4, v1, v3}, Lkotlin/ResultKt;->PredictiveBackHandler(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 33
    .line 34
    .line 35
    return-object v2

    .line 36
    :pswitch_0
    check-cast v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 37
    .line 38
    move-object/from16 v1, p1

    .line 39
    .line 40
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 41
    .line 42
    move-object/from16 v5, p2

    .line 43
    .line 44
    check-cast v5, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v4, v0, v1, v3}, Landroidx/compose/foundation/text/BasicTextKt;->SelectionToolbarAndHandles(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/GapComposer;I)V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :pswitch_1
    check-cast v4, Lorg/wikipedia/page/PageTitle;

    .line 58
    .line 59
    move-object/from16 v13, p1

    .line 60
    .line 61
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 62
    .line 63
    move-object/from16 v1, p2

    .line 64
    .line 65
    check-cast v1, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    and-int/lit8 v5, v1, 0x3

    .line 72
    .line 73
    const/4 v6, 0x2

    .line 74
    const/4 v7, 0x0

    .line 75
    if-eq v5, v6, :cond_0

    .line 76
    .line 77
    move v5, v3

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    move v5, v7

    .line 80
    :goto_0
    and-int/2addr v1, v3

    .line 81
    invoke-virtual {v13, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_b

    .line 86
    .line 87
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 88
    .line 89
    const/high16 v5, 0x3f800000    # 1.0f

    .line 90
    .line 91
    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 96
    .line 97
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 98
    .line 99
    invoke-static {v8, v9, v13, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    iget-wide v11, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 104
    .line 105
    const/16 v21, 0x20

    .line 106
    .line 107
    ushr-long v14, v11, v21

    .line 108
    .line 109
    xor-long/2addr v11, v14

    .line 110
    long-to-int v11, v11

    .line 111
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    invoke-static {v13, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 120
    .line 121
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 125
    .line 126
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 127
    .line 128
    .line 129
    iget-boolean v15, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 130
    .line 131
    if-eqz v15, :cond_1

    .line 132
    .line 133
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 138
    .line 139
    .line 140
    :goto_1
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 141
    .line 142
    invoke-static {v13, v10, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 143
    .line 144
    .line 145
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 146
    .line 147
    invoke-static {v13, v12, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 155
    .line 156
    invoke-static {v13, v11, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 157
    .line 158
    .line 159
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 160
    .line 161
    invoke-static {v13, v11}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 162
    .line 163
    .line 164
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 165
    .line 166
    invoke-static {v13, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 167
    .line 168
    .line 169
    iget-object v6, v4, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 170
    .line 171
    if-eqz v6, :cond_2

    .line 172
    .line 173
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-nez v6, :cond_3

    .line 178
    .line 179
    :cond_2
    move/from16 v22, v0

    .line 180
    .line 181
    move-object/from16 v23, v2

    .line 182
    .line 183
    move-object/from16 p1, v3

    .line 184
    .line 185
    move-object/from16 p0, v4

    .line 186
    .line 187
    move v3, v7

    .line 188
    move-object v0, v8

    .line 189
    move-object v2, v9

    .line 190
    move-object/from16 v28, v10

    .line 191
    .line 192
    move-object/from16 v30, v11

    .line 193
    .line 194
    move-object/from16 v29, v12

    .line 195
    .line 196
    move-object v4, v14

    .line 197
    move-object/from16 v24, v15

    .line 198
    .line 199
    goto/16 :goto_2

    .line 200
    .line 201
    :cond_3
    const v6, -0x7889156f

    .line 202
    .line 203
    .line 204
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 205
    .line 206
    .line 207
    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 208
    .line 209
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    move-object/from16 v22, v6

    .line 214
    .line 215
    check-cast v22, Landroid/content/Context;

    .line 216
    .line 217
    iget-object v6, v4, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 218
    .line 219
    sget-object v24, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 220
    .line 221
    sget-object v25, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 222
    .line 223
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    sget-object v16, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 227
    .line 228
    const/16 v26, 0x0

    .line 229
    .line 230
    if-eqz v16, :cond_4

    .line 231
    .line 232
    move-object/from16 v27, v26

    .line 233
    .line 234
    move-object/from16 v23, v6

    .line 235
    .line 236
    invoke-static/range {v22 .. v27}, Lokio/ByteString$Companion;->getRequestBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lorg/wikipedia/views/imageservice/ImageLoadListener;)Lcoil3/request/ImageRequest$Builder;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-virtual {v6}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 241
    .line 242
    .line 243
    move-result-object v26

    .line 244
    :cond_4
    move-object v6, v8

    .line 245
    new-instance v8, Landroidx/compose/ui/graphics/painter/BrushPainter;

    .line 246
    .line 247
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    .line 248
    .line 249
    sget-object v5, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 250
    .line 251
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v16

    .line 255
    move/from16 v22, v0

    .line 256
    .line 257
    move-object/from16 v0, v16

    .line 258
    .line 259
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 260
    .line 261
    move-object/from16 p2, v9

    .line 262
    .line 263
    move-object/from16 v16, v10

    .line 264
    .line 265
    iget-wide v9, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 266
    .line 267
    invoke-direct {v7, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 268
    .line 269
    .line 270
    invoke-direct {v8, v7}, Landroidx/compose/ui/graphics/painter/BrushPainter;-><init>(Landroidx/compose/ui/graphics/SolidColor;)V

    .line 271
    .line 272
    .line 273
    new-instance v9, Landroidx/compose/ui/graphics/painter/BrushPainter;

    .line 274
    .line 275
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 276
    .line 277
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 282
    .line 283
    move-object v7, v6

    .line 284
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 285
    .line 286
    invoke-direct {v0, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 287
    .line 288
    .line 289
    invoke-direct {v9, v0}, Landroidx/compose/ui/graphics/painter/BrushPainter;-><init>(Landroidx/compose/ui/graphics/SolidColor;)V

    .line 290
    .line 291
    .line 292
    const/high16 v0, 0x3f800000    # 1.0f

    .line 293
    .line 294
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    const/high16 v6, 0x42d80000    # 108.0f

    .line 299
    .line 300
    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    const/high16 v6, 0x41800000    # 16.0f

    .line 305
    .line 306
    invoke-static {v6}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    invoke-static {v5, v6}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    move-object v6, v15

    .line 315
    const/4 v15, 0x6

    .line 316
    move-object/from16 v10, v16

    .line 317
    .line 318
    const/16 v16, 0x7be0

    .line 319
    .line 320
    move-object/from16 v17, v6

    .line 321
    .line 322
    const/4 v6, 0x0

    .line 323
    move-object/from16 v18, v10

    .line 324
    .line 325
    const/4 v10, 0x0

    .line 326
    move-object/from16 v19, v11

    .line 327
    .line 328
    const/4 v11, 0x0

    .line 329
    move-object/from16 v20, v12

    .line 330
    .line 331
    sget-object v12, Landroidx/compose/ui/layout/ContentScale$Companion;->Crop:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 332
    .line 333
    move-object/from16 v23, v14

    .line 334
    .line 335
    const v14, 0x9030

    .line 336
    .line 337
    .line 338
    move-object/from16 p1, v3

    .line 339
    .line 340
    move-object/from16 p0, v4

    .line 341
    .line 342
    move-object v0, v7

    .line 343
    move-object/from16 v24, v17

    .line 344
    .line 345
    move-object/from16 v28, v18

    .line 346
    .line 347
    move-object/from16 v30, v19

    .line 348
    .line 349
    move-object/from16 v29, v20

    .line 350
    .line 351
    move-object/from16 v4, v23

    .line 352
    .line 353
    const/4 v3, 0x0

    .line 354
    move-object/from16 v23, v2

    .line 355
    .line 356
    move-object v7, v5

    .line 357
    move-object/from16 v5, v26

    .line 358
    .line 359
    move-object/from16 v2, p2

    .line 360
    .line 361
    invoke-static/range {v5 .. v16}, Lcoil3/compose/AsyncImageKt;->AsyncImage-x1rPTaM(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/GapComposer;III)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 365
    .line 366
    .line 367
    goto :goto_3

    .line 368
    :goto_2
    const v5, -0x787f2bcb

    .line 369
    .line 370
    .line 371
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 375
    .line 376
    .line 377
    :goto_3
    const/high16 v5, 0x41000000    # 8.0f

    .line 378
    .line 379
    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    invoke-static {v0, v2, v13, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    iget-wide v7, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 388
    .line 389
    ushr-long v9, v7, v21

    .line 390
    .line 391
    xor-long/2addr v7, v9

    .line 392
    long-to-int v2, v7

    .line 393
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    invoke-static {v13, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 398
    .line 399
    .line 400
    move-result-object v6

    .line 401
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 402
    .line 403
    .line 404
    iget-boolean v8, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 405
    .line 406
    if-eqz v8, :cond_5

    .line 407
    .line 408
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 409
    .line 410
    .line 411
    :goto_4
    move-object/from16 v8, v24

    .line 412
    .line 413
    goto :goto_5

    .line 414
    :cond_5
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 415
    .line 416
    .line 417
    goto :goto_4

    .line 418
    :goto_5
    invoke-static {v13, v0, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 419
    .line 420
    .line 421
    move-object/from16 v0, v28

    .line 422
    .line 423
    invoke-static {v13, v7, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 424
    .line 425
    .line 426
    move-object/from16 v7, v29

    .line 427
    .line 428
    move-object/from16 v9, v30

    .line 429
    .line 430
    invoke-static {v2, v13, v7, v13, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 431
    .line 432
    .line 433
    move-object/from16 v2, p1

    .line 434
    .line 435
    invoke-static {v13, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 436
    .line 437
    .line 438
    move v6, v5

    .line 439
    invoke-virtual/range {p0 .. p0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    sget-object v10, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 444
    .line 445
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v11

    .line 449
    check-cast v11, Landroidx/compose/material3/Typography;

    .line 450
    .line 451
    iget-object v11, v11, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 452
    .line 453
    sget-object v12, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 454
    .line 455
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v14

    .line 459
    check-cast v14, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 460
    .line 461
    iget-wide v14, v14, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 462
    .line 463
    const/16 v19, 0x0

    .line 464
    .line 465
    const/16 v20, 0xfe6

    .line 466
    .line 467
    move/from16 v16, v6

    .line 468
    .line 469
    const/4 v6, 0x0

    .line 470
    const/4 v7, 0x0

    .line 471
    move-object/from16 v17, v8

    .line 472
    .line 473
    move-object v8, v11

    .line 474
    const/4 v11, 0x0

    .line 475
    move-object/from16 v18, v12

    .line 476
    .line 477
    const/4 v12, 0x0

    .line 478
    move-object/from16 v24, v10

    .line 479
    .line 480
    move-wide v9, v14

    .line 481
    move-object/from16 v15, v18

    .line 482
    .line 483
    move-object/from16 v18, v13

    .line 484
    .line 485
    const-wide/16 v13, 0x0

    .line 486
    .line 487
    move-object/from16 v25, v15

    .line 488
    .line 489
    const/4 v15, 0x0

    .line 490
    move/from16 v26, v16

    .line 491
    .line 492
    const/16 v16, 0x0

    .line 493
    .line 494
    move-object/from16 v27, v17

    .line 495
    .line 496
    const/16 v17, 0x0

    .line 497
    .line 498
    move-object/from16 v34, v24

    .line 499
    .line 500
    move-object/from16 v35, v25

    .line 501
    .line 502
    move-object/from16 v31, v27

    .line 503
    .line 504
    move-object/from16 v32, v29

    .line 505
    .line 506
    move-object/from16 v33, v30

    .line 507
    .line 508
    invoke-static/range {v5 .. v20}, Lorg/wikipedia/compose/components/TabsBoxKt;->HtmlText-KiACRJU(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/TextStyle;JIIJLandroidx/compose/ui/text/LinkInteractionListener;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/GapComposer;II)V

    .line 509
    .line 510
    .line 511
    move-object/from16 v13, v18

    .line 512
    .line 513
    const/high16 v5, 0x40000000    # 2.0f

    .line 514
    .line 515
    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 516
    .line 517
    .line 518
    move-result-object v5

    .line 519
    invoke-static {v13, v5}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 520
    .line 521
    .line 522
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 523
    .line 524
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 525
    .line 526
    invoke-static {v5, v6, v13, v3}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    iget-wide v6, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 531
    .line 532
    ushr-long v8, v6, v21

    .line 533
    .line 534
    xor-long/2addr v6, v8

    .line 535
    long-to-int v6, v6

    .line 536
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 537
    .line 538
    .line 539
    move-result-object v7

    .line 540
    invoke-static {v13, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 541
    .line 542
    .line 543
    move-result-object v8

    .line 544
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 545
    .line 546
    .line 547
    iget-boolean v9, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 548
    .line 549
    if-eqz v9, :cond_6

    .line 550
    .line 551
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 552
    .line 553
    .line 554
    :goto_6
    move-object/from16 v4, v31

    .line 555
    .line 556
    goto :goto_7

    .line 557
    :cond_6
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 558
    .line 559
    .line 560
    goto :goto_6

    .line 561
    :goto_7
    invoke-static {v13, v5, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 562
    .line 563
    .line 564
    invoke-static {v13, v7, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 565
    .line 566
    .line 567
    move-object/from16 v7, v32

    .line 568
    .line 569
    move-object/from16 v9, v33

    .line 570
    .line 571
    invoke-static {v6, v13, v7, v13, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 572
    .line 573
    .line 574
    invoke-static {v13, v8, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 575
    .line 576
    .line 577
    move-object/from16 v4, p0

    .line 578
    .line 579
    iget-object v0, v4, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 580
    .line 581
    if-eqz v0, :cond_7

    .line 582
    .line 583
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 584
    .line 585
    .line 586
    move-result v0

    .line 587
    if-nez v0, :cond_8

    .line 588
    .line 589
    :cond_7
    move-object/from16 v0, v35

    .line 590
    .line 591
    const/high16 v2, 0x3f800000    # 1.0f

    .line 592
    .line 593
    goto :goto_8

    .line 594
    :cond_8
    const v0, -0x747df329

    .line 595
    .line 596
    .line 597
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 598
    .line 599
    .line 600
    iget-object v0, v4, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 601
    .line 602
    if-nez v0, :cond_9

    .line 603
    .line 604
    const-string v0, ""

    .line 605
    .line 606
    :cond_9
    move-object v5, v0

    .line 607
    move-object/from16 v0, v34

    .line 608
    .line 609
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 614
    .line 615
    iget-object v8, v0, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 616
    .line 617
    move-object/from16 v0, v35

    .line 618
    .line 619
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 624
    .line 625
    iget-wide v9, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 626
    .line 627
    const/high16 v2, 0x3f800000    # 1.0f

    .line 628
    .line 629
    invoke-static {v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 630
    .line 631
    .line 632
    move-result-object v6

    .line 633
    const/high16 v19, 0x1b0000

    .line 634
    .line 635
    const/16 v20, 0xf84

    .line 636
    .line 637
    const/4 v7, 0x0

    .line 638
    const/4 v11, 0x3

    .line 639
    const/4 v12, 0x2

    .line 640
    move-object/from16 v18, v13

    .line 641
    .line 642
    const-wide/16 v13, 0x0

    .line 643
    .line 644
    const/4 v15, 0x0

    .line 645
    const/16 v16, 0x0

    .line 646
    .line 647
    const/16 v17, 0x0

    .line 648
    .line 649
    invoke-static/range {v5 .. v20}, Lorg/wikipedia/compose/components/TabsBoxKt;->HtmlText-KiACRJU(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/TextStyle;JIIJLandroidx/compose/ui/text/LinkInteractionListener;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/GapComposer;II)V

    .line 650
    .line 651
    .line 652
    move-object/from16 v13, v18

    .line 653
    .line 654
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 655
    .line 656
    .line 657
    goto :goto_9

    .line 658
    :goto_8
    const v4, -0x747780a7

    .line 659
    .line 660
    .line 661
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 662
    .line 663
    .line 664
    invoke-static {v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->weight$default$1(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    invoke-static {v13, v2}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 672
    .line 673
    .line 674
    :goto_9
    const/high16 v2, 0x41c00000    # 24.0f

    .line 675
    .line 676
    if-eqz v22, :cond_a

    .line 677
    .line 678
    const v4, -0x74757967

    .line 679
    .line 680
    .line 681
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 682
    .line 683
    .line 684
    const/high16 v6, 0x41000000    # 8.0f

    .line 685
    .line 686
    invoke-static {v1, v6}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 687
    .line 688
    .line 689
    move-result-object v4

    .line 690
    invoke-static {v13, v4}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 691
    .line 692
    .line 693
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Bottom:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 698
    .line 699
    new-instance v4, Landroidx/compose/foundation/layout/VerticalAlignElement;

    .line 700
    .line 701
    invoke-direct {v4, v2}, Landroidx/compose/foundation/layout/VerticalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Vertical;)V

    .line 702
    .line 703
    .line 704
    invoke-interface {v1, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 705
    .line 706
    .line 707
    move-result-object v7

    .line 708
    const v1, 0x7f0800d0

    .line 709
    .line 710
    .line 711
    invoke-static {v1, v3, v13}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 712
    .line 713
    .line 714
    move-result-object v5

    .line 715
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 720
    .line 721
    iget-wide v8, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 722
    .line 723
    const/16 v11, 0x38

    .line 724
    .line 725
    const/4 v12, 0x0

    .line 726
    const/4 v6, 0x0

    .line 727
    move-object v10, v13

    .line 728
    invoke-static/range {v5 .. v12}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 732
    .line 733
    .line 734
    :goto_a
    const/4 v0, 0x1

    .line 735
    goto :goto_b

    .line 736
    :cond_a
    const v0, -0x746ee997

    .line 737
    .line 738
    .line 739
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 740
    .line 741
    .line 742
    const/high16 v0, 0x42000000    # 32.0f

    .line 743
    .line 744
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    invoke-static {v13, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 756
    .line 757
    .line 758
    goto :goto_a

    .line 759
    :goto_b
    invoke-static {v13, v0, v0, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;ZZZ)V

    .line 760
    .line 761
    .line 762
    goto :goto_c

    .line 763
    :cond_b
    move-object/from16 v23, v2

    .line 764
    .line 765
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 766
    .line 767
    .line 768
    :goto_c
    return-object v23

    .line 769
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
