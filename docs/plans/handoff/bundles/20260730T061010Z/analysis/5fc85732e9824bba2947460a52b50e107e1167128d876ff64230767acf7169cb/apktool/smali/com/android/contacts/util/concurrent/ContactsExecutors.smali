.class public Lcom/android/contacts/util/concurrent/ContactsExecutors;
.super Ljava/lang/Object;
.source "ContactsExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerFuture;,
        Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerExecutorService;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final DEFAULT_THREAD_POOL_EXECUTOR:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private static sSimExecutor:Lcom/google/common/util/concurrent/ListeningExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/contacts/util/concurrent/ContactsExecutors;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    .line 38
    sput v0, Lcom/android/contacts/util/concurrent/ContactsExecutors;->CORE_POOL_SIZE:I

    .line 43
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 44
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_0
    sget v0, Lcom/android/contacts/util/concurrent/ContactsExecutors;->CORE_POOL_SIZE:I

    .line 47
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/android/contacts/util/concurrent/ContactsExecutors;->DEFAULT_THREAD_POOL_EXECUTOR:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-void
.end method

.method public static getDefaultThreadPoolExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/contacts/util/concurrent/ContactsExecutors;->DEFAULT_THREAD_POOL_EXECUTOR:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-object v0
.end method

.method public static declared-synchronized getSimReadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;
    .locals 9

    const-class v0, Lcom/android/contacts/util/concurrent/ContactsExecutors;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/android/contacts/util/concurrent/ContactsExecutors;->sSimExecutor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v2, 0x1

    .line 87
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 88
    invoke-static {v1}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/util/concurrent/ContactsExecutors;->sSimExecutor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 90
    :cond_0
    sget-object v1, Lcom/android/contacts/util/concurrent/ContactsExecutors;->sSimExecutor:Lcom/google/common/util/concurrent/ListeningExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static newHandlerExecutor(Landroid/os/Handler;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 70
    new-instance v0, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerExecutorService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/util/concurrent/ContactsExecutors$HandlerExecutorService;-><init>(Landroid/os/Handler;Lcom/android/contacts/util/concurrent/ContactsExecutors$1;)V

    return-object v0
.end method

.method public static newUiThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0}, Lcom/android/contacts/util/concurrent/ContactsExecutors;->newHandlerExecutor(Landroid/os/Handler;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
