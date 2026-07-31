.class public final synthetic Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 57

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    const v2, 0x7f1209e7

    .line 6
    .line 7
    .line 8
    const v3, 0x7f0801e7

    .line 9
    .line 10
    .line 11
    const/16 v4, 0x20

    .line 12
    .line 13
    const/high16 v5, 0x42200000    # 40.0f

    .line 14
    .line 15
    const v6, 0x7f1203dc

    .line 16
    .line 17
    .line 18
    const v7, 0x7f0801a5

    .line 19
    .line 20
    .line 21
    const/high16 v8, 0x41c00000    # 24.0f

    .line 22
    .line 23
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 24
    .line 25
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    const/4 v11, 0x2

    .line 28
    const/4 v12, 0x0

    .line 29
    const/4 v13, 0x1

    .line 30
    iget-object v14, v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 31
    .line 32
    iget-object v0, v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    .line 33
    .line 34
    packed-switch v1, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    move-object/from16 v1, p1

    .line 38
    .line 39
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 40
    .line 41
    move-object/from16 v2, p2

    .line 42
    .line 43
    check-cast v2, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    and-int/lit8 v3, v2, 0x3

    .line 50
    .line 51
    if-eq v3, v11, :cond_0

    .line 52
    .line 53
    move v3, v13

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v3, v12

    .line 56
    :goto_0
    and-int/2addr v2, v13

    .line 57
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-static {v7, v12, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 64
    .line 65
    .line 66
    move-result-object v15

    .line 67
    iget-object v2, v14, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 68
    .line 69
    new-array v3, v12, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-static {v0, v2, v6, v3}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v16

    .line 75
    sget-wide v18, Landroidx/compose/ui/graphics/Color;->White:J

    .line 76
    .line 77
    invoke-static {v9, v8}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 78
    .line 79
    .line 80
    move-result-object v17

    .line 81
    const/16 v21, 0xd88

    .line 82
    .line 83
    const/16 v22, 0x0

    .line 84
    .line 85
    move-object/from16 v20, v1

    .line 86
    .line 87
    invoke-static/range {v15 .. v22}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    move-object/from16 v20, v1

    .line 92
    .line 93
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 94
    .line 95
    .line 96
    :goto_1
    return-object v10

    .line 97
    :pswitch_0
    move-object/from16 v5, p1

    .line 98
    .line 99
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 100
    .line 101
    move-object/from16 v1, p2

    .line 102
    .line 103
    check-cast v1, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    and-int/lit8 v2, v1, 0x3

    .line 110
    .line 111
    if-eq v2, v11, :cond_2

    .line 112
    .line 113
    move v2, v13

    .line 114
    goto :goto_2

    .line 115
    :cond_2
    move v2, v12

    .line 116
    :goto_2
    and-int/2addr v1, v13

    .line 117
    invoke-virtual {v5, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_3

    .line 122
    .line 123
    invoke-static {v7, v12, v5}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iget-object v2, v14, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 128
    .line 129
    new-array v3, v12, [Ljava/lang/Object;

    .line 130
    .line 131
    invoke-static {v0, v2, v6, v3}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 136
    .line 137
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 142
    .line 143
    iget-wide v3, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->placeholderColor:J

    .line 144
    .line 145
    const/16 v6, 0x8

    .line 146
    .line 147
    const/4 v7, 0x4

    .line 148
    const/4 v2, 0x0

    .line 149
    move-object/from16 v56, v1

    .line 150
    .line 151
    move-object v1, v0

    .line 152
    move-object/from16 v0, v56

    .line 153
    .line 154
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_3
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 159
    .line 160
    .line 161
    :goto_3
    return-object v10

    .line 162
    :pswitch_1
    move-object/from16 v1, p1

    .line 163
    .line 164
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 165
    .line 166
    move-object/from16 v2, p2

    .line 167
    .line 168
    check-cast v2, Ljava/lang/Integer;

    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    and-int/lit8 v3, v2, 0x3

    .line 175
    .line 176
    if-eq v3, v11, :cond_4

    .line 177
    .line 178
    move v3, v13

    .line 179
    goto :goto_4

    .line 180
    :cond_4
    move v3, v12

    .line 181
    :goto_4
    and-int/2addr v2, v13

    .line 182
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_5

    .line 187
    .line 188
    invoke-static {v7, v12, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    iget-object v2, v14, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 193
    .line 194
    new-array v3, v12, [Ljava/lang/Object;

    .line 195
    .line 196
    invoke-static {v0, v2, v6, v3}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 201
    .line 202
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 207
    .line 208
    iget-wide v14, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 209
    .line 210
    const/16 v17, 0x8

    .line 211
    .line 212
    const/16 v18, 0x4

    .line 213
    .line 214
    const/4 v13, 0x0

    .line 215
    move-object/from16 v16, v1

    .line 216
    .line 217
    invoke-static/range {v11 .. v18}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_5
    move-object/from16 v16, v1

    .line 222
    .line 223
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 224
    .line 225
    .line 226
    :goto_5
    return-object v10

    .line 227
    :pswitch_2
    move-object/from16 v1, p1

    .line 228
    .line 229
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 230
    .line 231
    move-object/from16 v6, p2

    .line 232
    .line 233
    check-cast v6, Ljava/lang/Integer;

    .line 234
    .line 235
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    and-int/lit8 v7, v6, 0x3

    .line 240
    .line 241
    if-eq v7, v11, :cond_6

    .line 242
    .line 243
    move v7, v13

    .line 244
    goto :goto_6

    .line 245
    :cond_6
    move v7, v12

    .line 246
    :goto_6
    and-int/2addr v6, v13

    .line 247
    invoke-virtual {v1, v6, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    if-eqz v6, :cond_8

    .line 252
    .line 253
    invoke-static {v9, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    sget-object v6, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 258
    .line 259
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 264
    .line 265
    move-object/from16 v16, v9

    .line 266
    .line 267
    iget-wide v8, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 268
    .line 269
    sget-object v7, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 270
    .line 271
    invoke-static {v5, v8, v9, v7}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 276
    .line 277
    invoke-static {v7, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    iget-wide v8, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 282
    .line 283
    ushr-long v17, v8, v4

    .line 284
    .line 285
    xor-long v8, v8, v17

    .line 286
    .line 287
    long-to-int v4, v8

    .line 288
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    invoke-static {v1, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 297
    .line 298
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 302
    .line 303
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 304
    .line 305
    .line 306
    iget-boolean v11, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 307
    .line 308
    if-eqz v11, :cond_7

    .line 309
    .line 310
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 311
    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 315
    .line 316
    .line 317
    :goto_7
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 318
    .line 319
    invoke-static {v1, v7, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 320
    .line 321
    .line 322
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 323
    .line 324
    invoke-static {v1, v8, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 325
    .line 326
    .line 327
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 332
    .line 333
    invoke-static {v1, v4, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 334
    .line 335
    .line 336
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 337
    .line 338
    invoke-static {v1, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 339
    .line 340
    .line 341
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 342
    .line 343
    invoke-static {v1, v5, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 344
    .line 345
    .line 346
    invoke-static {v3, v12, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    iget-object v4, v14, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 351
    .line 352
    new-array v5, v12, [Ljava/lang/Object;

    .line 353
    .line 354
    invoke-static {v0, v4, v2, v5}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 363
    .line 364
    iget-wide v4, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 365
    .line 366
    move-object/from16 v8, v16

    .line 367
    .line 368
    const/high16 v15, 0x41c00000    # 24.0f

    .line 369
    .line 370
    invoke-static {v8, v15}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    const/16 v6, 0x188

    .line 375
    .line 376
    const/4 v7, 0x0

    .line 377
    move-object/from16 v56, v1

    .line 378
    .line 379
    move-object v1, v0

    .line 380
    move-object v0, v3

    .line 381
    move-wide v3, v4

    .line 382
    move-object/from16 v5, v56

    .line 383
    .line 384
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 388
    .line 389
    .line 390
    goto :goto_8

    .line 391
    :cond_8
    move-object v5, v1

    .line 392
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 393
    .line 394
    .line 395
    :goto_8
    return-object v10

    .line 396
    :pswitch_3
    move-object v8, v9

    .line 397
    move-object/from16 v1, p1

    .line 398
    .line 399
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 400
    .line 401
    move-object/from16 v2, p2

    .line 402
    .line 403
    check-cast v2, Ljava/lang/Integer;

    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    and-int/lit8 v3, v2, 0x3

    .line 410
    .line 411
    if-eq v3, v11, :cond_9

    .line 412
    .line 413
    move v3, v13

    .line 414
    goto :goto_9

    .line 415
    :cond_9
    move v3, v12

    .line 416
    :goto_9
    and-int/2addr v2, v13

    .line 417
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-eqz v2, :cond_b

    .line 422
    .line 423
    invoke-static {v8, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 428
    .line 429
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 434
    .line 435
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 436
    .line 437
    sget-object v7, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 438
    .line 439
    invoke-static {v2, v5, v6, v7}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 444
    .line 445
    invoke-static {v5, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    iget-wide v6, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 450
    .line 451
    ushr-long v16, v6, v4

    .line 452
    .line 453
    xor-long v6, v6, v16

    .line 454
    .line 455
    long-to-int v4, v6

    .line 456
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 457
    .line 458
    .line 459
    move-result-object v6

    .line 460
    invoke-static {v1, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 465
    .line 466
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 470
    .line 471
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 472
    .line 473
    .line 474
    iget-boolean v9, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 475
    .line 476
    if-eqz v9, :cond_a

    .line 477
    .line 478
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 479
    .line 480
    .line 481
    goto :goto_a

    .line 482
    :cond_a
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 483
    .line 484
    .line 485
    :goto_a
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 486
    .line 487
    invoke-static {v1, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 488
    .line 489
    .line 490
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 491
    .line 492
    invoke-static {v1, v6, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 493
    .line 494
    .line 495
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 500
    .line 501
    invoke-static {v1, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 502
    .line 503
    .line 504
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 505
    .line 506
    invoke-static {v1, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 507
    .line 508
    .line 509
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 510
    .line 511
    invoke-static {v1, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 512
    .line 513
    .line 514
    const v2, 0x7f080152

    .line 515
    .line 516
    .line 517
    invoke-static {v2, v12, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    iget-object v4, v14, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 522
    .line 523
    const v5, 0x7f1209e6

    .line 524
    .line 525
    .line 526
    new-array v6, v12, [Ljava/lang/Object;

    .line 527
    .line 528
    invoke-static {v0, v4, v5, v6}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 537
    .line 538
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 539
    .line 540
    const/high16 v15, 0x41c00000    # 24.0f

    .line 541
    .line 542
    invoke-static {v8, v15}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 543
    .line 544
    .line 545
    move-result-object v16

    .line 546
    const/16 v20, 0x188

    .line 547
    .line 548
    const/16 v21, 0x0

    .line 549
    .line 550
    move-object v15, v0

    .line 551
    move-object/from16 v19, v1

    .line 552
    .line 553
    move-object v14, v2

    .line 554
    move-wide/from16 v17, v3

    .line 555
    .line 556
    invoke-static/range {v14 .. v21}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 557
    .line 558
    .line 559
    move-object/from16 v0, v19

    .line 560
    .line 561
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 562
    .line 563
    .line 564
    goto :goto_b

    .line 565
    :cond_b
    move-object v0, v1

    .line 566
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 567
    .line 568
    .line 569
    :goto_b
    return-object v10

    .line 570
    :pswitch_4
    move-object v8, v9

    .line 571
    move-object/from16 v6, p1

    .line 572
    .line 573
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 574
    .line 575
    move-object/from16 v1, p2

    .line 576
    .line 577
    check-cast v1, Ljava/lang/Integer;

    .line 578
    .line 579
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    and-int/lit8 v7, v1, 0x3

    .line 584
    .line 585
    if-eq v7, v11, :cond_c

    .line 586
    .line 587
    move v7, v13

    .line 588
    goto :goto_c

    .line 589
    :cond_c
    move v7, v12

    .line 590
    :goto_c
    and-int/2addr v1, v13

    .line 591
    invoke-virtual {v6, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    if-eqz v1, :cond_e

    .line 596
    .line 597
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 598
    .line 599
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v7

    .line 603
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 604
    .line 605
    move-object/from16 v16, v14

    .line 606
    .line 607
    iget-wide v13, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 608
    .line 609
    sget-object v7, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 610
    .line 611
    invoke-static {v8, v13, v14, v7}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 612
    .line 613
    .line 614
    move-result-object v7

    .line 615
    invoke-static {v7, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 616
    .line 617
    .line 618
    move-result-object v5

    .line 619
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 620
    .line 621
    invoke-static {v7, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 622
    .line 623
    .line 624
    move-result-object v7

    .line 625
    iget-wide v13, v6, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 626
    .line 627
    ushr-long v17, v13, v4

    .line 628
    .line 629
    xor-long v13, v13, v17

    .line 630
    .line 631
    long-to-int v4, v13

    .line 632
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 633
    .line 634
    .line 635
    move-result-object v11

    .line 636
    invoke-static {v6, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 637
    .line 638
    .line 639
    move-result-object v5

    .line 640
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 641
    .line 642
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 643
    .line 644
    .line 645
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 646
    .line 647
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 648
    .line 649
    .line 650
    iget-boolean v14, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 651
    .line 652
    if-eqz v14, :cond_d

    .line 653
    .line 654
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 655
    .line 656
    .line 657
    goto :goto_d

    .line 658
    :cond_d
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 659
    .line 660
    .line 661
    :goto_d
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 662
    .line 663
    invoke-static {v6, v7, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 664
    .line 665
    .line 666
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 667
    .line 668
    invoke-static {v6, v11, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 669
    .line 670
    .line 671
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 672
    .line 673
    .line 674
    move-result-object v4

    .line 675
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 676
    .line 677
    invoke-static {v6, v4, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 678
    .line 679
    .line 680
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 681
    .line 682
    invoke-static {v6, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 683
    .line 684
    .line 685
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 686
    .line 687
    invoke-static {v6, v5, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 688
    .line 689
    .line 690
    invoke-static {v3, v12, v6}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 691
    .line 692
    .line 693
    move-result-object v3

    .line 694
    move-object/from16 v13, v16

    .line 695
    .line 696
    iget-object v4, v13, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 697
    .line 698
    new-array v5, v12, [Ljava/lang/Object;

    .line 699
    .line 700
    invoke-static {v0, v4, v2, v5}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v2

    .line 704
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 709
    .line 710
    iget-wide v4, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 711
    .line 712
    const/high16 v15, 0x41c00000    # 24.0f

    .line 713
    .line 714
    invoke-static {v8, v15}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    const/16 v7, 0x188

    .line 719
    .line 720
    const/4 v8, 0x0

    .line 721
    move-object v1, v3

    .line 722
    move-object v3, v0

    .line 723
    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 724
    .line 725
    .line 726
    const/4 v9, 0x1

    .line 727
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 728
    .line 729
    .line 730
    goto :goto_e

    .line 731
    :cond_e
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 732
    .line 733
    .line 734
    :goto_e
    return-object v10

    .line 735
    :pswitch_5
    move-object v8, v9

    .line 736
    move-object v13, v14

    .line 737
    move-object/from16 v1, p1

    .line 738
    .line 739
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 740
    .line 741
    move-object/from16 v2, p2

    .line 742
    .line 743
    check-cast v2, Ljava/lang/Integer;

    .line 744
    .line 745
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 746
    .line 747
    .line 748
    move-result v2

    .line 749
    and-int/lit8 v3, v2, 0x3

    .line 750
    .line 751
    if-eq v3, v11, :cond_f

    .line 752
    .line 753
    const/4 v3, 0x1

    .line 754
    :goto_f
    const/4 v9, 0x1

    .line 755
    goto :goto_10

    .line 756
    :cond_f
    move v3, v12

    .line 757
    goto :goto_f

    .line 758
    :goto_10
    and-int/2addr v2, v9

    .line 759
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 760
    .line 761
    .line 762
    move-result v2

    .line 763
    if-eqz v2, :cond_11

    .line 764
    .line 765
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 766
    .line 767
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v3

    .line 771
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 772
    .line 773
    iget-wide v6, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 774
    .line 775
    sget-object v3, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 776
    .line 777
    invoke-static {v8, v6, v7, v3}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 778
    .line 779
    .line 780
    move-result-object v3

    .line 781
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 782
    .line 783
    .line 784
    move-result-object v3

    .line 785
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 786
    .line 787
    invoke-static {v5, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 788
    .line 789
    .line 790
    move-result-object v5

    .line 791
    iget-wide v6, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 792
    .line 793
    ushr-long v16, v6, v4

    .line 794
    .line 795
    xor-long v6, v6, v16

    .line 796
    .line 797
    long-to-int v4, v6

    .line 798
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 799
    .line 800
    .line 801
    move-result-object v6

    .line 802
    invoke-static {v1, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 803
    .line 804
    .line 805
    move-result-object v3

    .line 806
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 807
    .line 808
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 809
    .line 810
    .line 811
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 812
    .line 813
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 814
    .line 815
    .line 816
    iget-boolean v11, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 817
    .line 818
    if-eqz v11, :cond_10

    .line 819
    .line 820
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 821
    .line 822
    .line 823
    goto :goto_11

    .line 824
    :cond_10
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 825
    .line 826
    .line 827
    :goto_11
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 828
    .line 829
    invoke-static {v1, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 830
    .line 831
    .line 832
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 833
    .line 834
    invoke-static {v1, v6, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 835
    .line 836
    .line 837
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 838
    .line 839
    .line 840
    move-result-object v4

    .line 841
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 842
    .line 843
    invoke-static {v1, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 844
    .line 845
    .line 846
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 847
    .line 848
    invoke-static {v1, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 849
    .line 850
    .line 851
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 852
    .line 853
    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 854
    .line 855
    .line 856
    const v3, 0x7f08012a

    .line 857
    .line 858
    .line 859
    invoke-static {v3, v12, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 860
    .line 861
    .line 862
    move-result-object v11

    .line 863
    iget-object v3, v13, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 864
    .line 865
    const v4, 0x7f120220

    .line 866
    .line 867
    .line 868
    new-array v5, v12, [Ljava/lang/Object;

    .line 869
    .line 870
    invoke-static {v0, v3, v4, v5}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v12

    .line 874
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 879
    .line 880
    iget-wide v2, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 881
    .line 882
    const/high16 v15, 0x41c00000    # 24.0f

    .line 883
    .line 884
    invoke-static {v8, v15}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 885
    .line 886
    .line 887
    move-result-object v13

    .line 888
    const/16 v17, 0x188

    .line 889
    .line 890
    const/16 v18, 0x0

    .line 891
    .line 892
    move-object/from16 v16, v1

    .line 893
    .line 894
    move-wide v14, v2

    .line 895
    invoke-static/range {v11 .. v18}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 896
    .line 897
    .line 898
    move-object/from16 v0, v16

    .line 899
    .line 900
    const/4 v9, 0x1

    .line 901
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 902
    .line 903
    .line 904
    goto :goto_12

    .line 905
    :cond_11
    move-object v0, v1

    .line 906
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 907
    .line 908
    .line 909
    :goto_12
    return-object v10

    .line 910
    :pswitch_6
    move-object v13, v14

    .line 911
    move-object/from16 v1, p1

    .line 912
    .line 913
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 914
    .line 915
    move-object/from16 v2, p2

    .line 916
    .line 917
    check-cast v2, Ljava/lang/Integer;

    .line 918
    .line 919
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 920
    .line 921
    .line 922
    move-result v2

    .line 923
    and-int/lit8 v3, v2, 0x3

    .line 924
    .line 925
    if-eq v3, v11, :cond_12

    .line 926
    .line 927
    const/4 v9, 0x1

    .line 928
    :goto_13
    const/4 v3, 0x1

    .line 929
    goto :goto_14

    .line 930
    :cond_12
    move v9, v12

    .line 931
    goto :goto_13

    .line 932
    :goto_14
    and-int/2addr v2, v3

    .line 933
    invoke-virtual {v1, v2, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 934
    .line 935
    .line 936
    move-result v2

    .line 937
    if-eqz v2, :cond_13

    .line 938
    .line 939
    iget-object v2, v13, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 940
    .line 941
    const v3, 0x7f1201fc

    .line 942
    .line 943
    .line 944
    new-array v4, v12, [Ljava/lang/Object;

    .line 945
    .line 946
    invoke-static {v0, v2, v3, v4}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v11

    .line 950
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 951
    .line 952
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    move-result-object v0

    .line 956
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 957
    .line 958
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 959
    .line 960
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 961
    .line 962
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v2

    .line 966
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 967
    .line 968
    iget-wide v13, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 969
    .line 970
    const/16 v33, 0x0

    .line 971
    .line 972
    const v34, 0x1fffa

    .line 973
    .line 974
    .line 975
    const/4 v12, 0x0

    .line 976
    const/4 v15, 0x0

    .line 977
    const-wide/16 v16, 0x0

    .line 978
    .line 979
    const/16 v18, 0x0

    .line 980
    .line 981
    const/16 v19, 0x0

    .line 982
    .line 983
    const-wide/16 v20, 0x0

    .line 984
    .line 985
    const/16 v22, 0x0

    .line 986
    .line 987
    const-wide/16 v23, 0x0

    .line 988
    .line 989
    const/16 v25, 0x0

    .line 990
    .line 991
    const/16 v26, 0x0

    .line 992
    .line 993
    const/16 v27, 0x0

    .line 994
    .line 995
    const/16 v28, 0x0

    .line 996
    .line 997
    const/16 v29, 0x0

    .line 998
    .line 999
    const/16 v32, 0x0

    .line 1000
    .line 1001
    move-object/from16 v30, v0

    .line 1002
    .line 1003
    move-object/from16 v31, v1

    .line 1004
    .line 1005
    invoke-static/range {v11 .. v34}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1006
    .line 1007
    .line 1008
    goto :goto_15

    .line 1009
    :cond_13
    move-object/from16 v31, v1

    .line 1010
    .line 1011
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1012
    .line 1013
    .line 1014
    :goto_15
    return-object v10

    .line 1015
    :pswitch_7
    move-object v13, v14

    .line 1016
    move-object/from16 v1, p1

    .line 1017
    .line 1018
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1019
    .line 1020
    move-object/from16 v2, p2

    .line 1021
    .line 1022
    check-cast v2, Ljava/lang/Integer;

    .line 1023
    .line 1024
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1025
    .line 1026
    .line 1027
    move-result v2

    .line 1028
    and-int/lit8 v3, v2, 0x3

    .line 1029
    .line 1030
    if-eq v3, v11, :cond_14

    .line 1031
    .line 1032
    const/4 v9, 0x1

    .line 1033
    :goto_16
    const/4 v3, 0x1

    .line 1034
    goto :goto_17

    .line 1035
    :cond_14
    move v9, v12

    .line 1036
    goto :goto_16

    .line 1037
    :goto_17
    and-int/2addr v2, v3

    .line 1038
    invoke-virtual {v1, v2, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1039
    .line 1040
    .line 1041
    move-result v2

    .line 1042
    if-eqz v2, :cond_15

    .line 1043
    .line 1044
    iget-object v2, v13, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1045
    .line 1046
    const v3, 0x7f1203d9

    .line 1047
    .line 1048
    .line 1049
    new-array v4, v12, [Ljava/lang/Object;

    .line 1050
    .line 1051
    invoke-static {v0, v2, v3, v4}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v32

    .line 1055
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1056
    .line 1057
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v0

    .line 1061
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 1062
    .line 1063
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1064
    .line 1065
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1066
    .line 1067
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v2

    .line 1071
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1072
    .line 1073
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1074
    .line 1075
    const/16 v54, 0x0

    .line 1076
    .line 1077
    const v55, 0x1fffa

    .line 1078
    .line 1079
    .line 1080
    const/16 v33, 0x0

    .line 1081
    .line 1082
    const/16 v36, 0x0

    .line 1083
    .line 1084
    const-wide/16 v37, 0x0

    .line 1085
    .line 1086
    const/16 v39, 0x0

    .line 1087
    .line 1088
    const/16 v40, 0x0

    .line 1089
    .line 1090
    const-wide/16 v41, 0x0

    .line 1091
    .line 1092
    const/16 v43, 0x0

    .line 1093
    .line 1094
    const-wide/16 v44, 0x0

    .line 1095
    .line 1096
    const/16 v46, 0x0

    .line 1097
    .line 1098
    const/16 v47, 0x0

    .line 1099
    .line 1100
    const/16 v48, 0x0

    .line 1101
    .line 1102
    const/16 v49, 0x0

    .line 1103
    .line 1104
    const/16 v50, 0x0

    .line 1105
    .line 1106
    const/16 v53, 0x0

    .line 1107
    .line 1108
    move-object/from16 v51, v0

    .line 1109
    .line 1110
    move-object/from16 v52, v1

    .line 1111
    .line 1112
    move-wide/from16 v34, v2

    .line 1113
    .line 1114
    invoke-static/range {v32 .. v55}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1115
    .line 1116
    .line 1117
    goto :goto_18

    .line 1118
    :cond_15
    move-object/from16 v52, v1

    .line 1119
    .line 1120
    invoke-virtual/range {v52 .. v52}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1121
    .line 1122
    .line 1123
    :goto_18
    return-object v10

    .line 1124
    :pswitch_8
    move-object v13, v14

    .line 1125
    move-object/from16 v1, p1

    .line 1126
    .line 1127
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1128
    .line 1129
    move-object/from16 v2, p2

    .line 1130
    .line 1131
    check-cast v2, Ljava/lang/Integer;

    .line 1132
    .line 1133
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1134
    .line 1135
    .line 1136
    move-result v2

    .line 1137
    and-int/lit8 v3, v2, 0x3

    .line 1138
    .line 1139
    if-eq v3, v11, :cond_16

    .line 1140
    .line 1141
    const/4 v9, 0x1

    .line 1142
    :goto_19
    const/4 v3, 0x1

    .line 1143
    goto :goto_1a

    .line 1144
    :cond_16
    move v9, v12

    .line 1145
    goto :goto_19

    .line 1146
    :goto_1a
    and-int/2addr v2, v3

    .line 1147
    invoke-virtual {v1, v2, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1148
    .line 1149
    .line 1150
    move-result v2

    .line 1151
    if-eqz v2, :cond_17

    .line 1152
    .line 1153
    iget-object v2, v13, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1154
    .line 1155
    const v3, 0x7f1203ef

    .line 1156
    .line 1157
    .line 1158
    new-array v4, v12, [Ljava/lang/Object;

    .line 1159
    .line 1160
    invoke-static {v0, v2, v3, v4}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v11

    .line 1164
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1165
    .line 1166
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v0

    .line 1170
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 1171
    .line 1172
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1173
    .line 1174
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1175
    .line 1176
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v2

    .line 1180
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1181
    .line 1182
    iget-wide v13, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1183
    .line 1184
    const/16 v33, 0x0

    .line 1185
    .line 1186
    const v34, 0x1fffa

    .line 1187
    .line 1188
    .line 1189
    const/4 v12, 0x0

    .line 1190
    const/4 v15, 0x0

    .line 1191
    const-wide/16 v16, 0x0

    .line 1192
    .line 1193
    const/16 v18, 0x0

    .line 1194
    .line 1195
    const/16 v19, 0x0

    .line 1196
    .line 1197
    const-wide/16 v20, 0x0

    .line 1198
    .line 1199
    const/16 v22, 0x0

    .line 1200
    .line 1201
    const-wide/16 v23, 0x0

    .line 1202
    .line 1203
    const/16 v25, 0x0

    .line 1204
    .line 1205
    const/16 v26, 0x0

    .line 1206
    .line 1207
    const/16 v27, 0x0

    .line 1208
    .line 1209
    const/16 v28, 0x0

    .line 1210
    .line 1211
    const/16 v29, 0x0

    .line 1212
    .line 1213
    const/16 v32, 0x0

    .line 1214
    .line 1215
    move-object/from16 v30, v0

    .line 1216
    .line 1217
    move-object/from16 v31, v1

    .line 1218
    .line 1219
    invoke-static/range {v11 .. v34}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1220
    .line 1221
    .line 1222
    goto :goto_1b

    .line 1223
    :cond_17
    move-object/from16 v31, v1

    .line 1224
    .line 1225
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1226
    .line 1227
    .line 1228
    :goto_1b
    return-object v10

    .line 1229
    :pswitch_9
    move-object v13, v14

    .line 1230
    move-object/from16 v1, p1

    .line 1231
    .line 1232
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1233
    .line 1234
    move-object/from16 v2, p2

    .line 1235
    .line 1236
    check-cast v2, Ljava/lang/Integer;

    .line 1237
    .line 1238
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1239
    .line 1240
    .line 1241
    move-result v2

    .line 1242
    and-int/lit8 v3, v2, 0x3

    .line 1243
    .line 1244
    if-eq v3, v11, :cond_18

    .line 1245
    .line 1246
    const/4 v9, 0x1

    .line 1247
    :goto_1c
    const/4 v3, 0x1

    .line 1248
    goto :goto_1d

    .line 1249
    :cond_18
    move v9, v12

    .line 1250
    goto :goto_1c

    .line 1251
    :goto_1d
    and-int/2addr v2, v3

    .line 1252
    invoke-virtual {v1, v2, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1253
    .line 1254
    .line 1255
    move-result v2

    .line 1256
    if-eqz v2, :cond_19

    .line 1257
    .line 1258
    iget-object v2, v13, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1259
    .line 1260
    const v3, 0x7f1203f3

    .line 1261
    .line 1262
    .line 1263
    new-array v4, v12, [Ljava/lang/Object;

    .line 1264
    .line 1265
    invoke-static {v0, v2, v3, v4}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v32

    .line 1269
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1270
    .line 1271
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v0

    .line 1275
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 1276
    .line 1277
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 1278
    .line 1279
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1280
    .line 1281
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v2

    .line 1285
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1286
    .line 1287
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1288
    .line 1289
    const/16 v54, 0x0

    .line 1290
    .line 1291
    const v55, 0x1fffa

    .line 1292
    .line 1293
    .line 1294
    const/16 v33, 0x0

    .line 1295
    .line 1296
    const/16 v36, 0x0

    .line 1297
    .line 1298
    const-wide/16 v37, 0x0

    .line 1299
    .line 1300
    const/16 v39, 0x0

    .line 1301
    .line 1302
    const/16 v40, 0x0

    .line 1303
    .line 1304
    const-wide/16 v41, 0x0

    .line 1305
    .line 1306
    const/16 v43, 0x0

    .line 1307
    .line 1308
    const-wide/16 v44, 0x0

    .line 1309
    .line 1310
    const/16 v46, 0x0

    .line 1311
    .line 1312
    const/16 v47, 0x0

    .line 1313
    .line 1314
    const/16 v48, 0x0

    .line 1315
    .line 1316
    const/16 v49, 0x0

    .line 1317
    .line 1318
    const/16 v50, 0x0

    .line 1319
    .line 1320
    const/16 v53, 0x0

    .line 1321
    .line 1322
    move-object/from16 v51, v0

    .line 1323
    .line 1324
    move-object/from16 v52, v1

    .line 1325
    .line 1326
    move-wide/from16 v34, v2

    .line 1327
    .line 1328
    invoke-static/range {v32 .. v55}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1329
    .line 1330
    .line 1331
    goto :goto_1e

    .line 1332
    :cond_19
    move-object/from16 v52, v1

    .line 1333
    .line 1334
    invoke-virtual/range {v52 .. v52}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1335
    .line 1336
    .line 1337
    :goto_1e
    return-object v10

    .line 1338
    :pswitch_a
    move-object v8, v9

    .line 1339
    move-object v13, v14

    .line 1340
    move-object/from16 v5, p1

    .line 1341
    .line 1342
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1343
    .line 1344
    move-object/from16 v1, p2

    .line 1345
    .line 1346
    check-cast v1, Ljava/lang/Integer;

    .line 1347
    .line 1348
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1349
    .line 1350
    .line 1351
    move-result v1

    .line 1352
    and-int/lit8 v2, v1, 0x3

    .line 1353
    .line 1354
    if-eq v2, v11, :cond_1a

    .line 1355
    .line 1356
    const/4 v9, 0x1

    .line 1357
    :goto_1f
    const/4 v3, 0x1

    .line 1358
    goto :goto_20

    .line 1359
    :cond_1a
    move v9, v12

    .line 1360
    goto :goto_1f

    .line 1361
    :goto_20
    and-int/2addr v1, v3

    .line 1362
    invoke-virtual {v5, v1, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1363
    .line 1364
    .line 1365
    move-result v1

    .line 1366
    if-eqz v1, :cond_1b

    .line 1367
    .line 1368
    invoke-static {v7, v12, v5}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v1

    .line 1372
    iget-object v2, v13, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1373
    .line 1374
    new-array v3, v12, [Ljava/lang/Object;

    .line 1375
    .line 1376
    invoke-static {v0, v2, v6, v3}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v0

    .line 1380
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->White:J

    .line 1381
    .line 1382
    const/high16 v15, 0x41c00000    # 24.0f

    .line 1383
    .line 1384
    invoke-static {v8, v15}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v2

    .line 1388
    const/16 v6, 0xd88

    .line 1389
    .line 1390
    const/4 v7, 0x0

    .line 1391
    move-object/from16 v56, v1

    .line 1392
    .line 1393
    move-object v1, v0

    .line 1394
    move-object/from16 v0, v56

    .line 1395
    .line 1396
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1397
    .line 1398
    .line 1399
    goto :goto_21

    .line 1400
    :cond_1b
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1401
    .line 1402
    .line 1403
    :goto_21
    return-object v10

    .line 1404
    :pswitch_b
    move-object v8, v9

    .line 1405
    move-object v13, v14

    .line 1406
    move-object/from16 v1, p1

    .line 1407
    .line 1408
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1409
    .line 1410
    move-object/from16 v2, p2

    .line 1411
    .line 1412
    check-cast v2, Ljava/lang/Integer;

    .line 1413
    .line 1414
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1415
    .line 1416
    .line 1417
    move-result v2

    .line 1418
    and-int/lit8 v3, v2, 0x3

    .line 1419
    .line 1420
    if-eq v3, v11, :cond_1c

    .line 1421
    .line 1422
    const/4 v9, 0x1

    .line 1423
    :goto_22
    const/4 v3, 0x1

    .line 1424
    goto :goto_23

    .line 1425
    :cond_1c
    move v9, v12

    .line 1426
    goto :goto_22

    .line 1427
    :goto_23
    and-int/2addr v2, v3

    .line 1428
    invoke-virtual {v1, v2, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1429
    .line 1430
    .line 1431
    move-result v2

    .line 1432
    if-eqz v2, :cond_1d

    .line 1433
    .line 1434
    invoke-static {v7, v12, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v11

    .line 1438
    iget-object v2, v13, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1439
    .line 1440
    new-array v3, v12, [Ljava/lang/Object;

    .line 1441
    .line 1442
    invoke-static {v0, v2, v6, v3}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v12

    .line 1446
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1447
    .line 1448
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v0

    .line 1452
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1453
    .line 1454
    iget-wide v2, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 1455
    .line 1456
    const/high16 v15, 0x41c00000    # 24.0f

    .line 1457
    .line 1458
    invoke-static {v8, v15}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v13

    .line 1462
    const/16 v17, 0x188

    .line 1463
    .line 1464
    const/16 v18, 0x0

    .line 1465
    .line 1466
    move-object/from16 v16, v1

    .line 1467
    .line 1468
    move-wide v14, v2

    .line 1469
    invoke-static/range {v11 .. v18}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1470
    .line 1471
    .line 1472
    goto :goto_24

    .line 1473
    :cond_1d
    move-object/from16 v16, v1

    .line 1474
    .line 1475
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1476
    .line 1477
    .line 1478
    :goto_24
    return-object v10

    .line 1479
    :pswitch_c
    move-object v8, v9

    .line 1480
    move-object v13, v14

    .line 1481
    move-object/from16 v5, p1

    .line 1482
    .line 1483
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1484
    .line 1485
    move-object/from16 v1, p2

    .line 1486
    .line 1487
    check-cast v1, Ljava/lang/Integer;

    .line 1488
    .line 1489
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1490
    .line 1491
    .line 1492
    move-result v1

    .line 1493
    and-int/lit8 v2, v1, 0x3

    .line 1494
    .line 1495
    if-eq v2, v11, :cond_1e

    .line 1496
    .line 1497
    const/4 v9, 0x1

    .line 1498
    :goto_25
    const/4 v3, 0x1

    .line 1499
    goto :goto_26

    .line 1500
    :cond_1e
    move v9, v12

    .line 1501
    goto :goto_25

    .line 1502
    :goto_26
    and-int/2addr v1, v3

    .line 1503
    invoke-virtual {v5, v1, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1504
    .line 1505
    .line 1506
    move-result v1

    .line 1507
    if-eqz v1, :cond_1f

    .line 1508
    .line 1509
    invoke-static {v7, v12, v5}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v1

    .line 1513
    iget-object v2, v13, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1514
    .line 1515
    new-array v3, v12, [Ljava/lang/Object;

    .line 1516
    .line 1517
    invoke-static {v0, v2, v6, v3}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v0

    .line 1521
    const v2, 0x7f0600a7

    .line 1522
    .line 1523
    .line 1524
    invoke-static {v2, v5}, Lkotlin/TuplesKt;->colorResource(ILandroidx/compose/runtime/GapComposer;)J

    .line 1525
    .line 1526
    .line 1527
    move-result-wide v3

    .line 1528
    const/high16 v15, 0x41c00000    # 24.0f

    .line 1529
    .line 1530
    invoke-static {v8, v15}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v2

    .line 1534
    const/16 v6, 0x188

    .line 1535
    .line 1536
    const/4 v7, 0x0

    .line 1537
    move-object/from16 v56, v1

    .line 1538
    .line 1539
    move-object v1, v0

    .line 1540
    move-object/from16 v0, v56

    .line 1541
    .line 1542
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1543
    .line 1544
    .line 1545
    goto :goto_27

    .line 1546
    :cond_1f
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1547
    .line 1548
    .line 1549
    :goto_27
    return-object v10

    .line 1550
    nop

    .line 1551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
