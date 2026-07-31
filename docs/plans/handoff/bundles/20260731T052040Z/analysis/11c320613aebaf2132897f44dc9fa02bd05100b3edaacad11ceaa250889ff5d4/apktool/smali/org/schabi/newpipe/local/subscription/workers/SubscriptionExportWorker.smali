.class public final Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;
.super Landroidx/work/CoroutineWorker;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;->Companion:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final createForegroundInfo(Ljava/lang/String;)Landroidx/work/ForegroundInfo;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "newpipe"

    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const p0, 0x7f08012d

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 14
    .line 15
    iput p0, v1, Landroid/app/Notification;->icon:I

    .line 16
    .line 17
    const/4 p0, 0x2

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 20
    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    invoke-virtual {v0, p0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)V

    .line 24
    .line 25
    .line 26
    iput v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 27
    .line 28
    iput v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    .line 29
    .line 30
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iput-object p0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/16 v0, 0x1d

    .line 46
    .line 47
    if-lt p1, v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v1, 0x0

    .line 51
    :goto_0
    new-instance p1, Landroidx/work/ForegroundInfo;

    .line 52
    .line 53
    const/16 v0, 0x11d7

    .line 54
    .line 55
    invoke-direct {p1, v0, p0, v1}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    .line 56
    .line 57
    .line 58
    return-object p1
.end method

