.class public Lcom/fsck/k9/service/DatabaseUpgradeService;
.super Landroid/app/Service;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAccountUuid:Ljava/lang/String;

.field public mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field public mProgress:I

.field public mProgressEnd:I

.field public final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mWakeLock:Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/ContextWrapper;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 6
    .line 7
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    const-string p1, "DatabaseUpgradeService"

    .line 2
    .line 3
    iget-object p2, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p2, p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const-string p2, "DatabaseUpgradeService started"

    .line 14
    .line 15
    new-array v1, p3, [Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {p2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-class p2, Lcom/fsck/k9/power/AndroidPowerManager;

    .line 21
    .line 22
    invoke-static {p2}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lcom/fsck/k9/power/AndroidPowerManager;

    .line 27
    .line 28
    new-instance v1, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;

    .line 29
    .line 30
    invoke-direct {v1, p2, p1}, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;-><init>(Lcom/fsck/k9/power/AndroidPowerManager;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mWakeLock:Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;

    .line 34
    .line 35
    iget-object p1, v1, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 36
    .line 37
    monitor-enter p1

    .line 38
    :try_start_0
    iget-object p2, v1, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit p1

    .line 44
    iget-object p1, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mWakeLock:Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;

    .line 45
    .line 46
    const-wide/32 p2, 0x927c0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2, p3}, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->acquire(J)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lkotlin/concurrent/ThreadsKt$thread$thread$1;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lkotlin/concurrent/ThreadsKt$thread$thread$1;-><init>(Lcom/fsck/k9/service/DatabaseUpgradeService;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 58
    .line 59
    .line 60
    return v0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    monitor-exit p1

    .line 63
    throw p0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mAccountUuid:Ljava/lang/String;

    .line 65
    .line 66
    iget p2, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mProgress:I

    .line 67
    .line 68
    iget p3, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mProgressEnd:I

    .line 69
    .line 70
    invoke-virtual {p0, p2, p1, p3}, Lcom/fsck/k9/service/DatabaseUpgradeService;->sendProgressBroadcast(ILjava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    return v0
.end method

.method public final sendProgressBroadcast(ILjava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DatabaseUpgradeService.upgradeProgress"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string v1, "account_uuid"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string p2, "progress"

    .line 17
    .line 18
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string p1, "progress_end"

    .line 22
    .line 23
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
