.class public final Lcom/fsck/k9/controller/push/PushService;
.super Landroid/app/Service;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final pushController$delegate:Lkotlin/Lazy;

.field public final pushNotificationManager$delegate:Lkotlin/Lazy;

.field public final pushServiceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/controller/push/PushService$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/controller/push/PushService$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/controller/push/PushService;I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/fsck/k9/controller/push/PushService;->pushServiceManager$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lcom/fsck/k9/controller/push/PushService$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/controller/push/PushService$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/controller/push/PushService;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/fsck/k9/controller/push/PushService;->pushNotificationManager$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance v0, Lcom/fsck/k9/controller/push/PushService$special$$inlined$inject$default$1;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/controller/push/PushService$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/controller/push/PushService;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/fsck/k9/controller/push/PushService;->pushController$delegate:Lkotlin/Lazy;

    .line 41
    .line 42
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
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "PushService.onCreate()"

    .line 5
    .line 6
    invoke-static {v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    const-string v0, "PushService.onDestroy()"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushService;->pushNotificationManager$delegate:Lkotlin/Lazy;

    .line 10
    .line 11
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/fsck/k9/notification/PushNotificationManager;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iput-boolean v1, v0, Lcom/fsck/k9/notification/PushNotificationManager;->isForegroundServiceStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushService;->pushServiceManager$delegate:Lkotlin/Lazy;

    .line 22
    .line 23
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/fsck/k9/controller/push/PushServiceManager;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const-string v2, "PushServiceManager.setServiceStopped()"

    .line 33
    .line 34
    new-array v3, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v2, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Lcom/fsck/k9/controller/push/PushServiceManager;->isServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    .line 43
    .line 44
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 6
    .line 7
    const-string v3, "PushService.onStartCommand(%s)"

    .line 8
    .line 9
    invoke-static {v3, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 13
    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 p2, 0x1f

    .line 20
    .line 21
    if-ge p1, p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/fsck/k9/controller/push/PushService;->startForeground()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/controller/push/PushService;->startForeground()V
    :try_end_0
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    const-string p2, "Ignoring ForegroundServiceStartNotAllowedException during automatic restart."

    .line 33
    .line 34
    new-array p3, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {p1, p2, p3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object p1, p0, Lcom/fsck/k9/controller/push/PushService;->pushController$delegate:Lkotlin/Lazy;

    .line 40
    .line 41
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/fsck/k9/controller/push/PushController;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/fsck/k9/controller/push/PushController;->init()V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/controller/push/PushService;->startForeground()V

    .line 52
    .line 53
    .line 54
    :goto_1
    iget-object p0, p0, Lcom/fsck/k9/controller/push/PushService;->pushServiceManager$delegate:Lkotlin/Lazy;

    .line 55
    .line 56
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lcom/fsck/k9/controller/push/PushServiceManager;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    const-string p1, "PushServiceManager.setServiceStarted()"

    .line 66
    .line 67
    new-array p2, v2, [Ljava/lang/Object;

    .line 68
    .line 69
    invoke-static {p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/fsck/k9/controller/push/PushServiceManager;->isServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    .line 76
    .line 77
    return v0
.end method

.method public final startForeground()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushService;->pushNotificationManager$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/fsck/k9/notification/PushNotificationManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushService;->pushNotificationManager$delegate:Lkotlin/Lazy;

    .line 13
    .line 14
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/fsck/k9/notification/PushNotificationManager;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    const/4 v1, 0x1

    .line 22
    :try_start_0
    iput-boolean v1, v0, Lcom/fsck/k9/notification/PushNotificationManager;->isForegroundServiceStarted:Z

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/fsck/k9/notification/PushNotificationManager;->createNotification()Landroid/app/Notification;

    .line 25
    .line 26
    .line 27
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit v0

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v3, 0x22

    .line 32
    .line 33
    if-lt v0, v3, :cond_0

    .line 34
    .line 35
    const/high16 v0, 0x40000000    # 2.0f

    .line 36
    .line 37
    invoke-virtual {p0, v1, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    const/16 v3, 0x1d

    .line 42
    .line 43
    if-lt v0, v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, v1, v2, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    invoke-virtual {p0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p0
.end method
