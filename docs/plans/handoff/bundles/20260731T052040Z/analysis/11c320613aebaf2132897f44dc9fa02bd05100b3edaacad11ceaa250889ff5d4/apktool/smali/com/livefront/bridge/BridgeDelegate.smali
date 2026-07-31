.class public final Lcom/livefront/bridge/BridgeDelegate;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public mActivityCount:I

.field public final mDiskHandler:Lcom/livefront/bridge/disk/FileDiskHandler;

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public mIsConfigChange:Z

.field public mIsFirstCreateCall:Z

.field public final mObjectUuidMap:Ljava/util/WeakHashMap;

.field public final mPendingWriteTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public volatile mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mSavedStateHandler:Lokio/ByteString$Companion;

.field public final mUuidBundleMap:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/App;Ljava/util/concurrent/ExecutorService;Lokio/ByteString$Companion;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/WeakHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/WeakHashMap;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mActivityCount:I

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsConfigChange:Z

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsFirstCreateCall:Z

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mPendingWriteTasksLatch:Ljava/util/concurrent/CountDownLatch;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/livefront/bridge/BridgeDelegate;->mSavedStateHandler:Lokio/ByteString$Companion;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/livefront/bridge/BridgeDelegate;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 39
    .line 40
    new-instance p3, Lcom/livefront/bridge/disk/FileDiskHandler;

    .line 41
    .line 42
    invoke-direct {p3, p1, p2}, Lcom/livefront/bridge/disk/FileDiskHandler;-><init>(Lorg/schabi/newpipe/App;Ljava/util/concurrent/ExecutorService;)V

    .line 43
    .line 44
    .line 45
    iput-object p3, p0, Lcom/livefront/bridge/BridgeDelegate;->mDiskHandler:Lcom/livefront/bridge/disk/FileDiskHandler;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Landroid/app/Application;

    .line 52
    .line 53
    new-instance p3, Lcom/livefront/bridge/BridgeDelegate$4;

    .line 54
    .line 55
    invoke-direct {p3, p0, v0}, Lcom/livefront/bridge/BridgeDelegate$4;-><init>(Ljava/lang/Object;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 59
    .line 60
    .line 61
    const-string p0, "com.livefront.bridge.BridgeDelegate"

    .line 62
    .line 63
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public static access$800(Lcom/livefront/bridge/BridgeDelegate;Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsFirstCreateCall:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsFirstCreateCall:Z

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const-string p0, "activity"

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/app/ActivityManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x1

    .line 29
    if-ne p1, p2, :cond_2

    .line 30
    .line 31
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroid/app/ActivityManager$AppTask;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    iget p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    .line 42
    .line 43
    if-ne p0, p2, :cond_2

    .line 44
    .line 45
    return p2

    .line 46
    :cond_2
    :goto_0
    return v1
.end method
