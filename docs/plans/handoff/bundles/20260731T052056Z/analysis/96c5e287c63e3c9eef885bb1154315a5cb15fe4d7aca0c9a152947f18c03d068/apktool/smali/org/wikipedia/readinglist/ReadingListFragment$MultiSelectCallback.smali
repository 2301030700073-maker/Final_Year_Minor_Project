.class public final Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/appcompat/view/ActionMode$Callback;


# static fields
.field public static totalEdits:I

.field public static totalReverts:I


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final EventRow(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    move/from16 v11, p3

    .line 8
    .line 9
    move-object/from16 v12, p6

    .line 10
    .line 11
    move-object/from16 v8, p7

    .line 12
    .line 13
    const v1, 0x133b26f4

    .line 14
    .line 15
    .line 16
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int v1, p8, v1

    .line 29
    .line 30
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int/2addr v1, v4

    .line 42
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    const/16 v4, 0x100

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v4, 0x80

    .line 52
    .line 53
    :goto_2
    or-int/2addr v1, v4

    .line 54
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    const/16 v4, 0x800

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    const/16 v4, 0x400

    .line 64
    .line 65
    :goto_3
    or-int/2addr v1, v4

    .line 66
    move-object/from16 v6, p5

    .line 67
    .line 68
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    const/high16 v4, 0x20000

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    const/high16 v4, 0x10000

    .line 78
    .line 79
    :goto_4
    or-int/2addr v1, v4

    .line 80
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_5

    .line 85
    .line 86
    const/high16 v4, 0x100000

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_5
    const/high16 v4, 0x80000

    .line 90
    .line 91
    :goto_5
    or-int v37, v1, v4

    .line 92
    .line 93
    const v1, 0x92493

    .line 94
    .line 95
    .line 96
    and-int v1, v37, v1

    .line 97
    .line 98
    const v4, 0x92492

    .line 99
    .line 100
    .line 101
    const/4 v13, 0x0

    .line 102
    if-eq v1, v4, :cond_6

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    goto :goto_6

    .line 106
    :cond_6
    move v1, v13

    .line 107
    :goto_6
    and-int/lit8 v4, v37, 0x1

    .line 108
    .line 109
    invoke-virtual {v8, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_16

    .line 114
    .line 115
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 120
    .line 121
    if-ne v1, v4, :cond_7

    .line 122
    .line 123
    const/4 v1, 0x0

    .line 124
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    .line 125
    .line 126
    .line 127
    move-result-wide v14

    .line 128
    new-instance v1, Landroidx/compose/ui/unit/DpSize;

    .line 129
    .line 130
    invoke-direct {v1, v14, v15}, Landroidx/compose/ui/unit/DpSize;-><init>(J)V

    .line 131
    .line 132
    .line 133
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_7
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 141
    .line 142
    sget-object v14, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 143
    .line 144
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v14

    .line 148
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 149
    .line 150
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 151
    .line 152
    const/16 v38, 0x20

    .line 153
    .line 154
    const/high16 v5, 0x3f800000    # 1.0f

    .line 155
    .line 156
    invoke-static {v15, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v16

    .line 164
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    if-nez v16, :cond_8

    .line 169
    .line 170
    if-ne v3, v4, :cond_9

    .line 171
    .line 172
    :cond_8
    new-instance v3, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;

    .line 173
    .line 174
    invoke-direct {v3, v1, v14}, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/unit/Density;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_9
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 181
    .line 182
    invoke-static {v7, v3}, Landroidx/compose/ui/layout/RulerKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 187
    .line 188
    invoke-static {v7, v13}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    iget-wide v9, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 193
    .line 194
    ushr-long v16, v9, v38

    .line 195
    .line 196
    xor-long v9, v9, v16

    .line 197
    .line 198
    long-to-int v9, v9

    .line 199
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    invoke-static {v8, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 208
    .line 209
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 213
    .line 214
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 215
    .line 216
    .line 217
    iget-boolean v13, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 218
    .line 219
    if-eqz v13, :cond_a

    .line 220
    .line 221
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 222
    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_a
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 226
    .line 227
    .line 228
    :goto_7
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 229
    .line 230
    invoke-static {v8, v14, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 231
    .line 232
    .line 233
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 234
    .line 235
    invoke-static {v8, v10, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 243
    .line 244
    invoke-static {v8, v9, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 245
    .line 246
    .line 247
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 248
    .line 249
    invoke-static {v8, v9}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 250
    .line 251
    .line 252
    move-object/from16 v41, v1

    .line 253
    .line 254
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 255
    .line 256
    invoke-static {v8, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 257
    .line 258
    .line 259
    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 260
    .line 261
    invoke-virtual {v3}, Landroidx/compose/foundation/layout/BoxScopeInstance;->matchParentSize()Landroidx/compose/ui/Modifier;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 266
    .line 267
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 268
    .line 269
    move-object/from16 v16, v15

    .line 270
    .line 271
    const/4 v15, 0x0

    .line 272
    invoke-static {v6, v11, v8, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 273
    .line 274
    .line 275
    move-result-object v12

    .line 276
    move-object/from16 v24, v6

    .line 277
    .line 278
    move-object/from16 v23, v7

    .line 279
    .line 280
    iget-wide v6, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 281
    .line 282
    ushr-long v17, v6, v38

    .line 283
    .line 284
    xor-long v6, v6, v17

    .line 285
    .line 286
    long-to-int v6, v6

    .line 287
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    invoke-static {v8, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 296
    .line 297
    .line 298
    iget-boolean v15, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 299
    .line 300
    if-eqz v15, :cond_b

    .line 301
    .line 302
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 303
    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_b
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 307
    .line 308
    .line 309
    :goto_8
    invoke-static {v8, v12, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 310
    .line 311
    .line 312
    invoke-static {v8, v7, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 313
    .line 314
    .line 315
    invoke-static {v6, v8, v10, v8, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 316
    .line 317
    .line 318
    invoke-static {v8, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 319
    .line 320
    .line 321
    const/16 v19, 0x0

    .line 322
    .line 323
    const/16 v20, 0xe

    .line 324
    .line 325
    move-object/from16 v15, v16

    .line 326
    .line 327
    const/high16 v16, 0x41a80000    # 21.0f

    .line 328
    .line 329
    const/16 v17, 0x0

    .line 330
    .line 331
    const/16 v18, 0x0

    .line 332
    .line 333
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    const/high16 v6, 0x3f800000    # 1.0f

    .line 338
    .line 339
    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    new-instance v7, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 344
    .line 345
    const/4 v12, 0x1

    .line 346
    invoke-direct {v7, v6, v12}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 347
    .line 348
    .line 349
    invoke-interface {v3, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    sget-object v6, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 354
    .line 355
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 360
    .line 361
    move-object/from16 v25, v13

    .line 362
    .line 363
    iget-wide v12, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 364
    .line 365
    sget-object v7, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 366
    .line 367
    invoke-static {v3, v12, v13, v7}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    const/4 v12, 0x0

    .line 372
    invoke-static {v3, v8, v12}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 373
    .line 374
    .line 375
    const/4 v12, 0x1

    .line 376
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 377
    .line 378
    .line 379
    const/high16 v3, 0x41400000    # 12.0f

    .line 380
    .line 381
    if-eqz p3, :cond_c

    .line 382
    .line 383
    const v12, -0x761a4f0e

    .line 384
    .line 385
    .line 386
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 387
    .line 388
    .line 389
    const/16 v19, 0x0

    .line 390
    .line 391
    const/16 v20, 0xc

    .line 392
    .line 393
    const/high16 v16, 0x41800000    # 16.0f

    .line 394
    .line 395
    const/high16 v17, 0x41000000    # 8.0f

    .line 396
    .line 397
    const/16 v18, 0x0

    .line 398
    .line 399
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 400
    .line 401
    .line 402
    move-result-object v12

    .line 403
    invoke-static {v12, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 404
    .line 405
    .line 406
    move-result-object v12

    .line 407
    sget-object v13, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 408
    .line 409
    invoke-static {v12, v13}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 410
    .line 411
    .line 412
    move-result-object v12

    .line 413
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v13

    .line 417
    check-cast v13, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 418
    .line 419
    move-object/from16 v42, v4

    .line 420
    .line 421
    iget-wide v3, v13, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 422
    .line 423
    invoke-static {v12, v3, v4, v7}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    const/4 v12, 0x0

    .line 428
    invoke-static {v3, v8, v12}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 432
    .line 433
    .line 434
    move-object/from16 v2, v25

    .line 435
    .line 436
    :goto_9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 437
    .line 438
    goto/16 :goto_c

    .line 439
    .line 440
    :cond_c
    move-object/from16 v42, v4

    .line 441
    .line 442
    const v3, -0x7615ddbe

    .line 443
    .line 444
    .line 445
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 446
    .line 447
    .line 448
    const/16 v19, 0x0

    .line 449
    .line 450
    const/16 v20, 0xc

    .line 451
    .line 452
    const/high16 v16, 0x41800000    # 16.0f

    .line 453
    .line 454
    const/high16 v17, 0x41c00000    # 24.0f

    .line 455
    .line 456
    const/16 v18, 0x0

    .line 457
    .line 458
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    const/high16 v4, 0x41300000    # 11.0f

    .line 463
    .line 464
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    sget-object v4, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 469
    .line 470
    invoke-static {v3, v4}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v12

    .line 478
    check-cast v12, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 479
    .line 480
    iget-wide v12, v12, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 481
    .line 482
    const/high16 v0, 0x3f800000    # 1.0f

    .line 483
    .line 484
    invoke-static {v3, v0, v12, v13, v4}, Landroidx/compose/foundation/ImageKt;->border-xT4_qwU(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    const/high16 v0, 0x40400000    # 3.0f

    .line 489
    .line 490
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    move-object/from16 v3, v23

    .line 495
    .line 496
    const/4 v12, 0x0

    .line 497
    invoke-static {v3, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    iget-wide v12, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 502
    .line 503
    ushr-long v16, v12, v38

    .line 504
    .line 505
    xor-long v12, v12, v16

    .line 506
    .line 507
    long-to-int v12, v12

    .line 508
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 509
    .line 510
    .line 511
    move-result-object v13

    .line 512
    invoke-static {v8, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 517
    .line 518
    .line 519
    iget-boolean v2, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 520
    .line 521
    if-eqz v2, :cond_d

    .line 522
    .line 523
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 524
    .line 525
    .line 526
    :goto_a
    move-object/from16 v2, v25

    .line 527
    .line 528
    goto :goto_b

    .line 529
    :cond_d
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 530
    .line 531
    .line 532
    goto :goto_a

    .line 533
    :goto_b
    invoke-static {v8, v3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 534
    .line 535
    .line 536
    invoke-static {v8, v13, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 537
    .line 538
    .line 539
    invoke-static {v12, v8, v10, v8, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 540
    .line 541
    .line 542
    invoke-static {v8, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 543
    .line 544
    .line 545
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 546
    .line 547
    invoke-static {v0, v4}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 556
    .line 557
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 558
    .line 559
    invoke-static {v0, v3, v4, v7}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    const/4 v12, 0x0

    .line 564
    invoke-static {v0, v8, v12}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 565
    .line 566
    .line 567
    const/4 v0, 0x1

    .line 568
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_9

    .line 575
    .line 576
    :goto_c
    invoke-static {v15, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    move-object/from16 v3, v24

    .line 581
    .line 582
    invoke-static {v3, v11, v8, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    iget-wide v11, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 587
    .line 588
    ushr-long v16, v11, v38

    .line 589
    .line 590
    xor-long v11, v11, v16

    .line 591
    .line 592
    long-to-int v4, v11

    .line 593
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 594
    .line 595
    .line 596
    move-result-object v7

    .line 597
    invoke-static {v8, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 602
    .line 603
    .line 604
    iget-boolean v11, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 605
    .line 606
    if-eqz v11, :cond_e

    .line 607
    .line 608
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 609
    .line 610
    .line 611
    goto :goto_d

    .line 612
    :cond_e
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 613
    .line 614
    .line 615
    :goto_d
    invoke-static {v8, v3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 616
    .line 617
    .line 618
    invoke-static {v8, v7, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 619
    .line 620
    .line 621
    invoke-static {v4, v8, v10, v8, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 622
    .line 623
    .line 624
    invoke-static {v8, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 625
    .line 626
    .line 627
    if-nez p3, :cond_f

    .line 628
    .line 629
    const v0, 0x59d5b12

    .line 630
    .line 631
    .line 632
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 633
    .line 634
    .line 635
    const/high16 v0, 0x41800000    # 16.0f

    .line 636
    .line 637
    invoke-static {v15, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-static {v8, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 642
    .line 643
    .line 644
    const/4 v12, 0x0

    .line 645
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 646
    .line 647
    .line 648
    goto :goto_e

    .line 649
    :cond_f
    const/4 v12, 0x0

    .line 650
    const v0, 0x59e6d1b

    .line 651
    .line 652
    .line 653
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 657
    .line 658
    .line 659
    :goto_e
    const/16 v19, 0x0

    .line 660
    .line 661
    const/16 v20, 0xe

    .line 662
    .line 663
    const/high16 v16, 0x42100000    # 36.0f

    .line 664
    .line 665
    const/16 v17, 0x0

    .line 666
    .line 667
    const/16 v18, 0x0

    .line 668
    .line 669
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    move-object/from16 v11, p2

    .line 674
    .line 675
    move-object v3, v15

    .line 676
    iget v4, v11, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 677
    .line 678
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v13

    .line 682
    sget-object v4, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 683
    .line 684
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v7

    .line 688
    check-cast v7, Landroidx/compose/material3/Typography;

    .line 689
    .line 690
    iget-object v15, v7, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 691
    .line 692
    sget-object v20, Landroidx/compose/ui/text/font/FontWeight;->W500:Landroidx/compose/ui/text/font/FontWeight;

    .line 693
    .line 694
    const/16 v26, 0x0

    .line 695
    .line 696
    const v27, 0xfffffb

    .line 697
    .line 698
    .line 699
    const-wide/16 v16, 0x0

    .line 700
    .line 701
    const-wide/16 v18, 0x0

    .line 702
    .line 703
    const/16 v21, 0x0

    .line 704
    .line 705
    const-wide/16 v22, 0x0

    .line 706
    .line 707
    const-wide/16 v24, 0x0

    .line 708
    .line 709
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 710
    .line 711
    .line 712
    move-result-object v32

    .line 713
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    move-result-object v7

    .line 717
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 718
    .line 719
    move-object v15, v13

    .line 720
    iget-wide v12, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 721
    .line 722
    const/16 v35, 0x0

    .line 723
    .line 724
    const v36, 0x1fff8

    .line 725
    .line 726
    .line 727
    const/16 v17, 0x0

    .line 728
    .line 729
    const/16 v20, 0x0

    .line 730
    .line 731
    const/4 v7, 0x0

    .line 732
    const/16 v24, 0x0

    .line 733
    .line 734
    const-wide/16 v25, 0x0

    .line 735
    .line 736
    const/16 v27, 0x0

    .line 737
    .line 738
    const/16 v28, 0x0

    .line 739
    .line 740
    const/16 v29, 0x0

    .line 741
    .line 742
    const/16 v30, 0x0

    .line 743
    .line 744
    const/16 v31, 0x0

    .line 745
    .line 746
    const/16 v34, 0x30

    .line 747
    .line 748
    move-object/from16 v16, v14

    .line 749
    .line 750
    move-object v14, v0

    .line 751
    move-object/from16 v0, v16

    .line 752
    .line 753
    move-wide/from16 v43, v12

    .line 754
    .line 755
    move-object v13, v15

    .line 756
    move-wide/from16 v15, v43

    .line 757
    .line 758
    move v12, v7

    .line 759
    move-object/from16 v33, v8

    .line 760
    .line 761
    invoke-static/range {v13 .. v36}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 762
    .line 763
    .line 764
    const/16 v19, 0x0

    .line 765
    .line 766
    const/16 v20, 0xc

    .line 767
    .line 768
    const/high16 v16, 0x42100000    # 36.0f

    .line 769
    .line 770
    const/high16 v17, 0x41000000    # 8.0f

    .line 771
    .line 772
    const/16 v18, 0x0

    .line 773
    .line 774
    move-object v15, v3

    .line 775
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 776
    .line 777
    .line 778
    move-result-object v14

    .line 779
    sget-object v7, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 780
    .line 781
    iget v7, v11, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->year:I

    .line 782
    .line 783
    move-object/from16 v13, p1

    .line 784
    .line 785
    iget-object v15, v13, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 786
    .line 787
    move-object/from16 v12, p0

    .line 788
    .line 789
    invoke-static {v7, v12, v15}, Lorg/wikipedia/util/DateUtil;->getYearDifferenceString(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v7

    .line 793
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v15

    .line 797
    check-cast v15, Landroidx/compose/material3/Typography;

    .line 798
    .line 799
    iget-object v15, v15, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 800
    .line 801
    sget-object v21, Landroidx/compose/ui/text/font/FontWeight;->W600:Landroidx/compose/ui/text/font/FontWeight;

    .line 802
    .line 803
    const/16 v27, 0x0

    .line 804
    .line 805
    const v28, 0xfffffb

    .line 806
    .line 807
    .line 808
    const-wide/16 v17, 0x0

    .line 809
    .line 810
    const-wide/16 v19, 0x0

    .line 811
    .line 812
    const/16 v22, 0x0

    .line 813
    .line 814
    const-wide/16 v23, 0x0

    .line 815
    .line 816
    move-object/from16 v16, v15

    .line 817
    .line 818
    invoke-static/range {v16 .. v28}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 819
    .line 820
    .line 821
    move-result-object v32

    .line 822
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v15

    .line 826
    check-cast v15, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 827
    .line 828
    move-object/from16 v16, v7

    .line 829
    .line 830
    iget-wide v7, v15, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 831
    .line 832
    const/16 v17, 0x0

    .line 833
    .line 834
    const-wide/16 v18, 0x0

    .line 835
    .line 836
    const/16 v20, 0x0

    .line 837
    .line 838
    const/16 v21, 0x0

    .line 839
    .line 840
    const-wide/16 v22, 0x0

    .line 841
    .line 842
    const/16 v24, 0x0

    .line 843
    .line 844
    const/16 v27, 0x0

    .line 845
    .line 846
    const/16 v28, 0x0

    .line 847
    .line 848
    move-object/from16 v33, p7

    .line 849
    .line 850
    move-object/from16 v13, v16

    .line 851
    .line 852
    move-wide v15, v7

    .line 853
    invoke-static/range {v13 .. v36}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 854
    .line 855
    .line 856
    move-object/from16 v8, v33

    .line 857
    .line 858
    const/16 v19, 0x0

    .line 859
    .line 860
    const/16 v20, 0x8

    .line 861
    .line 862
    const/high16 v16, 0x42100000    # 36.0f

    .line 863
    .line 864
    const/high16 v17, 0x41000000    # 8.0f

    .line 865
    .line 866
    const/high16 v18, 0x41800000    # 16.0f

    .line 867
    .line 868
    move-object v15, v3

    .line 869
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 870
    .line 871
    .line 872
    move-result-object v14

    .line 873
    iget-object v13, v11, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->text:Ljava/lang/String;

    .line 874
    .line 875
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v4

    .line 879
    check-cast v4, Landroidx/compose/material3/Typography;

    .line 880
    .line 881
    iget-object v4, v4, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 882
    .line 883
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v6

    .line 887
    check-cast v6, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 888
    .line 889
    iget-wide v6, v6, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 890
    .line 891
    const/16 v17, 0x0

    .line 892
    .line 893
    const-wide/16 v18, 0x0

    .line 894
    .line 895
    const/16 v20, 0x0

    .line 896
    .line 897
    const/16 v34, 0x0

    .line 898
    .line 899
    move-object/from16 v32, v4

    .line 900
    .line 901
    move-wide v15, v6

    .line 902
    invoke-static/range {v13 .. v36}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 903
    .line 904
    .line 905
    const/high16 v4, 0x41400000    # 12.0f

    .line 906
    .line 907
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 908
    .line 909
    .line 910
    move-result-object v4

    .line 911
    invoke-static {v8, v4}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 912
    .line 913
    .line 914
    invoke-static {v8}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/ScrollState;

    .line 915
    .line 916
    .line 917
    move-result-object v4

    .line 918
    const/4 v7, 0x0

    .line 919
    invoke-static {v3, v4, v7}, Landroidx/compose/foundation/ImageKt;->scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Z)Landroidx/compose/ui/Modifier;

    .line 920
    .line 921
    .line 922
    move-result-object v4

    .line 923
    new-instance v6, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 924
    .line 925
    new-instance v7, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 926
    .line 927
    const/16 v13, 0xa

    .line 928
    .line 929
    invoke-direct {v7, v13}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 930
    .line 931
    .line 932
    const/high16 v13, 0x41800000    # 16.0f

    .line 933
    .line 934
    const/4 v14, 0x1

    .line 935
    invoke-direct {v6, v13, v14, v7}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 936
    .line 937
    .line 938
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 939
    .line 940
    const/4 v13, 0x6

    .line 941
    invoke-static {v6, v7, v8, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 942
    .line 943
    .line 944
    move-result-object v6

    .line 945
    iget-wide v14, v8, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 946
    .line 947
    ushr-long v16, v14, v38

    .line 948
    .line 949
    xor-long v14, v14, v16

    .line 950
    .line 951
    long-to-int v7, v14

    .line 952
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 953
    .line 954
    .line 955
    move-result-object v13

    .line 956
    invoke-static {v8, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 957
    .line 958
    .line 959
    move-result-object v4

    .line 960
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 961
    .line 962
    .line 963
    iget-boolean v14, v8, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 964
    .line 965
    if-eqz v14, :cond_10

    .line 966
    .line 967
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 968
    .line 969
    .line 970
    goto :goto_f

    .line 971
    :cond_10
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 972
    .line 973
    .line 974
    :goto_f
    invoke-static {v8, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 975
    .line 976
    .line 977
    invoke-static {v8, v13, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 978
    .line 979
    .line 980
    invoke-static {v7, v8, v10, v8, v9}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 981
    .line 982
    .line 983
    invoke-static {v8, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 984
    .line 985
    .line 986
    const/high16 v0, 0x41a00000    # 20.0f

    .line 987
    .line 988
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    invoke-static {v8, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 993
    .line 994
    .line 995
    const v0, 0x3b530d6d

    .line 996
    .line 997
    .line 998
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 999
    .line 1000
    .line 1001
    iget-object v0, v11, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->pages:Ljava/util/List;

    .line 1002
    .line 1003
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v10

    .line 1007
    const/4 v13, 0x0

    .line 1008
    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 1009
    .line 1010
    .line 1011
    move-result v0

    .line 1012
    if-eqz v0, :cond_15

    .line 1013
    .line 1014
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    add-int/lit8 v14, v13, 0x1

    .line 1019
    .line 1020
    if-ltz v13, :cond_14

    .line 1021
    .line 1022
    move-object v4, v0

    .line 1023
    check-cast v4, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 1024
    .line 1025
    invoke-interface/range {v41 .. v41}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    check-cast v0, Landroidx/compose/ui/unit/DpSize;

    .line 1030
    .line 1031
    iget-wide v1, v0, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    .line 1032
    .line 1033
    new-instance v0, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda2;

    .line 1034
    .line 1035
    move-object/from16 v15, p4

    .line 1036
    .line 1037
    const/4 v5, 0x2

    .line 1038
    invoke-direct {v0, v15, v13, v5}, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 1039
    .line 1040
    .line 1041
    const v6, -0x53feb9d7

    .line 1042
    .line 1043
    .line 1044
    invoke-static {v6, v0, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    const/high16 v6, 0x380000

    .line 1049
    .line 1050
    and-int v6, v37, v6

    .line 1051
    .line 1052
    const/high16 v7, 0x100000

    .line 1053
    .line 1054
    if-ne v6, v7, :cond_11

    .line 1055
    .line 1056
    const/4 v6, 0x1

    .line 1057
    goto :goto_11

    .line 1058
    :cond_11
    const/4 v6, 0x0

    .line 1059
    :goto_11
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1060
    .line 1061
    .line 1062
    move-result v9

    .line 1063
    or-int/2addr v6, v9

    .line 1064
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 1065
    .line 1066
    .line 1067
    move-result v9

    .line 1068
    or-int/2addr v6, v9

    .line 1069
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v9

    .line 1073
    if-nez v6, :cond_13

    .line 1074
    .line 1075
    move-object/from16 v6, v42

    .line 1076
    .line 1077
    if-ne v9, v6, :cond_12

    .line 1078
    .line 1079
    goto :goto_12

    .line 1080
    :cond_12
    move-object/from16 v16, v10

    .line 1081
    .line 1082
    move-object/from16 v10, p6

    .line 1083
    .line 1084
    goto :goto_13

    .line 1085
    :cond_13
    move-object/from16 v6, v42

    .line 1086
    .line 1087
    :goto_12
    new-instance v9, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;

    .line 1088
    .line 1089
    const/4 v5, 0x3

    .line 1090
    move-object/from16 v16, v10

    .line 1091
    .line 1092
    move-object/from16 v10, p6

    .line 1093
    .line 1094
    invoke-direct {v9, v10, v4, v13, v5}, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1098
    .line 1099
    .line 1100
    :goto_13
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 1101
    .line 1102
    and-int/lit8 v5, v37, 0xe

    .line 1103
    .line 1104
    or-int/lit16 v5, v5, 0x6000

    .line 1105
    .line 1106
    shl-int/lit8 v13, v37, 0x3

    .line 1107
    .line 1108
    and-int/lit16 v13, v13, 0x380

    .line 1109
    .line 1110
    or-int/2addr v5, v13

    .line 1111
    const/high16 v13, 0x70000

    .line 1112
    .line 1113
    and-int v13, v37, v13

    .line 1114
    .line 1115
    or-int/2addr v5, v13

    .line 1116
    move-object/from16 v42, v6

    .line 1117
    .line 1118
    move/from16 v39, v7

    .line 1119
    .line 1120
    move-object v7, v9

    .line 1121
    const/4 v13, 0x1

    .line 1122
    const/16 v40, 0x2

    .line 1123
    .line 1124
    move-object/from16 v6, p5

    .line 1125
    .line 1126
    move v9, v5

    .line 1127
    move-object v5, v0

    .line 1128
    move-object v0, v12

    .line 1129
    move-object v12, v3

    .line 1130
    move-object/from16 v3, p1

    .line 1131
    .line 1132
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->OnThisDayPageItem-S8JMNoI(Landroid/content/Context;JLorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/page/PageSummary;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 1133
    .line 1134
    .line 1135
    move-object v3, v12

    .line 1136
    move v13, v14

    .line 1137
    move-object/from16 v10, v16

    .line 1138
    .line 1139
    move-object/from16 v12, p0

    .line 1140
    .line 1141
    goto/16 :goto_10

    .line 1142
    .line 1143
    :cond_14
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 1144
    .line 1145
    .line 1146
    const/4 v0, 0x0

    .line 1147
    throw v0

    .line 1148
    :cond_15
    move-object/from16 v15, p4

    .line 1149
    .line 1150
    move-object/from16 v10, p6

    .line 1151
    .line 1152
    move-object v12, v3

    .line 1153
    const/4 v7, 0x0

    .line 1154
    const/4 v13, 0x1

    .line 1155
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1156
    .line 1157
    .line 1158
    const/high16 v0, 0x41800000    # 16.0f

    .line 1159
    .line 1160
    invoke-static {v12, v0}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v0

    .line 1164
    invoke-static {v8, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1168
    .line 1169
    .line 1170
    const/high16 v0, 0x41000000    # 8.0f

    .line 1171
    .line 1172
    invoke-static {v12, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v0

    .line 1176
    invoke-static {v8, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1183
    .line 1184
    .line 1185
    goto :goto_14

    .line 1186
    :cond_16
    move-object/from16 v15, p4

    .line 1187
    .line 1188
    move-object v11, v10

    .line 1189
    move-object v10, v12

    .line 1190
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1191
    .line 1192
    .line 1193
    :goto_14
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v9

    .line 1197
    if-eqz v9, :cond_17

    .line 1198
    .line 1199
    new-instance v0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda4;

    .line 1200
    .line 1201
    move-object/from16 v1, p0

    .line 1202
    .line 1203
    move-object/from16 v2, p1

    .line 1204
    .line 1205
    move/from16 v4, p3

    .line 1206
    .line 1207
    move-object/from16 v6, p5

    .line 1208
    .line 1209
    move/from16 v8, p8

    .line 1210
    .line 1211
    move-object v7, v10

    .line 1212
    move-object v3, v11

    .line 1213
    move-object v5, v15

    .line 1214
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    .line 1215
    .line 1216
    .line 1217
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 1218
    .line 1219
    :cond_17
    return-void
.end method

.method public static final OnThisDayModule(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V
    .locals 15

    .line 1
    move-object/from16 v11, p9

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const v0, 0x17bcadb6

    .line 7
    .line 8
    .line 9
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    :goto_0
    or-int v0, p10, v0

    .line 22
    .line 23
    move-object/from16 v2, p1

    .line 24
    .line 25
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const/16 v1, 0x20

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/16 v1, 0x10

    .line 35
    .line 36
    :goto_1
    or-int/2addr v0, v1

    .line 37
    move-object/from16 v9, p3

    .line 38
    .line 39
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x800

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v1, 0x400

    .line 49
    .line 50
    :goto_2
    or-int/2addr v0, v1

    .line 51
    move-object/from16 v10, p4

    .line 52
    .line 53
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    const/16 v1, 0x4000

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    const/16 v1, 0x2000

    .line 63
    .line 64
    :goto_3
    or-int/2addr v0, v1

    .line 65
    move-object/from16 v6, p5

    .line 66
    .line 67
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    const/high16 v1, 0x20000

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_4
    const/high16 v1, 0x10000

    .line 77
    .line 78
    :goto_4
    or-int/2addr v0, v1

    .line 79
    move-object/from16 v7, p6

    .line 80
    .line 81
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    const/high16 v1, 0x100000

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_5
    const/high16 v1, 0x80000

    .line 91
    .line 92
    :goto_5
    or-int/2addr v0, v1

    .line 93
    move-object/from16 v3, p7

    .line 94
    .line 95
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_6

    .line 100
    .line 101
    const/high16 v1, 0x800000

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_6
    const/high16 v1, 0x400000

    .line 105
    .line 106
    :goto_6
    or-int/2addr v0, v1

    .line 107
    move-object/from16 v12, p8

    .line 108
    .line 109
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_7

    .line 114
    .line 115
    const/high16 v1, 0x4000000

    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_7
    const/high16 v1, 0x2000000

    .line 119
    .line 120
    :goto_7
    or-int/2addr v0, v1

    .line 121
    const v1, 0x2492493

    .line 122
    .line 123
    .line 124
    and-int/2addr v1, v0

    .line 125
    const v4, 0x2492492

    .line 126
    .line 127
    .line 128
    if-eq v1, v4, :cond_8

    .line 129
    .line 130
    const/4 v1, 0x1

    .line 131
    goto :goto_8

    .line 132
    :cond_8
    const/4 v1, 0x0

    .line 133
    :goto_8
    and-int/lit8 v4, v0, 0x1

    .line 134
    .line 135
    invoke-virtual {v11, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_9

    .line 140
    .line 141
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 142
    .line 143
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    move-object v4, v1

    .line 148
    check-cast v4, Landroid/content/Context;

    .line 149
    .line 150
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 151
    .line 152
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 157
    .line 158
    iget-wide v13, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->backgroundColor:J

    .line 159
    .line 160
    new-instance v1, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    move-object v5, p0

    .line 163
    move-object/from16 v8, p2

    .line 164
    .line 165
    invoke-direct/range {v1 .. v8}, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 166
    .line 167
    .line 168
    const v2, -0x636f7498

    .line 169
    .line 170
    .line 171
    invoke-static {v2, v1, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    shl-int/lit8 v2, v0, 0x3

    .line 176
    .line 177
    and-int/lit8 v2, v2, 0x70

    .line 178
    .line 179
    const/high16 v3, 0x30000000

    .line 180
    .line 181
    or-int/2addr v2, v3

    .line 182
    shl-int/lit8 v3, v0, 0x9

    .line 183
    .line 184
    const/high16 v4, 0x380000

    .line 185
    .line 186
    and-int/2addr v4, v3

    .line 187
    or-int/2addr v2, v4

    .line 188
    const/high16 v4, 0x1c00000

    .line 189
    .line 190
    and-int/2addr v3, v4

    .line 191
    or-int/2addr v2, v3

    .line 192
    const/high16 v3, 0xe000000

    .line 193
    .line 194
    and-int/2addr v0, v3

    .line 195
    or-int/2addr v0, v2

    .line 196
    move-wide v5, v13

    .line 197
    const/16 v13, 0x11

    .line 198
    .line 199
    move v12, v0

    .line 200
    const/4 v0, 0x0

    .line 201
    const v2, 0x7f1204b2

    .line 202
    .line 203
    .line 204
    const v3, 0x7f12020d

    .line 205
    .line 206
    .line 207
    const/4 v4, 0x0

    .line 208
    move-object v7, v9

    .line 209
    move-object v8, v10

    .line 210
    move-object/from16 v9, p8

    .line 211
    .line 212
    move-object v10, v1

    .line 213
    move-object v1, p0

    .line 214
    invoke-static/range {v0 .. v13}, Lorg/wikipedia/feed/ForYouCardKt;->CommunityModuleContainer-Yod850M(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;IILjava/lang/Integer;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 215
    .line 216
    .line 217
    goto :goto_9

    .line 218
    :cond_9
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 219
    .line 220
    .line 221
    :goto_9
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    if-eqz v0, :cond_a

    .line 226
    .line 227
    new-instance v1, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda3;

    .line 228
    .line 229
    const/4 v12, 0x2

    .line 230
    move-object v2, p0

    .line 231
    move-object/from16 v3, p1

    .line 232
    .line 233
    move-object/from16 v4, p2

    .line 234
    .line 235
    move-object/from16 v5, p3

    .line 236
    .line 237
    move-object/from16 v6, p4

    .line 238
    .line 239
    move-object/from16 v7, p5

    .line 240
    .line 241
    move-object/from16 v8, p6

    .line 242
    .line 243
    move-object/from16 v9, p7

    .line 244
    .line 245
    move-object/from16 v10, p8

    .line 246
    .line 247
    move/from16 v11, p10

    .line 248
    .line 249
    invoke-direct/range {v1 .. v12}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/Function;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    .line 250
    .line 251
    .line 252
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 253
    .line 254
    :cond_a
    return-void
.end method

.method public static final OnThisDayPageItem-S8JMNoI(Landroid/content/Context;JLorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/page/PageSummary;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V
    .locals 23

    .line 1
    move-object/from16 v1, p4

    .line 2
    .line 3
    move-object/from16 v7, p6

    .line 4
    .line 5
    move-object/from16 v8, p8

    .line 6
    .line 7
    move/from16 v9, p9

    .line 8
    .line 9
    const v0, -0x7b36c617

    .line 10
    .line 11
    .line 12
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v0, v9, 0x6

    .line 16
    .line 17
    move-object/from16 v4, p0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int/2addr v0, v9

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v0, v9

    .line 33
    :goto_1
    and-int/lit8 v2, v9, 0x30

    .line 34
    .line 35
    move-wide/from16 v10, p1

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    invoke-virtual {v8, v10, v11}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

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
    and-int/lit16 v2, v9, 0x180

    .line 52
    .line 53
    move-object/from16 v5, p3

    .line 54
    .line 55
    if-nez v2, :cond_5

    .line 56
    .line 57
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    const/16 v2, 0x100

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v2, 0x80

    .line 67
    .line 68
    :goto_3
    or-int/2addr v0, v2

    .line 69
    :cond_5
    and-int/lit16 v2, v9, 0xc00

    .line 70
    .line 71
    if-nez v2, :cond_7

    .line 72
    .line 73
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int/2addr v0, v2

    .line 85
    :cond_7
    and-int/lit16 v2, v9, 0x6000

    .line 86
    .line 87
    move-object/from16 v6, p5

    .line 88
    .line 89
    if-nez v2, :cond_9

    .line 90
    .line 91
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int/2addr v0, v2

    .line 103
    :cond_9
    const/high16 v2, 0x30000

    .line 104
    .line 105
    and-int/2addr v2, v9

    .line 106
    if-nez v2, :cond_b

    .line 107
    .line 108
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_a

    .line 113
    .line 114
    const/high16 v2, 0x20000

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_a
    const/high16 v2, 0x10000

    .line 118
    .line 119
    :goto_6
    or-int/2addr v0, v2

    .line 120
    :cond_b
    const/high16 v2, 0x180000

    .line 121
    .line 122
    and-int/2addr v2, v9

    .line 123
    if-nez v2, :cond_d

    .line 124
    .line 125
    move-object/from16 v2, p7

    .line 126
    .line 127
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    if-eqz v12, :cond_c

    .line 132
    .line 133
    const/high16 v12, 0x100000

    .line 134
    .line 135
    goto :goto_7

    .line 136
    :cond_c
    const/high16 v12, 0x80000

    .line 137
    .line 138
    :goto_7
    or-int/2addr v0, v12

    .line 139
    goto :goto_8

    .line 140
    :cond_d
    move-object/from16 v2, p7

    .line 141
    .line 142
    :goto_8
    const v12, 0x92493

    .line 143
    .line 144
    .line 145
    and-int/2addr v12, v0

    .line 146
    const v13, 0x92492

    .line 147
    .line 148
    .line 149
    if-eq v12, v13, :cond_e

    .line 150
    .line 151
    const/4 v12, 0x1

    .line 152
    goto :goto_9

    .line 153
    :cond_e
    const/4 v12, 0x0

    .line 154
    :goto_9
    and-int/lit8 v13, v0, 0x1

    .line 155
    .line 156
    invoke-virtual {v8, v13, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    if-eqz v12, :cond_12

    .line 161
    .line 162
    const/high16 v12, 0x41800000    # 16.0f

    .line 163
    .line 164
    invoke-static {v12}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    sget-object v13, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 169
    .line 170
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v16

    .line 174
    move-object/from16 v14, v16

    .line 175
    .line 176
    check-cast v14, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 177
    .line 178
    iget-wide v3, v14, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 179
    .line 180
    const/high16 v14, 0x3f800000    # 1.0f

    .line 181
    .line 182
    invoke-static {v14, v3, v4}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 191
    .line 192
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 193
    .line 194
    invoke-static {v10, v11}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 195
    .line 196
    .line 197
    move-result v13

    .line 198
    const/high16 v18, 0x42c80000    # 100.0f

    .line 199
    .line 200
    sub-float v13, v13, v18

    .line 201
    .line 202
    const/high16 v15, 0x43f00000    # 480.0f

    .line 203
    .line 204
    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    .line 205
    .line 206
    .line 207
    move-result v13

    .line 208
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 209
    .line 210
    invoke-static {v15, v13}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    const/high16 v15, 0x70000

    .line 215
    .line 216
    and-int/2addr v0, v15

    .line 217
    const/high16 v15, 0x20000

    .line 218
    .line 219
    if-ne v0, v15, :cond_f

    .line 220
    .line 221
    const/16 v17, 0x1

    .line 222
    .line 223
    goto :goto_a

    .line 224
    :cond_f
    const/16 v17, 0x0

    .line 225
    .line 226
    :goto_a
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    or-int v0, v17, v0

    .line 231
    .line 232
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v15

    .line 236
    if-nez v0, :cond_10

    .line 237
    .line 238
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 239
    .line 240
    if-ne v15, v0, :cond_11

    .line 241
    .line 242
    :cond_10
    new-instance v15, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda5;

    .line 243
    .line 244
    const/4 v0, 0x5

    .line 245
    invoke-direct {v15, v7, v1, v0}, Lorg/wikipedia/feed/topread/TopReadModuleKt$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/dataclient/page/PageSummary;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    :cond_11
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 252
    .line 253
    new-instance v0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda5;

    .line 254
    .line 255
    const/4 v6, 0x7

    .line 256
    move-wide/from16 v16, v3

    .line 257
    .line 258
    move-object/from16 v4, p0

    .line 259
    .line 260
    move-object/from16 v3, p5

    .line 261
    .line 262
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 263
    .line 264
    .line 265
    const v1, -0x57fd938c

    .line 266
    .line 267
    .line 268
    invoke-static {v1, v0, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 269
    .line 270
    .line 271
    move-result-object v19

    .line 272
    const/16 v21, 0x0

    .line 273
    .line 274
    const/16 v22, 0x2e4

    .line 275
    .line 276
    const/4 v10, 0x0

    .line 277
    move-object v11, v12

    .line 278
    move-object v9, v13

    .line 279
    move-object v8, v15

    .line 280
    move-wide/from16 v12, v16

    .line 281
    .line 282
    move-object/from16 v17, v14

    .line 283
    .line 284
    const-wide/16 v14, 0x0

    .line 285
    .line 286
    const/16 v16, 0x0

    .line 287
    .line 288
    const/16 v18, 0x0

    .line 289
    .line 290
    move-object/from16 v20, p8

    .line 291
    .line 292
    invoke-static/range {v8 .. v22}, Landroidx/compose/material3/SurfaceKt;->Surface-o_FOJdg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 293
    .line 294
    .line 295
    goto :goto_b

    .line 296
    :cond_12
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 297
    .line 298
    .line 299
    :goto_b
    invoke-virtual/range {p8 .. p8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 300
    .line 301
    .line 302
    move-result-object v10

    .line 303
    if-eqz v10, :cond_13

    .line 304
    .line 305
    new-instance v0, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;

    .line 306
    .line 307
    move-object/from16 v1, p0

    .line 308
    .line 309
    move-wide/from16 v2, p1

    .line 310
    .line 311
    move-object/from16 v4, p3

    .line 312
    .line 313
    move-object/from16 v5, p4

    .line 314
    .line 315
    move-object/from16 v6, p5

    .line 316
    .line 317
    move-object/from16 v8, p7

    .line 318
    .line 319
    move/from16 v9, p9

    .line 320
    .line 321
    invoke-direct/range {v0 .. v9}, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;JLorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/page/PageSummary;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    .line 322
    .line 323
    .line 324
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 325
    .line 326
    :cond_13
    return-void
.end method

.method public static awaitTimeout()Lokio/AsyncTimeout;
    .locals 9

    .line 1
    sget-object v0, Lokio/AsyncTimeout;->queue:Lokio/PriorityQueue;

    .line 2
    .line 3
    iget-object v1, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, [Lokio/AsyncTimeout;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    aget-object v1, v1, v2

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    sget-object v1, Lokio/AsyncTimeout;->condition:Ljava/util/concurrent/locks/Condition;

    .line 18
    .line 19
    sget-wide v6, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    .line 20
    .line 21
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    invoke-interface {v1, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, [Lokio/AsyncTimeout;

    .line 29
    .line 30
    aget-object v0, v0, v2

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    sub-long/2addr v0, v4

    .line 39
    sget-wide v4, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    .line 40
    .line 41
    cmp-long v0, v0, v4

    .line 42
    .line 43
    if-ltz v0, :cond_0

    .line 44
    .line 45
    sget-object v0, Lokio/AsyncTimeout;->idleSentinel:Lokio/AsyncTimeout;

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_0
    return-object v3

    .line 49
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    iget-wide v6, v1, Lokio/AsyncTimeout;->timeoutAt:J

    .line 54
    .line 55
    sub-long/2addr v6, v4

    .line 56
    const-wide/16 v4, 0x0

    .line 57
    .line 58
    cmp-long v2, v6, v4

    .line 59
    .line 60
    if-lez v2, :cond_2

    .line 61
    .line 62
    sget-object v0, Lokio/AsyncTimeout;->condition:Ljava/util/concurrent/locks/Condition;

    .line 63
    .line 64
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 65
    .line 66
    invoke-interface {v0, v6, v7, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 67
    .line 68
    .line 69
    return-object v3

    .line 70
    :cond_2
    invoke-virtual {v0, v1}, Lokio/PriorityQueue;->remove(Lokio/AsyncTimeout;)V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x2

    .line 74
    iput v0, v1, Lokio/AsyncTimeout;->state:I

    .line 75
    .line 76
    return-object v1
.end method

.method public static colorToRgbaString(I)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/DecimalFormat;

    .line 8
    .line 9
    const-string v1, "#.###"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    shr-int/lit8 v1, p0, 0x18

    .line 15
    .line 16
    and-int/lit16 v1, v1, 0xff

    .line 17
    .line 18
    int-to-float v1, v1

    .line 19
    const/high16 v2, 0x437f0000    # 255.0f

    .line 20
    .line 21
    div-float/2addr v1, v2

    .line 22
    float-to-double v1, v1

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    shr-int/lit8 v1, p0, 0x10

    .line 28
    .line 29
    and-int/lit16 v1, v1, 0xff

    .line 30
    .line 31
    shr-int/lit8 v2, p0, 0x8

    .line 32
    .line 33
    and-int/lit16 v2, v2, 0xff

    .line 34
    .line 35
    and-int/lit16 p0, p0, 0xff

    .line 36
    .line 37
    const-string v3, "rgba("

    .line 38
    .line 39
    const-string v4, ", "

    .line 40
    .line 41
    invoke-static {v1, v2, v3, v4, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p0, ")"

    .line 55
    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method public static enqueue()V
    .locals 13

    .line 1
    sget-boolean v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->IN_PROGRESS:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v3, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v2, Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v2, v1}, Landroidx/work/impl/utils/NetworkRequestCompat;-><init>(Landroid/net/NetworkRequest;)V

    .line 22
    .line 23
    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v4, 0x18

    .line 27
    .line 28
    if-lt v1, v4, :cond_1

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    move-object v12, v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_1
    new-instance v1, Landroidx/work/Constraints;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const-wide/16 v8, -0x1

    .line 46
    .line 47
    move-wide v10, v8

    .line 48
    invoke-direct/range {v1 .. v12}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Landroidx/compose/runtime/Latch;

    .line 52
    .line 53
    const-class v2, Lorg/wikipedia/savedpages/SavedPageSyncService;

    .line 54
    .line 55
    invoke-direct {v0, v2}, Landroidx/compose/runtime/Latch;-><init>(Ljava/lang/Class;)V

    .line 56
    .line 57
    .line 58
    const-wide/16 v2, 0x2

    .line 59
    .line 60
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 61
    .line 62
    invoke-virtual {v0, v2, v3, v4}, Landroidx/compose/runtime/Latch;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, v0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Landroidx/work/impl/model/WorkSpec;

    .line 68
    .line 69
    iput-object v1, v2, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/compose/runtime/Latch;->build()Landroidx/work/OneTimeWorkRequest;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 76
    .line 77
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v1}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v2, "savePageSyncService"

    .line 86
    .line 87
    sget-object v3, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 88
    .line 89
    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/impl/WorkManagerImpl;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Data$Builder;

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public static get(Ljava/lang/String;)Lokhttp3/MediaType;
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lokhttp3/MediaType;->TYPE_SUBTYPE:Lkotlin/text/Regex;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, p0}, Lkotlin/text/Regex;->matchAt(ILjava/lang/String;)Lkotlin/text/MatcherMatchResult;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/16 v2, 0x22

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v0, :cond_7

    .line 15
    .line 16
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lkotlin/collections/ReversedListReadOnly;

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-virtual {v4, v5}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/lang/String;

    .line 28
    .line 29
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 30
    .line 31
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    check-cast v7, Lkotlin/collections/ReversedListReadOnly;

    .line 43
    .line 44
    const/4 v8, 0x2

    .line 45
    invoke-virtual {v7, v8}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    check-cast v7, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v7, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v7, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget v0, v0, Lkotlin/ranges/IntProgression;->last:I

    .line 68
    .line 69
    :goto_0
    add-int/2addr v0, v5

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-ge v0, v9, :cond_6

    .line 75
    .line 76
    sget-object v9, Lokhttp3/MediaType;->PARAMETER:Lkotlin/text/Regex;

    .line 77
    .line 78
    invoke-virtual {v9, v0, p0}, Lkotlin/text/Regex;->matchAt(ILjava/lang/String;)Lkotlin/text/MatcherMatchResult;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    if-eqz v9, :cond_5

    .line 83
    .line 84
    iget-object v0, v9, Lkotlin/text/MatcherMatchResult;->groups:Lkotlin/text/MatcherMatchResult$groups$1;

    .line 85
    .line 86
    invoke-virtual {v0, v5}, Lkotlin/text/MatcherMatchResult$groups$1;->get(I)Lkotlin/text/MatchGroup;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    if-eqz v10, :cond_0

    .line 91
    .line 92
    iget-object v10, v10, Lkotlin/text/MatchGroup;->value:Ljava/lang/String;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_0
    move-object v10, v3

    .line 96
    :goto_1
    if-nez v10, :cond_1

    .line 97
    .line 98
    invoke-virtual {v9}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget v0, v0, Lkotlin/ranges/IntProgression;->last:I

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v0, v8}, Lkotlin/text/MatcherMatchResult$groups$1;->get(I)Lkotlin/text/MatchGroup;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    if-eqz v11, :cond_2

    .line 110
    .line 111
    iget-object v11, v11, Lkotlin/text/MatchGroup;->value:Ljava/lang/String;

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    move-object v11, v3

    .line 115
    :goto_2
    if-nez v11, :cond_3

    .line 116
    .line 117
    const/4 v11, 0x3

    .line 118
    invoke-virtual {v0, v11}, Lkotlin/text/MatcherMatchResult$groups$1;->get(I)Lkotlin/text/MatchGroup;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    iget-object v11, v0, Lkotlin/text/MatchGroup;->value:Ljava/lang/String;

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_3
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-lez v0, :cond_4

    .line 133
    .line 134
    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    const/16 v12, 0x27

    .line 139
    .line 140
    invoke-static {v0, v12, v1}, Lcoil3/util/UtilsKt;->equals(CCZ)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_4

    .line 145
    .line 146
    invoke-static {v11, v12}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;C)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-le v0, v8, :cond_4

    .line 157
    .line 158
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    sub-int/2addr v0, v5

    .line 163
    invoke-virtual {v11, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    :cond_4
    :goto_3
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    invoke-virtual {v9}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget v0, v0, Lkotlin/ranges/IntProgression;->last:I

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    const-string v1, "\" for: \""

    .line 185
    .line 186
    const-string v4, "Parameter is not formatted correctly: \""

    .line 187
    .line 188
    invoke-static {v4, v0, v1, p0, v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 189
    .line 190
    .line 191
    return-object v3

    .line 192
    :cond_6
    new-instance v0, Lokhttp3/MediaType;

    .line 193
    .line 194
    new-array v1, v1, [Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    check-cast v1, [Ljava/lang/String;

    .line 201
    .line 202
    invoke-direct {v0, p0, v4, v6, v1}, Lokhttp3/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-object v0

    .line 206
    :cond_7
    const-string v0, "No subtype found for: \""

    .line 207
    .line 208
    invoke-static {v2, v0, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    return-object v3
.end method

.method public static insertIntoQueue(Lokio/AsyncTimeout;)V
    .locals 8

    .line 1
    sget-object v0, Lokio/AsyncTimeout;->idleSentinel:Lokio/AsyncTimeout;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lokio/AsyncTimeout;

    .line 7
    .line 8
    invoke-direct {v0}, Lokio/AsyncTimeout;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lokio/AsyncTimeout;->idleSentinel:Lokio/AsyncTimeout;

    .line 12
    .line 13
    new-instance v0, Lokio/AsyncTimeout$Watchdog;

    .line 14
    .line 15
    const-string v2, "Okio Watchdog"

    .line 16
    .line 17
    invoke-direct {v0, v2}, Lokio/AsyncTimeout$Watchdog;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    iget-wide v4, p0, Lokio/Timeout;->timeoutNanos:J

    .line 31
    .line 32
    iget-boolean v0, p0, Lokio/Timeout;->hasDeadline:Z

    .line 33
    .line 34
    const-wide/16 v6, 0x0

    .line 35
    .line 36
    cmp-long v6, v4, v6

    .line 37
    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    sub-long/2addr v6, v2

    .line 47
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    add-long/2addr v4, v2

    .line 52
    iput-wide v4, p0, Lokio/AsyncTimeout;->timeoutAt:J

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    if-eqz v6, :cond_2

    .line 56
    .line 57
    add-long/2addr v2, v4

    .line 58
    iput-wide v2, p0, Lokio/AsyncTimeout;->timeoutAt:J

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    if-eqz v0, :cond_5

    .line 62
    .line 63
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    iput-wide v2, p0, Lokio/AsyncTimeout;->timeoutAt:J

    .line 68
    .line 69
    :goto_0
    sget-object v0, Lokio/AsyncTimeout;->queue:Lokio/PriorityQueue;

    .line 70
    .line 71
    iget v2, v0, Lokio/PriorityQueue;->size:I

    .line 72
    .line 73
    add-int/2addr v2, v1

    .line 74
    iput v2, v0, Lokio/PriorityQueue;->size:I

    .line 75
    .line 76
    iget-object v3, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v3, [Lokio/AsyncTimeout;

    .line 79
    .line 80
    array-length v4, v3

    .line 81
    if-ne v2, v4, :cond_3

    .line 82
    .line 83
    mul-int/lit8 v4, v2, 0x2

    .line 84
    .line 85
    new-array v4, v4, [Lokio/AsyncTimeout;

    .line 86
    .line 87
    const/16 v5, 0xe

    .line 88
    .line 89
    const/4 v6, 0x0

    .line 90
    invoke-static {v3, v4, v6, v6, v5}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 91
    .line 92
    .line 93
    iput-object v4, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 94
    .line 95
    :cond_3
    invoke-virtual {v0, v2, p0}, Lokio/PriorityQueue;->heapifyUp(ILokio/AsyncTimeout;)V

    .line 96
    .line 97
    .line 98
    iget p0, p0, Lokio/AsyncTimeout;->index:I

    .line 99
    .line 100
    if-ne p0, v1, :cond_4

    .line 101
    .line 102
    sget-object p0, Lokio/AsyncTimeout;->condition:Ljava/util/concurrent/locks/Condition;

    .line 103
    .line 104
    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 105
    .line 106
    .line 107
    :cond_4
    return-void

    .line 108
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    .line 109
    .line 110
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 111
    .line 112
    .line 113
    throw p0
.end method

.method public static maybePauseAndGetEndDate()Ljava/util/Date;
    .locals 7

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    const v0, 0x7f12068d

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v3, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->dbDateParse(Ljava/lang/String;)Ljava/util/Date;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/Date;

    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    cmp-long v3, v3, v1

    .line 40
    .line 41
    const/4 v4, 0x7

    .line 42
    const/4 v5, 0x6

    .line 43
    const/4 v6, 0x0

    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v3, Ljava/util/Date;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    new-instance v0, Ljava/util/Date;

    .line 72
    .line 73
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsPauseDate(Ljava/util/Date;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    move-object v6, v0

    .line 81
    :cond_3
    :goto_2
    sget v0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->totalEdits:I

    .line 82
    .line 83
    const/16 v1, 0x64

    .line 84
    .line 85
    if-gt v0, v1, :cond_4

    .line 86
    .line 87
    sget v0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->totalReverts:I

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_4
    sget v1, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->totalReverts:I

    .line 91
    .line 92
    int-to-float v1, v1

    .line 93
    int-to-float v0, v0

    .line 94
    div-float/2addr v1, v0

    .line 95
    const/high16 v0, 0x42c80000    # 100.0f

    .line 96
    .line 97
    mul-float/2addr v1, v0

    .line 98
    float-to-double v0, v1

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    double-to-float v0, v0

    .line 104
    float-to-int v0, v0

    .line 105
    :goto_3
    const/4 v1, 0x5

    .line 106
    if-le v0, v1, :cond_5

    .line 107
    .line 108
    sget v0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->totalReverts:I

    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    const v2, 0x7f12068e

    .line 112
    .line 113
    .line 114
    invoke-static {v2, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-le v0, v1, :cond_5

    .line 119
    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-instance v1, Ljava/util/Date;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsPauseDate(Ljava/util/Date;)V

    .line 140
    .line 141
    .line 142
    sget v1, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->totalReverts:I

    .line 143
    .line 144
    invoke-static {v2, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    return-object v0

    .line 155
    :cond_5
    return-object v6
.end method

.method public static newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lorg/wikipedia/categories/CategoryActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "title"

    .line 9
    .line 10
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method private final onDeleteSelected$org$wikipedia$notifications$NotificationActivity$MultiSelectCallback()V
    .locals 0

    .line 1
    return-void
.end method

.method public static showSuggestedEditsLocalNotification(Landroid/content/Context;I)V
    .locals 14

    .line 1
    sget v0, Lorg/wikipedia/main/MainActivity;->$r8$clinit:I

    .line 2
    .line 3
    invoke-static {p0}, Lorg/wikipedia/util/UriUtil;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "goToSETab"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v1, "local"

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    invoke-static {v0, v2, v3, v1}, Lorg/wikipedia/notifications/NotificationPresenter;->addIntentExtras(Landroid/content/Intent;JLjava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v13

    .line 25
    const/4 v0, 0x0

    .line 26
    const/16 v1, 0xc

    .line 27
    .line 28
    invoke-static {p0, v2, v3, v0, v1}, Lorg/wikipedia/notifications/NotificationPresenter;->getDefaultBuilder$default(Landroid/content/Context;JLorg/wikipedia/notifications/NotificationCategory;I)Landroidx/core/app/NotificationCompat$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const v0, 0x7f1208fd

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const p1, 0x7f0801a4

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    const v12, 0x7f06002b

    .line 61
    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v10, 0x0

    .line 65
    move-object v4, p0

    .line 66
    invoke-static/range {v4 .. v13}, Lorg/wikipedia/notifications/NotificationPresenter;->showNotification(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILandroid/content/Intent;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public static startPollTask(Landroid/content/Context;)V
    .locals 9

    .line 1
    const-string v0, "alarm"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Landroid/app/AlarmManager;

    .line 12
    .line 13
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const v5, 0x7f0a004e

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    sget-object v5, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 31
    .line 32
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isSuggestedEditsReactivationTestEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v5, :cond_3

    .line 38
    .line 39
    const-string v5, "org.wikipedia"

    .line 40
    .line 41
    const-string v7, "beta"

    .line 42
    .line 43
    invoke-static {v5, v7, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v7, "alpha"

    .line 51
    .line 52
    invoke-static {v5, v7, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const-string v7, "dev"

    .line 60
    .line 61
    invoke-static {v5, v7, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    const/16 v5, 0xa

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    :goto_1
    const/4 v5, 0x1

    .line 72
    :goto_2
    div-int/2addr v2, v5

    .line 73
    int-to-long v7, v2

    .line 74
    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v7

    .line 78
    new-instance v0, Landroid/content/Intent;

    .line 79
    .line 80
    const-class v2, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;

    .line 81
    .line 82
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .line 84
    .line 85
    const-string v2, "action_notification_poll"

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    const/high16 v2, 0xc000000

    .line 91
    .line 92
    invoke-static {p0, v6, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    const/4 v2, 0x2

    .line 100
    move-wide v5, v7

    .line 101
    move-object v7, p0

    .line 102
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    move-object p0, v0

    .line 108
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public static toggleSyntaxAroundCurrentSelection(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-interface {p1, p0, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-interface {p1, v0, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_0

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-interface {p1, p0, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-interface {p1, p0, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    neg-int p0, p0

    .line 79
    const-string p2, ""

    .line 80
    .line 81
    invoke-interface {p1, p2, p0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    invoke-interface {p1, v3}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v1, p2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v1, p3, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    sub-int/2addr v1, p3

    .line 125
    invoke-interface {v0, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    :goto_0
    invoke-interface {p1, p2, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 149
    .line 150
    .line 151
    move-result p3

    .line 152
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    sub-int/2addr p3, p2

    .line 157
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    invoke-interface {p1, p3, p0}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 162
    .line 163
    .line 164
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public checkAllItems(Landroidx/appcompat/view/ActionMode;Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/wikipedia/notifications/NotificationActivity;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity;->notificationContainerList:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    move-object v3, v2

    .line 27
    check-cast v3, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 28
    .line 29
    iget v3, v3, Lorg/wikipedia/notifications/NotificationListItemContainer;->type:I

    .line 30
    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    const/16 v2, 0xa

    .line 41
    .line 42
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 64
    .line 65
    iput-boolean p2, v2, Lorg/wikipedia/notifications/NotificationListItemContainer;->selected:Z

    .line 66
    .line 67
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getSelectedItemCount()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const v1, 0x7f090399

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    xor-int/lit8 v1, p2, 0x1

    .line 96
    .line 97
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const v0, 0x7f0903fb

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 115
    .line 116
    if-eqz p0, :cond_4

    .line 117
    .line 118
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    if-eqz p0, :cond_3

    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 129
    .line 130
    .line 131
    :cond_3
    return-void

    .line 132
    :cond_4
    const-string p0, "binding"

    .line 133
    .line 134
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const/4 p0, 0x0

    .line 138
    throw p0
.end method

.method public getAllSelected()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getSelectedLists()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    move v2, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    move v2, v1

    .line 31
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    instance-of v3, v3, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    if-ltz v2, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static {}, Landroidx/room/Room;->throwCountOverflow()V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    throw p0

    .line 55
    :cond_3
    :goto_1
    if-ne v0, v2, :cond_4

    .line 56
    .line 57
    const/4 p0, 0x1

    .line 58
    return p0

    .line 59
    :cond_4
    return v1
.end method

.method public onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->$r8$classId:I

    .line 8
    .line 9
    const v4, 0x7f0903a1

    .line 10
    .line 11
    .line 12
    const v5, 0x7f090399

    .line 13
    .line 14
    .line 15
    const v6, 0x7f0903fb

    .line 16
    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    iget-object v8, v0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v9, 0x1

    .line 22
    const/4 v10, 0x0

    .line 23
    packed-switch v3, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    :pswitch_0
    invoke-virtual/range {p0 .. p2}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->onActionItemClicked$okhttp3$MediaType$Companion(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :pswitch_1
    check-cast v8, Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p0 .. p2}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->onActionItemClicked$okhttp3$MediaType$Companion(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 37
    .line 38
    .line 39
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ne v0, v5, :cond_4

    .line 44
    .line 45
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 46
    .line 47
    new-instance v11, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 48
    .line 49
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 50
    .line 51
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v15

    .line 55
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 56
    .line 57
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v16

    .line 61
    const-string v17, "app_patroller_experience"

    .line 62
    .line 63
    const-string v12, "delete_messages_init"

    .line 64
    .line 65
    const-string v13, "pt_warning_messages"

    .line 66
    .line 67
    const-string v14, ""

    .line 68
    .line 69
    invoke-direct/range {v11 .. v17}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v11}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, v8, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->selectedItems:Ljava/util/ArrayList;

    .line 76
    .line 77
    iget-object v3, v8, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->adapter:Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 78
    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    iget-object v3, v3, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->templatesList:Ljava/util/ArrayList;

    .line 82
    .line 83
    new-instance v4, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_1

    .line 97
    .line 98
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    move-object v7, v5

    .line 103
    check-cast v7, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 104
    .line 105
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-nez v7, :cond_0

    .line 110
    .line 111
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_2

    .line 124
    .line 125
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 130
    .line 131
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    new-array v3, v9, [Ljava/lang/Object;

    .line 144
    .line 145
    aput-object v0, v3, v10

    .line 146
    .line 147
    const v0, 0x7f120459

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8, v0, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v1, v0}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->updateAndNotifyAdapter()V

    .line 158
    .line 159
    .line 160
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_3
    const-string v0, "adapter"

    .line 176
    .line 177
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v7

    .line 181
    :cond_4
    if-ne v0, v6, :cond_5

    .line 182
    .line 183
    invoke-virtual {v8}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->unselectAllTalkTemplates()V

    .line 184
    .line 185
    .line 186
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Landroidx/appcompat/view/ActionMode;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_5
    move v9, v10

    .line 202
    :goto_2
    return v9

    .line 203
    :pswitch_2
    check-cast v8, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 204
    .line 205
    iget-object v3, v8, Lorg/wikipedia/readinglist/ReadingListsFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-ne v2, v4, :cond_6

    .line 215
    .line 216
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->onDeleteSelected()V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_8

    .line 220
    .line 221
    :cond_6
    const v4, 0x7f0903a5

    .line 222
    .line 223
    .line 224
    if-ne v2, v4, :cond_8

    .line 225
    .line 226
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getSelectedLists()Ljava/util/ArrayList;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_7

    .line 235
    .line 236
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    const v1, 0x7f1207b7

    .line 241
    .line 242
    .line 243
    invoke-virtual {v8, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_8

    .line 255
    .line 256
    :cond_7
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->INSTANCE$1:Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;

    .line 257
    .line 258
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    check-cast v1, Lorg/wikipedia/activity/BaseActivity;

    .line 266
    .line 267
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getSelectedLists()Ljava/util/ArrayList;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/readinglist/ReadingListsReceiveHelper;->exportLists(Lorg/wikipedia/activity/BaseActivity;Ljava/util/List;)V

    .line 272
    .line 273
    .line 274
    iget-object v0, v8, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 275
    .line 276
    if-eqz v0, :cond_11

    .line 277
    .line 278
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_8

    .line 282
    .line 283
    :cond_8
    const v4, 0x7f0903eb

    .line 284
    .line 285
    .line 286
    if-ne v2, v4, :cond_10

    .line 287
    .line 288
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->getAllSelected()Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_a

    .line 293
    .line 294
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getSelectedLists()Ljava/util/ArrayList;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-eqz v2, :cond_9

    .line 307
    .line 308
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 313
    .line 314
    iput-boolean v10, v2, Lorg/wikipedia/readinglist/database/ReadingList;->selected:Z

    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_9
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 318
    .line 319
    .line 320
    goto :goto_7

    .line 321
    :cond_a
    iget-object v0, v8, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 322
    .line 323
    new-instance v2, Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .line 327
    .line 328
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    if-eqz v4, :cond_c

    .line 337
    .line 338
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    instance-of v5, v4, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 343
    .line 344
    if-eqz v5, :cond_b

    .line 345
    .line 346
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    goto :goto_4

    .line 350
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    :cond_d
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    if-eqz v4, :cond_e

    .line 364
    .line 365
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    move-object v5, v4

    .line 370
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 371
    .line 372
    iget-boolean v5, v5, Lorg/wikipedia/readinglist/database/ReadingList;->selected:Z

    .line 373
    .line 374
    if-nez v5, :cond_d

    .line 375
    .line 376
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    goto :goto_5

    .line 380
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-eqz v2, :cond_f

    .line 389
    .line 390
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 395
    .line 396
    iput-boolean v9, v2, Lorg/wikipedia/readinglist/database/ReadingList;->selected:Z

    .line 397
    .line 398
    goto :goto_6

    .line 399
    :cond_f
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 400
    .line 401
    .line 402
    :goto_7
    invoke-virtual {v1}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    .line 403
    .line 404
    .line 405
    :cond_10
    move v9, v10

    .line 406
    :cond_11
    :goto_8
    return v9

    .line 407
    :pswitch_3
    check-cast v8, Lorg/wikipedia/notifications/NotificationActivity;

    .line 408
    .line 409
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    const v3, 0x7f0903cc

    .line 417
    .line 418
    .line 419
    const/16 v4, 0xc

    .line 420
    .line 421
    if-ne v2, v3, :cond_12

    .line 422
    .line 423
    sget v0, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 424
    .line 425
    invoke-virtual {v8}, Lorg/wikipedia/notifications/NotificationActivity;->getSelectedItems()Ljava/util/ArrayList;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-static {v8, v0, v10, v7, v4}, Lorg/wikipedia/notifications/NotificationActivity;->markReadItems$default(Lorg/wikipedia/notifications/NotificationActivity;Ljava/util/List;ZLjava/lang/Integer;I)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v8}, Lorg/wikipedia/notifications/NotificationActivity;->finishActionMode$1()V

    .line 433
    .line 434
    .line 435
    goto :goto_9

    .line 436
    :cond_12
    const v3, 0x7f0903cd

    .line 437
    .line 438
    .line 439
    if-ne v2, v3, :cond_13

    .line 440
    .line 441
    sget v0, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 442
    .line 443
    invoke-virtual {v8}, Lorg/wikipedia/notifications/NotificationActivity;->getSelectedItems()Ljava/util/ArrayList;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-static {v8, v0, v9, v7, v4}, Lorg/wikipedia/notifications/NotificationActivity;->markReadItems$default(Lorg/wikipedia/notifications/NotificationActivity;Ljava/util/List;ZLjava/lang/Integer;I)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v8}, Lorg/wikipedia/notifications/NotificationActivity;->finishActionMode$1()V

    .line 451
    .line 452
    .line 453
    goto :goto_9

    .line 454
    :cond_13
    if-ne v2, v5, :cond_14

    .line 455
    .line 456
    invoke-virtual {v0, v1, v9}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->checkAllItems(Landroidx/appcompat/view/ActionMode;Z)V

    .line 457
    .line 458
    .line 459
    goto :goto_9

    .line 460
    :cond_14
    if-ne v2, v6, :cond_15

    .line 461
    .line 462
    invoke-virtual {v0, v1, v10}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->checkAllItems(Landroidx/appcompat/view/ActionMode;Z)V

    .line 463
    .line 464
    .line 465
    sget v0, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 466
    .line 467
    invoke-virtual {v8}, Lorg/wikipedia/notifications/NotificationActivity;->finishActionMode$1()V

    .line 468
    .line 469
    .line 470
    goto :goto_9

    .line 471
    :cond_15
    move v9, v10

    .line 472
    :goto_9
    return v9

    .line 473
    :pswitch_4
    check-cast v8, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 474
    .line 475
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-ne v1, v4, :cond_16

    .line 483
    .line 484
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->onDeleteSelected()V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/ReadingListFragment;->finishActionMode$2()V

    .line 488
    .line 489
    .line 490
    goto/16 :goto_c

    .line 491
    .line 492
    :cond_16
    const v0, 0x7f0903e0

    .line 493
    .line 494
    .line 495
    if-ne v1, v0, :cond_17

    .line 496
    .line 497
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 498
    .line 499
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/ReadingListFragment;->getSelectedPages()Ljava/util/List;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 508
    .line 509
    const/16 v3, 0x9

    .line 510
    .line 511
    invoke-direct {v2, v8, v3}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 512
    .line 513
    .line 514
    invoke-static {v0, v1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->removePagesFromOffline(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/ReadingListFragment;->finishActionMode$2()V

    .line 518
    .line 519
    .line 520
    goto/16 :goto_c

    .line 521
    .line 522
    :cond_17
    const v0, 0x7f0903e5

    .line 523
    .line 524
    .line 525
    const/16 v2, 0xa

    .line 526
    .line 527
    if-ne v1, v0, :cond_18

    .line 528
    .line 529
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 530
    .line 531
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/ReadingListFragment;->getSelectedPages()Ljava/util/List;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    new-instance v3, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 540
    .line 541
    invoke-direct {v3, v8, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 542
    .line 543
    .line 544
    invoke-static {v0, v1, v3}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->savePagesForOffline(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/ReadingListFragment;->finishActionMode$2()V

    .line 548
    .line 549
    .line 550
    goto/16 :goto_c

    .line 551
    .line 552
    :cond_18
    const v0, 0x7f090395

    .line 553
    .line 554
    .line 555
    const/4 v4, 0x3

    .line 556
    const-string v5, "showDefaultList"

    .line 557
    .line 558
    const-string v6, "invokeSource"

    .line 559
    .line 560
    const-string v11, "pageTitleList"

    .line 561
    .line 562
    if-ne v1, v0, :cond_1b

    .line 563
    .line 564
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/ReadingListFragment;->getSelectedPages()Ljava/util/List;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    if-nez v1, :cond_1a

    .line 573
    .line 574
    new-instance v1, Ljava/util/ArrayList;

    .line 575
    .line 576
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 577
    .line 578
    .line 579
    move-result v2

    .line 580
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 581
    .line 582
    .line 583
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    if-eqz v2, :cond_19

    .line 592
    .line 593
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 598
    .line 599
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    .line 601
    .line 602
    iget-object v14, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 603
    .line 604
    iget-object v12, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 605
    .line 606
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 610
    .line 611
    .line 612
    iput-object v12, v14, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 613
    .line 614
    new-instance v12, Lorg/wikipedia/page/PageTitle;

    .line 615
    .line 616
    iget-object v13, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 617
    .line 618
    iget-object v15, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 619
    .line 620
    const/16 p0, 0x2

    .line 621
    .line 622
    iget-object v3, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 623
    .line 624
    iget-object v2, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 625
    .line 626
    move-object/from16 v17, v2

    .line 627
    .line 628
    move-object/from16 v16, v3

    .line 629
    .line 630
    invoke-direct/range {v12 .. v17}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    goto :goto_a

    .line 637
    :cond_19
    const/16 p0, 0x2

    .line 638
    .line 639
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 644
    .line 645
    .line 646
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->READING_LIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 647
    .line 648
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    .line 650
    .line 651
    new-instance v3, Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 652
    .line 653
    invoke-direct {v3}, Lorg/wikipedia/readinglist/AddToReadingListDialog;-><init>()V

    .line 654
    .line 655
    .line 656
    new-instance v12, Ljava/util/ArrayList;

    .line 657
    .line 658
    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 659
    .line 660
    .line 661
    new-instance v1, Lkotlin/Pair;

    .line 662
    .line 663
    invoke-direct {v1, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 664
    .line 665
    .line 666
    new-instance v11, Lkotlin/Pair;

    .line 667
    .line 668
    invoke-direct {v11, v6, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 669
    .line 670
    .line 671
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 672
    .line 673
    new-instance v6, Lkotlin/Pair;

    .line 674
    .line 675
    invoke-direct {v6, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    new-array v2, v4, [Lkotlin/Pair;

    .line 679
    .line 680
    aput-object v1, v2, v10

    .line 681
    .line 682
    aput-object v11, v2, v9

    .line 683
    .line 684
    aput-object v6, v2, p0

    .line 685
    .line 686
    invoke-static {v2}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    invoke-virtual {v3, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 691
    .line 692
    .line 693
    iput-object v7, v3, Lorg/wikipedia/readinglist/AddToReadingListDialog;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 694
    .line 695
    invoke-static {v0, v3}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 696
    .line 697
    .line 698
    iget-object v0, v8, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 699
    .line 700
    invoke-virtual {v8, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 701
    .line 702
    .line 703
    :cond_1a
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/ReadingListFragment;->finishActionMode$2()V

    .line 704
    .line 705
    .line 706
    goto/16 :goto_c

    .line 707
    .line 708
    :cond_1b
    const/16 p0, 0x2

    .line 709
    .line 710
    const v0, 0x7f0903ce

    .line 711
    .line 712
    .line 713
    if-ne v1, v0, :cond_1e

    .line 714
    .line 715
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/ReadingListFragment;->getSelectedPages()Ljava/util/List;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 720
    .line 721
    .line 722
    move-result v1

    .line 723
    if-nez v1, :cond_1d

    .line 724
    .line 725
    new-instance v1, Ljava/util/ArrayList;

    .line 726
    .line 727
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 728
    .line 729
    .line 730
    move-result v2

    .line 731
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 732
    .line 733
    .line 734
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 739
    .line 740
    .line 741
    move-result v2

    .line 742
    if-eqz v2, :cond_1c

    .line 743
    .line 744
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v2

    .line 748
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 749
    .line 750
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    .line 752
    .line 753
    iget-object v14, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 754
    .line 755
    iget-object v3, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 756
    .line 757
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 758
    .line 759
    .line 760
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    .line 762
    .line 763
    iput-object v3, v14, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 764
    .line 765
    new-instance v12, Lorg/wikipedia/page/PageTitle;

    .line 766
    .line 767
    iget-object v13, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 768
    .line 769
    iget-object v15, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 770
    .line 771
    iget-object v3, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 772
    .line 773
    iget-object v2, v2, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 774
    .line 775
    move-object/from16 v17, v2

    .line 776
    .line 777
    move-object/from16 v16, v3

    .line 778
    .line 779
    invoke-direct/range {v12 .. v17}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    .line 784
    .line 785
    goto :goto_b

    .line 786
    :cond_1c
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 791
    .line 792
    .line 793
    iget-wide v2, v8, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListId:J

    .line 794
    .line 795
    sget-object v12, Lorg/wikipedia/Constants$InvokeSource;->READING_LIST_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 796
    .line 797
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 798
    .line 799
    .line 800
    new-instance v13, Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    .line 801
    .line 802
    invoke-direct {v13}, Lorg/wikipedia/readinglist/MoveToReadingListDialog;-><init>()V

    .line 803
    .line 804
    .line 805
    new-instance v14, Ljava/util/ArrayList;

    .line 806
    .line 807
    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 808
    .line 809
    .line 810
    new-instance v1, Lkotlin/Pair;

    .line 811
    .line 812
    invoke-direct {v1, v11, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 813
    .line 814
    .line 815
    new-instance v11, Lkotlin/Pair;

    .line 816
    .line 817
    invoke-direct {v11, v6, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 818
    .line 819
    .line 820
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    new-instance v3, Lkotlin/Pair;

    .line 825
    .line 826
    const-string v6, "sourceReadingListId"

    .line 827
    .line 828
    invoke-direct {v3, v6, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 829
    .line 830
    .line 831
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 832
    .line 833
    new-instance v6, Lkotlin/Pair;

    .line 834
    .line 835
    invoke-direct {v6, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 836
    .line 837
    .line 838
    const/4 v2, 0x4

    .line 839
    new-array v2, v2, [Lkotlin/Pair;

    .line 840
    .line 841
    aput-object v1, v2, v10

    .line 842
    .line 843
    aput-object v11, v2, v9

    .line 844
    .line 845
    aput-object v3, v2, p0

    .line 846
    .line 847
    aput-object v6, v2, v4

    .line 848
    .line 849
    invoke-static {v2}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    invoke-virtual {v13, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 854
    .line 855
    .line 856
    iput-object v7, v13, Lorg/wikipedia/readinglist/AddToReadingListDialog;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 857
    .line 858
    invoke-static {v0, v13}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 859
    .line 860
    .line 861
    iget-object v0, v8, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 862
    .line 863
    invoke-virtual {v8, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 864
    .line 865
    .line 866
    :cond_1d
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/ReadingListFragment;->finishActionMode$2()V

    .line 867
    .line 868
    .line 869
    goto :goto_c

    .line 870
    :cond_1e
    move v9, v10

    .line 871
    :goto_c
    return v9

    .line 872
    nop

    .line 873
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onActionItemClicked$okhttp3$MediaType$Companion(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const p2, 0x7f0903a1

    .line 9
    .line 10
    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->onDeleteSelected()V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "multiSelectActionMode"

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iput-object v2, p1, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 12
    .line 13
    const v0, 0x7f12096c

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ActionMode;->setTitle(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v3, 0x7f0e0003

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 27
    .line 28
    .line 29
    check-cast p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 30
    .line 31
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 32
    .line 33
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->selectedItems:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p1, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 39
    .line 40
    return v1

    .line 41
    :pswitch_0
    iput-object v2, p1, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 42
    .line 43
    const v0, 0x7f120a78

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ActionMode;->setTitle(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const v3, 0x7f0e0004

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 57
    .line 58
    .line 59
    check-cast p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 60
    .line 61
    iput-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 62
    .line 63
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 66
    .line 67
    .line 68
    iput-object v2, p1, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 69
    .line 70
    return v1

    .line 71
    :pswitch_1
    iput-object v2, p1, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const v2, 0x7f0e0002

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 81
    .line 82
    .line 83
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 84
    .line 85
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 86
    .line 87
    const p0, 0x7f0903a1

    .line 88
    .line 89
    .line 90
    check-cast p2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 91
    .line 92
    invoke-virtual {p2, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const/4 p1, 0x0

    .line 97
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 98
    .line 99
    .line 100
    return v1

    .line 101
    :pswitch_2
    iput-object v2, p1, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 102
    .line 103
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const/high16 v2, 0x7f0e0000

    .line 108
    .line 109
    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 110
    .line 111
    .line 112
    check-cast p0, Lorg/wikipedia/notifications/NotificationActivity;

    .line 113
    .line 114
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 115
    .line 116
    return v1

    .line 117
    :pswitch_3
    iput-object v2, p1, Landroidx/appcompat/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const v2, 0x7f0e0001

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 127
    .line 128
    .line 129
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 130
    .line 131
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 132
    .line 133
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->setStatusBarActionMode(Z)V

    .line 134
    .line 135
    .line 136
    return v1

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDeleteSelected()V
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->selectedItems:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 22
    .line 23
    new-instance v2, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 24
    .line 25
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 26
    .line 27
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 32
    .line 33
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    const-string v8, "app_patroller_experience"

    .line 38
    .line 39
    const-string v3, "delete_messages_click"

    .line 40
    .line 41
    const-string v4, "pt_warning_messages"

    .line 42
    .line 43
    const-string v5, ""

    .line 44
    .line 45
    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const v2, 0x7f100038

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const v3, 0x7f130009

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 79
    .line 80
    .line 81
    iget-object v2, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 84
    .line 85
    iput-object v0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 86
    .line 87
    new-instance v0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 88
    .line 89
    const/16 v2, 0xe

    .line 90
    .line 91
    invoke-direct {v0, v2, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    const p0, 0x7f120965

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p0, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    new-instance p0, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;

    .line 101
    .line 102
    const/16 v0, 0xa

    .line 103
    .line 104
    invoke-direct {p0, v0}, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;-><init>(I)V

    .line 105
    .line 106
    .line 107
    const v0, 0x7f120970

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 118
    .line 119
    if-eqz p0, :cond_1

    .line 120
    .line 121
    invoke-virtual {p0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 122
    .line 123
    .line 124
    :cond_1
    :goto_0
    return-void

    .line 125
    :pswitch_0
    check-cast p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 126
    .line 127
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-lez v1, :cond_3

    .line 134
    .line 135
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-direct {v1, v4, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    iget-object v4, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-ge v3, v4, :cond_2

    .line 155
    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    const v4, 0x7f10003e

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iget-object v3, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v3, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 174
    .line 175
    iput-object v0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 176
    .line 177
    const v0, 0x7f120a79

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 181
    .line 182
    .line 183
    new-instance v0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 184
    .line 185
    const/16 v3, 0xb

    .line 186
    .line 187
    invoke-direct {v0, v3, p0}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    const p0, 0x7f120823

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, p0, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 194
    .line 195
    .line 196
    const p0, 0x7f120822

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_2
    const p0, 0x7f120a7d

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 207
    .line 208
    .line 209
    const p0, 0x7f120a7c

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 213
    .line 214
    .line 215
    const p0, 0x7f120821

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    :goto_1
    invoke-virtual {v1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 222
    .line 223
    .line 224
    :cond_3
    return-void

    .line 225
    :pswitch_1
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 226
    .line 227
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getSelectedLists()Ljava/util/ArrayList;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    sget-object v4, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 232
    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    new-instance v5, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 238
    .line 239
    const/16 v6, 0xc

    .line 240
    .line 241
    invoke-direct {v5, v6, p0, v0}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    new-instance p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 245
    .line 246
    invoke-direct {p0, v4, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 247
    .line 248
    .line 249
    const v6, 0x7f12076c

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    new-array v1, v1, [Ljava/lang/Object;

    .line 272
    .line 273
    aput-object v8, v1, v3

    .line 274
    .line 275
    const v3, 0x7f100025

    .line 276
    .line 277
    .line 278
    invoke-virtual {v6, v3, v7, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    iget-object v3, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v3, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 285
    .line 286
    iput-object v1, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 287
    .line 288
    new-instance v1, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;

    .line 289
    .line 290
    const/4 v3, 0x4

    .line 291
    invoke-direct {v1, v0, v4, v5, v3}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 292
    .line 293
    .line 294
    const v0, 0x7f12076d

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 298
    .line 299
    .line 300
    const v0, 0x7f120769

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 307
    .line 308
    .line 309
    :pswitch_2
    return-void

    .line 310
    :pswitch_3
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 311
    .line 312
    iget-object v4, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 313
    .line 314
    if-eqz v4, :cond_4

    .line 315
    .line 316
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getViewModel()Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;->getSelectedPages()Ljava/util/List;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-static {v5}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;

    .line 329
    .line 330
    invoke-direct {v0, v5, v1}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;I)V

    .line 331
    .line 332
    .line 333
    new-instance v2, Lcoil3/RealImageLoader$execute$2;

    .line 334
    .line 335
    const/16 v7, 0x18

    .line 336
    .line 337
    const/4 v6, 0x0

    .line 338
    invoke-direct/range {v2 .. v7}, Lcoil3/RealImageLoader$execute$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 339
    .line 340
    .line 341
    const/4 v1, 0x2

    .line 342
    invoke-static {p0, v0, v6, v2, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 343
    .line 344
    .line 345
    :cond_4
    return-void

    .line 346
    nop

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v3, Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 14
    .line 15
    invoke-virtual {v3}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->unselectAllTalkTemplates()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->setMultiSelectEnabled$1(Z)V

    .line 19
    .line 20
    .line 21
    iput-object v1, v3, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    check-cast v3, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 25
    .line 26
    iget-object p0, v3, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object p0, v3, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    .line 32
    .line 33
    const-string p1, "adapter"

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 38
    .line 39
    .line 40
    iget-object p0, v3, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    .line 41
    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    iput-boolean v2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->checkboxEnabled:Z

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 54
    .line 55
    .line 56
    iput-object v1, v3, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1

    .line 67
    :pswitch_1
    check-cast v3, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 68
    .line 69
    iput-boolean v2, v3, Lorg/wikipedia/readinglist/ReadingListsFragment;->selectMode:Z

    .line 70
    .line 71
    invoke-virtual {v3}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getSelectedLists()Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 90
    .line 91
    iput-boolean v2, p1, Lorg/wikipedia/readinglist/database/ReadingList;->selected:Z

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    iget-object p0, v3, Lorg/wikipedia/readinglist/ReadingListsFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 97
    .line 98
    .line 99
    iput-object v1, v3, Lorg/wikipedia/readinglist/ReadingListsFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_2
    invoke-virtual {p0, p1, v2}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->checkAllItems(Landroidx/appcompat/view/ActionMode;Z)V

    .line 103
    .line 104
    .line 105
    check-cast v3, Lorg/wikipedia/notifications/NotificationActivity;

    .line 106
    .line 107
    iput-object v1, v3, Lorg/wikipedia/notifications/NotificationActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_3
    check-cast v3, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 111
    .line 112
    iget-object p0, v3, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 113
    .line 114
    if-eqz p0, :cond_4

    .line 115
    .line 116
    iget-object p0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_3

    .line 127
    .line 128
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 133
    .line 134
    iput-boolean v2, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected:Z

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    iget-object p0, v3, Lorg/wikipedia/readinglist/ReadingListFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 140
    .line 141
    .line 142
    :cond_4
    iput-object v1, v3, Lorg/wikipedia/readinglist/ReadingListFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 143
    .line 144
    invoke-virtual {v3, v2}, Lorg/wikipedia/readinglist/ReadingListFragment;->setStatusBarActionMode(Z)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->$r8$classId:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const v5, 0x7f0903fb

    .line 11
    .line 12
    .line 13
    const v6, 0x7f090399

    .line 14
    .line 15
    .line 16
    const v7, 0x7f120459

    .line 17
    .line 18
    .line 19
    iget-object v8, v0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->this$0:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x1

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    packed-switch v3, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    :pswitch_0
    return v10

    .line 30
    :pswitch_1
    check-cast v8, Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 31
    .line 32
    iget-object v0, v8, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->selectedItems:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-array v4, v10, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object v3, v4, v9

    .line 45
    .line 46
    invoke-virtual {v8, v7, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v1, v3}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 65
    .line 66
    .line 67
    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 72
    .line 73
    .line 74
    return v10

    .line 75
    :pswitch_2
    check-cast v8, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 76
    .line 77
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getSelectedLists()Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-ne v5, v10, :cond_0

    .line 86
    .line 87
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 92
    .line 93
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_0

    .line 98
    .line 99
    move v5, v10

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    move v5, v9

    .line 102
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    const-string v11, ""

    .line 107
    .line 108
    if-eqz v6, :cond_1

    .line 109
    .line 110
    move-object v6, v11

    .line 111
    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    new-array v12, v10, [Ljava/lang/Object;

    .line 121
    .line 122
    aput-object v6, v12, v9

    .line 123
    .line 124
    invoke-virtual {v8, v7, v12}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    :goto_1
    invoke-virtual {v1, v6}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    const v1, 0x7f0903a1

    .line 132
    .line 133
    .line 134
    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const v6, 0x7f0903a5

    .line 139
    .line 140
    .line 141
    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    new-instance v12, Landroid/util/TypedValue;

    .line 150
    .line 151
    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    const v13, 0x7f040520

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7, v13, v12, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_2

    .line 166
    .line 167
    move-object v4, v12

    .line 168
    :cond_2
    if-eqz v4, :cond_c

    .line 169
    .line 170
    iget v4, v4, Landroid/util/TypedValue;->data:I

    .line 171
    .line 172
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .line 173
    .line 174
    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    const/16 v14, 0x50

    .line 182
    .line 183
    if-eqz v12, :cond_3

    .line 184
    .line 185
    move v12, v14

    .line 186
    goto :goto_2

    .line 187
    :cond_3
    const/16 v12, 0xff

    .line 188
    .line 189
    :goto_2
    invoke-static {v4, v12}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    .line 194
    .line 195
    invoke-direct {v12, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 203
    .line 204
    .line 205
    move-result-object v15

    .line 206
    invoke-virtual {v7, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 210
    .line 211
    .line 212
    move-result v15

    .line 213
    const/16 v13, 0x11

    .line 214
    .line 215
    invoke-virtual {v7, v12, v4, v15, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 216
    .line 217
    .line 218
    new-instance v4, Landroid/text/SpannedString;

    .line 219
    .line 220
    invoke-direct {v4, v7}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 224
    .line 225
    .line 226
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    if-eqz v4, :cond_6

    .line 231
    .line 232
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    if-nez v7, :cond_5

    .line 237
    .line 238
    if-eqz v5, :cond_4

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_4
    const/16 v13, 0xff

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_5
    :goto_3
    move v13, v14

    .line 245
    :goto_4
    invoke-virtual {v4, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 246
    .line 247
    .line 248
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    xor-int/2addr v4, v10

    .line 253
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-nez v3, :cond_7

    .line 261
    .line 262
    if-nez v5, :cond_7

    .line 263
    .line 264
    move v9, v10

    .line 265
    :cond_7
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 266
    .line 267
    .line 268
    const v1, 0x7f0903eb

    .line 269
    .line 270
    .line 271
    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getSelectedLists()Ljava/util/ArrayList;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-eqz v2, :cond_8

    .line 284
    .line 285
    const v2, 0x7f0801c6

    .line 286
    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_8
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->getAllSelected()Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_9

    .line 294
    .line 295
    const v2, 0x7f08014e

    .line 296
    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_9
    const v2, 0x7f0801e5

    .line 300
    .line 301
    .line 302
    :goto_5
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/ReadingListsFragment;->getSelectedLists()Ljava/util/ArrayList;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    if-eqz v2, :cond_a

    .line 314
    .line 315
    const v0, 0x7f120495

    .line 316
    .line 317
    .line 318
    invoke-virtual {v8, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v11

    .line 322
    goto :goto_6

    .line 323
    :cond_a
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->getAllSelected()Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    if-eqz v0, :cond_b

    .line 328
    .line 329
    const v0, 0x7f120498

    .line 330
    .line 331
    .line 332
    invoke-virtual {v8, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v11

    .line 336
    :cond_b
    :goto_6
    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 337
    .line 338
    .line 339
    move v9, v10

    .line 340
    goto :goto_7

    .line 341
    :cond_c
    const-string v0, "Attribute not found; ID=2130969888"

    .line 342
    .line 343
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :goto_7
    return v9

    .line 347
    :pswitch_3
    check-cast v8, Lorg/wikipedia/notifications/NotificationActivity;

    .line 348
    .line 349
    sget v0, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 350
    .line 351
    invoke-virtual {v8}, Lorg/wikipedia/notifications/NotificationActivity;->getSelectedItemCount()I

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v1, v0}, Landroidx/appcompat/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v8}, Lorg/wikipedia/notifications/NotificationActivity;->getSelectedItems()Ljava/util/ArrayList;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    check-cast v0, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 371
    .line 372
    if-eqz v0, :cond_d

    .line 373
    .line 374
    iget-object v0, v0, Lorg/wikipedia/notifications/NotificationListItemContainer;->notification:Lorg/wikipedia/notifications/db/Notification;

    .line 375
    .line 376
    if-eqz v0, :cond_d

    .line 377
    .line 378
    invoke-virtual {v0}, Lorg/wikipedia/notifications/db/Notification;->isUnread()Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    :cond_d
    const v0, 0x7f0903cc

    .line 387
    .line 388
    .line 389
    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 394
    .line 395
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 400
    .line 401
    .line 402
    const v0, 0x7f0903cd

    .line 403
    .line 404
    .line 405
    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 410
    .line 411
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 416
    .line 417
    .line 418
    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 423
    .line 424
    .line 425
    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 430
    .line 431
    .line 432
    return v10

    .line 433
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
