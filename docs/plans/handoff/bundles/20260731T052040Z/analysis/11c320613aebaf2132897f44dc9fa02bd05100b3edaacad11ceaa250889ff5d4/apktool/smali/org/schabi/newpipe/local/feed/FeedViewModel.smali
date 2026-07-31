.class public final Lorg/schabi/newpipe/local/feed/FeedViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;


# instance fields
.field public final application:Lorg/schabi/newpipe/App;

.field public final combineDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

.field public final feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

.field public final mutableStateLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final showFutureItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

.field public final showPartiallyPlayedItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

.field public final showPlayedItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

.field public final stateLiveData:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->Companion:Lorg/schabi/newpipe/local/feed/FeedViewModel$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/App;JZZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->application:Lorg/schabi/newpipe/App;

    .line 11
    .line 12
    new-instance v4, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 13
    .line 14
    invoke-direct {v4, v1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v4, v0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 18
    .line 19
    new-instance v1, Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 20
    .line 21
    invoke-direct {v1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->showPlayedItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 25
    .line 26
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v1, v5}, Lio/reactivex/rxjava3/core/Flowable;->startWithItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;

    .line 35
    .line 36
    invoke-direct {v5, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 40
    .line 41
    invoke-direct {v1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, v0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->showPartiallyPlayedItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 45
    .line 46
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v1, v6}, Lio/reactivex/rxjava3/core/Flowable;->startWithItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;

    .line 55
    .line 56
    invoke-direct {v6, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 60
    .line 61
    invoke-direct {v1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v1, v0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->showFutureItems:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 65
    .line 66
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v1, v7}, Lio/reactivex/rxjava3/core/Flowable;->startWithItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Flowable;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;

    .line 75
    .line 76
    invoke-direct {v7, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 80
    .line 81
    invoke-direct {v1}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v1, v0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->mutableStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 85
    .line 86
    iput-object v1, v0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->stateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 87
    .line 88
    sget-object v1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager;->eventsFlowable:Lio/reactivex/rxjava3/core/Flowable;

    .line 89
    .line 90
    sget-object v8, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;->INSTANCE:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    new-instance v9, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;

    .line 96
    .line 97
    const/4 v10, 0x1

    .line 98
    invoke-direct {v9, v1, v8, v10}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;-><init>(Lio/reactivex/rxjava3/core/Flowable;Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    const-wide/16 v11, -0x1

    .line 102
    .line 103
    cmp-long v1, v2, v11

    .line 104
    .line 105
    const-string v11, "feed_group_subscription_join"

    .line 106
    .line 107
    const-string v12, "feed_last_updated"

    .line 108
    .line 109
    const/4 v13, 0x0

    .line 110
    iget-object v4, v4, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 111
    .line 112
    if-nez v1, :cond_0

    .line 113
    .line 114
    iget-object v14, v4, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 115
    .line 116
    filled-new-array {v12}, [Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v15

    .line 120
    move/from16 p1, v10

    .line 121
    .line 122
    new-instance v10, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 123
    .line 124
    const/16 v8, 0x17

    .line 125
    .line 126
    invoke-direct {v10, v8}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-static {v14, v13, v15, v10}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    goto :goto_0

    .line 134
    :cond_0
    move/from16 p1, v10

    .line 135
    .line 136
    iget-object v8, v4, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 137
    .line 138
    const-string/jumbo v10, "subscriptions"

    .line 139
    .line 140
    .line 141
    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    new-instance v14, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 146
    .line 147
    const/4 v15, 0x2

    .line 148
    invoke-direct {v14, v2, v3, v15}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(JI)V

    .line 149
    .line 150
    .line 151
    invoke-static {v8, v13, v10, v14}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    :goto_0
    if-nez v1, :cond_1

    .line 156
    .line 157
    iget-object v1, v4, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 158
    .line 159
    filled-new-array {v12}, [Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    new-instance v11, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 164
    .line 165
    const/16 v12, 0xb

    .line 166
    .line 167
    invoke-direct {v11, v4, v12}, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    invoke-static {v1, v13, v10, v11}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    goto :goto_1

    .line 175
    :cond_1
    iget-object v1, v4, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 176
    .line 177
    filled-new-array {v12, v11}, [Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    new-instance v11, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda6;

    .line 182
    .line 183
    invoke-direct {v11, v13, v2, v3, v4}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda6;-><init>(IJLjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v1, v13, v10, v11}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    :goto_1
    new-instance v4, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 191
    .line 192
    invoke-direct {v4, v13}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 193
    .line 194
    .line 195
    const/4 v10, 0x6

    .line 196
    new-array v10, v10, [Lorg/reactivestreams/Publisher;

    .line 197
    .line 198
    aput-object v9, v10, v13

    .line 199
    .line 200
    aput-object v5, v10, p1

    .line 201
    .line 202
    const/4 v15, 0x2

    .line 203
    aput-object v6, v10, v15

    .line 204
    .line 205
    const/4 v5, 0x3

    .line 206
    aput-object v7, v10, v5

    .line 207
    .line 208
    const/4 v6, 0x4

    .line 209
    aput-object v8, v10, v6

    .line 210
    .line 211
    const/4 v6, 0x5

    .line 212
    aput-object v1, v10, v6

    .line 213
    .line 214
    new-instance v1, Lio/noties/markwon/BlockHandlerDef;

    .line 215
    .line 216
    invoke-direct {v1, v4}, Lio/noties/markwon/BlockHandlerDef;-><init>(Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;)V

    .line 217
    .line 218
    .line 219
    sget v4, Lio/reactivex/rxjava3/core/Flowable;->BUFFER_SIZE:I

    .line 220
    .line 221
    const-string v6, "bufferSize"

    .line 222
    .line 223
    invoke-static {v4, v6}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;

    .line 227
    .line 228
    invoke-direct {v6, v10, v1, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCombineLatest;-><init>([Lorg/reactivestreams/Publisher;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 229
    .line 230
    .line 231
    const-wide/16 v7, 0x78

    .line 232
    .line 233
    invoke-virtual {v6, v7, v8}, Lio/reactivex/rxjava3/core/Flowable;->throttleLatest(J)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    sget-object v4, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 238
    .line 239
    invoke-virtual {v1, v4}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v1, v4}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    new-instance v4, Lokhttp3/internal/http1/HeadersReader;

    .line 248
    .line 249
    invoke-direct {v4, v0, v2, v3}, Lokhttp3/internal/http1/HeadersReader;-><init>(Lorg/schabi/newpipe/local/feed/FeedViewModel;J)V

    .line 250
    .line 251
    .line 252
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;

    .line 253
    .line 254
    invoke-direct {v2, v1, v4, v13}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;-><init>(Lio/reactivex/rxjava3/core/Flowable;Ljava/lang/Object;I)V

    .line 255
    .line 256
    .line 257
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v2, v1}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 266
    .line 267
    invoke-direct {v2, v0, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(Ljava/lang/Object;I)V

    .line 268
    .line 269
    .line 270
    sget-object v3, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 271
    .line 272
    new-instance v4, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 273
    .line 274
    invoke-direct {v4, v2, v3}, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v4}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 278
    .line 279
    .line 280
    iput-object v4, v0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->combineDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 281
    .line 282
    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel;->combineDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
