.class public final Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $queue:Ljava/util/List;

.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public J$0:J

.field public L$0:Lorg/wikipedia/readinglist/database/ReadingListPage;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/savedpages/SavedPageSyncService;


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/wikipedia/savedpages/SavedPageSyncService;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->$queue:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->this$0:Lorg/wikipedia/savedpages/SavedPageSyncService;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->$queue:Ljava/util/List;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->this$0:Lorg/wikipedia/savedpages/SavedPageSyncService;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;-><init>(Ljava/util/List;Lorg/wikipedia/savedpages/SavedPageSyncService;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->label:I

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x0

    .line 10
    iget-object v6, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->$queue:Ljava/util/List;

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x1

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    if-eq v0, v8, :cond_2

    .line 17
    .line 18
    if-eq v0, v4, :cond_1

    .line 19
    .line 20
    if-ne v0, v3, :cond_0

    .line 21
    .line 22
    iget v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->I$1:I

    .line 23
    .line 24
    iget v9, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->I$0:I

    .line 25
    .line 26
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    move/from16 v16, v8

    .line 30
    .line 31
    move v13, v9

    .line 32
    goto/16 :goto_7

    .line 33
    .line 34
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v5

    .line 40
    :cond_1
    iget-wide v9, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->J$0:J

    .line 41
    .line 42
    iget v11, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->I$2:I

    .line 43
    .line 44
    iget v12, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->I$1:I

    .line 45
    .line 46
    iget v13, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->I$0:I

    .line 47
    .line 48
    iget-object v14, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->L$0:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 49
    .line 50
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    move-object/from16 v0, p1

    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :catch_0
    move-exception v0

    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_2
    iget v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->I$1:I

    .line 61
    .line 62
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    move v13, v0

    .line 74
    move v12, v7

    .line 75
    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_e

    .line 80
    .line 81
    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    move-object v14, v0

    .line 86
    check-cast v14, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 87
    .line 88
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->this$0:Lorg/wikipedia/savedpages/SavedPageSyncService;

    .line 89
    .line 90
    iget-object v9, v0, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    .line 91
    .line 92
    iget-object v9, v9, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    .line 93
    .line 94
    iget-boolean v10, v9, Lorg/wikipedia/views/NotificationWithProgressBar;->isPaused:Z

    .line 95
    .line 96
    if-eqz v10, :cond_5

    .line 97
    .line 98
    goto/16 :goto_8

    .line 99
    .line 100
    :cond_5
    iget-boolean v10, v9, Lorg/wikipedia/views/NotificationWithProgressBar;->isCanceled:Z

    .line 101
    .line 102
    if-eqz v10, :cond_7

    .line 103
    .line 104
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 108
    .line 109
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v5, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->L$0:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 118
    .line 119
    iput v13, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->I$0:I

    .line 120
    .line 121
    iput v12, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->I$1:I

    .line 122
    .line 123
    iput v8, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->label:I

    .line 124
    .line 125
    invoke-virtual {v0, v6, v7, v7, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->markPagesForOffline(Ljava/util/List;ZZLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-ne v0, v2, :cond_6

    .line 130
    .line 131
    goto/16 :goto_6

    .line 132
    .line 133
    :cond_6
    move v0, v12

    .line 134
    :goto_1
    move v12, v0

    .line 135
    goto/16 :goto_8

    .line 136
    .line 137
    :cond_7
    iget-object v10, v0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 138
    .line 139
    invoke-virtual {v9, v10, v13, v12}, Lorg/wikipedia/views/NotificationWithProgressBar;->setNotificationProgress(Landroid/content/Context;II)V

    .line 140
    .line 141
    .line 142
    const-wide/16 v9, 0x0

    .line 143
    .line 144
    :try_start_1
    iput-object v14, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->L$0:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 145
    .line 146
    iput v13, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->I$0:I

    .line 147
    .line 148
    iput v12, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->I$1:I

    .line 149
    .line 150
    iput v7, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->I$2:I

    .line 151
    .line 152
    iput-wide v9, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->J$0:J

    .line 153
    .line 154
    iput v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->label:I

    .line 155
    .line 156
    invoke-virtual {v0, v14, v1}, Lorg/wikipedia/savedpages/SavedPageSyncService;->savePageFor(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    if-ne v0, v2, :cond_8

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_8
    move v11, v7

    .line 164
    :goto_2
    :try_start_2
    check-cast v0, Ljava/lang/Number;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 167
    .line 168
    .line 169
    move-result-wide v9
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 170
    :cond_9
    :goto_3
    move v11, v8

    .line 171
    goto :goto_5

    .line 172
    :catch_1
    move-exception v0

    .line 173
    move v11, v7

    .line 174
    goto :goto_4

    .line 175
    :catch_2
    move v11, v7

    .line 176
    goto :goto_5

    .line 177
    :goto_4
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    instance-of v15, v0, Ljava/net/UnknownHostException;

    .line 181
    .line 182
    if-nez v15, :cond_b

    .line 183
    .line 184
    instance-of v15, v0, Ljava/net/SocketException;

    .line 185
    .line 186
    if-eqz v15, :cond_a

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_a
    instance-of v15, v0, Ljava/net/SocketTimeoutException;

    .line 190
    .line 191
    if-nez v15, :cond_b

    .line 192
    .line 193
    invoke-static {v0}, Lorg/wikipedia/util/ShareUtil;->isNetworkError(Ljava/lang/Throwable;)Z

    .line 194
    .line 195
    .line 196
    move-result v15

    .line 197
    if-nez v15, :cond_b

    .line 198
    .line 199
    instance-of v11, v0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 200
    .line 201
    if-nez v11, :cond_9

    .line 202
    .line 203
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->logRemoteError(Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :catch_3
    :cond_b
    :goto_5
    sget-boolean v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->IN_PROGRESS:Z

    .line 208
    .line 209
    if-eqz v0, :cond_c

    .line 210
    .line 211
    goto :goto_8

    .line 212
    :cond_c
    if-eqz v11, :cond_4

    .line 213
    .line 214
    move/from16 v16, v8

    .line 215
    .line 216
    const-wide/16 v7, 0x1

    .line 217
    .line 218
    iput-wide v7, v14, Lorg/wikipedia/readinglist/database/ReadingListPage;->status:J

    .line 219
    .line 220
    iput-wide v9, v14, Lorg/wikipedia/readinglist/database/ReadingListPage;->sizeBytes:J

    .line 221
    .line 222
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 223
    .line 224
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    iput-object v5, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->L$0:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 233
    .line 234
    iput v13, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->I$0:I

    .line 235
    .line 236
    iput v12, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->I$1:I

    .line 237
    .line 238
    iput v11, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->I$2:I

    .line 239
    .line 240
    iput-wide v9, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->J$0:J

    .line 241
    .line 242
    iput v3, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;->label:I

    .line 243
    .line 244
    invoke-virtual {v0, v14, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->updateReadingListPage(Lorg/wikipedia/readinglist/database/ReadingListPage;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    if-ne v0, v2, :cond_d

    .line 249
    .line 250
    :goto_6
    return-object v2

    .line 251
    :cond_d
    move v0, v12

    .line 252
    :goto_7
    add-int/lit8 v12, v0, 0x1

    .line 253
    .line 254
    new-instance v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    .line 255
    .line 256
    const/4 v15, 0x0

    .line 257
    invoke-direct {v0, v15}, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;-><init>(Z)V

    .line 258
    .line 259
    .line 260
    invoke-static {v0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    move v7, v15

    .line 264
    move/from16 v8, v16

    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :catch_4
    move-exception v0

    .line 269
    throw v0

    .line 270
    :cond_e
    :goto_8
    new-instance v0, Ljava/lang/Integer;

    .line 271
    .line 272
    invoke-direct {v0, v12}, Ljava/lang/Integer;-><init>(I)V

    .line 273
    .line 274
    .line 275
    return-object v0
.end method
