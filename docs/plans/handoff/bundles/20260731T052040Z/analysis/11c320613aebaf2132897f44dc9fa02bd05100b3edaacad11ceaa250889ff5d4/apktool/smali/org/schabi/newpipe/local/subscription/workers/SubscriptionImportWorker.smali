.class public final Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;
.super Landroidx/work/CoroutineWorker;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$Companion;


# instance fields
.field public final context:Landroid/content/Context;

.field public final mutex:Lkotlinx/coroutines/sync/MutexImpl;

.field public final subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

.field public subscriptions:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->Companion:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$Companion;

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
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->context:Landroid/content/Context;

    .line 11
    .line 12
    new-instance p2, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 13
    .line 14
    invoke-direct {p2, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 18
    .line 19
    new-instance p1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 20
    .line 21
    invoke-direct {p1}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic createForegroundInfo$default(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Ljava/lang/String;II)Landroidx/work/ForegroundInfo;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    const/4 p3, 0x0

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->createForegroundInfo(Ljava/lang/String;ILjava/lang/String;)Landroidx/work/ForegroundInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final createForegroundInfo(Ljava/lang/String;ILjava/lang/String;)Landroidx/work/ForegroundInfo;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->subscriptions:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 10
    .line 11
    const-string v2, "newpipe"

    .line 12
    .line 13
    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->context:Landroid/content/Context;

    .line 14
    .line 15
    invoke-direct {v1, v3, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const v2, 0x7f08012d

    .line 19
    .line 20
    .line 21
    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 22
    .line 23
    iput v2, v4, Landroid/app/Notification;->icon:I

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-virtual {v1, v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    move v5, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v5, v2

    .line 36
    :goto_0
    invoke-virtual {v1, v0, p2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)V

    .line 37
    .line 38
    .line 39
    iput v4, v1, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    .line 40
    .line 41
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 46
    .line 47
    invoke-static {p3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 52
    .line 53
    const p1, 0x7f130076

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {v3}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    iget-object p0, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    .line 65
    .line 66
    iget-object p0, p0, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object p3, p3, Landroidx/work/impl/WorkManagerImpl;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    sget-object v3, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->TAG:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v3, Landroid/content/Intent;

    .line 80
    .line 81
    const-class v5, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 82
    .line 83
    invoke-direct {v3, p3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .line 85
    .line 86
    const-string v5, "ACTION_CANCEL_WORK"

    .line 87
    .line 88
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string/jumbo v6, "workspec://"

    .line 94
    .line 95
    .line 96
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    const-string v5, "KEY_WORKSPEC_ID"

    .line 114
    .line 115
    invoke-virtual {v3, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    .line 120
    const/16 v5, 0x1f

    .line 121
    .line 122
    if-lt p0, v5, :cond_1

    .line 123
    .line 124
    const/high16 v5, 0xa000000

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    const/high16 v5, 0x8000000

    .line 128
    .line 129
    :goto_1
    invoke-static {p3, v2, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    new-instance v3, Landroidx/core/app/NotificationCompat$Action;

    .line 134
    .line 135
    const v5, 0x7f0800fd

    .line 136
    .line 137
    .line 138
    invoke-direct {v3, v5, p1, p3}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, v1, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    if-lez p2, :cond_3

    .line 147
    .line 148
    if-lez v0, :cond_3

    .line 149
    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string p2, "/"

    .line 159
    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const/16 p2, 0x18

    .line 171
    .line 172
    if-lt p0, p2, :cond_2

    .line 173
    .line 174
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iput-object p1, v1, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_2
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iput-object p1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 186
    .line 187
    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    const/16 p2, 0x1d

    .line 195
    .line 196
    if-lt p0, p2, :cond_4

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_4
    move v4, v2

    .line 200
    :goto_3
    new-instance p0, Landroidx/work/ForegroundInfo;

    .line 201
    .line 202
    const/16 p2, 0x11d8

    .line 203
    .line 204
    invoke-direct {p0, p2, p1, v4}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    .line 205
    .line 206
    .line 207
    return-object p0

    .line 208
    :cond_5
    const-string/jumbo p0, "subscriptions"

    .line 209
    .line 210
    .line 211
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const/4 p0, 0x0

    .line 215
    throw p0
.end method

.method public final doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;

    .line 21
    .line 22
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;-><init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget v1, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x3

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x2

    .line 34
    const/4 v5, 0x6

    .line 35
    const-string/jumbo v6, "subscriptions"

    .line 36
    .line 37
    .line 38
    const-string v7, "SubscriptionImport"

    .line 39
    .line 40
    const/4 v8, 0x1

    .line 41
    const/4 v9, 0x0

    .line 42
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 43
    .line 44
    packed-switch v1, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v9

    .line 53
    :pswitch_0
    iget-object p0, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :pswitch_1
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :pswitch_2
    iget-object p0, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Ljava/lang/Exception;

    .line 74
    .line 75
    iget-object p0, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p0, Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_7

    .line 83
    .line 84
    :pswitch_3
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 87
    .line 88
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, Ljava/lang/String;

    .line 91
    .line 92
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    :catch_0
    move-exception p1

    .line 98
    goto/16 :goto_6

    .line 99
    .line 100
    :pswitch_4
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v1, Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :pswitch_5
    iget-object p0, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;

    .line 112
    .line 113
    iget-object p0, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p0, Ljava/lang/Exception;

    .line 116
    .line 117
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_b

    .line 121
    .line 122
    :pswitch_6
    iget-object v1, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;

    .line 125
    .line 126
    iget-object v11, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v11, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;

    .line 129
    .line 130
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catch_1
    move-exception p1

    .line 135
    goto/16 :goto_9

    .line 136
    .line 137
    :pswitch_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :try_start_2
    sget-object p1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;->Companion:Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$Companion;

    .line 141
    .line 142
    iget-object v1, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    .line 143
    .line 144
    iget-object v1, v1, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {v1}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput$Companion;->fromData(Landroidx/work/Data;)Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iput-object p0, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 157
    .line 158
    iput-object p0, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 159
    .line 160
    iput v8, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->label:I

    .line 161
    .line 162
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 163
    .line 164
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 165
    .line 166
    new-instance v11, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;

    .line 167
    .line 168
    invoke-direct {v11, p1, p0, v9}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$loadSubscriptionsFromInput$2;-><init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportInput;Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Lkotlin/coroutines/Continuation;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v1, v11, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 175
    if-ne p1, v10, :cond_1

    .line 176
    .line 177
    goto/16 :goto_a

    .line 178
    .line 179
    :cond_1
    move-object v1, p0

    .line 180
    move-object v11, v1

    .line 181
    :goto_1
    :try_start_3
    check-cast p1, Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 182
    .line 183
    iput-object p1, v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->subscriptions:Ljava/util/List;

    .line 184
    .line 185
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->context:Landroid/content/Context;

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->subscriptions:Ljava/util/List;

    .line 192
    .line 193
    if-eqz v1, :cond_a

    .line 194
    .line 195
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    iget-object v11, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->subscriptions:Ljava/util/List;

    .line 200
    .line 201
    if-eqz v11, :cond_9

    .line 202
    .line 203
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 204
    .line 205
    .line 206
    move-result v11

    .line 207
    new-instance v12, Ljava/lang/Integer;

    .line 208
    .line 209
    invoke-direct {v12, v11}, Ljava/lang/Integer;-><init>(I)V

    .line 210
    .line 211
    .line 212
    new-array v11, v8, [Ljava/lang/Object;

    .line 213
    .line 214
    aput-object v12, v11, v3

    .line 215
    .line 216
    const v12, 0x7f110008

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v12, v1, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-static {p0, p1, v3, v5}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->createForegroundInfo$default(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Ljava/lang/String;II)Landroidx/work/ForegroundInfo;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    iput-object p1, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 231
    .line 232
    iput-object v9, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 233
    .line 234
    iput v2, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->label:I

    .line 235
    .line 236
    invoke-virtual {p0, v1, v0}, Landroidx/work/CoroutineWorker;->setForeground(Landroidx/work/ForegroundInfo;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    if-ne v1, v10, :cond_2

    .line 241
    .line 242
    goto/16 :goto_a

    .line 243
    .line 244
    :cond_2
    move-object v1, p1

    .line 245
    :goto_2
    :try_start_4
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 246
    .line 247
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 248
    .line 249
    .line 250
    iput v8, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 251
    .line 252
    iget-object v8, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->subscriptions:Ljava/util/List;

    .line 253
    .line 254
    if-eqz v8, :cond_7

    .line 255
    .line 256
    new-instance v11, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3;

    .line 257
    .line 258
    invoke-direct {v11, v8}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3;-><init>(Ljava/lang/Iterable;)V

    .line 259
    .line 260
    .line 261
    new-instance v8, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;

    .line 262
    .line 263
    invoke-direct {v8, p0, p1, v1, v9}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$3;-><init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 264
    .line 265
    .line 266
    sget p1, Lkotlinx/coroutines/flow/FlowKt__MergeKt;->$r8$clinit:I

    .line 267
    .line 268
    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapMerge$$inlined$map$1;

    .line 269
    .line 270
    invoke-direct {p1, v11, v8, v3}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapMerge$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;I)V

    .line 271
    .line 272
    .line 273
    new-instance v3, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge;

    .line 274
    .line 275
    sget-object v8, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 276
    .line 277
    sget-object v11, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 278
    .line 279
    const/4 v12, -0x2

    .line 280
    invoke-direct {v3, p1, v8, v12, v11}, Lkotlinx/coroutines/flow/internal/ChannelFlowMerge;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapMerge$$inlined$map$1;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V

    .line 281
    .line 282
    .line 283
    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$chunked$$inlined$unsafeFlow$1;

    .line 284
    .line 285
    invoke-direct {p1, v3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$chunked$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 286
    .line 287
    .line 288
    new-instance v3, Lkotlinx/coroutines/rx3/RxConvertKt$asObservable$1$job$1$1;

    .line 289
    .line 290
    invoke-direct {v3, p0, v2}, Lkotlinx/coroutines/rx3/RxConvertKt$asObservable$1$job$1$1;-><init>(Ljava/lang/Object;I)V

    .line 291
    .line 292
    .line 293
    iput-object v1, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 294
    .line 295
    iput-object v9, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 296
    .line 297
    const/4 v2, 0x4

    .line 298
    iput v2, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->label:I

    .line 299
    .line 300
    invoke-virtual {p1, v3, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$chunked$$inlined$unsafeFlow$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 304
    if-ne p1, v10, :cond_3

    .line 305
    .line 306
    goto/16 :goto_a

    .line 307
    .line 308
    :cond_3
    :goto_3
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->subscriptions:Ljava/util/List;

    .line 309
    .line 310
    if-eqz p1, :cond_6

    .line 311
    .line 312
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    invoke-static {p0, v1, p1, v4}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->createForegroundInfo$default(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Ljava/lang/String;II)Landroidx/work/ForegroundInfo;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    iput-object v9, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 321
    .line 322
    iput-object v9, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 323
    .line 324
    iput v5, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->label:I

    .line 325
    .line 326
    invoke-virtual {p0, p1, v0}, Landroidx/work/CoroutineWorker;->setForeground(Landroidx/work/ForegroundInfo;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    if-ne p1, v10, :cond_4

    .line 331
    .line 332
    goto :goto_a

    .line 333
    :cond_4
    :goto_4
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 334
    .line 335
    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 336
    .line 337
    new-instance v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$6;

    .line 338
    .line 339
    invoke-direct {v1, p0, v9}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$6;-><init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Lkotlin/coroutines/Continuation;)V

    .line 340
    .line 341
    .line 342
    iput-object v9, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 343
    .line 344
    const/4 p0, 0x7

    .line 345
    iput p0, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->label:I

    .line 346
    .line 347
    invoke-static {p1, v1, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    if-ne p0, v10, :cond_5

    .line 352
    .line 353
    goto :goto_a

    .line 354
    :cond_5
    :goto_5
    new-instance p0, Landroidx/work/ListenableWorker$Result$Success;

    .line 355
    .line 356
    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result$Success;-><init>()V

    .line 357
    .line 358
    .line 359
    return-object p0

    .line 360
    :cond_6
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    throw v9

    .line 364
    :cond_7
    :try_start_5
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 368
    :goto_6
    const-string v1, "Error while processing subscription data"

    .line 369
    .line 370
    invoke-static {v7, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    .line 372
    .line 373
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 374
    .line 375
    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 376
    .line 377
    new-instance v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$5;

    .line 378
    .line 379
    invoke-direct {v1, p0, v9}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$5;-><init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Lkotlin/coroutines/Continuation;)V

    .line 380
    .line 381
    .line 382
    iput-object v9, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 383
    .line 384
    iput-object v9, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 385
    .line 386
    const/4 p0, 0x5

    .line 387
    iput p0, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->label:I

    .line 388
    .line 389
    invoke-static {p1, v1, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object p0

    .line 393
    if-ne p0, v10, :cond_8

    .line 394
    .line 395
    goto :goto_a

    .line 396
    :cond_8
    :goto_7
    new-instance p0, Landroidx/work/ListenableWorker$Result$Failure;

    .line 397
    .line 398
    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 399
    .line 400
    .line 401
    return-object p0

    .line 402
    :cond_9
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v9

    .line 406
    :cond_a
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw v9

    .line 410
    :goto_8
    move-object v11, p0

    .line 411
    goto :goto_9

    .line 412
    :catch_2
    move-exception p1

    .line 413
    goto :goto_8

    .line 414
    :goto_9
    const-string v1, "Error while loading subscriptions from path"

    .line 415
    .line 416
    invoke-static {v7, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    .line 418
    .line 419
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 420
    .line 421
    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 422
    .line 423
    new-instance v1, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$2;

    .line 424
    .line 425
    invoke-direct {v1, p0, v9}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$2;-><init>(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Lkotlin/coroutines/Continuation;)V

    .line 426
    .line 427
    .line 428
    iput-object v9, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$0:Ljava/lang/Object;

    .line 429
    .line 430
    iput-object v11, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->L$1:Ljava/lang/Object;

    .line 431
    .line 432
    iput v4, v0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker$doWork$1;->label:I

    .line 433
    .line 434
    invoke-static {p1, v1, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object p0

    .line 438
    if-ne p0, v10, :cond_b

    .line 439
    .line 440
    :goto_a
    return-object v10

    .line 441
    :cond_b
    :goto_b
    new-instance p0, Landroidx/work/ListenableWorker$Result$Failure;

    .line 442
    .line 443
    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 444
    .line 445
    .line 446
    return-object p0

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getForegroundInfo()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->context:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f13021a

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
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x6

    .line 15
    invoke-static {p0, v0, v1, v2}, Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;->createForegroundInfo$default(Lorg/schabi/newpipe/local/subscription/workers/SubscriptionImportWorker;Ljava/lang/String;II)Landroidx/work/ForegroundInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
