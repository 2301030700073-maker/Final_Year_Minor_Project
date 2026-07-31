.class public final Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;


# instance fields
.field public final feedGroupItemsDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

.field public final feedGroupsLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final listViewMode:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

.field public final mutableFeedGroupsLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final mutableStateLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final stateItemsDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

.field public final stateLiveData:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lnet/newpipe/app/AppKt;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/AppDatabase;->subscriptionDAO()Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 21
    .line 22
    invoke-direct {v2, p1}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$Companion;->shouldUseGridForSubscription(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v2, 0x1

    .line 35
    xor-int/2addr p1, v2

    .line 36
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v3, Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 41
    .line 42
    invoke-direct {v3}, Lio/reactivex/rxjava3/processors/BehaviorProcessor;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v4, v3, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    .line 47
    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput-object v3, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->listViewMode:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 51
    .line 52
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;

    .line 53
    .line 54
    invoke-direct {p1, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDistinctUntilChanged;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    .line 55
    .line 56
    .line 57
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    .line 58
    .line 59
    invoke-direct {v3}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v3, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->mutableStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 63
    .line 64
    new-instance v4, Landroidx/lifecycle/MutableLiveData;

    .line 65
    .line 66
    invoke-direct {v4}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v4, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->mutableFeedGroupsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    iput-object v3, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->stateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 72
    .line 73
    iput-object v4, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->feedGroupsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 74
    .line 75
    iget-object v0, v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedGroupTable:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    .line 76
    .line 77
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->getAll()Lio/reactivex/rxjava3/core/Flowable;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v3, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;->INSTANCE$1:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;

    .line 82
    .line 83
    invoke-static {v0, p1, v3}, Lio/reactivex/rxjava3/core/Flowable;->combineLatest(Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/core/Flowable;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Flowable;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-wide/16 v3, 0x78

    .line 88
    .line 89
    invoke-virtual {p1, v3, v4}, Lio/reactivex/rxjava3/core/Flowable;->throttleLatest(J)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    sget-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;->INSTANCE$2:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;

    .line 94
    .line 95
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;

    .line 96
    .line 97
    const/4 v6, 0x0

    .line 98
    invoke-direct {v5, p1, v0, v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;-><init>(Lio/reactivex/rxjava3/core/Flowable;Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    sget-object p1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 102
    .line 103
    invoke-virtual {v5, p1}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    new-instance v5, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;

    .line 108
    .line 109
    invoke-direct {v5, p0, v2}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;I)V

    .line 110
    .line 111
    .line 112
    new-instance v2, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;

    .line 113
    .line 114
    const/4 v7, 0x2

    .line 115
    invoke-direct {v2, p0, v7}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;I)V

    .line 116
    .line 117
    .line 118
    new-instance v7, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 119
    .line 120
    invoke-direct {v7, v5, v2}, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v7}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 124
    .line 125
    .line 126
    iput-object v7, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->feedGroupItemsDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 127
    .line 128
    invoke-virtual {v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->getAll()Lio/reactivex/rxjava3/core/Flowable;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0, v3, v4}, Lio/reactivex/rxjava3/core/Flowable;->throttleLatest(J)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    sget-object v1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;->INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;

    .line 137
    .line 138
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;

    .line 139
    .line 140
    invoke-direct {v2, v0, v1, v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMap;-><init>(Lio/reactivex/rxjava3/core/Flowable;Ljava/lang/Object;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, p1}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;

    .line 148
    .line 149
    invoke-direct {v0, p0, v6}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;I)V

    .line 150
    .line 151
    .line 152
    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;

    .line 153
    .line 154
    const/4 v2, 0x3

    .line 155
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$2;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;I)V

    .line 156
    .line 157
    .line 158
    new-instance v2, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 159
    .line 160
    invoke-direct {v2, v0, v1}, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 164
    .line 165
    .line 166
    iput-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->stateItemsDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 167
    .line 168
    return-void
.end method


# virtual methods
.method public final getListViewMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->listViewMode:Lio/reactivex/rxjava3/processors/BehaviorProcessor;

    .line 2
    .line 3
    iget-object p0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor;->value:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v0, Lio/reactivex/rxjava3/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/rxjava3/internal/util/NotificationLite;

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v0, p0, Lio/reactivex/rxjava3/internal/util/NotificationLite$ErrorNotification;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :goto_0
    const/4 p0, 0x0

    .line 19
    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_2
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public final onCleared()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->stateItemsDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;->feedGroupItemsDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
