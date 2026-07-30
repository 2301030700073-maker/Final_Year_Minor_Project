.class public Lcom/android/contacts/list/ProviderStatusWatcher;
.super Landroid/database/ContentObserver;
.source "ProviderStatusWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;,
        Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/contacts/list/ProviderStatusWatcher;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderTask:Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;

.field private mProviderStatus:Ljava/lang/Integer;

.field private final mSignal:Ljava/lang/Object;

.field private final mStartLoadingRunnable:Ljava/lang/Runnable;

.field private mStartRequestedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "status"

    .line 52
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ProviderStatusWatcher;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mListeners:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Lcom/android/contacts/list/ProviderStatusWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ProviderStatusWatcher$1;-><init>(Lcom/android/contacts/list/ProviderStatusWatcher;)V

    iput-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartLoadingRunnable:Ljava/lang/Runnable;

    .line 97
    iput-object p1, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ProviderStatusWatcher;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->startLoading()V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/contacts/list/ProviderStatusWatcher;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ProviderStatusWatcher;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/contacts/list/ProviderStatusWatcher;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mProviderStatus:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/list/ProviderStatusWatcher;)Ljava/lang/Object;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/contacts/list/ProviderStatusWatcher;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->notifyListeners()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/contacts/list/ProviderStatusWatcher;Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;)Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mLoaderTask:Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;

    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ProviderStatusWatcher;
    .locals 2

    const-class v0, Lcom/android/contacts/list/ProviderStatusWatcher;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/android/contacts/list/ProviderStatusWatcher;->sInstance:Lcom/android/contacts/list/ProviderStatusWatcher;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/contacts/list/ProviderStatusWatcher;->sInstance:Lcom/android/contacts/list/ProviderStatusWatcher;

    .line 92
    :cond_0
    sget-object p0, Lcom/android/contacts/list/ProviderStatusWatcher;->sInstance:Lcom/android/contacts/list/ProviderStatusWatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isStarted()Z
    .locals 1

    .line 122
    iget v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartRequestedCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyListeners()V
    .locals 2

    .line 114
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;

    .line 116
    invoke-interface {v1}, Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;->onProviderStatusChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startLoading()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mLoaderTask:Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    new-instance v0, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;-><init>(Lcom/android/contacts/list/ProviderStatusWatcher;Lcom/android/contacts/list/ProviderStatusWatcher$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mLoaderTask:Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;

    .line 212
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private waitForLoaded()V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mProviderStatus:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mLoaderTask:Lcom/android/contacts/list/ProviderStatusWatcher$LoaderTask;

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->startLoading()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mSignal:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 198
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getProviderStatus()I
    .locals 1

    .line 178
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->waitForLoaded()V

    .line 180
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mProviderStatus:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 181
    sget v0, Lcom/android/contacts/compat/ProviderStatusCompat;->STATUS_BUSY:I

    return v0

    .line 184
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 270
    sget-object p1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "ProviderStatusWatcher"

    const-string p2, "Provider status changed."

    .line 273
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object p1, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 276
    iget-object p1, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public start()V
    .locals 3

    .line 130
    iget v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartRequestedCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartRequestedCount:I

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 132
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 133
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->startLoading()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 145
    invoke-direct {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ProviderStatusWatcher"

    const-string v1, "Already stopped"

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :cond_0
    iget v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartRequestedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartRequestedCount:I

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mStartLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    iget-object v0, p0, Lcom/android/contacts/list/ProviderStatusWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method
