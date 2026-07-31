.class public final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/fragment/app/Fragment;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda5;->f$0:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v0, v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda5;->f$0:Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x1

    .line 14
    packed-switch v2, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Lorg/schabi/newpipe/local/subscription/ImportConfirmationDialog;

    .line 18
    .line 19
    check-cast v4, Landroid/content/Context;

    .line 20
    .line 21
    new-instance v1, Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 22
    .line 23
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v8, Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 29
    .line 30
    invoke-direct {v8, v3}, Landroidx/work/impl/utils/NetworkRequestCompat;-><init>(Landroid/net/NetworkRequest;)V

    .line 31
    .line 32
    .line 33
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    .line 35
    const/16 v7, 0x18

    .line 36
    .line 37
    if-lt v2, v7, :cond_0

    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_0
    move-object/from16 v18, v1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    new-instance v7, Landroidx/work/Constraints;

    .line 50
    .line 51
    sget-object v9, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 52
    .line 53
    const/4 v10, 0x0

    .line 54
    const/4 v11, 0x0

    .line 55
    const/4 v12, 0x0

    .line 56
    const/4 v13, 0x0

    .line 57
    const-wide/16 v14, -0x1

    .line 58
    .line 59
    move-wide/from16 v16, v14

    .line 60
    .line 61
    invoke-direct/range {v7 .. v18}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "input"

    .line 69
    .line 70
    const-class v8, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;

    .line 71
    .line 72
    invoke-static {v1, v2, v8}, Lkotlin/math/MathKt;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;

    .line 77
    .line 78
    new-instance v2, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 79
    .line 80
    const-class v8, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;

    .line 81
    .line 82
    const/4 v9, 0x0

    .line 83
    invoke-direct {v2, v9, v8}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(ILjava/lang/Class;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    instance-of v8, v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$ChannelUrlMode;

    .line 90
    .line 91
    if-eqz v8, :cond_1

    .line 92
    .line 93
    new-instance v3, Lkotlin/Triple;

    .line 94
    .line 95
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    check-cast v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$ChannelUrlMode;

    .line 100
    .line 101
    iget v10, v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$ChannelUrlMode;->serviceId:I

    .line 102
    .line 103
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    iget-object v1, v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$ChannelUrlMode;->url:Ljava/lang/String;

    .line 108
    .line 109
    invoke-direct {v3, v8, v10, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_1
    instance-of v8, v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$InputStreamMode;

    .line 114
    .line 115
    if-eqz v8, :cond_2

    .line 116
    .line 117
    new-instance v3, Lkotlin/Triple;

    .line 118
    .line 119
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    check-cast v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$InputStreamMode;

    .line 124
    .line 125
    iget v10, v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$InputStreamMode;->serviceId:I

    .line 126
    .line 127
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    iget-object v1, v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$InputStreamMode;->url:Ljava/lang/String;

    .line 132
    .line 133
    invoke-direct {v3, v8, v10, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_2
    instance-of v8, v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$PreviousExportMode;

    .line 138
    .line 139
    if-eqz v8, :cond_4

    .line 140
    .line 141
    new-instance v8, Lkotlin/Triple;

    .line 142
    .line 143
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    check-cast v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$PreviousExportMode;

    .line 148
    .line 149
    iget-object v1, v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$PreviousExportMode;->url:Ljava/lang/String;

    .line 150
    .line 151
    invoke-direct {v8, v10, v3, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    move-object v3, v8

    .line 155
    :goto_2
    invoke-virtual {v3}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Ljava/lang/Number;

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    invoke-virtual {v3}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    check-cast v8, Ljava/lang/Integer;

    .line 170
    .line 171
    invoke-virtual {v3}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    new-instance v10, Lkotlin/Pair;

    .line 182
    .line 183
    const-string v11, "mode"

    .line 184
    .line 185
    invoke-direct {v10, v11, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    new-instance v1, Lkotlin/Pair;

    .line 189
    .line 190
    const-string v11, "service_id"

    .line 191
    .line 192
    invoke-direct {v1, v11, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    new-instance v8, Lkotlin/Pair;

    .line 196
    .line 197
    const-string/jumbo v11, "url"

    .line 198
    .line 199
    .line 200
    invoke-direct {v8, v11, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    const/4 v3, 0x3

    .line 204
    new-array v11, v3, [Lkotlin/Pair;

    .line 205
    .line 206
    aput-object v10, v11, v9

    .line 207
    .line 208
    aput-object v1, v11, v6

    .line 209
    .line 210
    aput-object v8, v11, v5

    .line 211
    .line 212
    new-instance v1, Landroidx/work/Data$Builder;

    .line 213
    .line 214
    invoke-direct {v1, v9}, Landroidx/work/Data$Builder;-><init>(I)V

    .line 215
    .line 216
    .line 217
    move v5, v9

    .line 218
    :goto_3
    if-ge v5, v3, :cond_3

    .line 219
    .line 220
    aget-object v8, v11, v5

    .line 221
    .line 222
    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    check-cast v10, Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    invoke-virtual {v1, v8, v10}, Landroidx/work/Data$Builder;->put(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    add-int/lit8 v5, v5, 0x1

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_3
    invoke-virtual {v1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    iget-object v3, v2, Landroidx/work/OneTimeWorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 243
    .line 244
    iput-object v1, v3, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 245
    .line 246
    iput-boolean v6, v3, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 247
    .line 248
    sget-object v1, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    .line 249
    .line 250
    iput-object v1, v3, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 251
    .line 252
    iget-object v1, v2, Landroidx/work/OneTimeWorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 253
    .line 254
    iput-object v7, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 255
    .line 256
    invoke-virtual {v2}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    check-cast v1, Landroidx/work/OneTimeWorkRequest;

    .line 261
    .line 262
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    invoke-static {v4}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    invoke-static {v1}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v14

    .line 273
    new-instance v10, Landroidx/work/impl/WorkContinuationImpl;

    .line 274
    .line 275
    const/4 v15, 0x0

    .line 276
    const-string v12, "SubscriptionImportWorker"

    .line 277
    .line 278
    sget-object v13, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    .line 279
    .line 280
    invoke-direct/range {v10 .. v15}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v10}, Landroidx/work/impl/WorkContinuationImpl;->enqueue()Landroidx/work/SystemClock;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v9, v9}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 287
    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_4
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 291
    .line 292
    .line 293
    :goto_4
    return-void

    .line 294
    :pswitch_0
    check-cast v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 295
    .line 296
    check-cast v4, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 297
    .line 298
    sget-object v2, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    .line 299
    .line 300
    if-eqz v1, :cond_8

    .line 301
    .line 302
    if-eq v1, v6, :cond_7

    .line 303
    .line 304
    if-eq v1, v5, :cond_5

    .line 305
    .line 306
    goto :goto_5

    .line 307
    :cond_5
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 308
    .line 309
    iget-object v2, v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 310
    .line 311
    if-eqz v2, :cond_6

    .line 312
    .line 313
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    new-instance v5, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda4;

    .line 325
    .line 326
    invoke-direct {v5, v2, v3, v4}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;ILjava/lang/String;)V

    .line 327
    .line 328
    .line 329
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;

    .line 330
    .line 331
    invoke-direct {v2, v5, v6}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;-><init>(Ljava/lang/Object;I)V

    .line 332
    .line 333
    .line 334
    sget-object v3, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 335
    .line 336
    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    new-instance v3, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda7;

    .line 349
    .line 350
    invoke-direct {v3, v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V

    .line 351
    .line 352
    .line 353
    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 354
    .line 355
    new-instance v4, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

    .line 356
    .line 357
    invoke-direct {v4, v0, v3}, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2, v4}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v4}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 364
    .line 365
    .line 366
    goto :goto_5

    .line 367
    :cond_6
    const-string/jumbo v0, "subscriptionManager"

    .line 368
    .line 369
    .line 370
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    throw v3

    .line 374
    :cond_7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-static {v0, v1}, Landroidx/transition/Transition$Impl26;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-static {v0, v1, v2, v3}, Landroidx/transition/Transition$Impl26;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 403
    .line 404
    .line 405
    :goto_5
    return-void

    .line 406
    nop

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
