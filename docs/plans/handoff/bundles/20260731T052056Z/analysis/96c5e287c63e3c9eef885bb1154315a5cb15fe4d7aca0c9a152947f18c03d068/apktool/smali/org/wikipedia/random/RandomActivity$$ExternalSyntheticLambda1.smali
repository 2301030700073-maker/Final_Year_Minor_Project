.class public final synthetic Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 11
    iput p4, p0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 57

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/high16 v2, 0x41800000    # 16.0f

    .line 6
    .line 7
    const/16 v3, 0xb

    .line 8
    .line 9
    const/high16 v4, 0x41000000    # 8.0f

    .line 10
    .line 11
    const/16 v5, 0x30

    .line 12
    .line 13
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 14
    .line 15
    const/high16 v7, 0x3f800000    # 1.0f

    .line 16
    .line 17
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x2

    .line 21
    const/4 v11, 0x3

    .line 22
    const/4 v12, 0x0

    .line 23
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    .line 25
    iget-object v14, v0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v0, v0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v15, 0x1

    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    check-cast v0, Lorg/wikipedia/yearinreview/YearInReviewCaptureRequest;

    .line 34
    .line 35
    check-cast v14, Lkotlin/jvm/functions/Function0;

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
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const/16 v2, 0x31

    .line 49
    .line 50
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v0, v14, v1, v2}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->YearInReviewScreenCaptureHandler(Lorg/wikipedia/yearinreview/YearInReviewCaptureRequest;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 55
    .line 56
    .line 57
    return-object v13

    .line 58
    :pswitch_0
    check-cast v0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;

    .line 59
    .line 60
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 61
    .line 62
    move-object/from16 v1, p1

    .line 63
    .line 64
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 65
    .line 66
    move-object/from16 v2, p2

    .line 67
    .line 68
    check-cast v2, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-static {v0, v14, v1, v2}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->ShareHighlightsScreenCapture(Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 78
    .line 79
    .line 80
    return-object v13

    .line 81
    :pswitch_1
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 82
    .line 83
    check-cast v14, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;

    .line 84
    .line 85
    move-object/from16 v1, p1

    .line 86
    .line 87
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 88
    .line 89
    move-object/from16 v2, p2

    .line 90
    .line 91
    check-cast v2, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-static {v0, v14, v1, v2}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->HighlightsContent(Landroidx/compose/ui/Modifier;Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightItem;Landroidx/compose/runtime/GapComposer;I)V

    .line 101
    .line 102
    .line 103
    return-object v13

    .line 104
    :pswitch_2
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 105
    .line 106
    check-cast v14, Lorg/wikipedia/yearinreview/YearInReviewActivity;

    .line 107
    .line 108
    move-object/from16 v1, p1

    .line 109
    .line 110
    check-cast v1, Landroidx/compose/foundation/pager/PagerState;

    .line 111
    .line 112
    move-object/from16 v2, p2

    .line 113
    .line 114
    check-cast v2, Lorg/wikipedia/yearinreview/YearInReviewScreenData;

    .line 115
    .line 116
    sget v3, Lorg/wikipedia/yearinreview/YearInReviewActivity;->$r8$clinit:I

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    const/16 v3, 0x7e9

    .line 125
    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 131
    .line 132
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getYearInReviewModelData()Ljava/util/Map;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 137
    .line 138
    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    check-cast v4, Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 146
    .line 147
    if-eqz v4, :cond_0

    .line 148
    .line 149
    iget v6, v4, Lorg/wikipedia/yearinreview/YearInReviewModel;->slideViewedCount:I

    .line 150
    .line 151
    add-int/2addr v6, v15

    .line 152
    const v7, 0xdffff

    .line 153
    .line 154
    .line 155
    invoke-static {v4, v6, v12, v7}, Lorg/wikipedia/yearinreview/YearInReviewModel;->copy$default(Lorg/wikipedia/yearinreview/YearInReviewModel;IZI)Lorg/wikipedia/yearinreview/YearInReviewModel;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    invoke-static {v5}, Lorg/wikipedia/settings/Prefs;->setYearInReviewModelData(Ljava/util/Map;)V

    .line 163
    .line 164
    .line 165
    :cond_0
    new-instance v3, Landroidx/compose/foundation/pager/PagerState$requestScrollToPage$1;

    .line 166
    .line 167
    invoke-direct {v3, v1, v9, v11}, Landroidx/compose/foundation/pager/PagerState$requestScrollToPage$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;I)V

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v9, v9, v3, v11}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 171
    .line 172
    .line 173
    instance-of v0, v2, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;

    .line 174
    .line 175
    if-eqz v0, :cond_2

    .line 176
    .line 177
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getYearInReviewSurveyState()Lorg/wikipedia/yearinreview/YearInReviewSurveyState;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    sget-object v1, Lorg/wikipedia/yearinreview/YearInReviewSurveyState;->NOT_TRIGGERED:Lorg/wikipedia/yearinreview/YearInReviewSurveyState;

    .line 182
    .line 183
    if-ne v0, v1, :cond_1

    .line 184
    .line 185
    sget-object v0, Lorg/wikipedia/yearinreview/YearInReviewSurveyState;->SHOULD_SHOW:Lorg/wikipedia/yearinreview/YearInReviewSurveyState;

    .line 186
    .line 187
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setYearInReviewSurveyState(Lorg/wikipedia/yearinreview/YearInReviewSurveyState;)V

    .line 188
    .line 189
    .line 190
    :cond_1
    invoke-virtual {v14}, Landroid/app/Activity;->finish()V

    .line 191
    .line 192
    .line 193
    :cond_2
    return-object v13

    .line 194
    :pswitch_3
    check-cast v0, Lorg/wikipedia/wiktionary/WiktionaryViewModel;

    .line 195
    .line 196
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 197
    .line 198
    move-object/from16 v1, p1

    .line 199
    .line 200
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 201
    .line 202
    move-object/from16 v2, p2

    .line 203
    .line 204
    check-cast v2, Ljava/lang/Integer;

    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    invoke-static {v0, v14, v1, v2}, Lorg/jsoup/Jsoup;->WiktionaryDialogScreen(Lorg/wikipedia/wiktionary/WiktionaryViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 214
    .line 215
    .line 216
    return-object v13

    .line 217
    :pswitch_4
    check-cast v0, Landroid/content/Context;

    .line 218
    .line 219
    check-cast v14, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 220
    .line 221
    move-object/from16 v1, p1

    .line 222
    .line 223
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 224
    .line 225
    move-object/from16 v2, p2

    .line 226
    .line 227
    check-cast v2, Ljava/lang/Integer;

    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    and-int/lit8 v3, v2, 0x3

    .line 234
    .line 235
    if-eq v3, v10, :cond_3

    .line 236
    .line 237
    move v3, v15

    .line 238
    goto :goto_0

    .line 239
    :cond_3
    move v3, v12

    .line 240
    :goto_0
    and-int/2addr v2, v15

    .line 241
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-eqz v2, :cond_4

    .line 246
    .line 247
    const v2, 0x7f120737

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v16

    .line 254
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    iget-wide v2, v14, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->contentColor:J

    .line 258
    .line 259
    iget-wide v4, v14, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->backgroundColor:J

    .line 260
    .line 261
    new-array v0, v12, [Landroidx/glance/action/ActionParameters$Pair;

    .line 262
    .line 263
    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, [Landroidx/glance/action/ActionParameters$Pair;

    .line 268
    .line 269
    invoke-static {v0}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    new-instance v6, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 274
    .line 275
    const-class v7, Lorg/wikipedia/widgets/readingchallenge/RandomArticleWidgetAction;

    .line 276
    .line 277
    invoke-direct {v6, v7, v0}, Landroidx/glance/appwidget/action/RunCallbackAction;-><init>(Ljava/lang/Class;Landroidx/glance/action/MutableActionParameters;)V

    .line 278
    .line 279
    .line 280
    const/16 v25, 0x0

    .line 281
    .line 282
    const/16 v26, 0x30

    .line 283
    .line 284
    const/16 v22, 0x0

    .line 285
    .line 286
    const/16 v23, 0x0

    .line 287
    .line 288
    move-object/from16 v24, v1

    .line 289
    .line 290
    move-wide/from16 v18, v2

    .line 291
    .line 292
    move-wide/from16 v20, v4

    .line 293
    .line 294
    move-object/from16 v17, v6

    .line 295
    .line 296
    invoke-static/range {v16 .. v26}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetButton-Y0xEhic(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;JJLandroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 297
    .line 298
    .line 299
    goto :goto_1

    .line 300
    :cond_4
    move-object/from16 v24, v1

    .line 301
    .line 302
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 303
    .line 304
    .line 305
    :goto_1
    return-object v13

    .line 306
    :pswitch_5
    move-object/from16 v25, v0

    .line 307
    .line 308
    check-cast v25, Ljava/lang/String;

    .line 309
    .line 310
    check-cast v14, Landroid/content/Context;

    .line 311
    .line 312
    move-object/from16 v0, p1

    .line 313
    .line 314
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 315
    .line 316
    move-object/from16 v1, p2

    .line 317
    .line 318
    check-cast v1, Ljava/lang/Integer;

    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    and-int/lit8 v2, v1, 0x3

    .line 325
    .line 326
    if-eq v2, v10, :cond_5

    .line 327
    .line 328
    move v2, v15

    .line 329
    goto :goto_2

    .line 330
    :cond_5
    move v2, v12

    .line 331
    :goto_2
    and-int/2addr v1, v15

    .line 332
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-eqz v1, :cond_6

    .line 337
    .line 338
    const/16 v1, 0x10

    .line 339
    .line 340
    invoke-static {v1}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 341
    .line 342
    .line 343
    move-result-wide v26

    .line 344
    sget-wide v1, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->primary:J

    .line 345
    .line 346
    new-instance v3, Landroidx/compose/ui/graphics/Color;

    .line 347
    .line 348
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 349
    .line 350
    .line 351
    const v36, 0x1b0c30

    .line 352
    .line 353
    .line 354
    const/16 v37, 0x90

    .line 355
    .line 356
    const v28, 0x7f08016a

    .line 357
    .line 358
    .line 359
    const/high16 v29, 0x41c00000    # 24.0f

    .line 360
    .line 361
    const/16 v30, 0x0

    .line 362
    .line 363
    const/16 v34, 0x0

    .line 364
    .line 365
    move-object/from16 v35, v0

    .line 366
    .line 367
    move-wide/from16 v32, v1

    .line 368
    .line 369
    move-object/from16 v31, v3

    .line 370
    .line 371
    invoke-static/range {v25 .. v37}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetBadge-LNF6LQw(Ljava/lang/String;JIFFLandroidx/compose/ui/graphics/Color;JLandroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 372
    .line 373
    .line 374
    new-instance v1, Landroidx/glance/layout/HeightModifier;

    .line 375
    .line 376
    new-instance v2, Landroidx/glance/unit/Dimension$Dp;

    .line 377
    .line 378
    invoke-direct {v2, v4}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 379
    .line 380
    .line 381
    invoke-direct {v1, v2}, Landroidx/glance/layout/HeightModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 382
    .line 383
    .line 384
    invoke-static {v1, v0, v12}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 385
    .line 386
    .line 387
    const v1, 0x7f120728

    .line 388
    .line 389
    .line 390
    invoke-virtual {v14, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v26

    .line 394
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    new-array v1, v12, [Landroidx/glance/action/ActionParameters$Pair;

    .line 398
    .line 399
    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    check-cast v1, [Landroidx/glance/action/ActionParameters$Pair;

    .line 404
    .line 405
    invoke-static {v1}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    new-instance v2, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 410
    .line 411
    const-class v3, Lorg/wikipedia/widgets/readingchallenge/ChallengeRewardAction;

    .line 412
    .line 413
    invoke-direct {v2, v3, v1}, Landroidx/glance/appwidget/action/RunCallbackAction;-><init>(Ljava/lang/Class;Landroidx/glance/action/MutableActionParameters;)V

    .line 414
    .line 415
    .line 416
    const/16 v35, 0x0

    .line 417
    .line 418
    const/16 v36, 0x3c

    .line 419
    .line 420
    const-wide/16 v28, 0x0

    .line 421
    .line 422
    const-wide/16 v30, 0x0

    .line 423
    .line 424
    const/16 v32, 0x0

    .line 425
    .line 426
    const/16 v33, 0x0

    .line 427
    .line 428
    move-object/from16 v34, v0

    .line 429
    .line 430
    move-object/from16 v27, v2

    .line 431
    .line 432
    invoke-static/range {v26 .. v36}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetButton-Y0xEhic(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;JJLandroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 433
    .line 434
    .line 435
    goto :goto_3

    .line 436
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 437
    .line 438
    .line 439
    :goto_3
    return-object v13

    .line 440
    :pswitch_6
    move-object v1, v0

    .line 441
    check-cast v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;

    .line 442
    .line 443
    check-cast v14, Ljava/util/List;

    .line 444
    .line 445
    move-object/from16 v7, p1

    .line 446
    .line 447
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 448
    .line 449
    move-object/from16 v0, p2

    .line 450
    .line 451
    check-cast v0, Ljava/lang/Integer;

    .line 452
    .line 453
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    sget v2, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;->$r8$clinit:I

    .line 458
    .line 459
    and-int/lit8 v2, v0, 0x3

    .line 460
    .line 461
    if-eq v2, v10, :cond_7

    .line 462
    .line 463
    move v2, v15

    .line 464
    goto :goto_4

    .line 465
    :cond_7
    move v2, v12

    .line 466
    :goto_4
    and-int/2addr v0, v15

    .line 467
    invoke-virtual {v7, v0, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    if-eqz v0, :cond_16

    .line 472
    .line 473
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    if-ne v0, v8, :cond_8

    .line 478
    .line 479
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/GapComposer;)Lkotlinx/coroutines/CoroutineScope;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    :cond_8
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 487
    .line 488
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    if-ne v2, v8, :cond_9

    .line 493
    .line 494
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 495
    .line 496
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    :cond_9
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 504
    .line 505
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    check-cast v4, Ljava/lang/Boolean;

    .line 510
    .line 511
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 512
    .line 513
    .line 514
    move-result v4

    .line 515
    if-eqz v4, :cond_f

    .line 516
    .line 517
    const v4, -0x2fd6396

    .line 518
    .line 519
    .line 520
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 521
    .line 522
    .line 523
    const v4, 0x7f12071d

    .line 524
    .line 525
    .line 526
    invoke-static {v4, v7}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v17

    .line 530
    const v4, 0x7f12071b

    .line 531
    .line 532
    .line 533
    invoke-static {v4, v7}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v20

    .line 537
    const v4, 0x7f12071a

    .line 538
    .line 539
    .line 540
    invoke-static {v4, v7}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v24

    .line 544
    const v4, 0x7f12071c

    .line 545
    .line 546
    .line 547
    invoke-static {v4, v7}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v27

    .line 551
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 552
    .line 553
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v4

    .line 557
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 558
    .line 559
    iget-wide v4, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 560
    .line 561
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v6

    .line 565
    if-ne v6, v8, :cond_a

    .line 566
    .line 567
    new-instance v6, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;

    .line 568
    .line 569
    invoke-direct {v6, v2, v3}, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    :cond_a
    move-object/from16 v30, v6

    .line 576
    .line 577
    check-cast v30, Lkotlin/jvm/functions/Function0;

    .line 578
    .line 579
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v3

    .line 583
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    if-nez v3, :cond_b

    .line 588
    .line 589
    if-ne v6, v8, :cond_c

    .line 590
    .line 591
    :cond_b
    new-instance v6, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity$$ExternalSyntheticLambda3;

    .line 592
    .line 593
    invoke-direct {v6, v1, v12}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;I)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 597
    .line 598
    .line 599
    :cond_c
    move-object/from16 v31, v6

    .line 600
    .line 601
    check-cast v31, Lkotlin/jvm/functions/Function0;

    .line 602
    .line 603
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v3

    .line 607
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v6

    .line 611
    if-nez v3, :cond_d

    .line 612
    .line 613
    if-ne v6, v8, :cond_e

    .line 614
    .line 615
    :cond_d
    new-instance v6, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity$$ExternalSyntheticLambda3;

    .line 616
    .line 617
    invoke-direct {v6, v1, v15}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;I)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 621
    .line 622
    .line 623
    :cond_e
    move-object/from16 v32, v6

    .line 624
    .line 625
    check-cast v32, Lkotlin/jvm/functions/Function0;

    .line 626
    .line 627
    const/16 v35, 0x180

    .line 628
    .line 629
    const/16 v36, 0x2ed

    .line 630
    .line 631
    const/16 v16, 0x0

    .line 632
    .line 633
    const/16 v18, 0x0

    .line 634
    .line 635
    const/16 v19, 0x0

    .line 636
    .line 637
    const/16 v21, 0x0

    .line 638
    .line 639
    const/16 v22, 0x0

    .line 640
    .line 641
    const/16 v23, 0x0

    .line 642
    .line 643
    const-wide/16 v25, 0x0

    .line 644
    .line 645
    const/16 v34, 0x0

    .line 646
    .line 647
    move-wide/from16 v28, v4

    .line 648
    .line 649
    move-object/from16 v33, v7

    .line 650
    .line 651
    invoke-static/range {v16 .. v36}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikipediaAlertDialog-sK9R1Co(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Modifier;ILjava/lang/String;Landroidx/compose/ui/Modifier;ILkotlin/jvm/functions/Function2;Ljava/lang/String;JLjava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;III)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 655
    .line 656
    .line 657
    goto :goto_5

    .line 658
    :cond_f
    const v3, -0x2e9aa95

    .line 659
    .line 660
    .line 661
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 665
    .line 666
    .line 667
    :goto_5
    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 668
    .line 669
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-result v4

    .line 673
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v5

    .line 677
    if-nez v4, :cond_10

    .line 678
    .line 679
    if-ne v5, v8, :cond_11

    .line 680
    .line 681
    :cond_10
    new-instance v5, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity$$ExternalSyntheticLambda3;

    .line 682
    .line 683
    invoke-direct {v5, v1, v10}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;I)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    :cond_11
    move-object v4, v5

    .line 690
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 691
    .line 692
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 693
    .line 694
    .line 695
    move-result v5

    .line 696
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v6

    .line 700
    if-nez v5, :cond_12

    .line 701
    .line 702
    if-ne v6, v8, :cond_13

    .line 703
    .line 704
    :cond_12
    new-instance v6, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity$$ExternalSyntheticLambda3;

    .line 705
    .line 706
    invoke-direct {v6, v1, v11}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;I)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 710
    .line 711
    .line 712
    :cond_13
    move-object v5, v6

    .line 713
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 714
    .line 715
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    move-result v6

    .line 719
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    move-result v9

    .line 723
    or-int/2addr v6, v9

    .line 724
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v9

    .line 728
    if-nez v6, :cond_14

    .line 729
    .line 730
    if-ne v9, v8, :cond_15

    .line 731
    .line 732
    :cond_14
    new-instance v9, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;

    .line 733
    .line 734
    const/16 v6, 0x14

    .line 735
    .line 736
    invoke-direct {v9, v1, v0, v2, v6}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 740
    .line 741
    .line 742
    :cond_15
    move-object v6, v9

    .line 743
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 744
    .line 745
    const/4 v8, 0x6

    .line 746
    move-object v2, v3

    .line 747
    move-object v3, v14

    .line 748
    invoke-virtual/range {v1 .. v8}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;->OnboardingScreen(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 749
    .line 750
    .line 751
    goto :goto_6

    .line 752
    :cond_16
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 753
    .line 754
    .line 755
    :goto_6
    return-object v13

    .line 756
    :pswitch_7
    check-cast v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;

    .line 757
    .line 758
    move-object/from16 v16, v14

    .line 759
    .line 760
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 761
    .line 762
    move-object/from16 v1, p1

    .line 763
    .line 764
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 765
    .line 766
    move-object/from16 v2, p2

    .line 767
    .line 768
    check-cast v2, Ljava/lang/Integer;

    .line 769
    .line 770
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 771
    .line 772
    .line 773
    move-result v2

    .line 774
    and-int/lit8 v3, v2, 0x3

    .line 775
    .line 776
    if-eq v3, v10, :cond_17

    .line 777
    .line 778
    move v3, v15

    .line 779
    goto :goto_7

    .line 780
    :cond_17
    move v3, v12

    .line 781
    :goto_7
    and-int/2addr v2, v15

    .line 782
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 783
    .line 784
    .line 785
    move-result v2

    .line 786
    if-eqz v2, :cond_1b

    .line 787
    .line 788
    invoke-static {}, Lorg/wikipedia/util/DeviceUtil;->isPinWidgetSupported()Z

    .line 789
    .line 790
    .line 791
    move-result v2

    .line 792
    if-eqz v2, :cond_1a

    .line 793
    .line 794
    const v2, -0x52961b85

    .line 795
    .line 796
    .line 797
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 798
    .line 799
    .line 800
    move-object/from16 v20, v16

    .line 801
    .line 802
    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 803
    .line 804
    .line 805
    move-result-object v16

    .line 806
    const v2, 0x7f12070e

    .line 807
    .line 808
    .line 809
    invoke-static {v2, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v17

    .line 813
    const v2, 0x7f12070f

    .line 814
    .line 815
    .line 816
    invoke-static {v2, v1}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v18

    .line 820
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 821
    .line 822
    .line 823
    move-result v2

    .line 824
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    if-nez v2, :cond_18

    .line 829
    .line 830
    if-ne v3, v8, :cond_19

    .line 831
    .line 832
    :cond_18
    new-instance v3, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2;

    .line 833
    .line 834
    invoke-direct {v3, v0, v10}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;I)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 838
    .line 839
    .line 840
    :cond_19
    move-object/from16 v19, v3

    .line 841
    .line 842
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 843
    .line 844
    const/16 v22, 0x6

    .line 845
    .line 846
    move-object/from16 v21, v1

    .line 847
    .line 848
    invoke-static/range {v16 .. v22}, Lorg/wikipedia/compose/components/TabsBoxKt;->TwoButtonBottomBar(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 849
    .line 850
    .line 851
    move-object/from16 v0, v21

    .line 852
    .line 853
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 854
    .line 855
    .line 856
    goto :goto_8

    .line 857
    :cond_1a
    move-object v0, v1

    .line 858
    const v1, -0x5288cc8c

    .line 859
    .line 860
    .line 861
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 862
    .line 863
    .line 864
    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 865
    .line 866
    .line 867
    move-result-object v1

    .line 868
    sget-object v2, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 869
    .line 870
    sget-object v2, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 871
    .line 872
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v2

    .line 876
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 877
    .line 878
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 879
    .line 880
    const-wide/16 v19, 0x0

    .line 881
    .line 882
    const/16 v22, 0xe

    .line 883
    .line 884
    move-object/from16 v21, v0

    .line 885
    .line 886
    move-wide/from16 v17, v2

    .line 887
    .line 888
    invoke-static/range {v17 .. v22}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/ButtonColors;

    .line 889
    .line 890
    .line 891
    move-result-object v20

    .line 892
    sget-object v24, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->lambda$-697822892:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 893
    .line 894
    const v26, 0x30000030

    .line 895
    .line 896
    .line 897
    const/16 v27, 0x1ec

    .line 898
    .line 899
    const/16 v18, 0x0

    .line 900
    .line 901
    const/16 v19, 0x0

    .line 902
    .line 903
    const/16 v21, 0x0

    .line 904
    .line 905
    const/16 v22, 0x0

    .line 906
    .line 907
    const/16 v23, 0x0

    .line 908
    .line 909
    move-object/from16 v25, v0

    .line 910
    .line 911
    move-object/from16 v17, v1

    .line 912
    .line 913
    invoke-static/range {v16 .. v27}, Landroidx/compose/material3/CardKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 917
    .line 918
    .line 919
    goto :goto_8

    .line 920
    :cond_1b
    move-object v0, v1

    .line 921
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 922
    .line 923
    .line 924
    :goto_8
    return-object v13

    .line 925
    :pswitch_8
    check-cast v0, Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;

    .line 926
    .line 927
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 928
    .line 929
    move-object/from16 v1, p1

    .line 930
    .line 931
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 932
    .line 933
    move-object/from16 v2, p2

    .line 934
    .line 935
    check-cast v2, Ljava/lang/Integer;

    .line 936
    .line 937
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 938
    .line 939
    .line 940
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 941
    .line 942
    .line 943
    move-result v2

    .line 944
    invoke-static {v0, v14, v1, v2}, Lokio/Okio__OkioKt;->FeedConfigurationItemView(Lorg/wikipedia/settings/homefeed/FeedConfigurationItem;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 945
    .line 946
    .line 947
    return-object v13

    .line 948
    :pswitch_9
    check-cast v0, Lorg/wikipedia/settings/homefeed/ModulesViewModel;

    .line 949
    .line 950
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 951
    .line 952
    move-object/from16 v1, p1

    .line 953
    .line 954
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 955
    .line 956
    move-object/from16 v2, p2

    .line 957
    .line 958
    check-cast v2, Ljava/lang/Integer;

    .line 959
    .line 960
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 961
    .line 962
    .line 963
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 964
    .line 965
    .line 966
    move-result v2

    .line 967
    invoke-static {v0, v14, v1, v2}, Lokio/Okio__JvmOkioKt;->CommunityModulesScreen(Lorg/wikipedia/settings/homefeed/ModulesViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 968
    .line 969
    .line 970
    return-object v13

    .line 971
    :pswitch_a
    check-cast v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;

    .line 972
    .line 973
    check-cast v14, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlayGroundDialog;

    .line 974
    .line 975
    move-object/from16 v1, p1

    .line 976
    .line 977
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 978
    .line 979
    move-object/from16 v2, p2

    .line 980
    .line 981
    check-cast v2, Ljava/lang/Integer;

    .line 982
    .line 983
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 984
    .line 985
    .line 986
    move-result v2

    .line 987
    and-int/lit8 v3, v2, 0x3

    .line 988
    .line 989
    if-eq v3, v10, :cond_1c

    .line 990
    .line 991
    move v12, v15

    .line 992
    :cond_1c
    and-int/2addr v2, v15

    .line 993
    invoke-virtual {v1, v2, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 994
    .line 995
    .line 996
    move-result v2

    .line 997
    if-eqz v2, :cond_1f

    .line 998
    .line 999
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v2

    .line 1003
    if-ne v2, v8, :cond_1d

    .line 1004
    .line 1005
    invoke-virtual {v0}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->observeState()Lkotlinx/coroutines/flow/Flow;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v2

    .line 1009
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1010
    .line 1011
    .line 1012
    :cond_1d
    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    .line 1013
    .line 1014
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    if-ne v0, v8, :cond_1e

    .line 1019
    .line 1020
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/GapComposer;)Lkotlinx/coroutines/CoroutineScope;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1025
    .line 1026
    .line 1027
    :cond_1e
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 1028
    .line 1029
    new-instance v3, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;

    .line 1030
    .line 1031
    const/16 v4, 0x16

    .line 1032
    .line 1033
    invoke-direct {v3, v2, v0, v14, v4}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1034
    .line 1035
    .line 1036
    const v0, 0x6c85e456

    .line 1037
    .line 1038
    .line 1039
    invoke-static {v0, v3, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    invoke-static {v9, v0, v1, v5, v15}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 1044
    .line 1045
    .line 1046
    goto :goto_9

    .line 1047
    :cond_1f
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1048
    .line 1049
    .line 1050
    :goto_9
    return-object v13

    .line 1051
    :pswitch_b
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 1052
    .line 1053
    check-cast v14, Landroidx/compose/ui/Modifier;

    .line 1054
    .line 1055
    move-object/from16 v1, p1

    .line 1056
    .line 1057
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1058
    .line 1059
    move-object/from16 v2, p2

    .line 1060
    .line 1061
    check-cast v2, Ljava/lang/Integer;

    .line 1062
    .line 1063
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1064
    .line 1065
    .line 1066
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1067
    .line 1068
    .line 1069
    move-result v2

    .line 1070
    invoke-static {v2, v1, v14, v0}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->RandomBulkEntryView(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;)V

    .line 1071
    .line 1072
    .line 1073
    return-object v13

    .line 1074
    :pswitch_c
    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 1075
    .line 1076
    check-cast v14, Landroidx/compose/ui/Modifier;

    .line 1077
    .line 1078
    move-object/from16 v1, p1

    .line 1079
    .line 1080
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1081
    .line 1082
    move-object/from16 v2, p2

    .line 1083
    .line 1084
    check-cast v2, Ljava/lang/Integer;

    .line 1085
    .line 1086
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1087
    .line 1088
    .line 1089
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1090
    .line 1091
    .line 1092
    move-result v2

    .line 1093
    invoke-static {v0, v14, v1, v2}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->SingleEntryView(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 1094
    .line 1095
    .line 1096
    return-object v13

    .line 1097
    :pswitch_d
    check-cast v0, Landroidx/compose/runtime/State;

    .line 1098
    .line 1099
    check-cast v14, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;

    .line 1100
    .line 1101
    move-object/from16 v1, p1

    .line 1102
    .line 1103
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1104
    .line 1105
    move-object/from16 v3, p2

    .line 1106
    .line 1107
    check-cast v3, Ljava/lang/Integer;

    .line 1108
    .line 1109
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1110
    .line 1111
    .line 1112
    move-result v3

    .line 1113
    sget v4, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->$r8$clinit:I

    .line 1114
    .line 1115
    and-int/lit8 v4, v3, 0x3

    .line 1116
    .line 1117
    if-eq v4, v10, :cond_20

    .line 1118
    .line 1119
    move v4, v15

    .line 1120
    goto :goto_a

    .line 1121
    :cond_20
    move v4, v12

    .line 1122
    :goto_a
    and-int/2addr v3, v15

    .line 1123
    invoke-virtual {v1, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v3

    .line 1127
    if-eqz v3, :cond_2f

    .line 1128
    .line 1129
    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 1130
    .line 1131
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v16

    .line 1135
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v0

    .line 1139
    move-object/from16 v17, v0

    .line 1140
    .line 1141
    check-cast v17, Lorg/wikipedia/util/UiState;

    .line 1142
    .line 1143
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1144
    .line 1145
    .line 1146
    move-result v0

    .line 1147
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v2

    .line 1151
    if-nez v0, :cond_21

    .line 1152
    .line 1153
    if-ne v2, v8, :cond_22

    .line 1154
    .line 1155
    :cond_21
    new-instance v2, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;

    .line 1156
    .line 1157
    const/16 v0, 0xd

    .line 1158
    .line 1159
    invoke-direct {v2, v0, v14}, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda47;-><init>(ILjava/lang/Object;)V

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1163
    .line 1164
    .line 1165
    :cond_22
    move-object/from16 v18, v2

    .line 1166
    .line 1167
    check-cast v18, Lkotlin/jvm/functions/Function3;

    .line 1168
    .line 1169
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1170
    .line 1171
    .line 1172
    move-result v0

    .line 1173
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v2

    .line 1177
    if-nez v0, :cond_23

    .line 1178
    .line 1179
    if-ne v2, v8, :cond_24

    .line 1180
    .line 1181
    :cond_23
    new-instance v2, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda0;

    .line 1182
    .line 1183
    invoke-direct {v2, v14, v15}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;I)V

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1187
    .line 1188
    .line 1189
    :cond_24
    move-object/from16 v19, v2

    .line 1190
    .line 1191
    check-cast v19, Lkotlin/jvm/functions/Function2;

    .line 1192
    .line 1193
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1194
    .line 1195
    .line 1196
    move-result v0

    .line 1197
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v2

    .line 1201
    if-nez v0, :cond_25

    .line 1202
    .line 1203
    if-ne v2, v8, :cond_26

    .line 1204
    .line 1205
    :cond_25
    new-instance v2, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda4;

    .line 1206
    .line 1207
    invoke-direct {v2, v14, v12}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;I)V

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1211
    .line 1212
    .line 1213
    :cond_26
    move-object/from16 v20, v2

    .line 1214
    .line 1215
    check-cast v20, Lkotlin/jvm/functions/Function1;

    .line 1216
    .line 1217
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1218
    .line 1219
    .line 1220
    move-result v0

    .line 1221
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v2

    .line 1225
    if-nez v0, :cond_27

    .line 1226
    .line 1227
    if-ne v2, v8, :cond_28

    .line 1228
    .line 1229
    :cond_27
    new-instance v2, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda5;

    .line 1230
    .line 1231
    invoke-direct {v2, v14, v12}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;I)V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1235
    .line 1236
    .line 1237
    :cond_28
    move-object/from16 v21, v2

    .line 1238
    .line 1239
    check-cast v21, Lkotlin/jvm/functions/Function0;

    .line 1240
    .line 1241
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1242
    .line 1243
    .line 1244
    move-result v0

    .line 1245
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v2

    .line 1249
    if-nez v0, :cond_29

    .line 1250
    .line 1251
    if-ne v2, v8, :cond_2a

    .line 1252
    .line 1253
    :cond_29
    new-instance v2, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda4;

    .line 1254
    .line 1255
    invoke-direct {v2, v14, v15}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;I)V

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1259
    .line 1260
    .line 1261
    :cond_2a
    move-object/from16 v22, v2

    .line 1262
    .line 1263
    check-cast v22, Lkotlin/jvm/functions/Function1;

    .line 1264
    .line 1265
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1266
    .line 1267
    .line 1268
    move-result v0

    .line 1269
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v2

    .line 1273
    if-nez v0, :cond_2b

    .line 1274
    .line 1275
    if-ne v2, v8, :cond_2c

    .line 1276
    .line 1277
    :cond_2b
    new-instance v2, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda4;

    .line 1278
    .line 1279
    invoke-direct {v2, v14, v10}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;I)V

    .line 1280
    .line 1281
    .line 1282
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1283
    .line 1284
    .line 1285
    :cond_2c
    move-object/from16 v23, v2

    .line 1286
    .line 1287
    check-cast v23, Lkotlin/jvm/functions/Function1;

    .line 1288
    .line 1289
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1290
    .line 1291
    .line 1292
    move-result v0

    .line 1293
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v2

    .line 1297
    if-nez v0, :cond_2d

    .line 1298
    .line 1299
    if-ne v2, v8, :cond_2e

    .line 1300
    .line 1301
    :cond_2d
    new-instance v2, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda5;

    .line 1302
    .line 1303
    invoke-direct {v2, v14, v15}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;I)V

    .line 1304
    .line 1305
    .line 1306
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1307
    .line 1308
    .line 1309
    :cond_2e
    move-object/from16 v24, v2

    .line 1310
    .line 1311
    check-cast v24, Lkotlin/jvm/functions/Function0;

    .line 1312
    .line 1313
    const/16 v26, 0x6

    .line 1314
    .line 1315
    move-object/from16 v25, v1

    .line 1316
    .line 1317
    invoke-static/range {v16 .. v26}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->CategoryDeveloperPlayGroundScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/util/UiState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 1318
    .line 1319
    .line 1320
    goto :goto_b

    .line 1321
    :cond_2f
    move-object/from16 v25, v1

    .line 1322
    .line 1323
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1324
    .line 1325
    .line 1326
    :goto_b
    return-object v13

    .line 1327
    :pswitch_e
    check-cast v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 1328
    .line 1329
    check-cast v14, Landroidx/compose/ui/Modifier;

    .line 1330
    .line 1331
    move-object/from16 v1, p1

    .line 1332
    .line 1333
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1334
    .line 1335
    move-object/from16 v2, p2

    .line 1336
    .line 1337
    check-cast v2, Ljava/lang/Integer;

    .line 1338
    .line 1339
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1340
    .line 1341
    .line 1342
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1343
    .line 1344
    .line 1345
    move-result v2

    .line 1346
    invoke-static {v0, v14, v1, v2}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->SourceView(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 1347
    .line 1348
    .line 1349
    return-object v13

    .line 1350
    :pswitch_f
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 1351
    .line 1352
    check-cast v14, Ljava/util/List;

    .line 1353
    .line 1354
    move-object/from16 v1, p1

    .line 1355
    .line 1356
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1357
    .line 1358
    move-object/from16 v2, p2

    .line 1359
    .line 1360
    check-cast v2, Ljava/lang/Integer;

    .line 1361
    .line 1362
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1363
    .line 1364
    .line 1365
    move-result v2

    .line 1366
    and-int/lit8 v4, v2, 0x3

    .line 1367
    .line 1368
    if-eq v4, v10, :cond_30

    .line 1369
    .line 1370
    move v4, v15

    .line 1371
    goto :goto_c

    .line 1372
    :cond_30
    move v4, v12

    .line 1373
    :goto_c
    and-int/2addr v2, v15

    .line 1374
    invoke-virtual {v1, v2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1375
    .line 1376
    .line 1377
    move-result v2

    .line 1378
    if-eqz v2, :cond_3c

    .line 1379
    .line 1380
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1381
    .line 1382
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListArticlesNumber()I

    .line 1383
    .line 1384
    .line 1385
    move-result v2

    .line 1386
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSource()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v4

    .line 1390
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 1391
    .line 1392
    .line 1393
    move-result v2

    .line 1394
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 1395
    .line 1396
    .line 1397
    move-result v4

    .line 1398
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 1399
    .line 1400
    .line 1401
    move-result v4

    .line 1402
    or-int/2addr v2, v4

    .line 1403
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v4

    .line 1407
    if-nez v2, :cond_31

    .line 1408
    .line 1409
    if-ne v4, v8, :cond_34

    .line 1410
    .line 1411
    :cond_31
    new-instance v2, Ljava/util/ArrayList;

    .line 1412
    .line 1413
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1414
    .line 1415
    .line 1416
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v4

    .line 1420
    :cond_32
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1421
    .line 1422
    .line 1423
    move-result v6

    .line 1424
    if-eqz v6, :cond_33

    .line 1425
    .line 1426
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v6

    .line 1430
    check-cast v6, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 1431
    .line 1432
    iget-object v6, v6, Lorg/wikipedia/readinglist/database/RecommendedPage;->thumbUrl:Ljava/lang/String;

    .line 1433
    .line 1434
    if-eqz v6, :cond_32

    .line 1435
    .line 1436
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1437
    .line 1438
    .line 1439
    goto :goto_d

    .line 1440
    :cond_33
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v4

    .line 1444
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1445
    .line 1446
    .line 1447
    :cond_34
    move-object/from16 v20, v4

    .line 1448
    .line 1449
    check-cast v20, Landroidx/compose/runtime/MutableState;

    .line 1450
    .line 1451
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v2

    .line 1455
    if-ne v2, v8, :cond_35

    .line 1456
    .line 1457
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1458
    .line 1459
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isNewRecommendedReadingListGenerated()Z

    .line 1460
    .line 1461
    .line 1462
    move-result v2

    .line 1463
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v2

    .line 1467
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v2

    .line 1471
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1472
    .line 1473
    .line 1474
    :cond_35
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 1475
    .line 1476
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 1477
    .line 1478
    .line 1479
    move-result v4

    .line 1480
    if-ne v4, v15, :cond_36

    .line 1481
    .line 1482
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v4

    .line 1486
    const-string v6, "<b>"

    .line 1487
    .line 1488
    const-string v7, "</b>"

    .line 1489
    .line 1490
    invoke-static {v6, v4, v7}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v4

    .line 1494
    new-array v6, v15, [Ljava/lang/Object;

    .line 1495
    .line 1496
    aput-object v4, v6, v12

    .line 1497
    .line 1498
    const v4, 0x7f1207f4

    .line 1499
    .line 1500
    .line 1501
    invoke-virtual {v0, v4, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v4

    .line 1505
    :goto_e
    move-object/from16 v18, v4

    .line 1506
    .line 1507
    goto :goto_f

    .line 1508
    :cond_36
    if-nez v4, :cond_3b

    .line 1509
    .line 1510
    const v4, 0x7f1207eb

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v4

    .line 1517
    goto :goto_e

    .line 1518
    :goto_f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1519
    .line 1520
    .line 1521
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v4

    .line 1525
    if-ne v4, v8, :cond_37

    .line 1526
    .line 1527
    new-instance v4, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 1528
    .line 1529
    invoke-direct {v4, v3, v2, v9}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1533
    .line 1534
    .line 1535
    :cond_37
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 1536
    .line 1537
    invoke-static {v1, v13, v4}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1538
    .line 1539
    .line 1540
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1541
    .line 1542
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListUpdateFrequency()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v3

    .line 1546
    sget-object v4, Lorg/wikipedia/readinglist/ReadingListsFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 1547
    .line 1548
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 1549
    .line 1550
    .line 1551
    move-result v3

    .line 1552
    aget v3, v4, v3

    .line 1553
    .line 1554
    if-eq v3, v15, :cond_3a

    .line 1555
    .line 1556
    if-eq v3, v10, :cond_39

    .line 1557
    .line 1558
    if-ne v3, v11, :cond_38

    .line 1559
    .line 1560
    const v3, 0x7f1207e9

    .line 1561
    .line 1562
    .line 1563
    :goto_10
    move/from16 v19, v3

    .line 1564
    .line 1565
    goto :goto_11

    .line 1566
    :cond_38
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1567
    .line 1568
    .line 1569
    goto :goto_13

    .line 1570
    :cond_39
    const v3, 0x7f1207ea

    .line 1571
    .line 1572
    .line 1573
    goto :goto_10

    .line 1574
    :cond_3a
    const v3, 0x7f1207e8

    .line 1575
    .line 1576
    .line 1577
    goto :goto_10

    .line 1578
    :goto_11
    new-instance v16, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda27;

    .line 1579
    .line 1580
    move-object/from16 v17, v0

    .line 1581
    .line 1582
    move-object/from16 v21, v2

    .line 1583
    .line 1584
    invoke-direct/range {v16 .. v21}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda27;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Ljava/lang/String;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 1585
    .line 1586
    .line 1587
    move-object/from16 v0, v16

    .line 1588
    .line 1589
    const v2, 0x67ccde19

    .line 1590
    .line 1591
    .line 1592
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v0

    .line 1596
    invoke-static {v9, v0, v1, v5, v15}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 1597
    .line 1598
    .line 1599
    :goto_12
    move-object v9, v13

    .line 1600
    goto :goto_13

    .line 1601
    :cond_3b
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1602
    .line 1603
    .line 1604
    goto :goto_13

    .line 1605
    :cond_3c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1606
    .line 1607
    .line 1608
    goto :goto_12

    .line 1609
    :goto_13
    return-object v9

    .line 1610
    :pswitch_10
    check-cast v0, Lorg/wikipedia/games/GamesHubFragment;

    .line 1611
    .line 1612
    check-cast v14, Landroidx/appcompat/app/AppCompatActivity;

    .line 1613
    .line 1614
    move-object/from16 v1, p1

    .line 1615
    .line 1616
    check-cast v1, Lj$/time/LocalDate;

    .line 1617
    .line 1618
    move-object/from16 v2, p2

    .line 1619
    .line 1620
    check-cast v2, Lorg/wikipedia/feed/wikigames/OnThisDayGameAction;

    .line 1621
    .line 1622
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1623
    .line 1624
    .line 1625
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1626
    .line 1627
    .line 1628
    iget-object v3, v0, Lorg/wikipedia/games/GamesHubFragment;->launchOnThisDayGameActivity:Landroidx/fragment/app/Fragment$10;

    .line 1629
    .line 1630
    sget v4, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;->$r8$clinit:I

    .line 1631
    .line 1632
    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->GAMES_HUB:Lorg/wikipedia/Constants$InvokeSource;

    .line 1633
    .line 1634
    sget-object v5, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 1635
    .line 1636
    invoke-virtual {v0}, Lorg/wikipedia/games/GamesHubFragment;->getViewModel()Lorg/wikipedia/games/GamesHubViewModel;

    .line 1637
    .line 1638
    .line 1639
    move-result-object v0

    .line 1640
    iget-object v0, v0, Lorg/wikipedia/games/GamesHubViewModel;->selectedLanguage:Ljava/lang/String;

    .line 1641
    .line 1642
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1643
    .line 1644
    .line 1645
    invoke-static {v0}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v0

    .line 1649
    sget-object v5, Lorg/wikipedia/feed/wikigames/OnThisDayGameAction$ReviewResults;->INSTANCE:Lorg/wikipedia/feed/wikigames/OnThisDayGameAction$ReviewResults;

    .line 1650
    .line 1651
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1652
    .line 1653
    .line 1654
    move-result v2

    .line 1655
    invoke-static {v14, v4, v0, v1, v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameProvider;->newIntent(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/dataclient/WikiSite;Lj$/time/LocalDate;I)Landroid/content/Intent;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v0

    .line 1659
    invoke-virtual {v3, v0, v9}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 1660
    .line 1661
    .line 1662
    return-object v13

    .line 1663
    :pswitch_11
    move-object/from16 v17, v0

    .line 1664
    .line 1665
    check-cast v17, Lorg/wikipedia/games/GamesHubFragment;

    .line 1666
    .line 1667
    move-object/from16 v19, v14

    .line 1668
    .line 1669
    check-cast v19, Landroidx/compose/ui/platform/ComposeView;

    .line 1670
    .line 1671
    move-object/from16 v0, p1

    .line 1672
    .line 1673
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1674
    .line 1675
    move-object/from16 v1, p2

    .line 1676
    .line 1677
    check-cast v1, Ljava/lang/Integer;

    .line 1678
    .line 1679
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1680
    .line 1681
    .line 1682
    move-result v1

    .line 1683
    and-int/lit8 v2, v1, 0x3

    .line 1684
    .line 1685
    if-eq v2, v10, :cond_3d

    .line 1686
    .line 1687
    move v12, v15

    .line 1688
    :cond_3d
    and-int/2addr v1, v15

    .line 1689
    invoke-virtual {v0, v1, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1690
    .line 1691
    .line 1692
    move-result v1

    .line 1693
    if-eqz v1, :cond_3e

    .line 1694
    .line 1695
    invoke-virtual/range {v17 .. v17}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v18

    .line 1699
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 1700
    .line 1701
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 1702
    .line 1703
    .line 1704
    move-result-object v20

    .line 1705
    invoke-static {v9, v0, v15}, Landroidx/compose/animation/core/ArcSplineKt;->rememberInfiniteTransition(Ljava/lang/String;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/animation/core/InfiniteTransition;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v21

    .line 1709
    new-instance v16, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda5;

    .line 1710
    .line 1711
    const/16 v22, 0x8

    .line 1712
    .line 1713
    invoke-direct/range {v16 .. v22}, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1714
    .line 1715
    .line 1716
    move-object/from16 v1, v16

    .line 1717
    .line 1718
    const v2, -0x1d37f0c7

    .line 1719
    .line 1720
    .line 1721
    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v1

    .line 1725
    invoke-static {v9, v1, v0, v5, v15}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 1726
    .line 1727
    .line 1728
    goto :goto_14

    .line 1729
    :cond_3e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1730
    .line 1731
    .line 1732
    :goto_14
    return-object v13

    .line 1733
    :pswitch_12
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 1734
    .line 1735
    check-cast v14, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 1736
    .line 1737
    move-object/from16 v1, p1

    .line 1738
    .line 1739
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1740
    .line 1741
    move-object/from16 v2, p2

    .line 1742
    .line 1743
    check-cast v2, Ljava/lang/Integer;

    .line 1744
    .line 1745
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1746
    .line 1747
    .line 1748
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1749
    .line 1750
    .line 1751
    move-result v2

    .line 1752
    invoke-static {v0, v14, v1, v2}, Lokio/Options$Companion;->OnThisDayGameFirstEventView(Landroidx/compose/ui/Modifier;Lorg/wikipedia/feed/onthisday/OnThisDay$Event;Landroidx/compose/runtime/GapComposer;I)V

    .line 1753
    .line 1754
    .line 1755
    return-object v13

    .line 1756
    :pswitch_13
    check-cast v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;

    .line 1757
    .line 1758
    check-cast v14, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 1759
    .line 1760
    move-object/from16 v1, p1

    .line 1761
    .line 1762
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1763
    .line 1764
    move-object/from16 v3, p2

    .line 1765
    .line 1766
    check-cast v3, Ljava/lang/Integer;

    .line 1767
    .line 1768
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1769
    .line 1770
    .line 1771
    move-result v3

    .line 1772
    and-int/lit8 v5, v3, 0x3

    .line 1773
    .line 1774
    if-eq v5, v10, :cond_3f

    .line 1775
    .line 1776
    move v5, v15

    .line 1777
    goto :goto_15

    .line 1778
    :cond_3f
    move v5, v12

    .line 1779
    :goto_15
    and-int/2addr v3, v15

    .line 1780
    invoke-virtual {v1, v3, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1781
    .line 1782
    .line 1783
    move-result v3

    .line 1784
    if-eqz v3, :cond_4e

    .line 1785
    .line 1786
    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v3

    .line 1790
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 1791
    .line 1792
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 1793
    .line 1794
    invoke-static {v5, v8, v1, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v9

    .line 1798
    iget-wide v10, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1799
    .line 1800
    const/16 v29, 0x20

    .line 1801
    .line 1802
    ushr-long v16, v10, v29

    .line 1803
    .line 1804
    xor-long v10, v10, v16

    .line 1805
    .line 1806
    long-to-int v10, v10

    .line 1807
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v11

    .line 1811
    invoke-static {v1, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v3

    .line 1815
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1816
    .line 1817
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1818
    .line 1819
    .line 1820
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1821
    .line 1822
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1823
    .line 1824
    .line 1825
    iget-boolean v15, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1826
    .line 1827
    if-eqz v15, :cond_40

    .line 1828
    .line 1829
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1830
    .line 1831
    .line 1832
    goto :goto_16

    .line 1833
    :cond_40
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1834
    .line 1835
    .line 1836
    :goto_16
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1837
    .line 1838
    invoke-static {v1, v9, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1839
    .line 1840
    .line 1841
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1842
    .line 1843
    invoke-static {v1, v11, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1844
    .line 1845
    .line 1846
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1847
    .line 1848
    .line 1849
    move-result-object v10

    .line 1850
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1851
    .line 1852
    invoke-static {v1, v10, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1853
    .line 1854
    .line 1855
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1856
    .line 1857
    invoke-static {v1, v10}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 1858
    .line 1859
    .line 1860
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1861
    .line 1862
    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1863
    .line 1864
    .line 1865
    const/high16 v3, 0x42d80000    # 108.0f

    .line 1866
    .line 1867
    invoke-static {v6, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1868
    .line 1869
    .line 1870
    move-result-object v7

    .line 1871
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 1872
    .line 1873
    invoke-static {v3, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v3

    .line 1877
    move-object/from16 v34, v13

    .line 1878
    .line 1879
    iget-wide v12, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1880
    .line 1881
    ushr-long v16, v12, v29

    .line 1882
    .line 1883
    xor-long v12, v12, v16

    .line 1884
    .line 1885
    long-to-int v12, v12

    .line 1886
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v13

    .line 1890
    invoke-static {v1, v7}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1891
    .line 1892
    .line 1893
    move-result-object v7

    .line 1894
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1895
    .line 1896
    .line 1897
    move-object/from16 v36, v14

    .line 1898
    .line 1899
    iget-boolean v14, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1900
    .line 1901
    if-eqz v14, :cond_41

    .line 1902
    .line 1903
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1904
    .line 1905
    .line 1906
    goto :goto_17

    .line 1907
    :cond_41
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1908
    .line 1909
    .line 1910
    :goto_17
    invoke-static {v1, v3, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1911
    .line 1912
    .line 1913
    invoke-static {v1, v13, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1914
    .line 1915
    .line 1916
    invoke-static {v12, v1, v11, v1, v10}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 1917
    .line 1918
    .line 1919
    invoke-static {v1, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1920
    .line 1921
    .line 1922
    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1923
    .line 1924
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v3

    .line 1928
    move-object/from16 v16, v3

    .line 1929
    .line 1930
    check-cast v16, Landroid/content/Context;

    .line 1931
    .line 1932
    iget-object v3, v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;->imageUrl:Ljava/lang/String;

    .line 1933
    .line 1934
    iget-object v7, v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;->title:Ljava/lang/String;

    .line 1935
    .line 1936
    iget-object v12, v0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;->tag:Ljava/lang/String;

    .line 1937
    .line 1938
    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1939
    .line 1940
    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1941
    .line 1942
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1943
    .line 1944
    .line 1945
    sget-object v13, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 1946
    .line 1947
    const/16 v20, 0x0

    .line 1948
    .line 1949
    if-eqz v13, :cond_42

    .line 1950
    .line 1951
    move-object/from16 v21, v20

    .line 1952
    .line 1953
    move-object/from16 v17, v3

    .line 1954
    .line 1955
    invoke-static/range {v16 .. v21}, Lokio/ByteString$Companion;->getRequestBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lorg/wikipedia/views/imageservice/ImageLoadListener;)Lcoil3/request/ImageRequest$Builder;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v3

    .line 1959
    invoke-virtual {v3}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 1960
    .line 1961
    .line 1962
    move-result-object v20

    .line 1963
    :cond_42
    move-object/from16 v16, v20

    .line 1964
    .line 1965
    new-instance v3, Landroidx/compose/ui/graphics/painter/BrushPainter;

    .line 1966
    .line 1967
    new-instance v13, Landroidx/compose/ui/graphics/SolidColor;

    .line 1968
    .line 1969
    sget-object v14, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1970
    .line 1971
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v17

    .line 1975
    move-object/from16 v37, v7

    .line 1976
    .line 1977
    move-object/from16 v7, v17

    .line 1978
    .line 1979
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1980
    .line 1981
    move-object/from16 v38, v10

    .line 1982
    .line 1983
    move-object/from16 p2, v11

    .line 1984
    .line 1985
    iget-wide v10, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 1986
    .line 1987
    invoke-direct {v13, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1988
    .line 1989
    .line 1990
    invoke-direct {v3, v13}, Landroidx/compose/ui/graphics/painter/BrushPainter;-><init>(Landroidx/compose/ui/graphics/SolidColor;)V

    .line 1991
    .line 1992
    .line 1993
    new-instance v7, Landroidx/compose/ui/graphics/painter/BrushPainter;

    .line 1994
    .line 1995
    new-instance v10, Landroidx/compose/ui/graphics/SolidColor;

    .line 1996
    .line 1997
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1998
    .line 1999
    .line 2000
    move-result-object v11

    .line 2001
    check-cast v11, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 2002
    .line 2003
    move-object v13, v0

    .line 2004
    move-object/from16 v24, v1

    .line 2005
    .line 2006
    iget-wide v0, v11, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 2007
    .line 2008
    invoke-direct {v10, v0, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 2009
    .line 2010
    .line 2011
    invoke-direct {v7, v10}, Landroidx/compose/ui/graphics/painter/BrushPainter;-><init>(Landroidx/compose/ui/graphics/SolidColor;)V

    .line 2012
    .line 2013
    .line 2014
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2015
    .line 2016
    invoke-static {v6, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2017
    .line 2018
    .line 2019
    move-result-object v1

    .line 2020
    const/high16 v0, 0x42d80000    # 108.0f

    .line 2021
    .line 2022
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2023
    .line 2024
    .line 2025
    move-result-object v18

    .line 2026
    const/16 v26, 0x6

    .line 2027
    .line 2028
    const/16 v27, 0x7be0

    .line 2029
    .line 2030
    const/16 v17, 0x0

    .line 2031
    .line 2032
    const/16 v21, 0x0

    .line 2033
    .line 2034
    const/16 v22, 0x0

    .line 2035
    .line 2036
    sget-object v23, Landroidx/compose/ui/layout/ContentScale$Companion;->Crop:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 2037
    .line 2038
    const v25, 0x91b0

    .line 2039
    .line 2040
    .line 2041
    move-object/from16 v19, v3

    .line 2042
    .line 2043
    move-object/from16 v20, v7

    .line 2044
    .line 2045
    invoke-static/range {v16 .. v27}, Lcoil3/compose/AsyncImageKt;->AsyncImage-x1rPTaM(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/GapComposer;III)V

    .line 2046
    .line 2047
    .line 2048
    move-object/from16 v0, v24

    .line 2049
    .line 2050
    if-eqz v12, :cond_43

    .line 2051
    .line 2052
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 2053
    .line 2054
    .line 2055
    move-result v1

    .line 2056
    if-nez v1, :cond_44

    .line 2057
    .line 2058
    :cond_43
    const/4 v3, 0x0

    .line 2059
    goto :goto_1b

    .line 2060
    :cond_44
    const v1, 0x7df6cd9a

    .line 2061
    .line 2062
    .line 2063
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2064
    .line 2065
    .line 2066
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->BottomStart:Landroidx/compose/ui/BiasAlignment;

    .line 2067
    .line 2068
    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 2069
    .line 2070
    invoke-virtual {v3, v6, v1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 2071
    .line 2072
    .line 2073
    move-result-object v1

    .line 2074
    const/high16 v3, 0x41000000    # 8.0f

    .line 2075
    .line 2076
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2077
    .line 2078
    .line 2079
    move-result-object v1

    .line 2080
    sget-object v3, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2081
    .line 2082
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Enum;->ordinal()I

    .line 2083
    .line 2084
    .line 2085
    move-result v7

    .line 2086
    aget v3, v3, v7

    .line 2087
    .line 2088
    const/4 v7, 0x1

    .line 2089
    if-eq v3, v7, :cond_46

    .line 2090
    .line 2091
    const/4 v7, 0x2

    .line 2092
    if-ne v3, v7, :cond_45

    .line 2093
    .line 2094
    const v3, 0x77ad566c

    .line 2095
    .line 2096
    .line 2097
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2098
    .line 2099
    .line 2100
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2101
    .line 2102
    .line 2103
    move-result-object v3

    .line 2104
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 2105
    .line 2106
    iget-wide v10, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->successColor:J

    .line 2107
    .line 2108
    const/4 v3, 0x0

    .line 2109
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2110
    .line 2111
    .line 2112
    :goto_18
    const/high16 v31, 0x41000000    # 8.0f

    .line 2113
    .line 2114
    goto :goto_19

    .line 2115
    :cond_45
    const/4 v3, 0x0

    .line 2116
    const v1, 0x77ad3af2

    .line 2117
    .line 2118
    .line 2119
    invoke-static {v0, v1, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lcoil3/network/HttpException;

    .line 2120
    .line 2121
    .line 2122
    move-result-object v0

    .line 2123
    throw v0

    .line 2124
    :cond_46
    const/4 v3, 0x0

    .line 2125
    const v7, 0x77ad48b0

    .line 2126
    .line 2127
    .line 2128
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2129
    .line 2130
    .line 2131
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2132
    .line 2133
    .line 2134
    move-result-object v7

    .line 2135
    check-cast v7, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 2136
    .line 2137
    iget-wide v10, v7, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 2138
    .line 2139
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2140
    .line 2141
    .line 2142
    goto :goto_18

    .line 2143
    :goto_19
    invoke-static/range {v31 .. v31}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 2144
    .line 2145
    .line 2146
    move-result-object v7

    .line 2147
    invoke-static {v1, v10, v11, v7}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 2148
    .line 2149
    .line 2150
    move-result-object v1

    .line 2151
    const/high16 v7, 0x41400000    # 12.0f

    .line 2152
    .line 2153
    const/high16 v10, 0x40800000    # 4.0f

    .line 2154
    .line 2155
    invoke-static {v1, v7, v10}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 2156
    .line 2157
    .line 2158
    move-result-object v1

    .line 2159
    invoke-static {v3, v0, v1, v12}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt;->ArticleCardTag(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V

    .line 2160
    .line 2161
    .line 2162
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2163
    .line 2164
    .line 2165
    :goto_1a
    const/4 v7, 0x1

    .line 2166
    goto :goto_1c

    .line 2167
    :goto_1b
    const v1, 0x7e018422

    .line 2168
    .line 2169
    .line 2170
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2171
    .line 2172
    .line 2173
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2174
    .line 2175
    .line 2176
    goto :goto_1a

    .line 2177
    :goto_1c
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2178
    .line 2179
    .line 2180
    const/high16 v1, 0x41800000    # 16.0f

    .line 2181
    .line 2182
    invoke-static {v6, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2183
    .line 2184
    .line 2185
    move-result-object v1

    .line 2186
    const/high16 v7, 0x3f800000    # 1.0f

    .line 2187
    .line 2188
    invoke-static {v1, v7}, Landroidx/compose/animation/core/Animation$-CC;->weight$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2189
    .line 2190
    .line 2191
    move-result-object v1

    .line 2192
    invoke-static {v5, v8, v0, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 2193
    .line 2194
    .line 2195
    move-result-object v5

    .line 2196
    iget-wide v7, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 2197
    .line 2198
    ushr-long v10, v7, v29

    .line 2199
    .line 2200
    xor-long/2addr v7, v10

    .line 2201
    long-to-int v3, v7

    .line 2202
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 2203
    .line 2204
    .line 2205
    move-result-object v7

    .line 2206
    invoke-static {v0, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 2207
    .line 2208
    .line 2209
    move-result-object v1

    .line 2210
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 2211
    .line 2212
    .line 2213
    iget-boolean v8, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 2214
    .line 2215
    if-eqz v8, :cond_47

    .line 2216
    .line 2217
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 2218
    .line 2219
    .line 2220
    goto :goto_1d

    .line 2221
    :cond_47
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 2222
    .line 2223
    .line 2224
    :goto_1d
    invoke-static {v0, v5, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2225
    .line 2226
    .line 2227
    invoke-static {v0, v7, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2228
    .line 2229
    .line 2230
    move-object/from16 v2, p2

    .line 2231
    .line 2232
    move-object/from16 v5, v38

    .line 2233
    .line 2234
    invoke-static {v3, v0, v2, v0, v5}, Landroidx/compose/animation/core/Animation$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 2235
    .line 2236
    .line 2237
    invoke-static {v0, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2238
    .line 2239
    .line 2240
    if-eqz v37, :cond_48

    .line 2241
    .line 2242
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    .line 2243
    .line 2244
    .line 2245
    move-result v1

    .line 2246
    if-nez v1, :cond_49

    .line 2247
    .line 2248
    :cond_48
    const/4 v3, 0x0

    .line 2249
    goto :goto_1e

    .line 2250
    :cond_49
    const v1, 0x6fd18fdb

    .line 2251
    .line 2252
    .line 2253
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2254
    .line 2255
    .line 2256
    iget-object v1, v13, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;->title:Ljava/lang/String;

    .line 2257
    .line 2258
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2259
    .line 2260
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2261
    .line 2262
    .line 2263
    move-result-object v2

    .line 2264
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 2265
    .line 2266
    iget-object v15, v2, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 2267
    .line 2268
    sget-object v20, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 2269
    .line 2270
    const/16 v26, 0x0

    .line 2271
    .line 2272
    const v27, 0xfffffb

    .line 2273
    .line 2274
    .line 2275
    const-wide/16 v16, 0x0

    .line 2276
    .line 2277
    const-wide/16 v18, 0x0

    .line 2278
    .line 2279
    const/16 v21, 0x0

    .line 2280
    .line 2281
    const-wide/16 v22, 0x0

    .line 2282
    .line 2283
    const-wide/16 v24, 0x0

    .line 2284
    .line 2285
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 2286
    .line 2287
    .line 2288
    move-result-object v19

    .line 2289
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2290
    .line 2291
    .line 2292
    move-result-object v2

    .line 2293
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 2294
    .line 2295
    iget-wide v2, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 2296
    .line 2297
    const/high16 v30, 0x30000

    .line 2298
    .line 2299
    const/16 v31, 0xfc6

    .line 2300
    .line 2301
    const/16 v17, 0x0

    .line 2302
    .line 2303
    const/16 v18, 0x0

    .line 2304
    .line 2305
    const/16 v22, 0x2

    .line 2306
    .line 2307
    const/16 v23, 0x0

    .line 2308
    .line 2309
    const/16 v27, 0x0

    .line 2310
    .line 2311
    const/16 v28, 0x0

    .line 2312
    .line 2313
    move-object/from16 v29, v0

    .line 2314
    .line 2315
    move-object/from16 v16, v1

    .line 2316
    .line 2317
    move-wide/from16 v20, v2

    .line 2318
    .line 2319
    invoke-static/range {v16 .. v31}, Lorg/wikipedia/compose/components/TabsBoxKt;->HtmlText-KiACRJU(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/TextStyle;JIIJLandroidx/compose/ui/text/LinkInteractionListener;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/GapComposer;II)V

    .line 2320
    .line 2321
    .line 2322
    const/4 v3, 0x0

    .line 2323
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2324
    .line 2325
    .line 2326
    goto :goto_1f

    .line 2327
    :goto_1e
    const v1, 0x6fd6dd32

    .line 2328
    .line 2329
    .line 2330
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2331
    .line 2332
    .line 2333
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2334
    .line 2335
    .line 2336
    :goto_1f
    iget-object v1, v13, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;->description:Ljava/lang/String;

    .line 2337
    .line 2338
    if-eqz v1, :cond_4a

    .line 2339
    .line 2340
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2341
    .line 2342
    .line 2343
    move-result v1

    .line 2344
    if-nez v1, :cond_4b

    .line 2345
    .line 2346
    :cond_4a
    const/4 v3, 0x0

    .line 2347
    goto :goto_23

    .line 2348
    :cond_4b
    const v1, 0x6fd7f796

    .line 2349
    .line 2350
    .line 2351
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2352
    .line 2353
    .line 2354
    iget-object v1, v13, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceContent;->description:Ljava/lang/String;

    .line 2355
    .line 2356
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2357
    .line 2358
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2359
    .line 2360
    .line 2361
    move-result-object v2

    .line 2362
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 2363
    .line 2364
    iget-object v2, v2, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 2365
    .line 2366
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 2367
    .line 2368
    .line 2369
    move-result-object v3

    .line 2370
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 2371
    .line 2372
    iget-wide v3, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->secondaryColor:J

    .line 2373
    .line 2374
    if-eqz v37, :cond_4d

    .line 2375
    .line 2376
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    .line 2377
    .line 2378
    .line 2379
    move-result v5

    .line 2380
    if-nez v5, :cond_4c

    .line 2381
    .line 2382
    goto :goto_20

    .line 2383
    :cond_4c
    const/16 v22, 0x3

    .line 2384
    .line 2385
    goto :goto_21

    .line 2386
    :cond_4d
    :goto_20
    const v11, 0x7fffffff

    .line 2387
    .line 2388
    .line 2389
    move/from16 v22, v11

    .line 2390
    .line 2391
    :goto_21
    const/high16 v30, 0x180000

    .line 2392
    .line 2393
    const/16 v31, 0xf86

    .line 2394
    .line 2395
    const/16 v17, 0x0

    .line 2396
    .line 2397
    const/16 v18, 0x0

    .line 2398
    .line 2399
    const/16 v23, 0x2

    .line 2400
    .line 2401
    const-wide/16 v24, 0x0

    .line 2402
    .line 2403
    const/16 v26, 0x0

    .line 2404
    .line 2405
    const/16 v27, 0x0

    .line 2406
    .line 2407
    const/16 v28, 0x0

    .line 2408
    .line 2409
    move-object/from16 v29, v0

    .line 2410
    .line 2411
    move-object/from16 v16, v1

    .line 2412
    .line 2413
    move-object/from16 v19, v2

    .line 2414
    .line 2415
    move-wide/from16 v20, v3

    .line 2416
    .line 2417
    invoke-static/range {v16 .. v31}, Lorg/wikipedia/compose/components/TabsBoxKt;->HtmlText-KiACRJU(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/TextStyle;JIIJLandroidx/compose/ui/text/LinkInteractionListener;Lkotlin/jvm/functions/Function2;ILandroidx/compose/runtime/GapComposer;II)V

    .line 2418
    .line 2419
    .line 2420
    const/4 v3, 0x0

    .line 2421
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2422
    .line 2423
    .line 2424
    :goto_22
    const/4 v7, 0x1

    .line 2425
    goto :goto_24

    .line 2426
    :goto_23
    const v1, 0x6fde22e4

    .line 2427
    .line 2428
    .line 2429
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2430
    .line 2431
    .line 2432
    const/high16 v7, 0x3f800000    # 1.0f

    .line 2433
    .line 2434
    invoke-static {v6, v7}, Landroidx/compose/animation/core/Animation$-CC;->weight$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2435
    .line 2436
    .line 2437
    move-result-object v1

    .line 2438
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 2439
    .line 2440
    .line 2441
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2442
    .line 2443
    .line 2444
    goto :goto_22

    .line 2445
    :goto_24
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2446
    .line 2447
    .line 2448
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2449
    .line 2450
    .line 2451
    goto :goto_25

    .line 2452
    :cond_4e
    move-object v0, v1

    .line 2453
    move-object/from16 v34, v13

    .line 2454
    .line 2455
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2456
    .line 2457
    .line 2458
    :goto_25
    return-object v34

    .line 2459
    :pswitch_14
    move-object/from16 v34, v13

    .line 2460
    .line 2461
    move v7, v15

    .line 2462
    check-cast v0, Lorg/wikipedia/feed/news/NewsItem;

    .line 2463
    .line 2464
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 2465
    .line 2466
    move-object/from16 v1, p1

    .line 2467
    .line 2468
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2469
    .line 2470
    move-object/from16 v2, p2

    .line 2471
    .line 2472
    check-cast v2, Ljava/lang/Integer;

    .line 2473
    .line 2474
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2475
    .line 2476
    .line 2477
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 2478
    .line 2479
    .line 2480
    move-result v2

    .line 2481
    invoke-static {v0, v14, v1, v2}, Lokhttp3/HttpUrl$Companion;->NewsItemContent(Lorg/wikipedia/feed/news/NewsItem;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 2482
    .line 2483
    .line 2484
    return-object v34

    .line 2485
    :pswitch_15
    move-object/from16 v34, v13

    .line 2486
    .line 2487
    check-cast v0, Lorg/wikipedia/random/RandomActivity;

    .line 2488
    .line 2489
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 2490
    .line 2491
    move-object/from16 v1, p1

    .line 2492
    .line 2493
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2494
    .line 2495
    move-object/from16 v2, p2

    .line 2496
    .line 2497
    check-cast v2, Ljava/lang/Integer;

    .line 2498
    .line 2499
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2500
    .line 2501
    .line 2502
    move-result v2

    .line 2503
    sget v3, Lorg/wikipedia/random/RandomActivity;->$r8$clinit:I

    .line 2504
    .line 2505
    and-int/lit8 v3, v2, 0x3

    .line 2506
    .line 2507
    const/4 v7, 0x2

    .line 2508
    if-eq v3, v7, :cond_4f

    .line 2509
    .line 2510
    const/4 v7, 0x1

    .line 2511
    :goto_26
    const/4 v3, 0x1

    .line 2512
    goto :goto_27

    .line 2513
    :cond_4f
    const/4 v7, 0x0

    .line 2514
    goto :goto_26

    .line 2515
    :goto_27
    and-int/2addr v2, v3

    .line 2516
    invoke-virtual {v1, v2, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 2517
    .line 2518
    .line 2519
    move-result v2

    .line 2520
    if-eqz v2, :cond_58

    .line 2521
    .line 2522
    iget-object v2, v0, Lorg/wikipedia/random/RandomActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2523
    .line 2524
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 2525
    .line 2526
    .line 2527
    move-result-object v2

    .line 2528
    check-cast v2, Lorg/wikipedia/random/RandomViewModel;

    .line 2529
    .line 2530
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 2531
    .line 2532
    .line 2533
    move-result v3

    .line 2534
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 2535
    .line 2536
    .line 2537
    move-result-object v4

    .line 2538
    if-nez v3, :cond_50

    .line 2539
    .line 2540
    if-ne v4, v8, :cond_51

    .line 2541
    .line 2542
    :cond_50
    new-instance v4, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 2543
    .line 2544
    const/16 v3, 0x12

    .line 2545
    .line 2546
    invoke-direct {v4, v3, v0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 2547
    .line 2548
    .line 2549
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2550
    .line 2551
    .line 2552
    :cond_51
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 2553
    .line 2554
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 2555
    .line 2556
    .line 2557
    move-result v3

    .line 2558
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 2559
    .line 2560
    .line 2561
    move-result-object v5

    .line 2562
    if-nez v3, :cond_52

    .line 2563
    .line 2564
    if-ne v5, v8, :cond_53

    .line 2565
    .line 2566
    :cond_52
    new-instance v15, Landroidx/room/InvalidationTracker$implementation$1;

    .line 2567
    .line 2568
    const/16 v21, 0x0

    .line 2569
    .line 2570
    const/16 v22, 0x6

    .line 2571
    .line 2572
    const/16 v16, 0x1

    .line 2573
    .line 2574
    const-class v18, Lorg/wikipedia/random/RandomActivity;

    .line 2575
    .line 2576
    const-string v19, "openArticle"

    .line 2577
    .line 2578
    const-string v20, "openArticle(Lorg/wikipedia/page/PageTitle;)V"

    .line 2579
    .line 2580
    move-object/from16 v17, v0

    .line 2581
    .line 2582
    invoke-direct/range {v15 .. v22}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2583
    .line 2584
    .line 2585
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2586
    .line 2587
    .line 2588
    move-object v5, v15

    .line 2589
    :cond_53
    check-cast v5, Lkotlin/reflect/KFunction;

    .line 2590
    .line 2591
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 2592
    .line 2593
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 2594
    .line 2595
    .line 2596
    move-result v3

    .line 2597
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 2598
    .line 2599
    .line 2600
    move-result-object v7

    .line 2601
    if-nez v3, :cond_54

    .line 2602
    .line 2603
    if-ne v7, v8, :cond_55

    .line 2604
    .line 2605
    :cond_54
    new-instance v15, Landroidx/room/InvalidationTracker$implementation$1;

    .line 2606
    .line 2607
    const/16 v21, 0x0

    .line 2608
    .line 2609
    const/16 v22, 0x7

    .line 2610
    .line 2611
    const/16 v16, 0x1

    .line 2612
    .line 2613
    const-class v18, Lorg/wikipedia/random/RandomActivity;

    .line 2614
    .line 2615
    const-string v19, "onSaveClick"

    .line 2616
    .line 2617
    const-string v20, "onSaveClick(Lorg/wikipedia/page/PageTitle;)V"

    .line 2618
    .line 2619
    move-object/from16 v17, v0

    .line 2620
    .line 2621
    invoke-direct/range {v15 .. v22}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2622
    .line 2623
    .line 2624
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2625
    .line 2626
    .line 2627
    move-object v7, v15

    .line 2628
    :cond_55
    check-cast v7, Lkotlin/reflect/KFunction;

    .line 2629
    .line 2630
    move-object/from16 v18, v7

    .line 2631
    .line 2632
    check-cast v18, Lkotlin/jvm/functions/Function1;

    .line 2633
    .line 2634
    const/16 v20, 0x0

    .line 2635
    .line 2636
    move-object/from16 v19, v1

    .line 2637
    .line 2638
    move-object v15, v2

    .line 2639
    move-object/from16 v16, v4

    .line 2640
    .line 2641
    move-object/from16 v17, v5

    .line 2642
    .line 2643
    invoke-static/range {v15 .. v20}, Lorg/wikipedia/random/RandomScreenKt;->RandomScreen(Lorg/wikipedia/random/RandomViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 2644
    .line 2645
    .line 2646
    move-object/from16 v0, v19

    .line 2647
    .line 2648
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2649
    .line 2650
    .line 2651
    move-result-object v1

    .line 2652
    check-cast v1, Ljava/lang/Boolean;

    .line 2653
    .line 2654
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2655
    .line 2656
    .line 2657
    move-result v1

    .line 2658
    if-nez v1, :cond_57

    .line 2659
    .line 2660
    const v1, -0x63138692

    .line 2661
    .line 2662
    .line 2663
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2664
    .line 2665
    .line 2666
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 2667
    .line 2668
    .line 2669
    move-result-object v1

    .line 2670
    if-ne v1, v8, :cond_56

    .line 2671
    .line 2672
    new-instance v1, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;

    .line 2673
    .line 2674
    const/16 v2, 0x1c

    .line 2675
    .line 2676
    invoke-direct {v1, v14, v2}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 2677
    .line 2678
    .line 2679
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2680
    .line 2681
    .line 2682
    :cond_56
    move-object/from16 v50, v1

    .line 2683
    .line 2684
    check-cast v50, Lkotlin/jvm/functions/Function0;

    .line 2685
    .line 2686
    const v1, 0x7f12070a

    .line 2687
    .line 2688
    .line 2689
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 2690
    .line 2691
    .line 2692
    move-result-object v37

    .line 2693
    const/high16 v7, 0x3f800000    # 1.0f

    .line 2694
    .line 2695
    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2696
    .line 2697
    .line 2698
    move-result-object v38

    .line 2699
    const v1, 0x7f120709

    .line 2700
    .line 2701
    .line 2702
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 2703
    .line 2704
    .line 2705
    move-result-object v40

    .line 2706
    sget-object v43, Lorg/wikipedia/random/RandomScreenKt;->lambda$-577873682:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 2707
    .line 2708
    const v1, 0x7f120510

    .line 2709
    .line 2710
    .line 2711
    invoke-static {v1, v0}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 2712
    .line 2713
    .line 2714
    move-result-object v44

    .line 2715
    const/16 v55, 0xd80

    .line 2716
    .line 2717
    const/16 v56, 0x4e69

    .line 2718
    .line 2719
    const/16 v36, 0x0

    .line 2720
    .line 2721
    const/16 v39, 0x0

    .line 2722
    .line 2723
    const/16 v41, 0x0

    .line 2724
    .line 2725
    const/16 v42, 0x0

    .line 2726
    .line 2727
    const-wide/16 v45, 0x0

    .line 2728
    .line 2729
    const/16 v47, 0x0

    .line 2730
    .line 2731
    const-wide/16 v48, 0x0

    .line 2732
    .line 2733
    const/16 v52, 0x0

    .line 2734
    .line 2735
    const v54, 0xc00180

    .line 2736
    .line 2737
    .line 2738
    move-object/from16 v51, v50

    .line 2739
    .line 2740
    move-object/from16 v53, v0

    .line 2741
    .line 2742
    invoke-static/range {v36 .. v56}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikipediaAlertDialog-sK9R1Co(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Modifier;ILjava/lang/String;Landroidx/compose/ui/Modifier;ILkotlin/jvm/functions/Function2;Ljava/lang/String;JLjava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;III)V

    .line 2743
    .line 2744
    .line 2745
    const/4 v3, 0x0

    .line 2746
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2747
    .line 2748
    .line 2749
    goto :goto_28

    .line 2750
    :cond_57
    const/4 v3, 0x0

    .line 2751
    const v1, -0x6303e4e8

    .line 2752
    .line 2753
    .line 2754
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2755
    .line 2756
    .line 2757
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 2758
    .line 2759
    .line 2760
    goto :goto_28

    .line 2761
    :cond_58
    move-object v0, v1

    .line 2762
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 2763
    .line 2764
    .line 2765
    :goto_28
    return-object v34

    .line 2766
    nop

    .line 2767
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
