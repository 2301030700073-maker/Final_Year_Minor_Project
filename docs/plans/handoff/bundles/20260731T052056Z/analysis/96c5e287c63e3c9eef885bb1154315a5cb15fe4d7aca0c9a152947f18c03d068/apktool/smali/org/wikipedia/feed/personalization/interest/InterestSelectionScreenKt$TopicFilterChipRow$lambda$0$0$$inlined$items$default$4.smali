.class public final Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt$TopicFilterChipRow$lambda$0$0$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $context$inlined:Ljava/lang/Object;

.field public final synthetic $items:Ljava/util/ArrayList;

.field public final synthetic $languageCode$inlined:Ljava/lang/String;

.field public final synthetic $onTopicSelected$inlined:Lkotlin/jvm/functions/Function1;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt$TopicFilterChipRow$lambda$0$0$$inlined$items$default$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt$TopicFilterChipRow$lambda$0$0$$inlined$items$default$4;->$items:Ljava/util/ArrayList;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt$TopicFilterChipRow$lambda$0$0$$inlined$items$default$4;->$onTopicSelected$inlined:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt$TopicFilterChipRow$lambda$0$0$$inlined$items$default$4;->$context$inlined:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt$TopicFilterChipRow$lambda$0$0$$inlined$items$default$4;->$languageCode$inlined:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt$TopicFilterChipRow$lambda$0$0$$inlined$items$default$4;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt$TopicFilterChipRow$lambda$0$0$$inlined$items$default$4;->$languageCode$inlined:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt$TopicFilterChipRow$lambda$0$0$$inlined$items$default$4;->$items:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/16 v5, 0x92

    .line 12
    .line 13
    const/4 v7, 0x2

    .line 14
    iget-object v8, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt$TopicFilterChipRow$lambda$0$0$$inlined$items$default$4;->$onTopicSelected$inlined:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    iget-object v0, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionScreenKt$TopicFilterChipRow$lambda$0$0$$inlined$items$default$4;->$context$inlined:Ljava/lang/Object;

    .line 17
    .line 18
    const/16 v9, 0x30

    .line 19
    .line 20
    const/16 v10, 0x20

    .line 21
    .line 22
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 23
    .line 24
    const/4 v12, 0x1

    .line 25
    const/4 v13, 0x0

    .line 26
    packed-switch v1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    move-object/from16 v1, p1

    .line 30
    .line 31
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 32
    .line 33
    move-object/from16 v15, p2

    .line 34
    .line 35
    check-cast v15, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v15

    .line 41
    move-object/from16 v6, p3

    .line 42
    .line 43
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 44
    .line 45
    move-object/from16 v17, p4

    .line 46
    .line 47
    check-cast v17, Ljava/lang/Number;

    .line 48
    .line 49
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v17

    .line 53
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 54
    .line 55
    and-int/lit8 v18, v17, 0x6

    .line 56
    .line 57
    if-nez v18, :cond_1

    .line 58
    .line 59
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    const/4 v7, 0x4

    .line 66
    :cond_0
    or-int v1, v17, v7

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move/from16 v1, v17

    .line 70
    .line 71
    :goto_0
    and-int/lit8 v7, v17, 0x30

    .line 72
    .line 73
    if-nez v7, :cond_3

    .line 74
    .line 75
    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_2

    .line 80
    .line 81
    move/from16 v16, v10

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const/16 v16, 0x10

    .line 85
    .line 86
    :goto_1
    or-int v1, v1, v16

    .line 87
    .line 88
    :cond_3
    and-int/lit16 v7, v1, 0x93

    .line 89
    .line 90
    if-eq v7, v5, :cond_4

    .line 91
    .line 92
    move v5, v12

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    move v5, v13

    .line 95
    :goto_2
    and-int/2addr v1, v12

    .line 96
    invoke-virtual {v6, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_a

    .line 101
    .line 102
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Ljava/lang/String;

    .line 107
    .line 108
    const v4, -0x3dcc946b

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 112
    .line 113
    .line 114
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 115
    .line 116
    const/high16 v5, 0x3f800000    # 1.0f

    .line 117
    .line 118
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    or-int/2addr v5, v7

    .line 131
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    or-int/2addr v5, v7

    .line 136
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    if-nez v5, :cond_5

    .line 141
    .line 142
    if-ne v7, v11, :cond_6

    .line 143
    .line 144
    :cond_5
    new-instance v7, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1;

    .line 145
    .line 146
    invoke-direct {v7, v8, v1, v0, v13}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 153
    .line 154
    const/16 v5, 0xf

    .line 155
    .line 156
    const/4 v14, 0x0

    .line 157
    invoke-static {v5, v4, v14, v7, v13}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 162
    .line 163
    sget-object v7, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 164
    .line 165
    invoke-static {v7, v5, v6, v9}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    iget-wide v14, v6, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 170
    .line 171
    ushr-long v9, v14, v10

    .line 172
    .line 173
    xor-long/2addr v9, v14

    .line 174
    long-to-int v7, v9

    .line 175
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    invoke-static {v6, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 184
    .line 185
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 189
    .line 190
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 191
    .line 192
    .line 193
    iget-boolean v14, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 194
    .line 195
    if-eqz v14, :cond_7

    .line 196
    .line 197
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_7
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 202
    .line 203
    .line 204
    :goto_3
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 205
    .line 206
    invoke-static {v6, v5, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 207
    .line 208
    .line 209
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 210
    .line 211
    invoke-static {v6, v9, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 212
    .line 213
    .line 214
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 219
    .line 220
    invoke-static {v6, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 221
    .line 222
    .line 223
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 224
    .line 225
    invoke-static {v6, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 226
    .line 227
    .line 228
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 229
    .line 230
    invoke-static {v6, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    or-int/2addr v4, v5

    .line 246
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    or-int/2addr v4, v5

    .line 251
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    if-nez v4, :cond_8

    .line 256
    .line 257
    if-ne v5, v11, :cond_9

    .line 258
    .line 259
    :cond_8
    new-instance v5, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1;

    .line 260
    .line 261
    invoke-direct {v5, v8, v1, v0, v12}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    :cond_9
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 268
    .line 269
    sget-object v0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 270
    .line 271
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 276
    .line 277
    iget-wide v7, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 278
    .line 279
    const-wide/16 v22, 0x0

    .line 280
    .line 281
    const/16 v25, 0xe

    .line 282
    .line 283
    const-wide/16 v18, 0x0

    .line 284
    .line 285
    const-wide/16 v20, 0x0

    .line 286
    .line 287
    move-object/from16 v24, v6

    .line 288
    .line 289
    move-wide/from16 v16, v7

    .line 290
    .line 291
    invoke-static/range {v16 .. v25}, Landroidx/compose/material3/CardKt;->colors-ro_MJ88(JJJJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/RadioButtonColors;

    .line 292
    .line 293
    .line 294
    move-result-object v20

    .line 295
    move-object/from16 v36, v24

    .line 296
    .line 297
    const/16 v22, 0x0

    .line 298
    .line 299
    const/16 v23, 0x2c

    .line 300
    .line 301
    const/16 v18, 0x0

    .line 302
    .line 303
    const/16 v19, 0x0

    .line 304
    .line 305
    move/from16 v16, v3

    .line 306
    .line 307
    move-object/from16 v17, v5

    .line 308
    .line 309
    move-object/from16 v21, v36

    .line 310
    .line 311
    invoke-static/range {v16 .. v23}, Landroidx/compose/material3/CardKt;->RadioButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/runtime/GapComposer;II)V

    .line 312
    .line 313
    .line 314
    move-object/from16 v3, v21

    .line 315
    .line 316
    sget-object v4, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 317
    .line 318
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    check-cast v4, Landroidx/compose/material3/Typography;

    .line 323
    .line 324
    iget-object v4, v4, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 325
    .line 326
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    check-cast v0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 331
    .line 332
    iget-wide v5, v0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 333
    .line 334
    const/16 v38, 0x0

    .line 335
    .line 336
    const v39, 0x1fffa

    .line 337
    .line 338
    .line 339
    const/16 v17, 0x0

    .line 340
    .line 341
    const/16 v20, 0x0

    .line 342
    .line 343
    const-wide/16 v21, 0x0

    .line 344
    .line 345
    const/16 v23, 0x0

    .line 346
    .line 347
    const/16 v24, 0x0

    .line 348
    .line 349
    const-wide/16 v25, 0x0

    .line 350
    .line 351
    const/16 v27, 0x0

    .line 352
    .line 353
    const-wide/16 v28, 0x0

    .line 354
    .line 355
    const/16 v30, 0x0

    .line 356
    .line 357
    const/16 v31, 0x0

    .line 358
    .line 359
    const/16 v32, 0x0

    .line 360
    .line 361
    const/16 v33, 0x0

    .line 362
    .line 363
    const/16 v34, 0x0

    .line 364
    .line 365
    const/16 v37, 0x0

    .line 366
    .line 367
    move-object/from16 v16, v1

    .line 368
    .line 369
    move-object/from16 v36, v3

    .line 370
    .line 371
    move-object/from16 v35, v4

    .line 372
    .line 373
    move-wide/from16 v18, v5

    .line 374
    .line 375
    invoke-static/range {v16 .. v39}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 382
    .line 383
    .line 384
    goto :goto_4

    .line 385
    :cond_a
    move-object v3, v6

    .line 386
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 387
    .line 388
    .line 389
    :goto_4
    return-object v2

    .line 390
    :pswitch_0
    move-object/from16 v1, p1

    .line 391
    .line 392
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 393
    .line 394
    move-object/from16 v6, p2

    .line 395
    .line 396
    check-cast v6, Ljava/lang/Number;

    .line 397
    .line 398
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    move-object/from16 v15, p3

    .line 403
    .line 404
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 405
    .line 406
    move-object/from16 v17, p4

    .line 407
    .line 408
    check-cast v17, Ljava/lang/Number;

    .line 409
    .line 410
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I

    .line 411
    .line 412
    .line 413
    move-result v17

    .line 414
    and-int/lit8 v18, v17, 0x6

    .line 415
    .line 416
    if-nez v18, :cond_c

    .line 417
    .line 418
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    if-eqz v1, :cond_b

    .line 423
    .line 424
    const/4 v7, 0x4

    .line 425
    :cond_b
    or-int v1, v17, v7

    .line 426
    .line 427
    goto :goto_5

    .line 428
    :cond_c
    move/from16 v1, v17

    .line 429
    .line 430
    :goto_5
    and-int/lit8 v7, v17, 0x30

    .line 431
    .line 432
    if-nez v7, :cond_e

    .line 433
    .line 434
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 435
    .line 436
    .line 437
    move-result v7

    .line 438
    if-eqz v7, :cond_d

    .line 439
    .line 440
    move/from16 v16, v10

    .line 441
    .line 442
    goto :goto_6

    .line 443
    :cond_d
    const/16 v16, 0x10

    .line 444
    .line 445
    :goto_6
    or-int v1, v1, v16

    .line 446
    .line 447
    :cond_e
    and-int/lit16 v7, v1, 0x93

    .line 448
    .line 449
    if-eq v7, v5, :cond_f

    .line 450
    .line 451
    move v5, v12

    .line 452
    goto :goto_7

    .line 453
    :cond_f
    move v5, v13

    .line 454
    :goto_7
    and-int/2addr v1, v12

    .line 455
    invoke-virtual {v15, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    if-eqz v1, :cond_16

    .line 460
    .line 461
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    check-cast v1, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;

    .line 466
    .line 467
    const v4, -0x161d650c

    .line 468
    .line 469
    .line 470
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 471
    .line 472
    .line 473
    iget-boolean v4, v1, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;->isSelected:Z

    .line 474
    .line 475
    sget v5, Landroidx/compose/material3/FilterChipDefaults;->Height:F

    .line 476
    .line 477
    sget-object v5, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 478
    .line 479
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v6

    .line 483
    check-cast v6, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 484
    .line 485
    iget-wide v6, v6, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 486
    .line 487
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v9

    .line 491
    check-cast v9, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 492
    .line 493
    iget-wide v9, v9, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 494
    .line 495
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v12

    .line 499
    check-cast v12, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 500
    .line 501
    const/16 v43, 0x4

    .line 502
    .line 503
    iget-wide v13, v12, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 504
    .line 505
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v12

    .line 509
    check-cast v12, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 510
    .line 511
    move-wide/from16 v17, v6

    .line 512
    .line 513
    iget-wide v6, v12, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 514
    .line 515
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v12

    .line 519
    check-cast v12, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 520
    .line 521
    move-wide/from16 v39, v6

    .line 522
    .line 523
    iget-wide v6, v12, Lorg/wikipedia/compose/theme/WikipediaColor;->additionColor:J

    .line 524
    .line 525
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v12

    .line 529
    check-cast v12, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 530
    .line 531
    move-wide/from16 v33, v6

    .line 532
    .line 533
    iget-wide v6, v12, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 534
    .line 535
    sget-wide v25, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 536
    .line 537
    sget-object v12, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 538
    .line 539
    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v12

    .line 543
    check-cast v12, Landroidx/compose/material3/ColorScheme;

    .line 544
    .line 545
    invoke-static {v12}, Landroidx/compose/material3/FilterChipDefaults;->getDefaultFilterChipColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/SelectableChipColors;

    .line 546
    .line 547
    .line 548
    move-result-object v16

    .line 549
    move-wide/from16 v23, v13

    .line 550
    .line 551
    move-wide/from16 v27, v25

    .line 552
    .line 553
    move-wide/from16 v29, v25

    .line 554
    .line 555
    move-wide/from16 v31, v25

    .line 556
    .line 557
    move-wide/from16 v35, v25

    .line 558
    .line 559
    move-wide/from16 v41, v25

    .line 560
    .line 561
    move-wide/from16 v37, v6

    .line 562
    .line 563
    move-wide/from16 v19, v9

    .line 564
    .line 565
    move-wide/from16 v21, v13

    .line 566
    .line 567
    invoke-virtual/range {v16 .. v42}, Landroidx/compose/material3/SelectableChipColors;->copy-daRQuJA(JJJJJJJJJJJJJ)Landroidx/compose/material3/SelectableChipColors;

    .line 568
    .line 569
    .line 570
    move-result-object v24

    .line 571
    iget-boolean v6, v1, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;->isSelected:Z

    .line 572
    .line 573
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v5

    .line 577
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 578
    .line 579
    iget-wide v9, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 580
    .line 581
    sget-wide v12, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 582
    .line 583
    const/16 v5, 0xf0

    .line 584
    .line 585
    and-int/lit8 v5, v5, 0x4

    .line 586
    .line 587
    if-eqz v5, :cond_10

    .line 588
    .line 589
    sget-object v5, Landroidx/compose/material3/tokens/FilterChipTokens;->FlatUnselectedOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 590
    .line 591
    invoke-static {v5, v15}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)J

    .line 592
    .line 593
    .line 594
    move-result-wide v9

    .line 595
    :cond_10
    const/16 v5, 0xf0

    .line 596
    .line 597
    and-int/lit8 v5, v5, 0x8

    .line 598
    .line 599
    if-eqz v5, :cond_11

    .line 600
    .line 601
    sget-wide v12, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 602
    .line 603
    :cond_11
    sget-object v5, Landroidx/compose/material3/tokens/FilterChipTokens;->FlatDisabledUnselectedOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 604
    .line 605
    move/from16 v17, v4

    .line 606
    .line 607
    invoke-static {v5, v15}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/GapComposer;)J

    .line 608
    .line 609
    .line 610
    move-result-wide v4

    .line 611
    sget v7, Landroidx/compose/material3/tokens/FilterChipTokens;->FlatDisabledUnselectedOutlineOpacity:F

    .line 612
    .line 613
    invoke-static {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 614
    .line 615
    .line 616
    sget v4, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 617
    .line 618
    sget v4, Landroidx/compose/material3/tokens/FilterChipTokens;->FlatUnselectedOutlineWidth:F

    .line 619
    .line 620
    if-eqz v6, :cond_12

    .line 621
    .line 622
    move-wide v9, v12

    .line 623
    :cond_12
    if-eqz v6, :cond_13

    .line 624
    .line 625
    const/4 v4, 0x0

    .line 626
    :cond_13
    invoke-static {v4, v9, v10}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 627
    .line 628
    .line 629
    move-result-object v26

    .line 630
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v4

    .line 634
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v5

    .line 638
    or-int/2addr v4, v5

    .line 639
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v5

    .line 643
    if-nez v4, :cond_14

    .line 644
    .line 645
    if-ne v5, v11, :cond_15

    .line 646
    .line 647
    :cond_14
    new-instance v5, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 648
    .line 649
    move/from16 v4, v43

    .line 650
    .line 651
    invoke-direct {v5, v8, v1, v4}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;I)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 655
    .line 656
    .line 657
    :cond_15
    move-object/from16 v18, v5

    .line 658
    .line 659
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 660
    .line 661
    new-instance v4, Landroidx/compose/material3/TooltipKt$TooltipBox$3;

    .line 662
    .line 663
    check-cast v0, Landroid/content/Context;

    .line 664
    .line 665
    const/4 v5, 0x3

    .line 666
    invoke-direct {v4, v0, v3, v1, v5}, Landroidx/compose/material3/TooltipKt$TooltipBox$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 667
    .line 668
    .line 669
    const v0, 0x8a98037

    .line 670
    .line 671
    .line 672
    invoke-static {v0, v4, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 673
    .line 674
    .line 675
    move-result-object v19

    .line 676
    new-instance v0, Landroidx/compose/material3/CardKt$Card$1;

    .line 677
    .line 678
    invoke-direct {v0, v5, v1}, Landroidx/compose/material3/CardKt$Card$1;-><init>(ILjava/lang/Object;)V

    .line 679
    .line 680
    .line 681
    const v1, 0x4fbfebfa

    .line 682
    .line 683
    .line 684
    invoke-static {v1, v0, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 685
    .line 686
    .line 687
    move-result-object v22

    .line 688
    const/16 v25, 0x0

    .line 689
    .line 690
    const v28, 0x30180

    .line 691
    .line 692
    .line 693
    const/16 v20, 0x0

    .line 694
    .line 695
    const/16 v21, 0x0

    .line 696
    .line 697
    const/16 v23, 0x0

    .line 698
    .line 699
    move-object/from16 v27, v15

    .line 700
    .line 701
    invoke-static/range {v17 .. v28}, Landroidx/compose/material3/ChipKt;->FilterChip(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SelectableChipColors;Landroidx/compose/material3/SelectableChipElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/GapComposer;I)V

    .line 702
    .line 703
    .line 704
    move-object/from16 v0, v27

    .line 705
    .line 706
    const/4 v1, 0x0

    .line 707
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 708
    .line 709
    .line 710
    goto :goto_8

    .line 711
    :cond_16
    move-object v0, v15

    .line 712
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 713
    .line 714
    .line 715
    :goto_8
    return-object v2

    .line 716
    nop

    .line 717
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
