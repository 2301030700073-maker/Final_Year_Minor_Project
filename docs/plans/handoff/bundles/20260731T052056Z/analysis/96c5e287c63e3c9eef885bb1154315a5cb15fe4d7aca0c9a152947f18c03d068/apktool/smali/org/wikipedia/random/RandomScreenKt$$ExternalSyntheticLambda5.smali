.class public final synthetic Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/feed/onthisday/OnThisDayCard;Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/high16 v3, 0x41000000    # 8.0f

    .line 7
    .line 8
    const/16 v4, 0xf

    .line 9
    .line 10
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 11
    .line 12
    const/16 v6, 0x90

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 16
    .line 17
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    const/4 v12, 0x1

    .line 20
    iget-object v13, v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v14, v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v0, v0, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v15, 0x0

    .line 27
    packed-switch v1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 31
    .line 32
    check-cast v14, Ljava/util/List;

    .line 33
    .line 34
    move-object v3, v13

    .line 35
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 36
    .line 37
    move-object/from16 v1, p1

    .line 38
    .line 39
    check-cast v1, Landroidx/compose/foundation/pager/PagerScopeImpl;

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
    move-object/from16 v6, p3

    .line 50
    .line 51
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 52
    .line 53
    move-object/from16 v4, p4

    .line 54
    .line 55
    check-cast v4, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 64
    .line 65
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v6}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/ScrollState;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1, v12}, Landroidx/compose/foundation/ImageKt;->scroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Z)Landroidx/compose/ui/Modifier;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    move-object v2, v0

    .line 82
    check-cast v2, Lorg/wikipedia/yearinreview/YearInReviewScreenData;

    .line 83
    .line 84
    const/4 v7, 0x0

    .line 85
    const/16 v8, 0x38

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    const/4 v5, 0x0

    .line 89
    invoke-static/range {v1 .. v8}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->YearInReviewScreenContent(Landroidx/compose/ui/Modifier;Lorg/wikipedia/yearinreview/YearInReviewScreenData;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 90
    .line 91
    .line 92
    return-object v11

    .line 93
    :pswitch_0
    check-cast v0, Landroidx/paging/compose/LazyPagingItems;

    .line 94
    .line 95
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 96
    .line 97
    check-cast v13, Ljava/lang/String;

    .line 98
    .line 99
    move-object/from16 v1, p1

    .line 100
    .line 101
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 102
    .line 103
    move-object/from16 v2, p2

    .line 104
    .line 105
    check-cast v2, Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    move-object/from16 v8, p3

    .line 112
    .line 113
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 114
    .line 115
    move-object/from16 v17, p4

    .line 116
    .line 117
    check-cast v17, Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v17

    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    and-int/lit8 v1, v17, 0x30

    .line 127
    .line 128
    if-nez v1, :cond_1

    .line 129
    .line 130
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_0

    .line 135
    .line 136
    const/16 v16, 0x20

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_0
    const/16 v16, 0x10

    .line 140
    .line 141
    :goto_0
    or-int v17, v17, v16

    .line 142
    .line 143
    :cond_1
    move/from16 v1, v17

    .line 144
    .line 145
    and-int/lit16 v10, v1, 0x91

    .line 146
    .line 147
    if-eq v10, v6, :cond_2

    .line 148
    .line 149
    move v6, v12

    .line 150
    goto :goto_1

    .line 151
    :cond_2
    move v6, v15

    .line 152
    :goto_1
    and-int/2addr v1, v12

    .line 153
    invoke-virtual {v8, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_6

    .line 158
    .line 159
    iget-object v1, v0, Landroidx/paging/compose/LazyPagingItems;->pagingDataPresenter:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    iget-object v0, v0, Landroidx/paging/compose/LazyPagingItems;->itemSnapshotList$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Landroidx/paging/ItemSnapshotList;

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Landroidx/paging/ItemSnapshotList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Lorg/wikipedia/search/SearchResult;

    .line 177
    .line 178
    if-nez v0, :cond_3

    .line 179
    .line 180
    const v0, 0x3839fff0

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_3
    const v1, 0x3839fff1

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 194
    .line 195
    .line 196
    const/high16 v1, 0x3f800000    # 1.0f

    .line 197
    .line 198
    invoke-static {v5, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    or-int/2addr v2, v5

    .line 211
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    if-nez v2, :cond_4

    .line 216
    .line 217
    if-ne v5, v9, :cond_5

    .line 218
    .line 219
    :cond_4
    new-instance v5, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda7;

    .line 220
    .line 221
    invoke-direct {v5, v14, v0, v15}, Lorg/wikipedia/search/HybridSearchViewsKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/search/SearchResult;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    :cond_5
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 228
    .line 229
    invoke-static {v4, v1, v7, v5, v15}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    const/high16 v2, 0x41800000    # 16.0f

    .line 234
    .line 235
    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-static {v0, v13, v1, v8, v15}, Lorg/wikipedia/search/NoSearchResultsKt;->SearchResultTitleOnly(Lorg/wikipedia/search/SearchResult;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_6
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 247
    .line 248
    .line 249
    :goto_2
    return-object v11

    .line 250
    :pswitch_1
    check-cast v0, Ljava/util/List;

    .line 251
    .line 252
    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 253
    .line 254
    move-object/from16 v22, v13

    .line 255
    .line 256
    check-cast v22, Ljava/lang/String;

    .line 257
    .line 258
    move-object/from16 v1, p1

    .line 259
    .line 260
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 261
    .line 262
    move-object/from16 v7, p2

    .line 263
    .line 264
    check-cast v7, Ljava/lang/Integer;

    .line 265
    .line 266
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    move-object/from16 v8, p3

    .line 271
    .line 272
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 273
    .line 274
    move-object/from16 v13, p4

    .line 275
    .line 276
    check-cast v13, Ljava/lang/Integer;

    .line 277
    .line 278
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 279
    .line 280
    .line 281
    move-result v13

    .line 282
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    and-int/lit8 v1, v13, 0x30

    .line 286
    .line 287
    if-nez v1, :cond_8

    .line 288
    .line 289
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-eqz v1, :cond_7

    .line 294
    .line 295
    const/16 v16, 0x20

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_7
    const/16 v16, 0x10

    .line 299
    .line 300
    :goto_3
    or-int v13, v13, v16

    .line 301
    .line 302
    :cond_8
    and-int/lit16 v1, v13, 0x91

    .line 303
    .line 304
    if-eq v1, v6, :cond_9

    .line 305
    .line 306
    move v1, v12

    .line 307
    goto :goto_4

    .line 308
    :cond_9
    move v1, v15

    .line 309
    :goto_4
    and-int/lit8 v6, v13, 0x1

    .line 310
    .line 311
    invoke-virtual {v8, v6, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_13

    .line 316
    .line 317
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    move-object v6, v11

    .line 322
    int-to-long v10, v7

    .line 323
    invoke-virtual {v1, v10, v11}, Lj$/time/LocalDate;->minusDays(J)Lj$/time/LocalDate;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    sget-object v10, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 333
    .line 334
    .line 335
    move-result-object v10

    .line 336
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    const-string v11, "MMMM d"

    .line 340
    .line 341
    invoke-static {v11, v10, v12}, Lorg/wikipedia/util/DateUtil;->getCachedDateTimeFormatter(Ljava/lang/String;Ljava/util/Locale;Z)Lj$/time/format/DateTimeFormatter;

    .line 342
    .line 343
    .line 344
    move-result-object v10

    .line 345
    invoke-virtual {v10, v1}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v19

    .line 349
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    const/4 v10, 0x0

    .line 353
    const/high16 v11, 0x43af0000    # 350.0f

    .line 354
    .line 355
    move/from16 v18, v4

    .line 356
    .line 357
    const/high16 v4, 0x432a0000    # 170.0f

    .line 358
    .line 359
    if-ltz v7, :cond_f

    .line 360
    .line 361
    if-ge v7, v2, :cond_f

    .line 362
    .line 363
    const v2, 0x143792f9

    .line 364
    .line 365
    .line 366
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 367
    .line 368
    .line 369
    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    check-cast v0, Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;

    .line 374
    .line 375
    if-nez v0, :cond_a

    .line 376
    .line 377
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 378
    .line 379
    .line 380
    goto/16 :goto_7

    .line 381
    .line 382
    :cond_a
    if-eqz v7, :cond_b

    .line 383
    .line 384
    move/from16 v20, v12

    .line 385
    .line 386
    goto :goto_5

    .line 387
    :cond_b
    move/from16 v20, v15

    .line 388
    .line 389
    :goto_5
    if-nez v20, :cond_c

    .line 390
    .line 391
    const/high16 v4, 0x43a00000    # 320.0f

    .line 392
    .line 393
    :cond_c
    invoke-static {v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-static {v2, v11}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-static {v2, v10, v3, v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 402
    .line 403
    .line 404
    move-result-object v17

    .line 405
    new-instance v2, Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;

    .line 406
    .line 407
    invoke-direct {v2, v0}, Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;-><init>(Lorg/wikipedia/feed/wikigames/OnThisDayCardGameState;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v3

    .line 418
    or-int/2addr v0, v3

    .line 419
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    if-nez v0, :cond_d

    .line 424
    .line 425
    if-ne v3, v9, :cond_e

    .line 426
    .line 427
    :cond_d
    new-instance v3, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 428
    .line 429
    invoke-direct {v3, v15, v14, v1}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    :cond_e
    move-object/from16 v21, v3

    .line 436
    .line 437
    check-cast v21, Lkotlin/jvm/functions/Function1;

    .line 438
    .line 439
    const/high16 v0, 0x380000

    .line 440
    .line 441
    shl-int/lit8 v1, v13, 0xf

    .line 442
    .line 443
    and-int v25, v1, v0

    .line 444
    .line 445
    move-object/from16 v18, v2

    .line 446
    .line 447
    move/from16 v23, v7

    .line 448
    .line 449
    move-object/from16 v24, v8

    .line 450
    .line 451
    invoke-static/range {v17 .. v25}, Lorg/jsoup/Jsoup;->OnThisDayGameCardContent(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/wikigames/WikiGame$OnThisDayGame;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Ljava/lang/String;ILandroidx/compose/runtime/GapComposer;I)V

    .line 452
    .line 453
    .line 454
    move-object/from16 v0, v24

    .line 455
    .line 456
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 457
    .line 458
    .line 459
    goto :goto_7

    .line 460
    :cond_f
    move-object v0, v8

    .line 461
    move-object/from16 v2, v22

    .line 462
    .line 463
    const v8, 0x144604b1

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 467
    .line 468
    .line 469
    invoke-static {v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    invoke-static {v4, v11}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    invoke-static {v4, v10, v3, v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 478
    .line 479
    .line 480
    move-result-object v23

    .line 481
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 482
    .line 483
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 488
    .line 489
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 490
    .line 491
    const v5, 0x7f1204bc

    .line 492
    .line 493
    .line 494
    invoke-static {v5, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v27

    .line 498
    and-int/lit8 v5, v13, 0x70

    .line 499
    .line 500
    const/16 v8, 0x20

    .line 501
    .line 502
    if-ne v5, v8, :cond_10

    .line 503
    .line 504
    goto :goto_6

    .line 505
    :cond_10
    move v12, v15

    .line 506
    :goto_6
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v5

    .line 510
    or-int/2addr v5, v12

    .line 511
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v8

    .line 515
    or-int/2addr v5, v8

    .line 516
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result v8

    .line 520
    or-int/2addr v5, v8

    .line 521
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v8

    .line 525
    if-nez v5, :cond_11

    .line 526
    .line 527
    if-ne v8, v9, :cond_12

    .line 528
    .line 529
    :cond_11
    new-instance v8, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda9;

    .line 530
    .line 531
    invoke-direct {v8, v7, v2, v14, v1}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda9;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function2;Lj$/time/LocalDate;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    :cond_12
    move-object/from16 v28, v8

    .line 538
    .line 539
    check-cast v28, Lkotlin/jvm/functions/Function0;

    .line 540
    .line 541
    const/16 v30, 0x6

    .line 542
    .line 543
    const v24, 0x7f0800e5

    .line 544
    .line 545
    .line 546
    move-object/from16 v29, v0

    .line 547
    .line 548
    move-wide/from16 v25, v3

    .line 549
    .line 550
    invoke-static/range {v23 .. v30}, Lokio/Options$Companion;->OnThisDayGameCardSimple-T042LqI(Landroidx/compose/ui/Modifier;IJLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 554
    .line 555
    .line 556
    goto :goto_7

    .line 557
    :cond_13
    move-object v0, v8

    .line 558
    move-object v6, v11

    .line 559
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 560
    .line 561
    .line 562
    :goto_7
    return-object v6

    .line 563
    :pswitch_2
    move-object v6, v11

    .line 564
    check-cast v0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;

    .line 565
    .line 566
    check-cast v13, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;

    .line 567
    .line 568
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 569
    .line 570
    move-object/from16 v1, p1

    .line 571
    .line 572
    check-cast v1, Ljava/lang/Integer;

    .line 573
    .line 574
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 575
    .line 576
    .line 577
    move-result v1

    .line 578
    move-object/from16 v3, p2

    .line 579
    .line 580
    check-cast v3, Ljava/lang/Integer;

    .line 581
    .line 582
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 583
    .line 584
    .line 585
    move-result v3

    .line 586
    move-object/from16 v4, p3

    .line 587
    .line 588
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 589
    .line 590
    move-object/from16 v5, p4

    .line 591
    .line 592
    check-cast v5, Ljava/lang/Integer;

    .line 593
    .line 594
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 595
    .line 596
    .line 597
    move-result v5

    .line 598
    and-int/lit8 v8, v5, 0x6

    .line 599
    .line 600
    if-nez v8, :cond_15

    .line 601
    .line 602
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 603
    .line 604
    .line 605
    move-result v8

    .line 606
    if-eqz v8, :cond_14

    .line 607
    .line 608
    goto :goto_8

    .line 609
    :cond_14
    const/4 v2, 0x2

    .line 610
    :goto_8
    or-int/2addr v2, v5

    .line 611
    goto :goto_9

    .line 612
    :cond_15
    move v2, v5

    .line 613
    :goto_9
    and-int/lit8 v5, v5, 0x30

    .line 614
    .line 615
    if-nez v5, :cond_17

    .line 616
    .line 617
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 618
    .line 619
    .line 620
    move-result v5

    .line 621
    if-eqz v5, :cond_16

    .line 622
    .line 623
    const/16 v8, 0x20

    .line 624
    .line 625
    goto :goto_a

    .line 626
    :cond_16
    const/16 v8, 0x10

    .line 627
    .line 628
    :goto_a
    or-int/2addr v2, v8

    .line 629
    :cond_17
    and-int/lit16 v5, v2, 0x93

    .line 630
    .line 631
    const/16 v8, 0x92

    .line 632
    .line 633
    if-eq v5, v8, :cond_18

    .line 634
    .line 635
    move v15, v12

    .line 636
    :cond_18
    and-int/2addr v2, v12

    .line 637
    invoke-virtual {v4, v2, v15}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 638
    .line 639
    .line 640
    move-result v2

    .line 641
    if-eqz v2, :cond_1d

    .line 642
    .line 643
    iget v0, v0, Lorg/wikipedia/feed/onthisday/OnThisDayCard;->age:I

    .line 644
    .line 645
    const-string v2, "on-this-day-"

    .line 646
    .line 647
    const-string v5, "-"

    .line 648
    .line 649
    invoke-static {v0, v1, v2, v5, v5}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v19

    .line 660
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    if-nez v0, :cond_19

    .line 669
    .line 670
    if-ne v1, v9, :cond_1a

    .line 671
    .line 672
    :cond_19
    new-instance v1, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;

    .line 673
    .line 674
    const/16 v0, 0x9

    .line 675
    .line 676
    invoke-direct {v1, v14, v0}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 680
    .line 681
    .line 682
    :cond_1a
    move-object/from16 v21, v1

    .line 683
    .line 684
    check-cast v21, Lkotlin/jvm/functions/Function0;

    .line 685
    .line 686
    if-eqz v13, :cond_1b

    .line 687
    .line 688
    iget-object v7, v13, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;->items:Ljava/util/List;

    .line 689
    .line 690
    :cond_1b
    if-nez v7, :cond_1c

    .line 691
    .line 692
    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 693
    .line 694
    :cond_1c
    move-object/from16 v22, v7

    .line 695
    .line 696
    const/16 v24, 0x0

    .line 697
    .line 698
    const/16 v18, 0x0

    .line 699
    .line 700
    move-object/from16 v23, v4

    .line 701
    .line 702
    move-object/from16 v20, v13

    .line 703
    .line 704
    invoke-static/range {v18 .. v24}, Lokio/Okio__OkioKt;->PageOverflowMenu(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;Lkotlin/jvm/functions/Function0;Ljava/util/List;Landroidx/compose/runtime/GapComposer;I)V

    .line 705
    .line 706
    .line 707
    goto :goto_b

    .line 708
    :cond_1d
    move-object/from16 v23, v4

    .line 709
    .line 710
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 711
    .line 712
    .line 713
    :goto_b
    return-object v6

    .line 714
    :pswitch_3
    move-object v6, v11

    .line 715
    check-cast v0, Lorg/wikipedia/random/RandomViewModel;

    .line 716
    .line 717
    move-object/from16 v19, v14

    .line 718
    .line 719
    check-cast v19, Lkotlin/jvm/functions/Function1;

    .line 720
    .line 721
    move-object/from16 v21, v13

    .line 722
    .line 723
    check-cast v21, Lkotlin/jvm/functions/Function0;

    .line 724
    .line 725
    move-object/from16 v1, p1

    .line 726
    .line 727
    check-cast v1, Landroidx/compose/foundation/pager/PagerScopeImpl;

    .line 728
    .line 729
    move-object/from16 v2, p2

    .line 730
    .line 731
    check-cast v2, Ljava/lang/Integer;

    .line 732
    .line 733
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 734
    .line 735
    .line 736
    move-result v3

    .line 737
    move-object/from16 v4, p3

    .line 738
    .line 739
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 740
    .line 741
    move-object/from16 v5, p4

    .line 742
    .line 743
    check-cast v5, Ljava/lang/Integer;

    .line 744
    .line 745
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 746
    .line 747
    .line 748
    move-result v5

    .line 749
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 753
    .line 754
    .line 755
    move-result v1

    .line 756
    and-int/lit8 v8, v5, 0x70

    .line 757
    .line 758
    xor-int/lit8 v8, v8, 0x30

    .line 759
    .line 760
    const/16 v10, 0x20

    .line 761
    .line 762
    if-le v8, v10, :cond_1e

    .line 763
    .line 764
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 765
    .line 766
    .line 767
    move-result v8

    .line 768
    if-nez v8, :cond_20

    .line 769
    .line 770
    :cond_1e
    and-int/lit8 v5, v5, 0x30

    .line 771
    .line 772
    if-ne v5, v10, :cond_1f

    .line 773
    .line 774
    goto :goto_c

    .line 775
    :cond_1f
    move v12, v15

    .line 776
    :cond_20
    :goto_c
    or-int/2addr v1, v12

    .line 777
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v5

    .line 781
    if-nez v1, :cond_21

    .line 782
    .line 783
    if-ne v5, v9, :cond_22

    .line 784
    .line 785
    :cond_21
    new-instance v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 786
    .line 787
    invoke-direct {v5, v0, v3, v7}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(Lorg/wikipedia/random/RandomViewModel;ILkotlin/coroutines/Continuation;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 791
    .line 792
    .line 793
    :cond_22
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 794
    .line 795
    invoke-static {v4, v2, v5}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 796
    .line 797
    .line 798
    iget-object v1, v0, Lorg/wikipedia/random/RandomViewModel;->items:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 799
    .line 800
    iget-object v2, v0, Lorg/wikipedia/random/RandomViewModel;->loadError$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 801
    .line 802
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 803
    .line 804
    .line 805
    move-result v5

    .line 806
    if-ge v3, v5, :cond_23

    .line 807
    .line 808
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 809
    .line 810
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    invoke-direct {v2, v1}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 815
    .line 816
    .line 817
    :goto_d
    move-object/from16 v18, v2

    .line 818
    .line 819
    goto :goto_e

    .line 820
    :cond_23
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    check-cast v1, Ljava/lang/Throwable;

    .line 825
    .line 826
    if-eqz v1, :cond_24

    .line 827
    .line 828
    new-instance v1, Lorg/wikipedia/util/Resource$Error;

    .line 829
    .line 830
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v2

    .line 834
    check-cast v2, Ljava/lang/Throwable;

    .line 835
    .line 836
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 837
    .line 838
    .line 839
    invoke-direct {v1, v2}, Lorg/wikipedia/util/Resource$Error;-><init>(Ljava/lang/Throwable;)V

    .line 840
    .line 841
    .line 842
    move-object/from16 v18, v1

    .line 843
    .line 844
    goto :goto_e

    .line 845
    :cond_24
    new-instance v2, Lorg/wikipedia/util/Resource$Loading;

    .line 846
    .line 847
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 848
    .line 849
    .line 850
    goto :goto_d

    .line 851
    :goto_e
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 852
    .line 853
    .line 854
    move-result v1

    .line 855
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v2

    .line 859
    if-nez v1, :cond_25

    .line 860
    .line 861
    if-ne v2, v9, :cond_26

    .line 862
    .line 863
    :cond_25
    new-instance v2, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 864
    .line 865
    const/16 v1, 0x13

    .line 866
    .line 867
    invoke-direct {v2, v1, v0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 868
    .line 869
    .line 870
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 871
    .line 872
    .line 873
    :cond_26
    move-object/from16 v20, v2

    .line 874
    .line 875
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 876
    .line 877
    const/16 v23, 0x0

    .line 878
    .line 879
    move-object/from16 v22, v4

    .line 880
    .line 881
    invoke-static/range {v18 .. v23}, Lorg/wikipedia/random/RandomScreenKt;->RandomItemPage(Lorg/wikipedia/util/Resource;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 882
    .line 883
    .line 884
    return-object v6

    .line 885
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
