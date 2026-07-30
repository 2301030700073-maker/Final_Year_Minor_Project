.class public abstract Lcom/android/contacts/util/concurrent/ListenableFutureLoader;
.super Landroid/content/Loader;
.source "ListenableFutureLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/concurrent/ListenableFutureLoader$ForceLoadReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/Loader<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TD;>;"
        }
    .end annotation
.end field

.field private mLoadedData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mReloadFilter:Landroid/content/IntentFilter;

.field private final mUiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-static {}, Lcom/android/contacts/util/concurrent/ContactsExecutors;->newUiThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mUiExecutor:Ljava/util/concurrent/Executor;

    .line 69
    iput-object p2, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mReloadFilter:Landroid/content/IntentFilter;

    .line 70
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/util/concurrent/ListenableFutureLoader;)Ljava/lang/Object;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mLoadedData:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/contacts/util/concurrent/ListenableFutureLoader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mLoadedData:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method protected isSameData(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TD;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract loadData()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TD;>;"
        }
    .end annotation
.end method

.method protected onForceLoad()V
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->loadData()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 94
    new-instance v1, Lcom/android/contacts/util/concurrent/ListenableFutureLoader$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/util/concurrent/ListenableFutureLoader$1;-><init>(Lcom/android/contacts/util/concurrent/ListenableFutureLoader;)V

    iget-object v2, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected onReset()V
    .locals 2

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 127
    iput-object v0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mLoadedData:Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mReloadFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader$ForceLoadReceiver;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/concurrent/ListenableFutureLoader$ForceLoadReceiver;-><init>(Lcom/android/contacts/util/concurrent/ListenableFutureLoader;)V

    iput-object v0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iget-object v1, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mReloadFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mLoadedData:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_2

    .line 84
    invoke-virtual {p0}, Landroid/content/Loader;->takeContentChanged()Z

    .line 85
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Landroid/content/Loader;->takeContentChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 119
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void
.end method