.method public final doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;

    .line 11
    .line 12
    iget v3, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;

    .line 25
    .line 26
    check-cast v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 27
    .line 28
    invoke-direct {v2, v1, v0}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;-><init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v3, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->label:I

    .line 34
    .line 35
    const-string v5, "SubscriptionExportWork"

    .line 36
    .line 37
    iget-object v6, v1, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 38
    .line 39
    const/4 v7, 0x5

    .line 40
    const/4 v8, 0x4

    .line 41
    const/4 v9, 0x3

    .line 42
    const/4 v10, 0x2

    .line 43
    const/4 v11, 0x1

    .line 44
    const/4 v12, 0x0

    .line 45
    sget-object v13, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 46
    .line 47
    if-eqz v3, :cond_6

    .line 48
    .line 49
    if-eq v3, v11, :cond_5

    .line 50
    .line 51
    if-eq v3, v10, :cond_4

    .line 52
    .line 53
    if-eq v3, v9, :cond_3

    .line 54
    .line 55
    if-eq v3, v8, :cond_2

    .line 56
    .line 57
    if-ne v3, v7, :cond_1

    .line 58
    .line 59
    iget-object v1, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Ljava/lang/Exception;

    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_8

    .line 67
    .line 68
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v12

    .line 74
    :cond_2
    iget-object v3, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$3:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v3, Ljava/lang/String;

    .line 77
    .line 78
    iget-object v3, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$2:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v3, Ljava/util/List;

    .line 81
    .line 82
    iget-object v3, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v3, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 85
    .line 86
    iget-object v3, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v3, Landroid/net/Uri;

    .line 89
    .line 90
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto/16 :goto_5

    .line 94
    .line 95
    :catch_0
    move-exception v0

    .line 96
    goto/16 :goto_6

    .line 97
    .line 98
    :cond_3
    iget v3, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->I$0:I

    .line 99
    .line 100
    iget-object v4, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$3:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v4, Ljava/lang/String;

    .line 103
    .line 104
    iget-object v4, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$2:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v4, Ljava/util/List;

    .line 107
    .line 108
    iget-object v4, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v4, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 111
    .line 112
    iget-object v4, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v4, Landroid/net/Uri;

    .line 115
    .line 116
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    .line 118
    .line 119
    goto/16 :goto_4

    .line 120
    .line 121
    :cond_4
    iget v3, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->I$0:I

    .line 122
    .line 123
    iget-object v4, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$3:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v4, Ljava/lang/String;

    .line 126
    .line 127
    iget-object v4, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$2:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v4, Ljava/util/List;

    .line 130
    .line 131
    iget-object v6, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v6, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 134
    .line 135
    iget-object v6, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v6, Landroid/net/Uri;

    .line 138
    .line 139
    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    .line 141
    .line 142
    goto/16 :goto_3

    .line 143
    .line 144
    :cond_5
    iget-object v3, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v3, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 147
    .line 148
    iget-object v3, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v3, Landroid/net/Uri;

    .line 151
    .line 152
    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 153
    .line 154
    .line 155
    const/16 p1, 0x0

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :try_start_4
    iget-object v0, v1, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    .line 162
    .line 163
    iget-object v0, v0, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    .line 164
    .line 165
    const-string v3, "exportPath"

    .line 166
    .line 167
    invoke-virtual {v0, v3}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-static {v6}, Lnet/newpipe/app/AppKt;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v3}, Lorg/schabi/newpipe/database/AppDatabase;->subscriptionDAO()Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v3}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->getAll()Lio/reactivex/rxjava3/core/Flowable;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    iput-object v0, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 197
    .line 198
    iput-object v12, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 199
    .line 200
    iput v11, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->label:I

    .line 201
    .line 202
    new-instance v14, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 203
    .line 204
    invoke-static {v2}, Lkotlin/text/UStringsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 205
    .line 206
    .line 207
    move-result-object v15

    .line 208
    invoke-direct {v14, v11, v15}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v14}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 212
    .line 213
    .line 214
    sget-object v15, Lkotlinx/coroutines/reactive/ReactiveFlowKt;->contextInjectors:[Lkotlinx/coroutines/reactive/ContextInjector;

    .line 215
    .line 216
    const/16 p1, 0x0

    .line 217
    .line 218
    array-length v4, v15

    .line 219
    if-gtz v4, :cond_e

    .line 220
    .line 221
    new-instance v4, Lokhttp3/ConnectionSpec$Builder;

    .line 222
    .line 223
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 224
    .line 225
    .line 226
    iput-object v14, v4, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:Ljava/lang/Object;

    .line 227
    .line 228
    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v14}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    if-ne v3, v13, :cond_7

    .line 236
    .line 237
    goto/16 :goto_7

    .line 238
    .line 239
    :cond_7
    move-object/from16 v17, v3

    .line 240
    .line 241
    move-object v3, v0

    .line 242
    move-object/from16 v0, v17

    .line 243
    .line 244
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    check-cast v0, Ljava/lang/Iterable;

    .line 248
    .line 249
    new-instance v4, Ljava/util/ArrayList;

    .line 250
    .line 251
    const/16 v14, 0xa

    .line 252
    .line 253
    invoke-static {v0, v14}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 254
    .line 255
    .line 256
    move-result v14

    .line 257
    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .line 259
    .line 260
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v14

    .line 268
    if-eqz v14, :cond_a

    .line 269
    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v14

    .line 274
    check-cast v14, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 275
    .line 276
    new-instance v15, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;

    .line 277
    .line 278
    iget v7, v14, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 279
    .line 280
    iget-object v8, v14, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 281
    .line 282
    const-string v16, ""

    .line 283
    .line 284
    if-nez v8, :cond_8

    .line 285
    .line 286
    move-object/from16 v8, v16

    .line 287
    .line 288
    :cond_8
    :try_start_5
    iget-object v14, v14, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    .line 289
    .line 290
    if-nez v14, :cond_9

    .line 291
    .line 292
    move-object/from16 v14, v16

    .line 293
    .line 294
    :cond_9
    invoke-direct {v15, v8, v7, v14}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    const/4 v7, 0x5

    .line 301
    const/4 v8, 0x4

    .line 302
    goto :goto_2

    .line 303
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    new-instance v7, Ljava/lang/Integer;

    .line 312
    .line 313
    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 314
    .line 315
    .line 316
    new-array v8, v11, [Ljava/lang/Object;

    .line 317
    .line 318
    aput-object v7, v8, p1

    .line 319
    .line 320
    const v7, 0x7f110005

    .line 321
    .line 322
    .line 323
    invoke-virtual {v6, v7, v0, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v6}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;->createForegroundInfo(Ljava/lang/String;)Landroidx/work/ForegroundInfo;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    iput-object v3, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 335
    .line 336
    iput-object v12, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 337
    .line 338
    iput-object v4, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$2:Ljava/lang/Object;

    .line 339
    .line 340
    iput-object v12, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$3:Ljava/lang/Object;

    .line 341
    .line 342
    iput v0, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->I$0:I

    .line 343
    .line 344
    iput v10, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->label:I

    .line 345
    .line 346
    invoke-virtual {v1, v6, v2}, Landroidx/work/CoroutineWorker;->setForeground(Landroidx/work/ForegroundInfo;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    if-ne v6, v13, :cond_b

    .line 351
    .line 352
    goto/16 :goto_7

    .line 353
    .line 354
    :cond_b
    move-object v6, v3

    .line 355
    move v3, v0

    .line 356
    :goto_3
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 357
    .line 358
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 359
    .line 360
    new-instance v7, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;

    .line 361
    .line 362
    invoke-direct {v7, v1, v6, v4, v12}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$2;-><init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;Landroid/net/Uri;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 363
    .line 364
    .line 365
    iput-object v12, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 366
    .line 367
    iput-object v12, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 368
    .line 369
    iput-object v12, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$2:Ljava/lang/Object;

    .line 370
    .line 371
    iput-object v12, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$3:Ljava/lang/Object;

    .line 372
    .line 373
    iput v3, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->I$0:I

    .line 374
    .line 375
    iput v9, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->label:I

    .line 376
    .line 377
    invoke-static {v0, v7, v2}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    if-ne v0, v13, :cond_c

    .line 382
    .line 383
    goto :goto_7

    .line 384
    :cond_c
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    const-string v4, "Exported "

    .line 390
    .line 391
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    const-string v4, " subscriptions"

    .line 398
    .line 399
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 410
    .line 411
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 412
    .line 413
    new-instance v4, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$3;

    .line 414
    .line 415
    invoke-direct {v4, v1, v12}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$3;-><init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;Lkotlin/coroutines/Continuation;)V

    .line 416
    .line 417
    .line 418
    iput-object v12, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 419
    .line 420
    iput-object v12, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 421
    .line 422
    iput-object v12, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$2:Ljava/lang/Object;

    .line 423
    .line 424
    iput-object v12, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$3:Ljava/lang/Object;

    .line 425
    .line 426
    iput v3, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->I$0:I

    .line 427
    .line 428
    const/4 v3, 0x4

    .line 429
    iput v3, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->label:I

    .line 430
    .line 431
    invoke-static {v0, v4, v2}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    if-ne v0, v13, :cond_d

    .line 436
    .line 437
    goto :goto_7

    .line 438
    :cond_d
    :goto_5
    new-instance v0, Landroidx/work/ListenableWorker$Result$Success;

    .line 439
    .line 440
    invoke-direct {v0}, Landroidx/work/ListenableWorker$Result$Success;-><init>()V

    .line 441
    .line 442
    .line 443
    return-object v0

    .line 444
    :cond_e
    aget-object v0, v15, p1

    .line 445
    .line 446
    throw v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 447
    :goto_6
    const-string v3, "Error while exporting subscriptions"

    .line 448
    .line 449
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    .line 451
    .line 452
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 453
    .line 454
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 455
    .line 456
    new-instance v3, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$4;

    .line 457
    .line 458
    invoke-direct {v3, v1, v12}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$4;-><init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;Lkotlin/coroutines/Continuation;)V

    .line 459
    .line 460
    .line 461
    iput-object v12, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 462
    .line 463
    iput-object v12, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 464
    .line 465
    iput-object v12, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$2:Ljava/lang/Object;

    .line 466
    .line 467
    iput-object v12, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->L$3:Ljava/lang/Object;

    .line 468
    .line 469
    const/4 v1, 0x5

    .line 470
    iput v1, v2, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker$doWork$1;->label:I

    .line 471
    .line 472
    invoke-static {v0, v3, v2}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    if-ne v0, v13, :cond_f

    .line 477
    .line 478
    :goto_7
    return-object v13

    .line 479
    :cond_f
    :goto_8
    new-instance v0, Landroidx/work/ListenableWorker$Result$Failure;

    .line 480
    .line 481
    invoke-direct {v0}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 482
    .line 483
    .line 484
    return-object v0
.end method

.method public final getForegroundInfo()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f1301b0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionExportWorker;->createForegroundInfo(Ljava/lang/String;)Landroidx/work/ForegroundInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
