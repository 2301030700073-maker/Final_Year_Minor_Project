.class public final Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleObserver;
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final $defaultSharedPreferences:Ljava/lang/Object;

.field public $useFeedExtractor:Z

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/functions/Consumer;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->this$0:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->$defaultSharedPreferences:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;ZLandroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->$useFeedExtractor:Z

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->$defaultSharedPreferences:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 13
    .line 14
    iget-boolean v3, v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->$useFeedExtractor:Z

    .line 15
    .line 16
    iget-object v0, v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->$defaultSharedPreferences:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroid/content/SharedPreferences;

    .line 19
    .line 20
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;

    .line 26
    .line 27
    const/4 v6, 0x5

    .line 28
    invoke-direct {v5, v4, v6}, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;-><init>(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    iget v3, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 40
    .line 41
    invoke-static {v3}, Lus/shandian/giga/util/Utility;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v8, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v3, v8}, Lorg/schabi/newpipe/extractor/StreamingService;->getFeedExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/feed/FeedInfo;->getInfo(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;)Lorg/schabi/newpipe/extractor/feed/FeedInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto/16 :goto_a

    .line 71
    .line 72
    :cond_0
    move-object v3, v7

    .line 73
    move-object v8, v3

    .line 74
    :goto_0
    if-nez v3, :cond_f

    .line 75
    .line 76
    iget v3, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 77
    .line 78
    iget-object v8, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    .line 79
    .line 80
    const/4 v9, 0x1

    .line 81
    invoke-static {v3, v8, v9}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    new-instance v8, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$$ExternalSyntheticLambda1;

    .line 86
    .line 87
    const/4 v10, 0x0

    .line 88
    invoke-direct {v8, v5, v10}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$$ExternalSyntheticLambda1;-><init>(Lcoil3/network/okhttp/internal/CallsKt$await$2$1;I)V

    .line 89
    .line 90
    .line 91
    new-instance v11, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;

    .line 92
    .line 93
    invoke-direct {v11, v3, v8, v7}, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v11}, Lio/reactivex/rxjava3/core/Single;->blockingGet()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    check-cast v3, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 104
    .line 105
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getTabs()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    new-instance v11, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    if-eqz v12, :cond_a

    .line 133
    .line 134
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    move-object v14, v12

    .line 139
    check-cast v14, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 140
    .line 141
    iget-object v15, v2, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->context:Landroid/content/Context;

    .line 142
    .line 143
    invoke-virtual {v14}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v14

    .line 147
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v16

    .line 151
    if-eqz v16, :cond_1

    .line 152
    .line 153
    goto/16 :goto_5

    .line 154
    .line 155
    :cond_1
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v14

    .line 159
    check-cast v14, Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .line 163
    .line 164
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 165
    .line 166
    .line 167
    move-result v16

    .line 168
    const/4 v13, -0x1

    .line 169
    sparse-switch v16, :sswitch_data_0

    .line 170
    .line 171
    .line 172
    :goto_2
    move v10, v13

    .line 173
    goto :goto_3

    .line 174
    :sswitch_0
    const-string v10, "likes"

    .line 175
    .line 176
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    if-nez v10, :cond_2

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_2
    const/4 v10, 0x4

    .line 184
    goto :goto_3

    .line 185
    :sswitch_1
    const-string v10, "livestreams"

    .line 186
    .line 187
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-nez v10, :cond_3

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_3
    const/4 v10, 0x3

    .line 195
    goto :goto_3

    .line 196
    :sswitch_2
    const-string/jumbo v10, "videos"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    if-nez v10, :cond_4

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_4
    const/4 v10, 0x2

    .line 207
    goto :goto_3

    .line 208
    :sswitch_3
    const-string/jumbo v10, "tracks"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    if-nez v10, :cond_5

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_5
    move v10, v9

    .line 219
    goto :goto_3

    .line 220
    :sswitch_4
    const-string/jumbo v10, "shorts"

    .line 221
    .line 222
    .line 223
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    if-nez v10, :cond_6

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_6
    const/4 v10, 0x0

    .line 231
    :goto_3
    packed-switch v10, :pswitch_data_0

    .line 232
    .line 233
    .line 234
    move v10, v13

    .line 235
    goto :goto_4

    .line 236
    :pswitch_0
    const v10, 0x7f1301e9

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :pswitch_1
    const v10, 0x7f1301ea

    .line 241
    .line 242
    .line 243
    goto :goto_4

    .line 244
    :pswitch_2
    const v10, 0x7f1301ed

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :pswitch_3
    const v10, 0x7f1301ec

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :pswitch_4
    const v10, 0x7f1301eb

    .line 253
    .line 254
    .line 255
    :goto_4
    if-ne v10, v13, :cond_7

    .line 256
    .line 257
    const/4 v10, 0x0

    .line 258
    goto :goto_5

    .line 259
    :cond_7
    const v13, 0x7f1301c4

    .line 260
    .line 261
    .line 262
    :try_start_1
    invoke-virtual {v15, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v13

    .line 266
    invoke-interface {v0, v13, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 267
    .line 268
    .line 269
    move-result-object v13

    .line 270
    if-nez v13, :cond_8

    .line 271
    .line 272
    move v10, v9

    .line 273
    goto :goto_5

    .line 274
    :cond_8
    invoke-virtual {v15, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    invoke-interface {v13, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    :goto_5
    if-eqz v10, :cond_9

    .line 283
    .line 284
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    :cond_9
    const/4 v10, 0x0

    .line 288
    goto/16 :goto_1

    .line 289
    .line 290
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    .line 291
    .line 292
    const/16 v2, 0xa

    .line 293
    .line 294
    invoke-static {v11, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v8

    .line 309
    if-eqz v8, :cond_b

    .line 310
    .line 311
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    check-cast v8, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 316
    .line 317
    new-instance v10, Lkotlin/Pair;

    .line 318
    .line 319
    iget v11, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 320
    .line 321
    invoke-static {v11, v8, v9}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelTab(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Z)Lio/reactivex/rxjava3/core/Single;

    .line 322
    .line 323
    .line 324
    move-result-object v11

    .line 325
    new-instance v12, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$$ExternalSyntheticLambda1;

    .line 326
    .line 327
    invoke-direct {v12, v5, v9}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$$ExternalSyntheticLambda1;-><init>(Lcoil3/network/okhttp/internal/CallsKt$await$2$1;I)V

    .line 328
    .line 329
    .line 330
    new-instance v13, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;

    .line 331
    .line 332
    invoke-direct {v13, v11, v12, v7}, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v13}, Lio/reactivex/rxjava3/core/Single;->blockingGet()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v11

    .line 339
    invoke-direct {v10, v11, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    if-eqz v5, :cond_d

    .line 360
    .line 361
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    check-cast v5, Lkotlin/Pair;

    .line 366
    .line 367
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v7

    .line 371
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    check-cast v7, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    .line 375
    .line 376
    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    check-cast v5, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 381
    .line 382
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    .line 383
    .line 384
    .line 385
    move-result-object v8

    .line 386
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 387
    .line 388
    .line 389
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    .line 390
    .line 391
    .line 392
    move-result-object v8

    .line 393
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 394
    .line 395
    .line 396
    move-result v8

    .line 397
    if-eqz v8, :cond_c

    .line 398
    .line 399
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/ListInfo;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    .line 400
    .line 401
    .line 402
    move-result-object v8

    .line 403
    if-eqz v8, :cond_c

    .line 404
    .line 405
    iget v8, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 406
    .line 407
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/ListInfo;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    invoke-static {v8}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 412
    .line 413
    .line 414
    new-instance v9, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda4;

    .line 415
    .line 416
    const/4 v10, 0x0

    .line 417
    invoke-direct {v9, v8, v5, v7, v10}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda4;-><init>(ILjava/io/Serializable;Lorg/schabi/newpipe/extractor/Page;I)V

    .line 418
    .line 419
    .line 420
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 421
    .line 422
    const/4 v8, 0x3

    .line 423
    invoke-direct {v5, v9, v8}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v5}, Lio/reactivex/rxjava3/core/Single;->blockingGet()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v5

    .line 430
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    check-cast v5, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 434
    .line 435
    iget-object v7, v5, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->errors:Ljava/util/List;

    .line 436
    .line 437
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 438
    .line 439
    .line 440
    iget-object v5, v5, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->itemsList:Ljava/util/List;

    .line 441
    .line 442
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    goto :goto_8

    .line 446
    :cond_c
    const/4 v8, 0x3

    .line 447
    const/4 v10, 0x0

    .line 448
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/ListInfo;->getRelatedItems()Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    .line 454
    .line 455
    :goto_8
    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 456
    .line 457
    .line 458
    goto :goto_7

    .line 459
    :cond_d
    new-instance v8, Ljava/util/ArrayList;

    .line 460
    .line 461
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    :cond_e
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    if-eqz v2, :cond_f

    .line 473
    .line 474
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    instance-of v5, v2, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 479
    .line 480
    if-eqz v5, :cond_e

    .line 481
    .line 482
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    goto :goto_9

    .line 486
    :cond_f
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    .line 487
    .line 488
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    invoke-direct {v0, v1, v3, v8, v6}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;-><init>(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Lorg/schabi/newpipe/extractor/Info;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 492
    .line 493
    .line 494
    new-instance v2, Lio/reactivex/rxjava3/core/Notification;

    .line 495
    .line 496
    invoke-direct {v2, v0}, Lio/reactivex/rxjava3/core/Notification;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    .line 498
    .line 499
    return-object v2

    .line 500
    :goto_a
    iget v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 501
    .line 502
    iget-object v3, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    .line 503
    .line 504
    new-instance v5, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    const-string v2, ":"

    .line 513
    .line 514
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    new-instance v3, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;

    .line 525
    .line 526
    iget-wide v5, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    .line 527
    .line 528
    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v1, Ljava/lang/Throwable;

    .line 531
    .line 532
    if-nez v1, :cond_10

    .line 533
    .line 534
    goto :goto_b

    .line 535
    :cond_10
    move-object v0, v1

    .line 536
    :goto_b
    invoke-direct {v3, v2, v0, v5, v6}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;J)V

    .line 537
    .line 538
    .line 539
    new-instance v0, Lio/reactivex/rxjava3/core/Notification;

    .line 540
    .line 541
    new-instance v1, Lio/reactivex/rxjava3/internal/util/NotificationLite$ErrorNotification;

    .line 542
    .line 543
    invoke-direct {v1, v3}, Lio/reactivex/rxjava3/internal/util/NotificationLite$ErrorNotification;-><init>(Ljava/lang/Throwable;)V

    .line 544
    .line 545
    .line 546
    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/core/Notification;-><init>(Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    return-object v0

    .line 550
    nop

    .line 551
    :sswitch_data_0
    .sparse-switch
        -0x35d4f489 -> :sswitch_4
        -0x3399c778 -> :sswitch_3
        -0x30ad84a8 -> :sswitch_2
        -0x1a2eb179 -> :sswitch_1
        0x62343bc -> :sswitch_0
    .end sparse-switch

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->$useFeedExtractor:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/math/MathKt;->onError(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->$defaultSharedPreferences:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lio/reactivex/rxjava3/functions/Consumer;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Lio/reactivex/rxjava3/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    invoke-static {v1}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    iput-boolean v2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->$useFeedExtractor:Z

    .line 22
    .line 23
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    .line 27
    .line 28
    invoke-interface {v0, p0}, Lio/reactivex/rxjava3/core/SingleObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->$useFeedExtractor:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lio/reactivex/rxjava3/core/SingleObserver;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
