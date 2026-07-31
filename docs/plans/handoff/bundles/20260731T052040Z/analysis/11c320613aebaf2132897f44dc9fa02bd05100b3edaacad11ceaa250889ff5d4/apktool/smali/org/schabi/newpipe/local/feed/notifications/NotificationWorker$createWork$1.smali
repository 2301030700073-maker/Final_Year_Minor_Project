.class public final Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;->this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;->this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object v2, p1

    .line 9
    check-cast v2, Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string p1, "NotificationWorker"

    .line 15
    .line 16
    const-string v0, "Error while displaying streams notifications"

    .line 17
    .line 18
    invoke-static {p1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    sget-object p1, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    const/16 v6, 0x18

    .line 32
    .line 33
    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->NEW_STREAMS_NOTIFICATIONS:Lorg/schabi/newpipe/error/UserAction;

    .line 34
    .line 35
    const-string v4, "main worker"

    .line 36
    .line 37
    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v1}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_0
    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    .line 53
    .line 54
    iget-object v4, p0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 55
    .line 56
    const v0, 0x7f130385

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p1, v4, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 v6, 0x2

    .line 67
    const/4 v0, 0x1

    .line 68
    invoke-virtual {p1, v6, v0}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 69
    .line 70
    .line 71
    const/4 v1, -0x1

    .line 72
    invoke-virtual {p1, v1, v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)V

    .line 73
    .line 74
    .line 75
    const v2, 0x7f08012d

    .line 76
    .line 77
    .line 78
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 79
    .line 80
    iput v2, v3, Landroid/app/Notification;->icon:I

    .line 81
    .line 82
    iput v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 83
    .line 84
    iput v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 85
    .line 86
    const v1, 0x7f1301d3

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iput-object v1, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 107
    .line 108
    const/16 v2, 0x1d

    .line 109
    .line 110
    if-lt v1, v2, :cond_0

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 114
    :goto_0
    new-instance v3, Landroidx/work/ForegroundInfo;

    .line 115
    .line 116
    const v1, 0x6f4a0a

    .line 117
    .line 118
    .line 119
    invoke-direct {v3, v1, p1, v0}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    .line 123
    .line 124
    iget-object v1, p0, Landroidx/work/WorkerParameters;->mForegroundUpdater:Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 125
    .line 126
    iget-object v2, p0, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    .line 127
    .line 128
    iget-object p0, v1, Landroidx/work/impl/utils/WorkForegroundUpdater;->mTaskExecutor:Lokhttp3/Dispatcher;

    .line 129
    .line 130
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p0, Landroidx/room/TransactionExecutor;

    .line 133
    .line 134
    new-instance v0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;

    .line 135
    .line 136
    const/4 v5, 0x2

    .line 137
    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    new-instance p1, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;

    .line 144
    .line 145
    invoke-direct {p1, p0, v0, v6}, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, Landroidx/sqlite/SQLite;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_5

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    .line 23
    .line 24
    move-object/from16 v2, p0

    .line 25
    .line 26
    iget-object v3, v2, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;->this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;

    .line 27
    .line 28
    iget-object v3, v3, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->notificationHelper$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 29
    .line 30
    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;

    .line 35
    .line 36
    iget-object v4, v3, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->manager:Landroidx/core/app/NotificationManagerCompat;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget v5, v1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->serviceId:I

    .line 42
    .line 43
    iget-object v6, v1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->newStreams:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-eqz v6, :cond_4

    .line 46
    .line 47
    iget-object v3, v3, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->context:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    const/4 v10, 0x1

    .line 66
    new-array v11, v10, [Ljava/lang/Object;

    .line 67
    .line 68
    const/4 v12, 0x0

    .line 69
    aput-object v9, v11, v12

    .line 70
    .line 71
    const v9, 0x7f11000d

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7, v9, v8, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance v8, Landroidx/core/app/NotificationCompat$Builder;

    .line 82
    .line 83
    const v9, 0x7f1304ce

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    invoke-direct {v8, v3, v11}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v11, v1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->name:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    iput-object v13, v8, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 100
    .line 101
    invoke-static {v7}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    iput-object v7, v8, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    iput v7, v8, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    .line 112
    .line 113
    const/4 v7, 0x2

    .line 114
    iput v7, v8, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    .line 115
    .line 116
    iput v12, v8, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 117
    .line 118
    iget-object v7, v8, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 119
    .line 120
    const v13, 0x7f08012d

    .line 121
    .line 122
    .line 123
    iput v13, v7, Landroid/app/Notification;->icon:I

    .line 124
    .line 125
    const v7, 0x7f060094

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v7}, Landroid/content/Context;->getColor(I)I

    .line 129
    .line 130
    .line 131
    move-result v14

    .line 132
    iput v14, v8, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 133
    .line 134
    iput-boolean v10, v8, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    .line 135
    .line 136
    iput-boolean v10, v8, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    .line 137
    .line 138
    const/16 v14, 0x10

    .line 139
    .line 140
    invoke-virtual {v8, v14, v10}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 141
    .line 142
    .line 143
    const-string/jumbo v15, "social"

    .line 144
    .line 145
    .line 146
    iput-object v15, v8, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 147
    .line 148
    iput-boolean v10, v8, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 149
    .line 150
    iget-object v14, v1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->url:Ljava/lang/String;

    .line 151
    .line 152
    iput-object v14, v8, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 153
    .line 154
    iput v10, v8, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 155
    .line 156
    new-instance v10, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 157
    .line 158
    invoke-direct {v10, v12}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 159
    .line 160
    .line 161
    new-instance v7, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    .line 166
    iput-object v7, v10, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/lang/Object;

    .line 167
    .line 168
    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    iput-object v7, v10, Landroidx/core/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/Object;

    .line 173
    .line 174
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    if-eqz v11, :cond_1

    .line 183
    .line 184
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    check-cast v11, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 189
    .line 190
    invoke-virtual {v11}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    if-eqz v11, :cond_0

    .line 195
    .line 196
    iget-object v9, v10, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v9, Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    :cond_0
    const v9, 0x7f1304ce

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {v8, v10}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)V

    .line 212
    .line 213
    .line 214
    sget-object v7, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->CHANNEL:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 215
    .line 216
    invoke-static {v3, v14, v5, v7}, Landroidx/sqlite/SQLite;->getOpenIntent(Landroid/content/Context;Ljava/lang/String;ILorg/schabi/newpipe/extractor/StreamingService$LinkType;)Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    const/high16 v9, 0x10000000

    .line 221
    .line 222
    invoke-virtual {v7, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    invoke-static {v3, v10, v7, v12}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    iput-object v7, v8, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 238
    .line 239
    iget-object v1, v1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->avatarUrl:Ljava/lang/String;

    .line 240
    .line 241
    invoke-static {v3, v13, v1}, Lokhttp3/Cookie$Companion;->loadBitmapBlocking(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v8, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    if-eqz v7, :cond_2

    .line 253
    .line 254
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    if-eqz v7, :cond_2

    .line 263
    .line 264
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    check-cast v7, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 269
    .line 270
    new-instance v10, Landroidx/core/app/NotificationCompat$Builder;

    .line 271
    .line 272
    const v11, 0x7f1304ce

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v12

    .line 279
    invoke-direct {v10, v3, v12}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget-object v12, v10, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 283
    .line 284
    iput v13, v12, Landroid/app/Notification;->icon:I

    .line 285
    .line 286
    invoke-virtual {v10, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    invoke-static {v12}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 294
    .line 295
    .line 296
    move-result-object v12

    .line 297
    iput-object v12, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 298
    .line 299
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderName()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v12

    .line 303
    invoke-static {v12}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 304
    .line 305
    .line 306
    move-result-object v12

    .line 307
    iput-object v12, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 308
    .line 309
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderUrl()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v12

    .line 313
    iput-object v12, v10, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 314
    .line 315
    const v12, 0x7f060094

    .line 316
    .line 317
    .line 318
    invoke-virtual {v3, v12}, Landroid/content/Context;->getColor(I)I

    .line 319
    .line 320
    .line 321
    move-result v11

    .line 322
    iput v11, v10, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 323
    .line 324
    const/4 v11, 0x1

    .line 325
    iput-boolean v11, v10, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    .line 326
    .line 327
    iput-boolean v11, v10, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    .line 328
    .line 329
    const/16 v12, 0x10

    .line 330
    .line 331
    invoke-virtual {v10, v12, v11}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 332
    .line 333
    .line 334
    iput-object v15, v10, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v11

    .line 340
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 341
    .line 342
    .line 343
    move-result v11

    .line 344
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v12

    .line 348
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v13

    .line 352
    move-object/from16 v16, v0

    .line 353
    .line 354
    sget-object v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 355
    .line 356
    invoke-static {v3, v12, v5, v0}, Landroidx/sqlite/SQLite;->getOpenIntent(Landroid/content/Context;Ljava/lang/String;ILorg/schabi/newpipe/extractor/StreamingService$LinkType;)Landroid/content/Intent;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    const-string v12, "key_title"

    .line 365
    .line 366
    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    const/high16 v12, 0x8000000

    .line 371
    .line 372
    invoke-static {v3, v11, v0, v12}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    iput-object v0, v10, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 377
    .line 378
    const/4 v11, 0x1

    .line 379
    iput-boolean v11, v10, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    .line 380
    .line 381
    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v7}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 393
    .line 394
    .line 395
    move-result v7

    .line 396
    invoke-virtual {v4, v7, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 397
    .line 398
    .line 399
    move-object/from16 v0, v16

    .line 400
    .line 401
    const v13, 0x7f08012d

    .line 402
    .line 403
    .line 404
    goto/16 :goto_2

    .line 405
    .line 406
    :cond_2
    move-object/from16 v16, v0

    .line 407
    .line 408
    invoke-virtual {v4}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_3

    .line 413
    .line 414
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-virtual {v4, v0, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 423
    .line 424
    .line 425
    :cond_3
    move-object/from16 v0, v16

    .line 426
    .line 427
    goto/16 :goto_0

    .line 428
    .line 429
    :cond_4
    const-string v0, "newStreams"

    .line 430
    .line 431
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    const/4 v0, 0x0

    .line 435
    throw v0

    .line 436
    :cond_5
    new-instance v0, Landroidx/work/ListenableWorker$Result$Success;

    .line 437
    .line 438
    invoke-direct {v0}, Landroidx/work/ListenableWorker$Result$Success;-><init>()V

    .line 439
    .line 440
    .line 441
    return-object v0
.end method
