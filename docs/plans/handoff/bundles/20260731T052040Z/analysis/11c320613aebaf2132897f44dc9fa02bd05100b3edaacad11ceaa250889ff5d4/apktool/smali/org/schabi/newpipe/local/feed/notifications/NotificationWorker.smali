.class public final Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;
.super Landroidx/work/rxjava3/RxWorker;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;


# instance fields
.field public final feedLoadManager:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

.field public final notificationHelper$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/work/rxjava3/RxWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 8
    .line 9
    .line 10
    new-instance p2, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v0, 0x6

    .line 13
    invoke-direct {p2, p1, v0}, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 17
    .line 18
    invoke-direct {v0, p2}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->notificationHelper$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 22
    .line 23
    new-instance p2, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->feedLoadManager:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final createWork()Lio/reactivex/rxjava3/core/Single;
    .locals 5

    .line 1
    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNewStreamsNotificationsEnabled(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNotificationsEnabledOnDevice(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->feedLoadManager:Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;

    .line 29
    .line 30
    const-wide/16 v1, -0x2

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lorg/schabi/newpipe/local/feed/service/FeedLoadManager;->startLoading(JZ)Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;-><init>(Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;I)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;

    .line 44
    .line 45
    invoke-direct {v4, v0, v1, v3}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Consumer;I)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 49
    .line 50
    sget-object v1, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$2;->INSTANCE:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$2;

    .line 51
    .line 52
    invoke-direct {v0, v4, v1, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v4, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 60
    .line 61
    invoke-direct {v4, v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/Scheduler;I)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;

    .line 65
    .line 66
    invoke-direct {v0, p0, v3}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;-><init>(Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;I)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;

    .line 70
    .line 71
    invoke-direct {v1, v4, v0, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleMap;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;

    .line 75
    .line 76
    const/4 v3, 0x2

    .line 77
    invoke-direct {v0, p0, v3}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$createWork$1;-><init>(Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;I)V

    .line 78
    .line 79
    .line 80
    new-instance p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;

    .line 81
    .line 82
    invoke-direct {p0, v1, v0, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnError;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Consumer;I)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Landroidx/work/ListenableWorker$Result$Failure;

    .line 86
    .line 87
    invoke-direct {v0}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;

    .line 91
    .line 92
    const/4 v2, 0x0

    .line 93
    invoke-direct {v1, p0, v2, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-object v1

    .line 97
    :cond_0
    new-instance p0, Landroidx/work/ListenableWorker$Result$Success;

    .line 98
    .line 99
    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result$Success;-><init>()V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 103
    .line 104
    const/4 v1, 0x4

    .line 105
    invoke-direct {v0, p0, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 106
    .line 107
    .line 108
    return-object v0
.end method
