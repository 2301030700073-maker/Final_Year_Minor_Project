.class public final synthetic Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const/high16 v2, 0x41800000    # 16.0f

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 8
    .line 9
    const/16 v4, 0x20

    .line 10
    .line 11
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/16 v7, 0x30

    .line 15
    .line 16
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    iget-object v0, v0, Lorg/wikipedia/feed/FeedComponentsKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v9, 0x2

    .line 21
    const/4 v10, 0x1

    .line 22
    const/4 v11, 0x0

    .line 23
    packed-switch v1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    check-cast v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;

    .line 27
    .line 28
    move-object/from16 v1, p1

    .line 29
    .line 30
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 31
    .line 32
    move-object/from16 v2, p2

    .line 33
    .line 34
    check-cast v2, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    and-int/lit8 v3, v2, 0x3

    .line 41
    .line 42
    if-eq v3, v9, :cond_0

    .line 43
    .line 44
    move v3, v10

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v3, v11

    .line 47
    :goto_0
    and-int/2addr v2, v10

    .line 48
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->observeState()Lkotlinx/coroutines/flow/Flow;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget-object v2, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;->INSTANCE:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$Loading;

    .line 59
    .line 60
    invoke-static {v0, v2, v1, v7, v9}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;II)Landroidx/compose/runtime/MutableState;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v2, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$$ExternalSyntheticLambda1;

    .line 65
    .line 66
    invoke-direct {v2, v0, v11}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/State;I)V

    .line 67
    .line 68
    .line 69
    const v0, 0x164f3044

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v6, v0, v1, v7}, Lkotlin/ExceptionsKt;->GlanceTheme(Landroidx/glance/color/DynamicThemeColorProviders;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 81
    .line 82
    .line 83
    :goto_1
    return-object v8

    .line 84
    :pswitch_0
    check-cast v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;

    .line 85
    .line 86
    iget-object v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;->formatter:Lj$/time/format/DateTimeFormatter;

    .line 87
    .line 88
    move-object/from16 v2, p1

    .line 89
    .line 90
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 91
    .line 92
    move-object/from16 v3, p2

    .line 93
    .line 94
    check-cast v3, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    sget v4, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;->$r8$clinit:I

    .line 101
    .line 102
    and-int/lit8 v4, v3, 0x3

    .line 103
    .line 104
    if-eq v4, v9, :cond_2

    .line 105
    .line 106
    move v4, v10

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    move v4, v11

    .line 109
    :goto_2
    and-int/2addr v3, v10

    .line 110
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_3

    .line 115
    .line 116
    new-instance v12, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 117
    .line 118
    sget-object v3, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->REMOVE_DATE:Lj$/time/LocalDate;

    .line 119
    .line 120
    invoke-static {}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->getSTART_DATE()Lj$/time/LocalDate;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v1, v3}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-static {}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->getEND_DATE()Lj$/time/LocalDate;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v1, v4}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    new-array v4, v9, [Ljava/lang/Object;

    .line 137
    .line 138
    aput-object v3, v4, v11

    .line 139
    .line 140
    aput-object v1, v4, v10

    .line 141
    .line 142
    const v1, 0x7f12071f

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v17

    .line 149
    const/16 v16, 0x4

    .line 150
    .line 151
    const v13, 0x7f08014a

    .line 152
    .line 153
    .line 154
    const v14, 0x7f120720

    .line 155
    .line 156
    .line 157
    const/4 v15, 0x0

    .line 158
    invoke-direct/range {v12 .. v17}, Lorg/wikipedia/compose/components/OnboardingItem;-><init>(IIIILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance v13, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 162
    .line 163
    const/16 v18, 0x0

    .line 164
    .line 165
    const/16 v17, 0x8

    .line 166
    .line 167
    const v14, 0x7f080166

    .line 168
    .line 169
    .line 170
    const v15, 0x7f120722

    .line 171
    .line 172
    .line 173
    const v16, 0x7f120721

    .line 174
    .line 175
    .line 176
    invoke-direct/range {v13 .. v18}, Lorg/wikipedia/compose/components/OnboardingItem;-><init>(IIIILjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    new-instance v14, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 180
    .line 181
    const/16 v19, 0x0

    .line 182
    .line 183
    const/16 v18, 0x8

    .line 184
    .line 185
    const v15, 0x7f0800d6

    .line 186
    .line 187
    .line 188
    const v16, 0x7f120716

    .line 189
    .line 190
    .line 191
    const v17, 0x7f120715

    .line 192
    .line 193
    .line 194
    invoke-direct/range {v14 .. v19}, Lorg/wikipedia/compose/components/OnboardingItem;-><init>(IIIILjava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const/4 v1, 0x3

    .line 198
    new-array v1, v1, [Lorg/wikipedia/compose/components/OnboardingItem;

    .line 199
    .line 200
    aput-object v12, v1, v11

    .line 201
    .line 202
    aput-object v13, v1, v10

    .line 203
    .line 204
    aput-object v14, v1, v9

    .line 205
    .line 206
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    new-instance v3, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;

    .line 211
    .line 212
    const/16 v4, 0xf

    .line 213
    .line 214
    invoke-direct {v3, v4, v0, v1}, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    const v0, 0x25f28d37    # 4.2076E-16f

    .line 218
    .line 219
    .line 220
    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v6, v0, v2, v7, v10}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 229
    .line 230
    .line 231
    :goto_3
    return-object v8

    .line 232
    :pswitch_1
    check-cast v0, Landroidx/compose/material3/SnackbarHostState;

    .line 233
    .line 234
    move-object/from16 v1, p1

    .line 235
    .line 236
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 237
    .line 238
    move-object/from16 v2, p2

    .line 239
    .line 240
    check-cast v2, Ljava/lang/Integer;

    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    and-int/lit8 v3, v2, 0x3

    .line 247
    .line 248
    if-eq v3, v9, :cond_4

    .line 249
    .line 250
    move v11, v10

    .line 251
    :cond_4
    and-int/2addr v2, v10

    .line 252
    invoke-virtual {v1, v2, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-eqz v2, :cond_5

    .line 257
    .line 258
    sget-object v2, Lorg/wikipedia/settings/PrefsIoUtil;->lambda$-1740632181:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 259
    .line 260
    const/16 v3, 0x186

    .line 261
    .line 262
    invoke-static {v0, v6, v2, v1, v3}, Landroidx/compose/material3/CardKt;->SnackbarHost(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 267
    .line 268
    .line 269
    :goto_4
    return-object v8

    .line 270
    :pswitch_2
    check-cast v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;

    .line 271
    .line 272
    move-object/from16 v1, p1

    .line 273
    .line 274
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 275
    .line 276
    move-object/from16 v2, p2

    .line 277
    .line 278
    check-cast v2, Ljava/lang/Integer;

    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    sget v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 285
    .line 286
    and-int/lit8 v3, v2, 0x3

    .line 287
    .line 288
    if-eq v3, v9, :cond_6

    .line 289
    .line 290
    move v11, v10

    .line 291
    :cond_6
    and-int/2addr v2, v10

    .line 292
    invoke-virtual {v1, v2, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_7

    .line 297
    .line 298
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    iget-object v2, v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 303
    .line 304
    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    iget-object v3, v3, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->resetUiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 313
    .line 314
    invoke-static {v3, v1}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    new-instance v4, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;

    .line 319
    .line 320
    const/16 v5, 0x12

    .line 321
    .line 322
    invoke-direct {v4, v0, v3, v2, v5}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 323
    .line 324
    .line 325
    const v0, 0x29352a64

    .line 326
    .line 327
    .line 328
    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-static {v6, v0, v1, v7, v10}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 333
    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 337
    .line 338
    .line 339
    :goto_5
    return-object v8

    .line 340
    :pswitch_3
    check-cast v0, Lorg/wikipedia/random/RandomActivity;

    .line 341
    .line 342
    move-object/from16 v1, p1

    .line 343
    .line 344
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 345
    .line 346
    move-object/from16 v2, p2

    .line 347
    .line 348
    check-cast v2, Ljava/lang/Integer;

    .line 349
    .line 350
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    sget v3, Lorg/wikipedia/random/RandomActivity;->$r8$clinit:I

    .line 355
    .line 356
    and-int/lit8 v3, v2, 0x3

    .line 357
    .line 358
    if-eq v3, v9, :cond_8

    .line 359
    .line 360
    move v3, v10

    .line 361
    goto :goto_6

    .line 362
    :cond_8
    move v3, v11

    .line 363
    :goto_6
    and-int/2addr v2, v10

    .line 364
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    if-eqz v2, :cond_a

    .line 369
    .line 370
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    if-ne v2, v5, :cond_9

    .line 375
    .line 376
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 377
    .line 378
    new-array v2, v11, [Ljava/lang/Object;

    .line 379
    .line 380
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 381
    .line 382
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    const v4, 0x7f120648

    .line 391
    .line 392
    .line 393
    invoke-static {v2, v11, v3, v4}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-static {v3}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    invoke-virtual {v3, v4, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    invoke-interface {v3, v2, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    :cond_9
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 425
    .line 426
    sget-object v3, Lorg/wikipedia/theme/Theme;->BLACK:Lorg/wikipedia/theme/Theme;

    .line 427
    .line 428
    new-instance v4, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;

    .line 429
    .line 430
    invoke-direct {v4, v11, v0, v2}, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    const v0, 0x109fe02a

    .line 434
    .line 435
    .line 436
    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    const/16 v2, 0x36

    .line 441
    .line 442
    invoke-static {v3, v0, v1, v2, v11}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 443
    .line 444
    .line 445
    goto :goto_7

    .line 446
    :cond_a
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 447
    .line 448
    .line 449
    :goto_7
    return-object v8

    .line 450
    :pswitch_4
    check-cast v0, Lorg/wikipedia/onboarding/InitialOnboardingActivity;

    .line 451
    .line 452
    move-object/from16 v1, p1

    .line 453
    .line 454
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 455
    .line 456
    move-object/from16 v2, p2

    .line 457
    .line 458
    check-cast v2, Ljava/lang/Integer;

    .line 459
    .line 460
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    sget v3, Lorg/wikipedia/onboarding/InitialOnboardingActivity;->$r8$clinit:I

    .line 465
    .line 466
    and-int/lit8 v3, v2, 0x3

    .line 467
    .line 468
    if-eq v3, v9, :cond_b

    .line 469
    .line 470
    move v3, v10

    .line 471
    goto :goto_8

    .line 472
    :cond_b
    move v3, v11

    .line 473
    :goto_8
    and-int/2addr v2, v10

    .line 474
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    if-eqz v2, :cond_14

    .line 479
    .line 480
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    if-ne v2, v5, :cond_c

    .line 485
    .line 486
    sget-object v2, Lorg/wikipedia/theme/Theme;->BLACK:Lorg/wikipedia/theme/Theme;

    .line 487
    .line 488
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    :cond_c
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 496
    .line 497
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    if-ne v3, v5, :cond_d

    .line 502
    .line 503
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    invoke-virtual {v3}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    const v4, 0x106000c

    .line 512
    .line 513
    .line 514
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 515
    .line 516
    .line 517
    move-result v3

    .line 518
    new-instance v4, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 519
    .line 520
    invoke-direct {v4, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    move-object v3, v4

    .line 527
    :cond_d
    check-cast v3, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 528
    .line 529
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    check-cast v4, Lorg/wikipedia/theme/Theme;

    .line 534
    .line 535
    invoke-virtual {v4}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 536
    .line 537
    .line 538
    move-result v4

    .line 539
    xor-int/2addr v4, v10

    .line 540
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 548
    .line 549
    .line 550
    move-result-object v6

    .line 551
    new-instance v9, Landroidx/paging/HintHandler;

    .line 552
    .line 553
    invoke-direct {v9, v6}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 554
    .line 555
    .line 556
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 557
    .line 558
    const/16 v10, 0x1a

    .line 559
    .line 560
    const/16 v12, 0x1e

    .line 561
    .line 562
    const/16 v13, 0x23

    .line 563
    .line 564
    if-lt v6, v13, :cond_e

    .line 565
    .line 566
    new-instance v6, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 567
    .line 568
    invoke-direct {v6, v5, v9}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 569
    .line 570
    .line 571
    goto :goto_9

    .line 572
    :cond_e
    if-lt v6, v12, :cond_f

    .line 573
    .line 574
    new-instance v6, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 575
    .line 576
    invoke-direct {v6, v5, v9}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 577
    .line 578
    .line 579
    goto :goto_9

    .line 580
    :cond_f
    if-lt v6, v10, :cond_10

    .line 581
    .line 582
    new-instance v6, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 583
    .line 584
    invoke-direct {v6, v5, v9}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 585
    .line 586
    .line 587
    goto :goto_9

    .line 588
    :cond_10
    new-instance v6, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 589
    .line 590
    invoke-direct {v6, v5, v9}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 591
    .line 592
    .line 593
    :goto_9
    invoke-virtual {v6, v4}, Lcoil3/util/UtilsKt;->setAppearanceLightStatusBars(Z)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 597
    .line 598
    .line 599
    move-result-object v5

    .line 600
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 604
    .line 605
    .line 606
    move-result-object v6

    .line 607
    new-instance v9, Landroidx/paging/HintHandler;

    .line 608
    .line 609
    invoke-direct {v9, v6}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 610
    .line 611
    .line 612
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 613
    .line 614
    if-lt v6, v13, :cond_11

    .line 615
    .line 616
    new-instance v6, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 617
    .line 618
    invoke-direct {v6, v5, v9}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 619
    .line 620
    .line 621
    goto :goto_a

    .line 622
    :cond_11
    if-lt v6, v12, :cond_12

    .line 623
    .line 624
    new-instance v6, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 625
    .line 626
    invoke-direct {v6, v5, v9}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 627
    .line 628
    .line 629
    goto :goto_a

    .line 630
    :cond_12
    if-lt v6, v10, :cond_13

    .line 631
    .line 632
    new-instance v6, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 633
    .line 634
    invoke-direct {v6, v5, v9}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 635
    .line 636
    .line 637
    goto :goto_a

    .line 638
    :cond_13
    new-instance v6, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 639
    .line 640
    invoke-direct {v6, v5, v9}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 641
    .line 642
    .line 643
    :goto_a
    invoke-virtual {v6, v4}, Lcoil3/util/UtilsKt;->setAppearanceLightNavigationBars(Z)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 647
    .line 648
    .line 649
    move-result v4

    .line 650
    invoke-virtual {v0, v4}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 651
    .line 652
    .line 653
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v4

    .line 657
    check-cast v4, Lorg/wikipedia/theme/Theme;

    .line 658
    .line 659
    new-instance v5, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;

    .line 660
    .line 661
    const/16 v6, 0x11

    .line 662
    .line 663
    invoke-direct {v5, v0, v2, v3, v6}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 664
    .line 665
    .line 666
    const v0, -0x1fa9a12e

    .line 667
    .line 668
    .line 669
    invoke-static {v0, v5, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    invoke-static {v4, v0, v1, v7, v11}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 674
    .line 675
    .line 676
    goto :goto_b

    .line 677
    :cond_14
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 678
    .line 679
    .line 680
    :goto_b
    return-object v8

    .line 681
    :pswitch_5
    check-cast v0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;

    .line 682
    .line 683
    move-object/from16 v1, p1

    .line 684
    .line 685
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 686
    .line 687
    move-object/from16 v5, p2

    .line 688
    .line 689
    check-cast v5, Ljava/lang/Integer;

    .line 690
    .line 691
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 692
    .line 693
    .line 694
    move-result v5

    .line 695
    and-int/lit8 v7, v5, 0x3

    .line 696
    .line 697
    if-eq v7, v9, :cond_15

    .line 698
    .line 699
    move v7, v10

    .line 700
    goto :goto_c

    .line 701
    :cond_15
    move v7, v11

    .line 702
    :goto_c
    and-int/2addr v5, v10

    .line 703
    invoke-virtual {v1, v5, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 704
    .line 705
    .line 706
    move-result v5

    .line 707
    if-eqz v5, :cond_1d

    .line 708
    .line 709
    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 710
    .line 711
    invoke-static {v5, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 712
    .line 713
    .line 714
    move-result-object v5

    .line 715
    new-instance v7, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 716
    .line 717
    new-instance v9, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 718
    .line 719
    const/16 v12, 0xa

    .line 720
    .line 721
    invoke-direct {v9, v12}, Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 722
    .line 723
    .line 724
    invoke-direct {v7, v2, v10, v9}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 725
    .line 726
    .line 727
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 728
    .line 729
    const/4 v9, 0x6

    .line 730
    invoke-static {v7, v2, v1, v9}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    iget-wide v12, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 735
    .line 736
    ushr-long v14, v12, v4

    .line 737
    .line 738
    xor-long/2addr v12, v14

    .line 739
    long-to-int v4, v12

    .line 740
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 741
    .line 742
    .line 743
    move-result-object v7

    .line 744
    invoke-static {v1, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 745
    .line 746
    .line 747
    move-result-object v5

    .line 748
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 749
    .line 750
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    .line 752
    .line 753
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 754
    .line 755
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 756
    .line 757
    .line 758
    iget-boolean v12, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 759
    .line 760
    if-eqz v12, :cond_16

    .line 761
    .line 762
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 763
    .line 764
    .line 765
    goto :goto_d

    .line 766
    :cond_16
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 767
    .line 768
    .line 769
    :goto_d
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 770
    .line 771
    invoke-static {v1, v2, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 772
    .line 773
    .line 774
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 775
    .line 776
    invoke-static {v1, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 777
    .line 778
    .line 779
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 780
    .line 781
    .line 782
    move-result-object v2

    .line 783
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 784
    .line 785
    invoke-static {v1, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 786
    .line 787
    .line 788
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 789
    .line 790
    invoke-static {v1, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 791
    .line 792
    .line 793
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 794
    .line 795
    const/high16 v4, 0x3f800000    # 1.0f

    .line 796
    .line 797
    invoke-static {v1, v5, v2, v4, v10}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;FZ)Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 798
    .line 799
    .line 800
    move-result-object v13

    .line 801
    iget-object v12, v0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->text:Ljava/lang/String;

    .line 802
    .line 803
    sget-wide v14, Lorg/wikipedia/compose/ComposeColors;->Gray200:J

    .line 804
    .line 805
    sget-object v2, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 806
    .line 807
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v2

    .line 811
    check-cast v2, Landroidx/compose/material3/Typography;

    .line 812
    .line 813
    iget-object v2, v2, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 814
    .line 815
    const/16 v4, 0x18

    .line 816
    .line 817
    invoke-static {v4}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 818
    .line 819
    .line 820
    move-result-wide v25

    .line 821
    invoke-static {v11}, Lcoil3/util/ContextsKt;->getSp(I)J

    .line 822
    .line 823
    .line 824
    move-result-wide v23

    .line 825
    const/16 v27, 0x0

    .line 826
    .line 827
    const v28, 0xfdff7f

    .line 828
    .line 829
    .line 830
    const-wide/16 v17, 0x0

    .line 831
    .line 832
    const-wide/16 v19, 0x0

    .line 833
    .line 834
    const/16 v21, 0x0

    .line 835
    .line 836
    const/16 v22, 0x0

    .line 837
    .line 838
    move-object/from16 v16, v2

    .line 839
    .line 840
    invoke-static/range {v16 .. v28}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JJLandroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    .line 841
    .line 842
    .line 843
    move-result-object v31

    .line 844
    const/16 v34, 0x6180

    .line 845
    .line 846
    const v35, 0x1aff8

    .line 847
    .line 848
    .line 849
    const/16 v16, 0x0

    .line 850
    .line 851
    const/16 v19, 0x0

    .line 852
    .line 853
    const/16 v20, 0x0

    .line 854
    .line 855
    const-wide/16 v21, 0x0

    .line 856
    .line 857
    const/16 v23, 0x0

    .line 858
    .line 859
    const-wide/16 v24, 0x0

    .line 860
    .line 861
    const/16 v26, 0x2

    .line 862
    .line 863
    const/16 v27, 0x0

    .line 864
    .line 865
    const/16 v28, 0x6

    .line 866
    .line 867
    const/16 v29, 0x0

    .line 868
    .line 869
    const/16 v30, 0x0

    .line 870
    .line 871
    const/16 v33, 0x180

    .line 872
    .line 873
    move-object/from16 v32, v1

    .line 874
    .line 875
    invoke-static/range {v12 .. v35}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 876
    .line 877
    .line 878
    iget-object v0, v0, Lorg/wikipedia/feed/onthisday/OnThisDay$Event;->pages:Ljava/util/List;

    .line 879
    .line 880
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    :cond_17
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 885
    .line 886
    .line 887
    move-result v2

    .line 888
    if-eqz v2, :cond_18

    .line 889
    .line 890
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v2

    .line 894
    move-object v4, v2

    .line 895
    check-cast v4, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 896
    .line 897
    invoke-virtual {v4}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v4

    .line 901
    if-eqz v4, :cond_17

    .line 902
    .line 903
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 904
    .line 905
    .line 906
    move-result v4

    .line 907
    if-nez v4, :cond_19

    .line 908
    .line 909
    goto :goto_e

    .line 910
    :cond_18
    move-object v2, v6

    .line 911
    :cond_19
    check-cast v2, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 912
    .line 913
    if-eqz v2, :cond_1a

    .line 914
    .line 915
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v6

    .line 919
    :cond_1a
    move-object v13, v6

    .line 920
    if-nez v13, :cond_1b

    .line 921
    .line 922
    const v0, -0x38a04f1c

    .line 923
    .line 924
    .line 925
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 929
    .line 930
    .line 931
    goto :goto_f

    .line 932
    :cond_1b
    const v0, -0x38a04f1b

    .line 933
    .line 934
    .line 935
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 936
    .line 937
    .line 938
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 939
    .line 940
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    move-object v12, v0

    .line 945
    check-cast v12, Landroid/content/Context;

    .line 946
    .line 947
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 948
    .line 949
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 950
    .line 951
    .line 952
    sget-object v0, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 953
    .line 954
    const/16 v16, 0x0

    .line 955
    .line 956
    if-eqz v0, :cond_1c

    .line 957
    .line 958
    move-object v15, v14

    .line 959
    move-object/from16 v17, v16

    .line 960
    .line 961
    invoke-static/range {v12 .. v17}, Lokio/ByteString$Companion;->getRequestBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lorg/wikipedia/views/imageservice/ImageLoadListener;)Lcoil3/request/ImageRequest$Builder;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    invoke-virtual {v0}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 966
    .line 967
    .line 968
    move-result-object v16

    .line 969
    :cond_1c
    move-object/from16 v12, v16

    .line 970
    .line 971
    new-instance v0, Landroidx/compose/ui/graphics/painter/BrushPainter;

    .line 972
    .line 973
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 974
    .line 975
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 976
    .line 977
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v4

    .line 981
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 982
    .line 983
    iget-wide v4, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 984
    .line 985
    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 986
    .line 987
    .line 988
    invoke-direct {v0, v2}, Landroidx/compose/ui/graphics/painter/BrushPainter;-><init>(Landroidx/compose/ui/graphics/SolidColor;)V

    .line 989
    .line 990
    .line 991
    const/high16 v2, 0x42c80000    # 100.0f

    .line 992
    .line 993
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 994
    .line 995
    .line 996
    move-result-object v2

    .line 997
    const/high16 v3, 0x41000000    # 8.0f

    .line 998
    .line 999
    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v3

    .line 1003
    invoke-static {v2, v3}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v14

    .line 1007
    const/16 v22, 0x6

    .line 1008
    .line 1009
    const/16 v23, 0x7be8

    .line 1010
    .line 1011
    const/4 v13, 0x0

    .line 1012
    const/4 v15, 0x0

    .line 1013
    const/16 v17, 0x0

    .line 1014
    .line 1015
    const/16 v18, 0x0

    .line 1016
    .line 1017
    sget-object v19, Landroidx/compose/ui/layout/ContentScale$Companion;->Crop:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 1018
    .line 1019
    const v21, 0x8030

    .line 1020
    .line 1021
    .line 1022
    move-object/from16 v16, v0

    .line 1023
    .line 1024
    move-object/from16 v20, v1

    .line 1025
    .line 1026
    invoke-static/range {v12 .. v23}, Lcoil3/compose/AsyncImageKt;->AsyncImage-x1rPTaM(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/GapComposer;III)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1030
    .line 1031
    .line 1032
    :goto_f
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1033
    .line 1034
    .line 1035
    goto :goto_10

    .line 1036
    :cond_1d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1037
    .line 1038
    .line 1039
    :goto_10
    return-object v8

    .line 1040
    :pswitch_6
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 1041
    .line 1042
    move-object/from16 v1, p1

    .line 1043
    .line 1044
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1045
    .line 1046
    move-object/from16 v5, p2

    .line 1047
    .line 1048
    check-cast v5, Ljava/lang/Integer;

    .line 1049
    .line 1050
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1051
    .line 1052
    .line 1053
    move-result v5

    .line 1054
    and-int/lit8 v6, v5, 0x3

    .line 1055
    .line 1056
    if-eq v6, v9, :cond_1e

    .line 1057
    .line 1058
    move v6, v10

    .line 1059
    goto :goto_11

    .line 1060
    :cond_1e
    move v6, v11

    .line 1061
    :goto_11
    and-int/2addr v5, v10

    .line 1062
    invoke-virtual {v1, v5, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1063
    .line 1064
    .line 1065
    move-result v5

    .line 1066
    if-eqz v5, :cond_20

    .line 1067
    .line 1068
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 1069
    .line 1070
    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 1071
    .line 1072
    invoke-static {v6, v5, v1, v7}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v5

    .line 1076
    iget-wide v6, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1077
    .line 1078
    ushr-long v12, v6, v4

    .line 1079
    .line 1080
    xor-long/2addr v6, v12

    .line 1081
    long-to-int v4, v6

    .line 1082
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v6

    .line 1086
    invoke-static {v1, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v7

    .line 1090
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1091
    .line 1092
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1093
    .line 1094
    .line 1095
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1096
    .line 1097
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1098
    .line 1099
    .line 1100
    iget-boolean v12, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1101
    .line 1102
    if-eqz v12, :cond_1f

    .line 1103
    .line 1104
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1105
    .line 1106
    .line 1107
    goto :goto_12

    .line 1108
    :cond_1f
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1109
    .line 1110
    .line 1111
    :goto_12
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1112
    .line 1113
    invoke-static {v1, v5, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1114
    .line 1115
    .line 1116
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1117
    .line 1118
    invoke-static {v1, v6, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1119
    .line 1120
    .line 1121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v4

    .line 1125
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1126
    .line 1127
    invoke-static {v1, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1128
    .line 1129
    .line 1130
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1131
    .line 1132
    invoke-static {v1, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 1133
    .line 1134
    .line 1135
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1136
    .line 1137
    invoke-static {v1, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1138
    .line 1139
    .line 1140
    const v4, 0x7f080156

    .line 1141
    .line 1142
    .line 1143
    invoke-static {v4, v11, v1}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v12

    .line 1147
    sget-object v4, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1148
    .line 1149
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v5

    .line 1153
    check-cast v5, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1154
    .line 1155
    iget-wide v5, v5, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 1156
    .line 1157
    const/16 v18, 0x38

    .line 1158
    .line 1159
    const/16 v19, 0x4

    .line 1160
    .line 1161
    const/4 v13, 0x0

    .line 1162
    const/4 v14, 0x0

    .line 1163
    move-object/from16 v17, v1

    .line 1164
    .line 1165
    move-wide v15, v5

    .line 1166
    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 1167
    .line 1168
    .line 1169
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v2

    .line 1173
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 1174
    .line 1175
    .line 1176
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1177
    .line 1178
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v2

    .line 1182
    check-cast v2, Landroid/content/Context;

    .line 1183
    .line 1184
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1185
    .line 1186
    const v3, 0x7f1201f3

    .line 1187
    .line 1188
    .line 1189
    new-array v5, v11, [Ljava/lang/Object;

    .line 1190
    .line 1191
    invoke-static {v2, v0, v3, v5}, Lorg/wikipedia/extensions/ContextKt;->getString(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v12

    .line 1195
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1196
    .line 1197
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v0

    .line 1201
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 1202
    .line 1203
    iget-object v0, v0, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 1204
    .line 1205
    sget-object v19, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 1206
    .line 1207
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v2

    .line 1211
    check-cast v2, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 1212
    .line 1213
    iget-wide v14, v2, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 1214
    .line 1215
    const/16 v34, 0x0

    .line 1216
    .line 1217
    const v35, 0x1ffba

    .line 1218
    .line 1219
    .line 1220
    const/16 v16, 0x0

    .line 1221
    .line 1222
    const-wide/16 v17, 0x0

    .line 1223
    .line 1224
    const/16 v20, 0x0

    .line 1225
    .line 1226
    const-wide/16 v21, 0x0

    .line 1227
    .line 1228
    const/16 v23, 0x0

    .line 1229
    .line 1230
    const-wide/16 v24, 0x0

    .line 1231
    .line 1232
    const/16 v26, 0x0

    .line 1233
    .line 1234
    const/16 v27, 0x0

    .line 1235
    .line 1236
    const/16 v28, 0x0

    .line 1237
    .line 1238
    const/16 v29, 0x0

    .line 1239
    .line 1240
    const/16 v30, 0x0

    .line 1241
    .line 1242
    const/high16 v33, 0x180000

    .line 1243
    .line 1244
    move-object/from16 v31, v0

    .line 1245
    .line 1246
    move-object/from16 v32, v1

    .line 1247
    .line 1248
    invoke-static/range {v12 .. v35}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1252
    .line 1253
    .line 1254
    goto :goto_13

    .line 1255
    :cond_20
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1256
    .line 1257
    .line 1258
    :goto_13
    return-object v8

    .line 1259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
