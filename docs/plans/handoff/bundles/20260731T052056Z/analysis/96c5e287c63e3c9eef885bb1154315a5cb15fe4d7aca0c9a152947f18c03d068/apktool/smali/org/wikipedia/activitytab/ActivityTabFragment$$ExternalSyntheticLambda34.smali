.class public final synthetic Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda34;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda34;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda34;->f$1:Ljava/lang/Object;

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
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda34;->$r8$classId:I

    .line 4
    .line 5
    const/high16 v2, 0x41800000    # 16.0f

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 8
    .line 9
    const/16 v4, 0x90

    .line 10
    .line 11
    const/16 v5, 0x10

    .line 12
    .line 13
    const/16 v6, 0x20

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 17
    .line 18
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    const/4 v10, 0x1

    .line 21
    const/4 v11, 0x2

    .line 22
    iget-object v12, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda34;->f$1:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v0, v0, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda34;->f$0:Ljava/lang/Object;

    .line 25
    .line 26
    packed-switch v1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    check-cast v0, Lorg/wikipedia/yearinreview/YearInReviewActivity;

    .line 30
    .line 31
    check-cast v12, Lkotlinx/coroutines/CoroutineScope;

    .line 32
    .line 33
    move-object/from16 v1, p1

    .line 34
    .line 35
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 36
    .line 37
    move-object/from16 v2, p2

    .line 38
    .line 39
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 40
    .line 41
    move-object/from16 v3, p3

    .line 42
    .line 43
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 44
    .line 45
    move-object/from16 v4, p4

    .line 46
    .line 47
    check-cast v4, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    sget v4, Lorg/wikipedia/yearinreview/YearInReviewActivity;->$r8$clinit:I

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lorg/wikipedia/yearinreview/YearInReviewActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 61
    .line 62
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lorg/wikipedia/yearinreview/YearInReviewViewModel;

    .line 67
    .line 68
    iget-object v1, v1, Lorg/wikipedia/yearinreview/YearInReviewViewModel;->uiScreenListState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 69
    .line 70
    invoke-static {v1, v3}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    move-object v14, v1

    .line 79
    check-cast v14, Lorg/wikipedia/util/UiState;

    .line 80
    .line 81
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-nez v1, :cond_0

    .line 90
    .line 91
    if-ne v2, v8, :cond_1

    .line 92
    .line 93
    :cond_0
    new-instance v2, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda0;

    .line 94
    .line 95
    invoke-direct {v2, v0, v11}, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/yearinreview/YearInReviewActivity;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    move-object v15, v2

    .line 102
    check-cast v15, Lkotlin/jvm/functions/Function2;

    .line 103
    .line 104
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-nez v1, :cond_2

    .line 113
    .line 114
    if-ne v2, v8, :cond_3

    .line 115
    .line 116
    :cond_2
    new-instance v2, Lorg/wikipedia/wiktionary/WiktionaryDialog$$ExternalSyntheticLambda2;

    .line 117
    .line 118
    invoke-direct {v2, v10, v0}, Lorg/wikipedia/wiktionary/WiktionaryDialog$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    move-object/from16 v16, v2

    .line 125
    .line 126
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 127
    .line 128
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    or-int/2addr v1, v2

    .line 137
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    if-nez v1, :cond_4

    .line 142
    .line 143
    if-ne v2, v8, :cond_5

    .line 144
    .line 145
    :cond_4
    new-instance v2, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;

    .line 146
    .line 147
    const/16 v1, 0x13

    .line 148
    .line 149
    invoke-direct {v2, v1, v12, v0}, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    move-object/from16 v17, v2

    .line 156
    .line 157
    check-cast v17, Lkotlin/jvm/functions/Function2;

    .line 158
    .line 159
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    if-nez v1, :cond_6

    .line 168
    .line 169
    if-ne v2, v8, :cond_7

    .line 170
    .line 171
    :cond_6
    new-instance v2, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda2;

    .line 172
    .line 173
    invoke-direct {v2, v0, v10}, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/yearinreview/YearInReviewActivity;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_7
    move-object/from16 v18, v2

    .line 180
    .line 181
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 182
    .line 183
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    if-nez v1, :cond_8

    .line 192
    .line 193
    if-ne v2, v8, :cond_9

    .line 194
    .line 195
    :cond_8
    new-instance v2, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda2;

    .line 196
    .line 197
    invoke-direct {v2, v0, v11}, Lorg/wikipedia/yearinreview/YearInReviewActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/yearinreview/YearInReviewActivity;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_9
    move-object/from16 v19, v2

    .line 204
    .line 205
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 206
    .line 207
    const/16 v21, 0x0

    .line 208
    .line 209
    const/16 v22, 0x1

    .line 210
    .line 211
    const/4 v13, 0x0

    .line 212
    move-object/from16 v20, v3

    .line 213
    .line 214
    invoke-static/range {v13 .. v22}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->YearInReviewScreenDeck(Landroidx/compose/ui/Modifier;Lorg/wikipedia/util/UiState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)V

    .line 215
    .line 216
    .line 217
    return-object v9

    .line 218
    :pswitch_0
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 219
    .line 220
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 221
    .line 222
    move-object/from16 v1, p1

    .line 223
    .line 224
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 225
    .line 226
    move-object/from16 v2, p2

    .line 227
    .line 228
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 229
    .line 230
    move-object/from16 v3, p3

    .line 231
    .line 232
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 233
    .line 234
    move-object/from16 v4, p4

    .line 235
    .line 236
    check-cast v4, Ljava/lang/Integer;

    .line 237
    .line 238
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    or-int/2addr v1, v2

    .line 256
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    if-nez v1, :cond_a

    .line 261
    .line 262
    if-ne v2, v8, :cond_b

    .line 263
    .line 264
    :cond_a
    new-instance v2, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13;

    .line 265
    .line 266
    const/4 v1, 0x3

    .line 267
    invoke-direct {v2, v0, v12, v1}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13;-><init>(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    :cond_b
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 274
    .line 275
    const/4 v0, 0x0

    .line 276
    invoke-static {v0, v2, v3, v7}, Lokio/Okio__JvmOkioKt;->CommunityModulesScreen(Lorg/wikipedia/settings/homefeed/ModulesViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 277
    .line 278
    .line 279
    return-object v9

    .line 280
    :pswitch_1
    check-cast v0, Lorg/wikipedia/language/AppLanguageState;

    .line 281
    .line 282
    check-cast v12, Ljava/util/List;

    .line 283
    .line 284
    move-object/from16 v1, p1

    .line 285
    .line 286
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 287
    .line 288
    move-object/from16 v8, p2

    .line 289
    .line 290
    check-cast v8, Ljava/lang/Integer;

    .line 291
    .line 292
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 293
    .line 294
    .line 295
    move-result v8

    .line 296
    move-object/from16 v11, p3

    .line 297
    .line 298
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 299
    .line 300
    move-object/from16 v13, p4

    .line 301
    .line 302
    check-cast v13, Ljava/lang/Integer;

    .line 303
    .line 304
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 305
    .line 306
    .line 307
    move-result v13

    .line 308
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    and-int/lit8 v1, v13, 0x30

    .line 312
    .line 313
    if-nez v1, :cond_d

    .line 314
    .line 315
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-eqz v1, :cond_c

    .line 320
    .line 321
    move v5, v6

    .line 322
    :cond_c
    or-int/2addr v13, v5

    .line 323
    :cond_d
    and-int/lit16 v1, v13, 0x91

    .line 324
    .line 325
    if-eq v1, v4, :cond_e

    .line 326
    .line 327
    move v1, v10

    .line 328
    goto :goto_0

    .line 329
    :cond_e
    move v1, v7

    .line 330
    :goto_0
    and-int/lit8 v4, v13, 0x1

    .line 331
    .line 332
    invoke-virtual {v11, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-eqz v1, :cond_11

    .line 337
    .line 338
    if-nez v8, :cond_f

    .line 339
    .line 340
    goto :goto_1

    .line 341
    :cond_f
    move v10, v7

    .line 342
    :goto_1
    if-eqz v10, :cond_10

    .line 343
    .line 344
    const v1, -0x7a1a454f

    .line 345
    .line 346
    .line 347
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 348
    .line 349
    .line 350
    const/high16 v1, 0x3f000000    # 0.5f

    .line 351
    .line 352
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    const/high16 v4, 0x3f800000    # 1.0f

    .line 357
    .line 358
    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 363
    .line 364
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 369
    .line 370
    iget-wide v4, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 371
    .line 372
    sget-object v6, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 373
    .line 374
    invoke-static {v1, v4, v5, v6}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-static {v11, v1}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 379
    .line 380
    .line 381
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-static {v11, v1}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 389
    .line 390
    .line 391
    goto :goto_2

    .line 392
    :cond_10
    const v1, -0x7a15bd5a

    .line 393
    .line 394
    .line 395
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 399
    .line 400
    .line 401
    :goto_2
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    check-cast v1, Ljava/lang/String;

    .line 406
    .line 407
    invoke-static {v0, v1, v10, v11, v7}, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt;->InitialOnboardingLanguageItem(Lorg/wikipedia/language/AppLanguageState;Ljava/lang/String;ZLandroidx/compose/runtime/GapComposer;I)V

    .line 408
    .line 409
    .line 410
    goto :goto_3

    .line 411
    :cond_11
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 412
    .line 413
    .line 414
    :goto_3
    return-object v9

    .line 415
    :pswitch_2
    check-cast v0, Landroidx/paging/compose/LazyPagingItems;

    .line 416
    .line 417
    check-cast v12, Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 418
    .line 419
    move-object/from16 v1, p1

    .line 420
    .line 421
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 422
    .line 423
    move-object/from16 v13, p2

    .line 424
    .line 425
    check-cast v13, Ljava/lang/Integer;

    .line 426
    .line 427
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 428
    .line 429
    .line 430
    move-result v13

    .line 431
    move-object/from16 v14, p3

    .line 432
    .line 433
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 434
    .line 435
    move-object/from16 v15, p4

    .line 436
    .line 437
    check-cast v15, Ljava/lang/Integer;

    .line 438
    .line 439
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 440
    .line 441
    .line 442
    move-result v15

    .line 443
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    and-int/lit8 v1, v15, 0x30

    .line 447
    .line 448
    if-nez v1, :cond_13

    .line 449
    .line 450
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    if-eqz v1, :cond_12

    .line 455
    .line 456
    move v5, v6

    .line 457
    :cond_12
    or-int/2addr v15, v5

    .line 458
    :cond_13
    and-int/lit16 v1, v15, 0x91

    .line 459
    .line 460
    if-eq v1, v4, :cond_14

    .line 461
    .line 462
    move v1, v10

    .line 463
    goto :goto_4

    .line 464
    :cond_14
    move v1, v7

    .line 465
    :goto_4
    and-int/lit8 v4, v15, 0x1

    .line 466
    .line 467
    invoke-virtual {v14, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    if-eqz v1, :cond_1a

    .line 472
    .line 473
    iget-object v1, v0, Landroidx/paging/compose/LazyPagingItems;->pagingDataPresenter:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 474
    .line 475
    invoke-virtual {v1, v13}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->get(I)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    iget-object v0, v0, Landroidx/paging/compose/LazyPagingItems;->itemSnapshotList$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 479
    .line 480
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    check-cast v0, Landroidx/paging/ItemSnapshotList;

    .line 485
    .line 486
    invoke-virtual {v0, v13}, Landroidx/paging/ItemSnapshotList;->get(I)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    check-cast v0, Lorg/wikipedia/activitytab/TimelineDisplayItem;

    .line 491
    .line 492
    instance-of v1, v0, Lorg/wikipedia/activitytab/TimelineDisplayItem$DateSeparator;

    .line 493
    .line 494
    if-eqz v1, :cond_15

    .line 495
    .line 496
    const v1, 0x4d449d5e    # 2.0616547E8f

    .line 497
    .line 498
    .line 499
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 500
    .line 501
    .line 502
    check-cast v0, Lorg/wikipedia/activitytab/TimelineDisplayItem$DateSeparator;

    .line 503
    .line 504
    iget-object v0, v0, Lorg/wikipedia/activitytab/TimelineDisplayItem$DateSeparator;->date:Ljava/util/Date;

    .line 505
    .line 506
    const/4 v1, 0x0

    .line 507
    invoke-static {v3, v2, v1, v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 508
    .line 509
    .line 510
    move-result-object v15

    .line 511
    const/high16 v19, 0x41000000    # 8.0f

    .line 512
    .line 513
    const/16 v20, 0x5

    .line 514
    .line 515
    const/16 v16, 0x0

    .line 516
    .line 517
    const/high16 v17, 0x41b00000    # 22.0f

    .line 518
    .line 519
    const/16 v18, 0x0

    .line 520
    .line 521
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    const/16 v2, 0x30

    .line 526
    .line 527
    invoke-static {v0, v1, v14, v2, v7}, Lorg/wikipedia/activitytab/timeline/TimelineModuleKt;->TimelineDateSeparator(Ljava/util/Date;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 531
    .line 532
    .line 533
    goto :goto_5

    .line 534
    :cond_15
    instance-of v1, v0, Lorg/wikipedia/activitytab/TimelineDisplayItem$TimelineEntry;

    .line 535
    .line 536
    if-eqz v1, :cond_18

    .line 537
    .line 538
    const v1, 0x4d4bf4fc    # 2.1386438E8f

    .line 539
    .line 540
    .line 541
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 542
    .line 543
    .line 544
    check-cast v0, Lorg/wikipedia/activitytab/TimelineDisplayItem$TimelineEntry;

    .line 545
    .line 546
    iget-object v0, v0, Lorg/wikipedia/activitytab/TimelineDisplayItem$TimelineEntry;->item:Lorg/wikipedia/activitytab/timeline/TimelineItem;

    .line 547
    .line 548
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    if-nez v1, :cond_16

    .line 557
    .line 558
    if-ne v2, v8, :cond_17

    .line 559
    .line 560
    :cond_16
    new-instance v2, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda4;

    .line 561
    .line 562
    invoke-direct {v2, v12, v11}, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;I)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    :cond_17
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 569
    .line 570
    invoke-static {v0, v2, v14, v7}, Lorg/wikipedia/activitytab/timeline/TimelineModuleKt;->TimelineModule(Lorg/wikipedia/activitytab/timeline/TimelineItem;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 571
    .line 572
    .line 573
    const/high16 v0, 0x40c00000    # 6.0f

    .line 574
    .line 575
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 583
    .line 584
    .line 585
    goto :goto_5

    .line 586
    :cond_18
    if-nez v0, :cond_19

    .line 587
    .line 588
    const v0, 0x4d531a97    # 2.2135845E8f

    .line 589
    .line 590
    .line 591
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 595
    .line 596
    .line 597
    goto :goto_5

    .line 598
    :cond_19
    const v0, 0x1b443aeb

    .line 599
    .line 600
    .line 601
    invoke-static {v14, v0, v7}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lcoil3/network/HttpException;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    throw v0

    .line 606
    :cond_1a
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 607
    .line 608
    .line 609
    :goto_5
    return-object v9

    .line 610
    nop

    .line 611
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
