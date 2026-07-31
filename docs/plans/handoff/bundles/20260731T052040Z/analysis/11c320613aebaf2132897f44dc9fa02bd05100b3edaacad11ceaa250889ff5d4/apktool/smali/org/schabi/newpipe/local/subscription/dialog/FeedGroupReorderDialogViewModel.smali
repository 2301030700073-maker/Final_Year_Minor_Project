.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public actionProcessingDisposable:Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

.field public final dialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

.field public final groupsDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

.field public final groupsLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final mutableDialogEventLiveData:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 3

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
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->feedDatabaseManager:Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 13
    .line 14
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    invoke-direct {v1}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->mutableDialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 25
    .line 26
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->groupsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->dialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    iget-object v0, v0, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->feedGroupTable:Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;

    .line 31
    .line 32
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/feed/dao/FeedGroupDAO_Impl;->getAll()Lio/reactivex/rxjava3/core/Flowable;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-direct {v1, v0, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSkip;-><init>(Lio/reactivex/rxjava3/core/Flowable;I)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/core/Flowable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableSubscribeOn;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$feedGroupDisposable$1;

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    invoke-direct {v1, p1, v2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$feedGroupDisposable$1;-><init>(Landroidx/lifecycle/MutableLiveData;I)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 55
    .line 56
    new-instance v2, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 57
    .line 58
    invoke-direct {v2, v1, p1}, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->groupsDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->actionProcessingDisposable:Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->groupsDisposable:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
