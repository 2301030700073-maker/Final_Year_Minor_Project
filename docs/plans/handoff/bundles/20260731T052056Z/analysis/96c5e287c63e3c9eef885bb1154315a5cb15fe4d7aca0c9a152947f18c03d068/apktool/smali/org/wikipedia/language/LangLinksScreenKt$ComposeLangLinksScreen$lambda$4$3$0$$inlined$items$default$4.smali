.class public final Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $items:Ljava/util/List;

.field public final synthetic $onLanguageSelected$inlined:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$4;->$items:Ljava/util/List;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$4;->$onLanguageSelected$inlined:Ljava/lang/Object;

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
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$4;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$4;->$onLanguageSelected$inlined:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget-object v0, v0, Lorg/wikipedia/language/LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$4;->$items:Ljava/util/List;

    .line 11
    .line 12
    const/16 v5, 0x92

    .line 13
    .line 14
    const/16 v6, 0x10

    .line 15
    .line 16
    const/16 v7, 0x20

    .line 17
    .line 18
    const/16 v8, 0x30

    .line 19
    .line 20
    const/4 v9, 0x2

    .line 21
    const/4 v10, 0x4

    .line 22
    const/4 v11, 0x1

    .line 23
    const/4 v12, 0x0

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
    move-object/from16 v13, p2

    .line 32
    .line 33
    check-cast v13, Ljava/lang/Number;

    .line 34
    .line 35
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v13

    .line 39
    move-object/from16 v14, p3

    .line 40
    .line 41
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 42
    .line 43
    move-object/from16 v15, p4

    .line 44
    .line 45
    check-cast v15, Ljava/lang/Number;

    .line 46
    .line 47
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v15

    .line 51
    and-int/lit8 v16, v15, 0x6

    .line 52
    .line 53
    if-nez v16, :cond_1

    .line 54
    .line 55
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    move v9, v10

    .line 62
    :cond_0
    or-int v1, v15, v9

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v1, v15

    .line 66
    :goto_0
    and-int/2addr v8, v15

    .line 67
    if-nez v8, :cond_3

    .line 68
    .line 69
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_2

    .line 74
    .line 75
    move v6, v7

    .line 76
    :cond_2
    or-int/2addr v1, v6

    .line 77
    :cond_3
    and-int/lit16 v6, v1, 0x93

    .line 78
    .line 79
    if-eq v6, v5, :cond_4

    .line 80
    .line 81
    move v5, v11

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    move v5, v12

    .line 84
    :goto_1
    and-int/2addr v1, v11

    .line 85
    invoke-virtual {v14, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;

    .line 96
    .line 97
    const v1, -0x4b25cd3a

    .line 98
    .line 99
    .line 100
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 101
    .line 102
    .line 103
    check-cast v3, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 104
    .line 105
    invoke-static {v4, v3, v0, v14, v12}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt;->HomePreferenceArticleCard(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;Landroidx/compose/runtime/GapComposer;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 113
    .line 114
    .line 115
    :goto_2
    return-object v2

    .line 116
    :pswitch_0
    move-object/from16 v1, p1

    .line 117
    .line 118
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 119
    .line 120
    move-object/from16 v13, p2

    .line 121
    .line 122
    check-cast v13, Ljava/lang/Number;

    .line 123
    .line 124
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    move-object/from16 v14, p3

    .line 129
    .line 130
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 131
    .line 132
    move-object/from16 v15, p4

    .line 133
    .line 134
    check-cast v15, Ljava/lang/Number;

    .line 135
    .line 136
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v15

    .line 140
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 141
    .line 142
    and-int/lit8 v16, v15, 0x6

    .line 143
    .line 144
    if-nez v16, :cond_7

    .line 145
    .line 146
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_6

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    move v10, v9

    .line 154
    :goto_3
    or-int v1, v15, v10

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_7
    move v1, v15

    .line 158
    :goto_4
    and-int/lit8 v10, v15, 0x30

    .line 159
    .line 160
    if-nez v10, :cond_9

    .line 161
    .line 162
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    if-eqz v10, :cond_8

    .line 167
    .line 168
    move v6, v7

    .line 169
    :cond_8
    or-int/2addr v1, v6

    .line 170
    :cond_9
    and-int/lit16 v6, v1, 0x93

    .line 171
    .line 172
    if-eq v6, v5, :cond_a

    .line 173
    .line 174
    move v5, v11

    .line 175
    goto :goto_5

    .line 176
    :cond_a
    move v5, v12

    .line 177
    :goto_5
    and-int/2addr v1, v11

    .line 178
    invoke-virtual {v14, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_f

    .line 183
    .line 184
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Lorg/wikipedia/language/LangLinksItem;

    .line 189
    .line 190
    const v1, -0x3fafaa84

    .line 191
    .line 192
    .line 193
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v0, Lorg/wikipedia/language/LangLinksItem;->headerText:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    const/high16 v5, 0x3f800000    # 1.0f

    .line 203
    .line 204
    const/high16 v6, 0x41800000    # 16.0f

    .line 205
    .line 206
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 207
    .line 208
    if-lez v1, :cond_b

    .line 209
    .line 210
    const v1, -0x3faf2079

    .line 211
    .line 212
    .line 213
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 214
    .line 215
    .line 216
    const/high16 v1, 0x42600000    # 56.0f

    .line 217
    .line 218
    invoke-static {v10, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    const/4 v3, 0x0

    .line 227
    invoke-static {v1, v6, v3, v9}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 228
    .line 229
    .line 230
    move-result-object v15

    .line 231
    const/high16 v19, 0x40800000    # 4.0f

    .line 232
    .line 233
    const/16 v20, 0x7

    .line 234
    .line 235
    const/16 v16, 0x0

    .line 236
    .line 237
    const/16 v17, 0x0

    .line 238
    .line 239
    const/16 v18, 0x0

    .line 240
    .line 241
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    iget-object v0, v0, Lorg/wikipedia/language/LangLinksItem;->headerText:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v0, v1, v4, v14, v8}, Lorg/wikipedia/util/TabUtil;->ListHeader(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 251
    .line 252
    .line 253
    move-object v0, v14

    .line 254
    goto/16 :goto_7

    .line 255
    .line 256
    :cond_b
    const v1, -0x3fa8b36a

    .line 257
    .line 258
    .line 259
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v8

    .line 270
    or-int/2addr v1, v8

    .line 271
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    if-nez v1, :cond_c

    .line 276
    .line 277
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 278
    .line 279
    if-ne v8, v1, :cond_d

    .line 280
    .line 281
    :cond_c
    new-instance v8, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 282
    .line 283
    const/4 v1, 0x5

    .line 284
    invoke-direct {v8, v3, v0, v1}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :cond_d
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 291
    .line 292
    const/16 v1, 0xf

    .line 293
    .line 294
    invoke-static {v1, v10, v4, v8, v12}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 299
    .line 300
    invoke-static {v3, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    iget-wide v8, v14, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 305
    .line 306
    ushr-long v15, v8, v7

    .line 307
    .line 308
    xor-long/2addr v8, v15

    .line 309
    long-to-int v4, v8

    .line 310
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    invoke-static {v14, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 319
    .line 320
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 324
    .line 325
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 326
    .line 327
    .line 328
    iget-boolean v9, v14, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 329
    .line 330
    if-eqz v9, :cond_e

    .line 331
    .line 332
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 333
    .line 334
    .line 335
    goto :goto_6

    .line 336
    :cond_e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 337
    .line 338
    .line 339
    :goto_6
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 340
    .line 341
    invoke-static {v14, v3, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 342
    .line 343
    .line 344
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 345
    .line 346
    invoke-static {v14, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 347
    .line 348
    .line 349
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 354
    .line 355
    invoke-static {v14, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 356
    .line 357
    .line 358
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 359
    .line 360
    invoke-static {v14, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 361
    .line 362
    .line 363
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 364
    .line 365
    invoke-static {v14, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 366
    .line 367
    .line 368
    invoke-static {v10, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-static {v1, v6}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    iget-object v15, v0, Lorg/wikipedia/language/LangLinksItem;->localizedName:Ljava/lang/String;

    .line 377
    .line 378
    iget-object v3, v0, Lorg/wikipedia/language/LangLinksItem;->canonicalName:Ljava/lang/String;

    .line 379
    .line 380
    iget-object v0, v0, Lorg/wikipedia/language/LangLinksItem;->articleName:Ljava/lang/String;

    .line 381
    .line 382
    const/16 v19, 0x6

    .line 383
    .line 384
    move-object/from16 v17, v0

    .line 385
    .line 386
    move-object/from16 v16, v3

    .line 387
    .line 388
    move-object/from16 v18, v14

    .line 389
    .line 390
    move-object v14, v1

    .line 391
    invoke-static/range {v14 .. v19}, Lorg/wikipedia/util/TabUtil;->LangLinksItemView(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)V

    .line 392
    .line 393
    .line 394
    move-object/from16 v0, v18

    .line 395
    .line 396
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 400
    .line 401
    .line 402
    :goto_7
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 403
    .line 404
    .line 405
    goto :goto_8

    .line 406
    :cond_f
    move-object v0, v14

    .line 407
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 408
    .line 409
    .line 410
    :goto_8
    return-object v2

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
