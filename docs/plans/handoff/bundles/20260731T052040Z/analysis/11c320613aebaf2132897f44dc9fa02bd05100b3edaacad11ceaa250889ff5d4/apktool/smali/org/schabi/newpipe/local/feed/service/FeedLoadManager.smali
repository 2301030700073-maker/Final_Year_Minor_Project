.class public final Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$Companion;

.field public static final DELAY_BETWEEN_BATCHES_MILLIS:Lkotlin/ranges/LongRange;


# instance fields
.field public final cancelSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final context:Landroid/content/Context;

.field public final currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

.field public final feedResultsHolder:Lokhttp3/Headers$Builder;

.field public final maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final notification:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;

.field public final notificationUpdater:Lio/reactivex/rxjava3/processors/PublishProcessor;

.field public final subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->Companion:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$Companion;

    .line 7
    .line 8
    new-instance v0, Lkotlin/ranges/LongRange;

    .line 9
    .line 10
    const-wide/16 v1, 0x1770

    .line 11
    .line 12
    const-wide/16 v3, 0x2ee0

    .line 13
    .line 14
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->DELAY_BETWEEN_BATCHES_MILLIS:Lkotlin/ranges/LongRange;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->context:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 12
    .line 13
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 19
    .line 20
    new-instance p1, Lio/reactivex/rxjava3/processors/PublishProcessor;

    .line 21
    .line 22
    invoke-direct {p1}, Lio/reactivex/rxjava3/processors/PublishProcessor;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->notificationUpdater:Lio/reactivex/rxjava3/processors/PublishProcessor;

    .line 26
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    .line 29
    const/4 v1, -0x1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->currentProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->maxProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->cancelSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    invoke-direct {v0, v1}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedResultsHolder:Lokhttp3/Headers$Builder;

    .line 56
    .line 57
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;I)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;

    .line 64
    .line 65
    invoke-direct {v2, p1, v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;-><init>(Lio/reactivex/rxjava3/core/Flowable;Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->notification:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final startLoading(JZ)Lio/reactivex/rxjava3/internal/operators/single/SingleMap;
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const v3, 0x7f1301e6

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    sget-object p3, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 26
    .line 27
    invoke-static {p3}, Lj$/time/OffsetDateTime;->now(Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const p3, 0x7f1301df

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const v4, 0x7f1301de

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-interface {v1, p3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    if-nez p3, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-object v0, p3

    .line 61
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    sget-object v0, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 66
    .line 67
    invoke-static {v0}, Lj$/time/OffsetDateTime;->now(Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    int-to-long v4, p3

    .line 72
    invoke-virtual {v0, v4, v5}, Lj$/time/OffsetDateTime;->minusSeconds(J)Lj$/time/OffsetDateTime;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    :goto_1
    const-wide/16 v4, -0x1

    .line 77
    .line 78
    cmp-long v0, p1, v4

    .line 79
    .line 80
    const/4 v4, 0x1

    .line 81
    iget-object v5, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 82
    .line 83
    const-string v6, "feed_last_updated"

    .line 84
    .line 85
    const-string/jumbo v7, "subscriptions"

    .line 86
    .line 87
    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    iget-object p1, v5, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    iget-object p2, p1, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 102
    .line 103
    filled-new-array {v7, v6}, [Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    new-instance v5, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    invoke-direct {v5, p1, p3, v2}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;I)V

    .line 110
    .line 111
    .line 112
    invoke-static {p2, v2, v0, v5}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    const-wide/16 v8, -0x2

    .line 118
    .line 119
    cmp-long v0, p1, v8

    .line 120
    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iget-object p1, v5, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget-object p2, p1, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 135
    .line 136
    filled-new-array {v7, v6}, [Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    new-instance v5, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    invoke-direct {v5, p1, p3, v4}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;I)V

    .line 143
    .line 144
    .line 145
    invoke-static {p2, v2, v0, v5}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    goto :goto_2

    .line 150
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    iget-object v0, v5, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedTable:Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    iget-object v5, v0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 162
    .line 163
    const-string v8, "feed_group_subscription_join"

    .line 164
    .line 165
    filled-new-array {v7, v8, v6}, [Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    new-instance v7, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;

    .line 170
    .line 171
    invoke-direct {v7, p1, p2, v0, p3}, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl$$ExternalSyntheticLambda2;-><init>(JLorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;Lj$/time/OffsetDateTime;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v5, v2, v6, v7}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    :goto_2
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 179
    .line 180
    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance p3, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip;

    .line 184
    .line 185
    invoke-direct {p3, p1, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip;-><init>(Lio/reactivex/rxjava3/core/Flowable;I)V

    .line 186
    .line 187
    .line 188
    new-instance p1, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;

    .line 189
    .line 190
    const/4 v0, 0x4

    .line 191
    invoke-direct {p1, p0, v0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;I)V

    .line 192
    .line 193
    .line 194
    sget-object v5, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_CONSUMER:Lio/noties/markwon/BlockHandlerDef;

    .line 195
    .line 196
    sget-object v6, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Landroidx/transition/Transition$1;

    .line 197
    .line 198
    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;

    .line 199
    .line 200
    invoke-direct {v7, p3, p1, v5, v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 201
    .line 202
    .line 203
    sget-object p1, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;->INSTANCE$1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;

    .line 204
    .line 205
    new-instance p3, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;

    .line 206
    .line 207
    invoke-direct {p3, v7, p1, v4}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;-><init>(Lio/reactivex/rxjava3/core/Flowable;Ljava/lang/Object;I)V

    .line 208
    .line 209
    .line 210
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p3, p1}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    new-instance p3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;

    .line 219
    .line 220
    const/4 v7, 0x5

    .line 221
    invoke-direct {p3, p0, v7}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;I)V

    .line 222
    .line 223
    .line 224
    new-instance v7, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;

    .line 225
    .line 226
    invoke-direct {v7, p1, p3, v5, v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 227
    .line 228
    .line 229
    sget-object p1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 230
    .line 231
    invoke-virtual {v7, p1}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 232
    .line 233
    .line 234
    move-result-object p3

    .line 235
    sget-object v7, Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;->INSTANCE$2:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$events$1;

    .line 236
    .line 237
    sget v8, Lio/reactivex/rxjava3/core/Flowable;->BUFFER_SIZE:I

    .line 238
    .line 239
    invoke-virtual {p3, v7, v8, v8}, Lio/reactivex/rxjava3/core/Flowable;->flatMap(Lio/reactivex/rxjava3/functions/Function;II)Lio/reactivex/rxjava3/core/Flowable;

    .line 240
    .line 241
    .line 242
    move-result-object p3

    .line 243
    new-instance v7, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;

    .line 244
    .line 245
    const/4 v9, 0x6

    .line 246
    invoke-direct {v7, p0, v9}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;I)V

    .line 247
    .line 248
    .line 249
    new-instance v10, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;

    .line 250
    .line 251
    const/4 v11, 0x3

    .line 252
    invoke-direct {v10, p3, v7, v11}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;-><init>(Lio/reactivex/rxjava3/core/Flowable;Ljava/lang/Object;I)V

    .line 253
    .line 254
    .line 255
    new-instance p3, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 256
    .line 257
    invoke-direct {p3, p2, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(Ljava/lang/Object;I)V

    .line 258
    .line 259
    .line 260
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;

    .line 261
    .line 262
    invoke-direct {p2, v10, p3, v5, v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 263
    .line 264
    .line 265
    const-string p3, "parallelism"

    .line 266
    .line 267
    invoke-static {v11, p3}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    const-string p3, "prefetch"

    .line 271
    .line 272
    invoke-static {v9, p3}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher;

    .line 276
    .line 277
    invoke-direct {v0, p2}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;)V

    .line 278
    .line 279
    .line 280
    invoke-static {v9, p3}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 281
    .line 282
    .line 283
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;

    .line 284
    .line 285
    const/4 v7, 0x2

    .line 286
    invoke-direct {p2, v0, p1, v7}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;-><init>(Lokhttp3/Cookie$Companion;Ljava/lang/Object;I)V

    .line 287
    .line 288
    .line 289
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;

    .line 290
    .line 291
    const/4 v9, 0x7

    .line 292
    invoke-direct {v0, p0, v9}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;I)V

    .line 293
    .line 294
    .line 295
    new-instance v9, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;

    .line 296
    .line 297
    invoke-direct {v9, p2, v0, v4}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;-><init>(Lokhttp3/Cookie$Companion;Ljava/lang/Object;I)V

    .line 298
    .line 299
    .line 300
    new-instance p2, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;

    .line 301
    .line 302
    invoke-direct {p2, p0, v3, v1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;ZLandroid/content/SharedPreferences;)V

    .line 303
    .line 304
    .line 305
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;

    .line 306
    .line 307
    invoke-direct {v0, v9, p2, v2}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;-><init>(Lokhttp3/Cookie$Companion;Ljava/lang/Object;I)V

    .line 308
    .line 309
    .line 310
    invoke-static {v8, p3}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 311
    .line 312
    .line 313
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;

    .line 314
    .line 315
    invoke-direct {p2, v0, v8}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelJoin;-><init>(Lio/reactivex/rxjava3/internal/operators/parallel/ParallelMap;I)V

    .line 316
    .line 317
    .line 318
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 319
    .line 320
    .line 321
    move-result-object p3

    .line 322
    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 323
    .line 324
    .line 325
    move-result-object p2

    .line 326
    new-instance p3, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;

    .line 327
    .line 328
    invoke-direct {p3, p0, v7}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;I)V

    .line 329
    .line 330
    .line 331
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;

    .line 332
    .line 333
    invoke-direct {v0, p2, p3, v5, v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 337
    .line 338
    .line 339
    move-result-object p2

    .line 340
    const-string p3, "count"

    .line 341
    .line 342
    const/16 v0, 0x14

    .line 343
    .line 344
    invoke-static {v0, p3}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 345
    .line 346
    .line 347
    const-string/jumbo p3, "skip"

    .line 348
    .line 349
    .line 350
    invoke-static {v0, p3}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 351
    .line 352
    .line 353
    new-instance p3, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;

    .line 354
    .line 355
    invoke-direct {p3, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBuffer;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;)V

    .line 356
    .line 357
    .line 358
    new-instance p2, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;

    .line 359
    .line 360
    invoke-direct {p2, p0, v4}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;I)V

    .line 361
    .line 362
    .line 363
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;

    .line 364
    .line 365
    invoke-direct {v0, p3, p2, v5, v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;

    .line 373
    .line 374
    invoke-direct {p2, p1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableToListSingle;-><init>(Lio/reactivex/rxjava3/core/Flowable;I)V

    .line 375
    .line 376
    .line 377
    new-instance p1, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;

    .line 378
    .line 379
    const/16 p3, 0x8

    .line 380
    .line 381
    invoke-direct {p1, p0, p3}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$notification$1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;I)V

    .line 382
    .line 383
    .line 384
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 385
    .line 386
    invoke-direct {p0, p2, p1, v4}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 387
    .line 388
    .line 389
    return-object p0
.end method
