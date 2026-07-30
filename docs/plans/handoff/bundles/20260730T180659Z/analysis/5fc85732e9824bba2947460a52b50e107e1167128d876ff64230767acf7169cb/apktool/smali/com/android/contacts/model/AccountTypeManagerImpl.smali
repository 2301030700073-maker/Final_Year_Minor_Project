.class Lcom/android/contacts/model/AccountTypeManagerImpl;
.super Lcom/android/contacts/model/AccountTypeManager;
.source "AccountTypeManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/content/SyncStatusObserver;


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountManagerAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountTypesFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/android/contacts/model/account/AccountTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccountsExtractor:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Lcom/android/contacts/model/account/AccountTypeProvider;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private final mFallbackAccountType:Lcom/android/contacts/model/account/AccountType;

.field private final mLocalAccountLocator:Lcom/android/contacts/model/DeviceLocalAccountLocator;

.field private mLocalAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalAccountsFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMainThreadExecutor:Ljava/util/concurrent/Executor;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mTypeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 377
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManager;-><init>()V

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mLocalAccounts:Ljava/util/List;

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManagerAccounts:Ljava/util/List;

    .line 353
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 355
    new-instance v0, Lcom/android/contacts/model/AccountTypeManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/model/AccountTypeManagerImpl$1;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;)V

    iput-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountsExtractor:Lcom/google/common/base/Function;

    .line 365
    new-instance v0, Lcom/android/contacts/model/AccountTypeManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/model/AccountTypeManagerImpl$2;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;)V

    iput-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 378
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    .line 379
    invoke-static {p1}, Lcom/android/contacts/model/DeviceLocalAccountLocator;->create(Landroid/content/Context;)Lcom/android/contacts/model/DeviceLocalAccountLocator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mLocalAccountLocator:Lcom/android/contacts/model/DeviceLocalAccountLocator;

    .line 380
    new-instance v0, Lcom/android/contacts/model/account/AccountTypeProvider;

    invoke-direct {v0, p1}, Lcom/android/contacts/model/account/AccountTypeProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mTypeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;

    .line 381
    new-instance v0, Lcom/android/contacts/model/account/FallbackAccountType;

    invoke-direct {v0, p1}, Lcom/android/contacts/model/account/FallbackAccountType;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/account/AccountType;

    .line 383
    iget-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 385
    invoke-static {}, Lcom/android/contacts/util/concurrent/ContactsExecutors;->getDefaultThreadPoolExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mExecutor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 386
    iget-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/contacts/util/concurrent/ContactsExecutors;->newHandlerExecutor(Landroid/os/Handler;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 389
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 390
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 391
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    .line 392
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 395
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 396
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 401
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 404
    iget-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    const/4 p1, 0x1

    .line 406
    invoke-static {p1, p0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/contacts/model/AccountTypeManagerImpl$3;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/model/AccountTypeManagerImpl$3;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 428
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->loadAccountTypes()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/accounts/AccountManager;
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/contacts/model/AccountTypeManagerImpl;[Landroid/accounts/Account;Lcom/android/contacts/model/account/AccountTypeProvider;)Ljava/util/List;
    .locals 0

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/AccountTypeManagerImpl;->getAccountsWithDataSets([Landroid/accounts/Account;Lcom/android/contacts/model/account/AccountTypeProvider;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/contacts/model/AccountTypeManagerImpl;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->reloadAccountTypes()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/model/AccountTypeManagerImpl;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->reloadLocalAccounts()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/model/AccountTypeManagerImpl;)Lcom/android/contacts/model/account/AccountTypeProvider;
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mTypeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/contacts/model/AccountTypeManagerImpl;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/AccountTypeManagerImpl;->maybeNotifyAccountsUpdated(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/model/AccountTypeManagerImpl;)Lcom/android/contacts/model/DeviceLocalAccountLocator;
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mLocalAccountLocator:Lcom/android/contacts/model/DeviceLocalAccountLocator;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/content/Context;
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getAccountsWithDataSets([Landroid/accounts/Account;Lcom/android/contacts/model/account/AccountTypeProvider;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            "Lcom/android/contacts/model/account/AccountTypeProvider;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 595
    iget-object v4, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/android/contacts/model/account/AccountTypeProvider;->getAccountTypes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 596
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/account/AccountType;

    .line 597
    new-instance v6, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v7, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v8, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v5}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private declared-synchronized getAllAccountsAsyncInternal()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 532
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->startLoadingIfNeeded()V

    .line 533
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mTypeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v2, 0x0

    .line 534
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v4, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountsExtractor:Lcom/google/common/base/Function;

    .line 538
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 537
    invoke-static {v3, v4, v5}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mLocalAccountsFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    aput-object v3, v1, v2

    .line 536
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->successfulAsList([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 535
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 541
    new-instance v2, Lcom/android/contacts/model/AccountTypeManagerImpl$7;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/model/AccountTypeManagerImpl$7;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Lcom/android/contacts/model/account/AccountTypeProvider;)V

    .line 564
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 541
    invoke-static {v1, v2, v0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadAccountTypes()V
    .locals 2

    monitor-enter p0

    .line 469
    :try_start_0
    new-instance v0, Lcom/android/contacts/model/account/AccountTypeProvider;

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/model/account/AccountTypeProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mTypeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;

    .line 471
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mExecutor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/android/contacts/model/AccountTypeManagerImpl$4;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/AccountTypeManagerImpl$4;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadLocalAccounts()V
    .locals 2

    monitor-enter p0

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mExecutor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/android/contacts/model/AccountTypeManagerImpl$6;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/AccountTypeManagerImpl$6;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mLocalAccountsFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private maybeNotifyAccountsUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .line 445
    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 448
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 449
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 450
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->notifyAccountsChanged()V

    return-void
.end method

.method private newAccountsUpdatedCallback(Ljava/util/List;)Lcom/google/common/util/concurrent/FutureCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;)",
            "Lcom/google/common/util/concurrent/FutureCallback<",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;>;"
        }
    .end annotation

    .line 483
    new-instance v0, Lcom/android/contacts/model/AccountTypeManagerImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/model/AccountTypeManagerImpl$5;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Ljava/util/List;)V

    return-object v0
.end method

.method private notifyAccountsChanged()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->checkFilterValidity(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/contacts/model/AccountTypeManager;->BROADCAST_ACCOUNTS_CHANGED:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private declared-synchronized reloadAccountTypes()V
    .locals 3

    monitor-enter p0

    .line 503
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->loadAccountTypes()V

    .line 504
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountsExtractor:Lcom/google/common/base/Function;

    .line 506
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 505
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManagerAccounts:Ljava/util/List;

    .line 507
    invoke-direct {p0, v1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->newAccountsUpdatedCallback(Ljava/util/List;)Lcom/google/common/util/concurrent/FutureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 504
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized reloadAccountTypesIfNeeded()V
    .locals 3

    monitor-enter p0

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mTypeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mTypeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 497
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 496
    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/account/AccountTypeProvider;->shouldUpdate([Landroid/accounts/AuthenticatorDescription;[Landroid/content/SyncAdapterType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->reloadAccountTypes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized reloadLocalAccounts()V
    .locals 3

    monitor-enter p0

    .line 521
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->loadLocalAccounts()V

    .line 522
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mLocalAccountsFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mLocalAccounts:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->newAccountsUpdatedCallback(Ljava/util/List;)Lcom/google/common/util/concurrent/FutureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startLoadingIfNeeded()V
    .locals 1

    monitor-enter p0

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mTypeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypesFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->reloadAccountTypesIfNeeded()V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mLocalAccountsFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_1

    .line 464
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->reloadLocalAccounts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public exists(Lcom/android/contacts/model/account/AccountWithDataSet;)Z
    .locals 6

    .line 694
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 695
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 696
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 697
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mTypeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/account/AccountTypeProvider;->getTypeForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public filterAccountsAsync(Lcom/google/common/base/Predicate;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;>;"
        }
    .end annotation

    .line 570
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->getAllAccountsAsyncInternal()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/model/AccountTypeManagerImpl$8;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/AccountTypeManagerImpl$8;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Lcom/google/common/base/Predicate;)V

    iget-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mExecutor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-static {v0, v1, p1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public getAccountInfoForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mTypeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/account/AccountTypeProvider;->getTypeForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    if-nez v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/account/AccountType;

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/model/account/AccountType;->wrapAccount(Landroid/content/Context;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;

    move-result-object p1

    return-object p1
.end method

.method public getAccountType(Lcom/android/contacts/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/model/account/AccountType;
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mTypeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;

    iget-object v1, p1, Lcom/android/contacts/model/account/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/contacts/model/account/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/model/account/AccountTypeProvider;->getType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/account/AccountType;

    :goto_0
    return-object p1
.end method

.method public getAccountsAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;>;"
        }
    .end annotation

    .line 528
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->getAllAccountsAsyncInternal()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultGoogleAccount()Landroid/accounts/Account;
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    .line 611
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    .line 613
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 614
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v2, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getDefaultGoogleAccount(Landroid/accounts/AccountManager;Landroid/content/SharedPreferences;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getKindOrFallback(Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 4

    if-eqz p1, :cond_0

    .line 666
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/account/AccountType;

    invoke-virtual {v0, p2}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x3

    const-string v2, "AccountTypeManager"

    .line 675
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mime="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public getWritableGoogleAccounts()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    .line 620
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 621
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 622
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 623
    new-instance v5, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v4, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mTypeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/account/AccountTypeProvider;->getTypeForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 628
    iget-object v6, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6, v5}, Lcom/android/contacts/model/account/AccountType;->wrapAccount(Landroid/content/Context;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public hasNonLocalAccount()Z
    .locals 6

    .line 643
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 647
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 648
    iget-object v5, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mTypeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/android/contacts/model/account/AccountTypeProvider;->supportsContactsSyncing(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 2

    .line 438
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->reloadLocalAccounts()V

    .line 439
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManagerAccounts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mTypeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;

    .line 440
    invoke-direct {p0, p1, v1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->getAccountsWithDataSets([Landroid/accounts/Account;Lcom/android/contacts/model/account/AccountTypeProvider;)Ljava/util/List;

    move-result-object p1

    .line 439
    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->maybeNotifyAccountsUpdated(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onStatusChanged(I)V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->reloadAccountTypesIfNeeded()V

    return-void
.end method
