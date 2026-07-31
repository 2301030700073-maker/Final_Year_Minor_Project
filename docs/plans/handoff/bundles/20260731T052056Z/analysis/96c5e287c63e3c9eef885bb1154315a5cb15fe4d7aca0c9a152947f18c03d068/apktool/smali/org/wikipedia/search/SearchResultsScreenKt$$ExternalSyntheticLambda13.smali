.class public final synthetic Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda13;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda13;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda13;->f$3:Ljava/lang/Object;

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
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x90

    .line 6
    .line 7
    const/16 v3, 0x10

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/16 v5, 0x20

    .line 11
    .line 12
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 15
    .line 16
    iget-object v8, v0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda13;->f$3:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v9, v0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda13;->f$2:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v10, v0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda13;->f$1:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v0, v0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 29
    .line 30
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 31
    .line 32
    check-cast v9, Landroid/content/Context;

    .line 33
    .line 34
    check-cast v8, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 35
    .line 36
    move-object/from16 v1, p1

    .line 37
    .line 38
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 39
    .line 40
    move-object/from16 v2, p2

    .line 41
    .line 42
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 43
    .line 44
    move-object/from16 v3, p3

    .line 45
    .line 46
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 47
    .line 48
    move-object/from16 v4, p4

    .line 49
    .line 50
    check-cast v4, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    or-int/2addr v1, v2

    .line 70
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const/4 v4, 0x2

    .line 75
    if-nez v1, :cond_0

    .line 76
    .line 77
    if-ne v2, v7, :cond_1

    .line 78
    .line 79
    :cond_0
    new-instance v2, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13;

    .line 80
    .line 81
    invoke-direct {v2, v0, v10, v4}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13;-><init>(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    move-object v13, v2

    .line 88
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 89
    .line 90
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    or-int/2addr v0, v1

    .line 99
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-nez v0, :cond_2

    .line 104
    .line 105
    if-ne v1, v7, :cond_3

    .line 106
    .line 107
    :cond_2
    new-instance v1, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;

    .line 108
    .line 109
    const/16 v0, 0xa

    .line 110
    .line 111
    invoke-direct {v1, v0, v9, v8}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    move-object v14, v1

    .line 118
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 119
    .line 120
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-nez v0, :cond_4

    .line 129
    .line 130
    if-ne v1, v7, :cond_5

    .line 131
    .line 132
    :cond_4
    new-instance v1, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18;

    .line 133
    .line 134
    invoke-direct {v1, v9, v11}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18;-><init>(Landroid/content/Context;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_5
    move-object v15, v1

    .line 141
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 142
    .line 143
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    if-nez v0, :cond_6

    .line 152
    .line 153
    if-ne v1, v7, :cond_7

    .line 154
    .line 155
    :cond_6
    new-instance v1, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18;

    .line 156
    .line 157
    invoke-direct {v1, v9, v4}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18;-><init>(Landroid/content/Context;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_7
    move-object/from16 v16, v1

    .line 164
    .line 165
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 166
    .line 167
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    if-nez v0, :cond_8

    .line 176
    .line 177
    if-ne v1, v7, :cond_9

    .line 178
    .line 179
    :cond_8
    new-instance v1, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18;

    .line 180
    .line 181
    const/4 v0, 0x3

    .line 182
    invoke-direct {v1, v9, v0}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18;-><init>(Landroid/content/Context;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_9
    move-object/from16 v17, v1

    .line 189
    .line 190
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 191
    .line 192
    const/16 v19, 0x0

    .line 193
    .line 194
    const/4 v12, 0x0

    .line 195
    move-object/from16 v18, v3

    .line 196
    .line 197
    invoke-static/range {v12 .. v19}, Lokio/Okio__OkioKt;->FeedConfigurationScreen(Lorg/wikipedia/settings/homefeed/ModulesViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 198
    .line 199
    .line 200
    return-object v6

    .line 201
    :pswitch_0
    check-cast v0, Ljava/util/ArrayList;

    .line 202
    .line 203
    check-cast v10, Lkotlin/jvm/functions/Function6;

    .line 204
    .line 205
    check-cast v9, Lkotlin/jvm/functions/Function4;

    .line 206
    .line 207
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 208
    .line 209
    move-object/from16 v1, p1

    .line 210
    .line 211
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 212
    .line 213
    move-object/from16 v12, p2

    .line 214
    .line 215
    check-cast v12, Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 218
    .line 219
    .line 220
    move-result v12

    .line 221
    move-object/from16 v13, p3

    .line 222
    .line 223
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 224
    .line 225
    move-object/from16 v14, p4

    .line 226
    .line 227
    check-cast v14, Ljava/lang/Integer;

    .line 228
    .line 229
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 230
    .line 231
    .line 232
    move-result v14

    .line 233
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    and-int/lit8 v1, v14, 0x30

    .line 237
    .line 238
    if-nez v1, :cond_b

    .line 239
    .line 240
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_a

    .line 245
    .line 246
    move v3, v5

    .line 247
    :cond_a
    or-int/2addr v14, v3

    .line 248
    :cond_b
    and-int/lit16 v1, v14, 0x91

    .line 249
    .line 250
    if-eq v1, v2, :cond_c

    .line 251
    .line 252
    move v1, v4

    .line 253
    goto :goto_0

    .line 254
    :cond_c
    move v1, v11

    .line 255
    :goto_0
    and-int/lit8 v2, v14, 0x1

    .line 256
    .line 257
    invoke-virtual {v13, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_18

    .line 262
    .line 263
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Lorg/wikipedia/search/SearchResult;

    .line 268
    .line 269
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    or-int/2addr v1, v2

    .line 278
    and-int/lit8 v2, v14, 0x70

    .line 279
    .line 280
    if-ne v2, v5, :cond_d

    .line 281
    .line 282
    move v3, v4

    .line 283
    goto :goto_1

    .line 284
    :cond_d
    move v3, v11

    .line 285
    :goto_1
    or-int/2addr v1, v3

    .line 286
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    if-nez v1, :cond_e

    .line 291
    .line 292
    if-ne v3, v7, :cond_f

    .line 293
    .line 294
    :cond_e
    new-instance v3, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;

    .line 295
    .line 296
    const/16 v1, 0x8

    .line 297
    .line 298
    invoke-direct {v3, v12, v1, v0, v10}, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;-><init>(IILjava/lang/Object;Lkotlin/Function;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    :cond_f
    move-object v14, v3

    .line 305
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 306
    .line 307
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-ne v2, v5, :cond_10

    .line 312
    .line 313
    move v3, v4

    .line 314
    goto :goto_2

    .line 315
    :cond_10
    move v3, v11

    .line 316
    :goto_2
    or-int/2addr v1, v3

    .line 317
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    or-int/2addr v1, v3

    .line 322
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    if-nez v1, :cond_11

    .line 327
    .line 328
    if-ne v3, v7, :cond_12

    .line 329
    .line 330
    :cond_11
    new-instance v3, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;

    .line 331
    .line 332
    const/4 v1, 0x4

    .line 333
    invoke-direct {v3, v9, v12, v0, v1}, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    :cond_12
    move-object v15, v3

    .line 340
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 341
    .line 342
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    or-int/2addr v1, v3

    .line 351
    if-ne v2, v5, :cond_13

    .line 352
    .line 353
    goto :goto_3

    .line 354
    :cond_13
    move v4, v11

    .line 355
    :goto_3
    or-int/2addr v1, v4

    .line 356
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    if-nez v1, :cond_14

    .line 361
    .line 362
    if-ne v2, v7, :cond_15

    .line 363
    .line 364
    :cond_14
    new-instance v2, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;

    .line 365
    .line 366
    const/4 v1, 0x5

    .line 367
    invoke-direct {v2, v10, v0, v12, v1}, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    :cond_15
    move-object/from16 v16, v2

    .line 374
    .line 375
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 376
    .line 377
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    or-int/2addr v1, v2

    .line 386
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    if-nez v1, :cond_16

    .line 391
    .line 392
    if-ne v2, v7, :cond_17

    .line 393
    .line 394
    :cond_16
    new-instance v2, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;

    .line 395
    .line 396
    const/4 v1, 0x6

    .line 397
    invoke-direct {v2, v1, v8, v0}, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    :cond_17
    move-object/from16 v17, v2

    .line 404
    .line 405
    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 406
    .line 407
    const/16 v19, 0x0

    .line 408
    .line 409
    move-object/from16 v18, v13

    .line 410
    .line 411
    move-object v13, v0

    .line 412
    invoke-static/range {v13 .. v19}, Lorg/wikipedia/search/NoSearchResultsKt;->SemanticSearchResultPageItem(Lorg/wikipedia/search/SearchResult;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 413
    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_18
    move-object/from16 v18, v13

    .line 417
    .line 418
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 419
    .line 420
    .line 421
    :goto_4
    return-object v6

    .line 422
    :pswitch_1
    check-cast v0, Landroidx/paging/compose/LazyPagingItems;

    .line 423
    .line 424
    move-object v14, v10

    .line 425
    check-cast v14, Ljava/lang/String;

    .line 426
    .line 427
    check-cast v9, Lkotlin/jvm/functions/Function4;

    .line 428
    .line 429
    check-cast v8, Lkotlin/jvm/functions/Function3;

    .line 430
    .line 431
    move-object/from16 v1, p1

    .line 432
    .line 433
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 434
    .line 435
    move-object/from16 v10, p2

    .line 436
    .line 437
    check-cast v10, Ljava/lang/Integer;

    .line 438
    .line 439
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 440
    .line 441
    .line 442
    move-result v10

    .line 443
    move-object/from16 v12, p3

    .line 444
    .line 445
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 446
    .line 447
    move-object/from16 v13, p4

    .line 448
    .line 449
    check-cast v13, Ljava/lang/Integer;

    .line 450
    .line 451
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 452
    .line 453
    .line 454
    move-result v13

    .line 455
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    and-int/lit8 v1, v13, 0x30

    .line 459
    .line 460
    if-nez v1, :cond_1a

    .line 461
    .line 462
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-eqz v1, :cond_19

    .line 467
    .line 468
    move v3, v5

    .line 469
    :cond_19
    or-int/2addr v13, v3

    .line 470
    :cond_1a
    and-int/lit16 v1, v13, 0x91

    .line 471
    .line 472
    if-eq v1, v2, :cond_1b

    .line 473
    .line 474
    move v1, v4

    .line 475
    goto :goto_5

    .line 476
    :cond_1b
    move v1, v11

    .line 477
    :goto_5
    and-int/lit8 v2, v13, 0x1

    .line 478
    .line 479
    invoke-virtual {v12, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    if-eqz v1, :cond_23

    .line 484
    .line 485
    iget-object v1, v0, Landroidx/paging/compose/LazyPagingItems;->pagingDataPresenter:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 486
    .line 487
    invoke-virtual {v1, v10}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->get(I)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    iget-object v0, v0, Landroidx/paging/compose/LazyPagingItems;->itemSnapshotList$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 491
    .line 492
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    check-cast v0, Landroidx/paging/ItemSnapshotList;

    .line 497
    .line 498
    invoke-virtual {v0, v10}, Landroidx/paging/ItemSnapshotList;->get(I)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    check-cast v0, Lorg/wikipedia/search/SearchResult;

    .line 503
    .line 504
    if-nez v0, :cond_1c

    .line 505
    .line 506
    const v0, -0x6af22c83

    .line 507
    .line 508
    .line 509
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 513
    .line 514
    .line 515
    goto/16 :goto_8

    .line 516
    .line 517
    :cond_1c
    const v1, -0x6af22c82

    .line 518
    .line 519
    .line 520
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 521
    .line 522
    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    const-string v2, "search_list"

    .line 526
    .line 527
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 538
    .line 539
    invoke-static {v2, v1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result v2

    .line 547
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    or-int/2addr v2, v3

    .line 552
    and-int/lit8 v3, v13, 0x70

    .line 553
    .line 554
    if-ne v3, v5, :cond_1d

    .line 555
    .line 556
    move v13, v4

    .line 557
    goto :goto_6

    .line 558
    :cond_1d
    move v13, v11

    .line 559
    :goto_6
    or-int/2addr v2, v13

    .line 560
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v13

    .line 564
    if-nez v2, :cond_1e

    .line 565
    .line 566
    if-ne v13, v7, :cond_1f

    .line 567
    .line 568
    :cond_1e
    new-instance v13, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda14;

    .line 569
    .line 570
    invoke-direct {v13, v9, v0, v10, v11}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda14;-><init>(Lkotlin/jvm/functions/Function4;Lorg/wikipedia/search/SearchResult;II)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 574
    .line 575
    .line 576
    :cond_1f
    move-object v15, v13

    .line 577
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 578
    .line 579
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v2

    .line 583
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    move-result v9

    .line 587
    or-int/2addr v2, v9

    .line 588
    if-ne v3, v5, :cond_20

    .line 589
    .line 590
    goto :goto_7

    .line 591
    :cond_20
    move v4, v11

    .line 592
    :goto_7
    or-int/2addr v2, v4

    .line 593
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    if-nez v2, :cond_21

    .line 598
    .line 599
    if-ne v3, v7, :cond_22

    .line 600
    .line 601
    :cond_21
    new-instance v3, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda15;

    .line 602
    .line 603
    invoke-direct {v3, v8, v0, v10, v11}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda15;-><init>(Lkotlin/jvm/functions/Function3;Lorg/wikipedia/search/SearchResult;II)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    :cond_22
    move-object/from16 v16, v3

    .line 610
    .line 611
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 612
    .line 613
    const/16 v18, 0x0

    .line 614
    .line 615
    const/16 v19, 0x0

    .line 616
    .line 617
    move-object v13, v0

    .line 618
    move-object/from16 v17, v12

    .line 619
    .line 620
    move-object v12, v1

    .line 621
    invoke-static/range {v12 .. v19}, Lorg/wikipedia/search/NoSearchResultsKt;->SearchResultPageItem(Landroidx/compose/ui/Modifier;Lorg/wikipedia/search/SearchResult;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 622
    .line 623
    .line 624
    move-object/from16 v0, v17

    .line 625
    .line 626
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 627
    .line 628
    .line 629
    goto :goto_8

    .line 630
    :cond_23
    move-object v0, v12

    .line 631
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 632
    .line 633
    .line 634
    :goto_8
    return-object v6

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
