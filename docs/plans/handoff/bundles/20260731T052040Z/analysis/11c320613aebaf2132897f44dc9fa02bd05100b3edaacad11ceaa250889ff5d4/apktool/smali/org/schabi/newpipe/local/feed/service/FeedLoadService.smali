.class public final Lorg/schabi/newpipe/local/feed/service/FeedLoadService;
.super Landroid/app/Service;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/feed/service/FeedLoadService$Companion;


# instance fields
.field public broadcastReceiver:Lorg/schabi/newpipe/MainActivity$3;

.field public feedLoadManager:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

.field public loadingDisposable:Lio/reactivex/rxjava3/internal/observers/BiConsumerSingleObserver;

.field public notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field public notificationDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

.field public notificationManager:Landroidx/core/app/NotificationManagerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->Companion:Lorg/schabi/newpipe/local/feed/service/FeedLoadService$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->feedLoadManager:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 10
    .line 11
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    .line 1
    const-string/jumbo p2, "subscribeActual failed"

    .line 2
    .line 3
    .line 4
    sget p3, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 5
    .line 6
    const/4 p3, 0x2

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->loadingDisposable:Lio/reactivex/rxjava3/internal/observers/BiConsumerSingleObserver;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationManagerCompat;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 21
    .line 22
    new-instance v0, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v1, "org.schabi.newpipe.local.feed.service.FeedLoadService.CANCEL"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/high16 v2, 0x4000000

    .line 30
    .line 31
    const v3, 0x6f4a0a

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    .line 39
    .line 40
    const v3, 0x7f130385

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-direct {v2, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-virtual {v2, p3, v3}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 52
    .line 53
    .line 54
    const/4 v4, -0x1

    .line 55
    invoke-virtual {v2, v4, v4, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)V

    .line 56
    .line 57
    .line 58
    const v4, 0x7f08012d

    .line 59
    .line 60
    .line 61
    iget-object v5, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 62
    .line 63
    iput v4, v5, Landroid/app/Notification;->icon:I

    .line 64
    .line 65
    iput v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 66
    .line 67
    const v4, 0x7f130076

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    new-instance v5, Landroidx/core/app/NotificationCompat$Action;

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    invoke-direct {v5, v6, v4, v0}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, v2, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    const v0, 0x7f1301d3

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 97
    .line 98
    iput-object v2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 99
    .line 100
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 101
    .line 102
    const/16 v2, 0xb

    .line 103
    .line 104
    invoke-direct {v0, v2}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->feedLoadManager:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 108
    .line 109
    const/4 v4, 0x0

    .line 110
    const-string v5, "feedLoadManager"

    .line 111
    .line 112
    if-eqz v2, :cond_2

    .line 113
    .line 114
    iget-object v2, v2, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->notification:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    sget v7, Lio/reactivex/rxjava3/core/Flowable;->BUFFER_SIZE:I

    .line 120
    .line 121
    const-string v8, "prefetch"

    .line 122
    .line 123
    invoke-static {v7, v8}, Lio/reactivex/rxjava3/internal/functions/Functions;->verifyPositive(ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v8, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 127
    .line 128
    invoke-direct {v8, v2, v0, v7, p3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;-><init>(Lio/reactivex/rxjava3/core/Flowable;Ljava/lang/Object;II)V

    .line 129
    .line 130
    .line 131
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v8, v0}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v2, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 140
    .line 141
    const/16 v7, 0xf

    .line 142
    .line 143
    invoke-direct {v2, p0, v7}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 144
    .line 145
    .line 146
    sget-object v7, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_CONSUMER:Lio/noties/markwon/BlockHandlerDef;

    .line 147
    .line 148
    new-instance v8, Lokhttp3/ConnectionPool;

    .line 149
    .line 150
    const/16 v9, 0xe

    .line 151
    .line 152
    invoke-direct {v8, v2, v9}, Lokhttp3/ConnectionPool;-><init>(Ljava/lang/Object;I)V

    .line 153
    .line 154
    .line 155
    new-instance v9, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;

    .line 156
    .line 157
    invoke-direct {v9, v0, v7, v8, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDoOnEach;-><init>(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;

    .line 161
    .line 162
    invoke-direct {v0, p0, p3}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;I)V

    .line 163
    .line 164
    .line 165
    sget-object v2, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 166
    .line 167
    new-instance v7, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 168
    .line 169
    invoke-direct {v7, v0, v2}, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9, v7}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 173
    .line 174
    .line 175
    iput-object v7, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 176
    .line 177
    new-instance v0, Lorg/schabi/newpipe/MainActivity$3;

    .line 178
    .line 179
    const/4 v2, 0x4

    .line 180
    invoke-direct {v0, p0, v2}, Lorg/schabi/newpipe/MainActivity$3;-><init>(Ljava/lang/Object;I)V

    .line 181
    .line 182
    .line 183
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->broadcastReceiver:Lorg/schabi/newpipe/MainActivity$3;

    .line 184
    .line 185
    new-instance v7, Landroid/content/IntentFilter;

    .line 186
    .line 187
    invoke-direct {v7, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-static {p0, v0, v7, v2}, Lcoil3/decode/StaticImageDecoderKt;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    const-string v0, "FeedLoadService.EXTRA_GROUP_ID"

    .line 194
    .line 195
    const-wide/16 v1, -0x1

    .line 196
    .line 197
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 198
    .line 199
    .line 200
    move-result-wide v0

    .line 201
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->feedLoadManager:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 202
    .line 203
    if-eqz p1, :cond_1

    .line 204
    .line 205
    invoke-virtual {p1, v0, v1, v6}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->startLoading(JZ)Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    new-instance v1, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;

    .line 214
    .line 215
    invoke-direct {v1, p0, v6}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;I)V

    .line 216
    .line 217
    .line 218
    new-instance v2, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;

    .line 219
    .line 220
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadService;I)V

    .line 221
    .line 222
    .line 223
    new-instance v3, Lio/reactivex/rxjava3/internal/observers/BiConsumerSingleObserver;

    .line 224
    .line 225
    invoke-direct {v3, v2}, Lio/reactivex/rxjava3/internal/observers/BiConsumerSingleObserver;-><init>(Lorg/schabi/newpipe/local/feed/service/FeedLoadService$onStartCommand$1;)V

    .line 226
    .line 227
    .line 228
    :try_start_0
    new-instance v2, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;

    .line 229
    .line 230
    invoke-direct {v2, v3, v1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager$startLoading$8;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/functions/Consumer;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 231
    .line 232
    .line 233
    :try_start_1
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 234
    .line 235
    invoke-direct {v1, v2, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    .line 240
    .line 241
    iput-object v3, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->loadingDisposable:Lio/reactivex/rxjava3/internal/observers/BiConsumerSingleObserver;

    .line 242
    .line 243
    return p3

    .line 244
    :catchall_0
    move-exception p0

    .line 245
    :try_start_2
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 246
    .line 247
    .line 248
    new-instance p1, Ljava/lang/NullPointerException;

    .line 249
    .line 250
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 254
    .line 255
    .line 256
    throw p1

    .line 257
    :catch_0
    move-exception p0

    .line 258
    throw p0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 259
    :catchall_1
    move-exception p0

    .line 260
    invoke-static {p0, p2, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    throw p0

    .line 265
    :catch_1
    move-exception p0

    .line 266
    throw p0

    .line 267
    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw v4

    .line 271
    :cond_2
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw v4

    .line 275
    :cond_3
    :goto_0
    return p3
.end method

.method public final stopService()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->broadcastReceiver:Lorg/schabi/newpipe/MainActivity$3;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->loadingDisposable:Lio/reactivex/rxjava3/internal/observers/BiConsumerSingleObserver;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/observers/BiConsumerSingleObserver;->dispose()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedLoadService;->notificationDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-static {p0}, Landroidx/core/app/NavUtils;->stopForeground(Landroid/app/Service;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    const-string p0, "broadcastReceiver"

    .line 30
    .line 31
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    throw p0
.end method
