.class public final Lcom/fsck/k9/controller/push/PushController;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

.field public final accountPushControllerFactory:Lcom/fsck/k9/controller/push/AccountPushControllerFactory;

.field public final alarmPermissionListener:Lcom/fsck/k9/controller/push/PushController$alarmPermissionListener$1;

.field public final alarmPermissionManager:Lcom/fsck/k9/controller/push/AlarmPermissionManager;

.field public final autoSyncListener:Lcom/fsck/k9/controller/push/PushController$autoSyncListener$1;

.field public final autoSyncManager:Lcom/fsck/k9/controller/push/AutoSyncManager;

.field public final backendManager:Lcom/fsck/k9/backend/BackendManager;

.field public final bootCompleteManager:Lcom/fsck/k9/controller/push/BootCompleteManager;

.field public final connectivityChangeListener:Lcom/fsck/k9/controller/push/PushController$connectivityChangeListener$1;

.field public final connectivityManager:Lnet/thunderbird/core/android/network/ConnectivityManagerBase;

.field public final coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public initializationStarted:Z

.field public final lock:Ljava/lang/Object;

.field public final pushEnabledCollectorJobs:Ljava/util/LinkedHashMap;

.field public final pushNotificationManager:Lcom/fsck/k9/notification/PushNotificationManager;

.field public final pushServiceManager:Lcom/fsck/k9/controller/push/PushServiceManager;

.field public final pushers:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lcom/fsck/k9/backend/BackendManager;Lcom/fsck/k9/controller/push/PushServiceManager;Lcom/fsck/k9/controller/push/BootCompleteManager;Lcom/fsck/k9/controller/push/AutoSyncManager;Lcom/fsck/k9/controller/push/AlarmPermissionManager;Lcom/fsck/k9/notification/PushNotificationManager;Lnet/thunderbird/core/android/network/ConnectivityManagerBase;Lcom/fsck/k9/controller/push/AccountPushControllerFactory;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;-><init>(Ljava/util/concurrent/Executor;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/fsck/k9/controller/push/PushController;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/fsck/k9/controller/push/PushController;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/fsck/k9/controller/push/PushController;->backendManager:Lcom/fsck/k9/backend/BackendManager;

    .line 21
    .line 22
    iput-object p4, p0, Lcom/fsck/k9/controller/push/PushController;->pushServiceManager:Lcom/fsck/k9/controller/push/PushServiceManager;

    .line 23
    .line 24
    iput-object p5, p0, Lcom/fsck/k9/controller/push/PushController;->bootCompleteManager:Lcom/fsck/k9/controller/push/BootCompleteManager;

    .line 25
    .line 26
    iput-object p6, p0, Lcom/fsck/k9/controller/push/PushController;->autoSyncManager:Lcom/fsck/k9/controller/push/AutoSyncManager;

    .line 27
    .line 28
    iput-object p7, p0, Lcom/fsck/k9/controller/push/PushController;->alarmPermissionManager:Lcom/fsck/k9/controller/push/AlarmPermissionManager;

    .line 29
    .line 30
    iput-object p8, p0, Lcom/fsck/k9/controller/push/PushController;->pushNotificationManager:Lcom/fsck/k9/notification/PushNotificationManager;

    .line 31
    .line 32
    iput-object p9, p0, Lcom/fsck/k9/controller/push/PushController;->connectivityManager:Lnet/thunderbird/core/android/network/ConnectivityManagerBase;

    .line 33
    .line 34
    iput-object p10, p0, Lcom/fsck/k9/controller/push/PushController;->accountPushControllerFactory:Lcom/fsck/k9/controller/push/AccountPushControllerFactory;

    .line 35
    .line 36
    iput-object p11, p0, Lcom/fsck/k9/controller/push/PushController;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 37
    .line 38
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/fsck/k9/controller/push/PushController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/fsck/k9/controller/push/PushController;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 43
    .line 44
    new-instance p1, Ljava/lang/Object;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/fsck/k9/controller/push/PushController;->lock:Ljava/lang/Object;

    .line 50
    .line 51
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/fsck/k9/controller/push/PushController;->pushers:Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lcom/fsck/k9/controller/push/PushController;->pushEnabledCollectorJobs:Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    new-instance p1, Lcom/fsck/k9/controller/push/PushController$autoSyncListener$1;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Lcom/fsck/k9/controller/push/PushController$autoSyncListener$1;-><init>(Lcom/fsck/k9/controller/push/PushController;)V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/fsck/k9/controller/push/PushController;->autoSyncListener:Lcom/fsck/k9/controller/push/PushController$autoSyncListener$1;

    .line 71
    .line 72
    new-instance p1, Lcom/fsck/k9/controller/push/PushController$connectivityChangeListener$1;

    .line 73
    .line 74
    invoke-direct {p1, p0}, Lcom/fsck/k9/controller/push/PushController$connectivityChangeListener$1;-><init>(Lcom/fsck/k9/controller/push/PushController;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/fsck/k9/controller/push/PushController;->connectivityChangeListener:Lcom/fsck/k9/controller/push/PushController$connectivityChangeListener$1;

    .line 78
    .line 79
    new-instance p1, Lcom/fsck/k9/controller/push/PushController$alarmPermissionListener$1;

    .line 80
    .line 81
    invoke-direct {p1, p0}, Lcom/fsck/k9/controller/push/PushController$alarmPermissionListener$1;-><init>(Lcom/fsck/k9/controller/push/PushController;)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/fsck/k9/controller/push/PushController;->alarmPermissionListener:Lcom/fsck/k9/controller/push/PushController$alarmPermissionListener$1;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final init()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushController;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/fsck/k9/controller/push/PushController;->initializationStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    :try_start_1
    iput-boolean v1, p0, Lcom/fsck/k9/controller/push/PushController;->initializationStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/fsck/k9/controller/push/PushController;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 17
    .line 18
    new-instance v2, Lcom/fsck/k9/controller/push/PushController$init$2;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-direct {v2, p0, v4, v3}, Lcom/fsck/k9/controller/push/PushController$init$2;-><init>(Lcom/fsck/k9/controller/push/PushController;Lkotlin/coroutines/Continuation;I)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x2

    .line 26
    invoke-static {v0, v1, v4, v2, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0

    .line 32
    throw p0
.end method

.method public final launchUpdatePushers()V
    .locals 4

    .line 1
    new-instance v0, Lcom/fsck/k9/controller/push/PushController$init$2;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p0, v2, v1}, Lcom/fsck/k9/controller/push/PushController$init$2;-><init>(Lcom/fsck/k9/controller/push/PushController;Lkotlin/coroutines/Continuation;I)V

    .line 6
    .line 7
    .line 8
    iget-object v3, p0, Lcom/fsck/k9/controller/push/PushController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/controller/push/PushController;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 11
    .line 12
    invoke-static {v3, p0, v2, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final registerConnectivityChangeListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushController;->connectivityManager:Lnet/thunderbird/core/android/network/ConnectivityManagerBase;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/controller/push/PushController;->connectivityChangeListener:Lcom/fsck/k9/controller/push/PushController$connectivityChangeListener$1;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw p0
.end method

.method public final setPushNotificationState(Lcom/fsck/k9/notification/PushNotificationState;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/controller/push/PushController;->pushNotificationManager:Lcom/fsck/k9/notification/PushNotificationManager;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/notification/PushNotificationManager;->notificationState:Lcom/fsck/k9/notification/PushNotificationState;

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/fsck/k9/notification/PushNotificationManager;->isForegroundServiceStarted:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/fsck/k9/notification/PushNotificationManager;->createNotification()Landroid/app/Notification;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/fsck/k9/notification/PushNotificationManager;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1, p1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    :try_start_2
    iget-object v0, p0, Lcom/fsck/k9/notification/PushNotificationManager;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 23
    .line 24
    const-string v1, "PushNotificationManager"

    .line 25
    .line 26
    new-instance v2, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/16 v3, 0xd

    .line 29
    .line 30
    invoke-direct {v2, v3, p0}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1, p1, v2}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    throw p1
.end method

.method public final startServices()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushController;->pushServiceManager:Lcom/fsck/k9/controller/push/PushServiceManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fsck/k9/controller/push/PushServiceManager;->start()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushController;->bootCompleteManager:Lcom/fsck/k9/controller/push/BootCompleteManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "Enable BootCompleteReceiver"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    new-array v3, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v1, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :try_start_0
    iget-object v3, v0, Lcom/fsck/k9/controller/push/BootCompleteManager;->packageManager:Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/fsck/k9/controller/push/BootCompleteManager;->componentName:Landroid/content/ComponentName;

    .line 23
    .line 24
    invoke-virtual {v3, v0, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v3, "Error enabling BootCompleteReceiver"

    .line 30
    .line 31
    new-array v4, v2, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {v0, v3, v4}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushController;->autoSyncManager:Lcom/fsck/k9/controller/push/AutoSyncManager;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/fsck/k9/controller/push/AutoSyncManager;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 39
    .line 40
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->network:Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 47
    .line 48
    iget-object v0, v0, Lnet/thunderbird/core/preference/network/NetworkSettings;->backgroundOps:Lnet/thunderbird/core/preference/BackgroundOps;

    .line 49
    .line 50
    sget-object v3, Lnet/thunderbird/core/preference/BackgroundOps;->WHEN_CHECKED_AUTO_SYNC:Lnet/thunderbird/core/preference/BackgroundOps;

    .line 51
    .line 52
    if-ne v0, v3, :cond_0

    .line 53
    .line 54
    move v0, v1

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    move v0, v2

    .line 57
    :goto_1
    iget-object v3, p0, Lcom/fsck/k9/controller/push/PushController;->autoSyncManager:Lcom/fsck/k9/controller/push/AutoSyncManager;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushController;->autoSyncListener:Lcom/fsck/k9/controller/push/PushController$autoSyncListener$1;

    .line 62
    .line 63
    monitor-enter v3

    .line 64
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-boolean v4, v3, Lcom/fsck/k9/controller/push/AutoSyncManager;->isRegistered:Z

    .line 68
    .line 69
    if-nez v4, :cond_1

    .line 70
    .line 71
    const-string v4, "Registering auto sync listener"

    .line 72
    .line 73
    new-array v2, v2, [Ljava/lang/Object;

    .line 74
    .line 75
    invoke-static {v4, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iput-boolean v1, v3, Lcom/fsck/k9/controller/push/AutoSyncManager;->isRegistered:Z

    .line 79
    .line 80
    iput-object v0, v3, Lcom/fsck/k9/controller/push/AutoSyncManager;->listener:Lcom/fsck/k9/controller/push/PushController$autoSyncListener$1;

    .line 81
    .line 82
    iget-object v0, v3, Lcom/fsck/k9/controller/push/AutoSyncManager;->context:Landroid/content/Context;

    .line 83
    .line 84
    iget-object v1, v3, Lcom/fsck/k9/controller/push/AutoSyncManager;->receiver:Lcom/fsck/k9/backends/AndroidAlarmManager$1;

    .line 85
    .line 86
    iget-object v2, v3, Lcom/fsck/k9/controller/push/AutoSyncManager;->intentFilter:Landroid/content/IntentFilter;

    .line 87
    .line 88
    const/4 v4, 0x4

    .line 89
    invoke-static {v0, v1, v2, v4}, Landroidx/tracing/TraceApi29Impl;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto :goto_3

    .line 95
    :cond_1
    :goto_2
    monitor-exit v3

    .line 96
    goto :goto_4

    .line 97
    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    throw p0

    .line 99
    :cond_2
    invoke-virtual {v3}, Lcom/fsck/k9/controller/push/AutoSyncManager;->unregisterListener()V

    .line 100
    .line 101
    .line 102
    :goto_4
    invoke-virtual {p0}, Lcom/fsck/k9/controller/push/PushController;->registerConnectivityChangeListener()V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushController;->alarmPermissionManager:Lcom/fsck/k9/controller/push/AlarmPermissionManager;

    .line 106
    .line 107
    invoke-interface {v0}, Lcom/fsck/k9/controller/push/AlarmPermissionManager;->canScheduleExactAlarms()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_3

    .line 112
    .line 113
    iget-object v1, p0, Lcom/fsck/k9/controller/push/PushController;->alarmPermissionListener:Lcom/fsck/k9/controller/push/PushController$alarmPermissionListener$1;

    .line 114
    .line 115
    invoke-interface {v0, v1}, Lcom/fsck/k9/controller/push/AlarmPermissionManager;->registerListener(Lcom/fsck/k9/controller/push/PushController$alarmPermissionListener$1;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    iget-object p0, p0, Lcom/fsck/k9/controller/push/PushController;->connectivityManager:Lnet/thunderbird/core/android/network/ConnectivityManagerBase;

    .line 119
    .line 120
    invoke-virtual {p0}, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;->start()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final stopServices()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushController;->pushServiceManager:Lcom/fsck/k9/controller/push/PushServiceManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "PushServiceManager.stop()"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    new-array v3, v2, [Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {v1, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lcom/fsck/k9/controller/push/PushServiceManager;->isServiceStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v0, v0, Lcom/fsck/k9/controller/push/PushServiceManager;->context:Landroid/content/Context;

    .line 24
    .line 25
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 26
    .line 27
    const-class v4, Lcom/fsck/k9/controller/push/PushService;

    .line 28
    .line 29
    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v1, "Exception while trying to stop PushService"

    .line 38
    .line 39
    new-array v4, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {v0, v1, v4}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v0, "..PushService is not running"

    .line 46
    .line 47
    new-array v1, v2, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushController;->bootCompleteManager:Lcom/fsck/k9/controller/push/BootCompleteManager;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const-string v1, "Disable BootCompleteReceiver"

    .line 58
    .line 59
    new-array v4, v2, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {v1, v4}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :try_start_1
    iget-object v1, v0, Lcom/fsck/k9/controller/push/BootCompleteManager;->packageManager:Landroid/content/pm/PackageManager;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/fsck/k9/controller/push/BootCompleteManager;->componentName:Landroid/content/ComponentName;

    .line 67
    .line 68
    const/4 v4, 0x2

    .line 69
    invoke-virtual {v1, v0, v4, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_1
    move-exception v0

    .line 74
    const-string v1, "Error disabling BootCompleteReceiver"

    .line 75
    .line 76
    new-array v2, v2, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-static {v0, v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushController;->autoSyncManager:Lcom/fsck/k9/controller/push/AutoSyncManager;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/fsck/k9/controller/push/AutoSyncManager;->unregisterListener()V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushController;->connectivityManager:Lnet/thunderbird/core/android/network/ConnectivityManagerBase;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/fsck/k9/controller/push/PushController;->connectivityChangeListener:Lcom/fsck/k9/controller/push/PushController$connectivityChangeListener$1;

    .line 89
    .line 90
    monitor-enter v0

    .line 91
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget-object v2, v0, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    .line 99
    monitor-exit v0

    .line 100
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushController;->alarmPermissionManager:Lcom/fsck/k9/controller/push/AlarmPermissionManager;

    .line 101
    .line 102
    invoke-interface {v0}, Lcom/fsck/k9/controller/push/AlarmPermissionManager;->unregisterListener()V

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/fsck/k9/controller/push/PushController;->connectivityManager:Lnet/thunderbird/core/android/network/ConnectivityManagerBase;

    .line 106
    .line 107
    invoke-virtual {p0}, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;->stop()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    throw p0
.end method

.method public final updatePushEnabledListeners(Ljava/util/Set;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/controller/push/PushController;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    move-object v1, p1

    .line 5
    check-cast v1, Ljava/lang/Iterable;

    .line 6
    .line 7
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 27
    .line 28
    iget-object v3, v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/controller/push/PushController;->pushEnabledCollectorJobs:Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x0

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/util/Map$Entry;

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lkotlinx/coroutines/Job;

    .line 71
    .line 72
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_1

    .line 77
    .line 78
    const-string v6, "..Stopping to listen for push enabled changes in account: %s"

    .line 79
    .line 80
    const/4 v7, 0x1

    .line 81
    new-array v7, v7, [Ljava/lang/Object;

    .line 82
    .line 83
    const/4 v8, 0x0

    .line 84
    aput-object v5, v7, v8

    .line 85
    .line 86
    invoke-static {v6, v7}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 90
    .line 91
    .line 92
    invoke-interface {v3, v4}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    .line 97
    .line 98
    new-instance v1, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_4

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    move-object v3, v2

    .line 118
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 119
    .line 120
    iget-object v5, p0, Lcom/fsck/k9/controller/push/PushController;->pushEnabledCollectorJobs:Ljava/util/LinkedHashMap;

    .line 121
    .line 122
    iget-object v3, v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 123
    .line 124
    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-nez v3, :cond_3

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 149
    .line 150
    iget-object v2, p0, Lcom/fsck/k9/controller/push/PushController;->pushEnabledCollectorJobs:Ljava/util/LinkedHashMap;

    .line 151
    .line 152
    iget-object v3, v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 153
    .line 154
    iget-object v5, p0, Lcom/fsck/k9/controller/push/PushController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 155
    .line 156
    iget-object v6, p0, Lcom/fsck/k9/controller/push/PushController;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 157
    .line 158
    new-instance v7, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 159
    .line 160
    const/4 v8, 0x4

    .line 161
    invoke-direct {v7, v1, p0, v4, v8}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 162
    .line 163
    .line 164
    const/4 v1, 0x2

    .line 165
    invoke-static {v5, v6, v4, v7, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_5
    monitor-exit v0

    .line 174
    return-void

    .line 175
    :goto_4
    monitor-exit v0

    .line 176
    throw p0
.end method

.method public final updatePushers()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "PushController.updatePushers()"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {v1, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/fsck/k9/controller/push/PushController;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 12
    .line 13
    check-cast v1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getSettings()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v3, v0, Lcom/fsck/k9/controller/push/PushController;->alarmPermissionManager:Lcom/fsck/k9/controller/push/AlarmPermissionManager;

    .line 20
    .line 21
    invoke-interface {v3}, Lcom/fsck/k9/controller/push/AlarmPermissionManager;->canScheduleExactAlarms()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-object v4, v0, Lcom/fsck/k9/controller/push/PushController;->autoSyncManager:Lcom/fsck/k9/controller/push/AutoSyncManager;

    .line 26
    .line 27
    iget-object v4, v4, Lcom/fsck/k9/controller/push/AutoSyncManager;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 28
    .line 29
    check-cast v4, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget-object v4, v4, Lnet/thunderbird/core/preference/GeneralSettings;->network:Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 36
    .line 37
    iget-object v4, v4, Lnet/thunderbird/core/preference/network/NetworkSettings;->backgroundOps:Lnet/thunderbird/core/preference/BackgroundOps;

    .line 38
    .line 39
    sget-object v5, Lnet/thunderbird/core/preference/BackgroundOps;->WHEN_CHECKED_AUTO_SYNC:Lnet/thunderbird/core/preference/BackgroundOps;

    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    if-ne v4, v5, :cond_0

    .line 43
    .line 44
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    move v4, v6

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v4, v2

    .line 53
    :goto_0
    iget-object v1, v1, Lnet/thunderbird/core/preference/GeneralSettings;->network:Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 54
    .line 55
    iget-object v1, v1, Lnet/thunderbird/core/preference/network/NetworkSettings;->backgroundOps:Lnet/thunderbird/core/preference/BackgroundOps;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/4 v5, 0x2

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    if-eq v1, v6, :cond_2

    .line 68
    .line 69
    if-ne v1, v5, :cond_1

    .line 70
    .line 71
    sget-object v1, Lnet/thunderbird/core/preference/BackgroundSync;->FOLLOW_SYSTEM_AUTO_SYNC:Lnet/thunderbird/core/preference/BackgroundSync;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    sget-object v1, Lnet/thunderbird/core/preference/BackgroundSync;->NEVER:Lnet/thunderbird/core/preference/BackgroundSync;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    sget-object v1, Lnet/thunderbird/core/preference/BackgroundSync;->ALWAYS:Lnet/thunderbird/core/preference/BackgroundSync;

    .line 82
    .line 83
    :goto_1
    sget-object v7, Lnet/thunderbird/core/preference/BackgroundSync;->NEVER:Lnet/thunderbird/core/preference/BackgroundSync;

    .line 84
    .line 85
    if-ne v1, v7, :cond_4

    .line 86
    .line 87
    move v1, v6

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    move v1, v2

    .line 90
    :goto_2
    iget-object v7, v0, Lcom/fsck/k9/controller/push/PushController;->connectivityManager:Lnet/thunderbird/core/android/network/ConnectivityManagerBase;

    .line 91
    .line 92
    invoke-virtual {v7}, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;->isNetworkAvailable()Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    iget-object v8, v0, Lcom/fsck/k9/controller/push/PushController;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 97
    .line 98
    check-cast v8, Lcom/fsck/k9/Preferences;

    .line 99
    .line 100
    invoke-virtual {v8}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    new-instance v9, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 105
    .line 106
    invoke-direct {v9, v5, v8}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    new-instance v8, Lcom/fsck/k9/controller/push/PushController$$ExternalSyntheticLambda0;

    .line 110
    .line 111
    invoke-direct {v8, v0, v2}, Lcom/fsck/k9/controller/push/PushController$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/controller/push/PushController;I)V

    .line 112
    .line 113
    .line 114
    new-instance v10, Lkotlin/sequences/FilteringSequence;

    .line 115
    .line 116
    invoke-direct {v10, v9, v6, v8}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v10}, Lkotlin/sequences/SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    check-cast v8, Ljava/lang/Iterable;

    .line 124
    .line 125
    new-instance v9, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 126
    .line 127
    invoke-direct {v9, v5, v8}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    new-instance v8, Lcom/fsck/k9/controller/push/PushController$$ExternalSyntheticLambda0;

    .line 131
    .line 132
    invoke-direct {v8, v0, v6}, Lcom/fsck/k9/controller/push/PushController$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/controller/push/PushController;I)V

    .line 133
    .line 134
    .line 135
    new-instance v10, Lkotlin/sequences/FilteringSequence;

    .line 136
    .line 137
    invoke-direct {v10, v9, v6, v8}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v10}, Lkotlin/sequences/SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    if-nez v4, :cond_6

    .line 145
    .line 146
    if-nez v1, :cond_6

    .line 147
    .line 148
    if-eqz v7, :cond_6

    .line 149
    .line 150
    if-nez v3, :cond_5

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_5
    move-object v1, v8

    .line 154
    check-cast v1, Ljava/util/Collection;

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_6
    :goto_3
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 158
    .line 159
    :goto_4
    check-cast v1, Ljava/lang/Iterable;

    .line 160
    .line 161
    new-instance v9, Ljava/util/ArrayList;

    .line 162
    .line 163
    const/16 v10, 0xa

    .line 164
    .line 165
    invoke-static {v1, v10}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    if-eqz v10, :cond_7

    .line 181
    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    check-cast v10, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 187
    .line 188
    iget-object v10, v10, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_7
    iget-object v1, v0, Lcom/fsck/k9/controller/push/PushController;->lock:Ljava/lang/Object;

    .line 195
    .line 196
    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v10, v0, Lcom/fsck/k9/controller/push/PushController;->pushers:Ljava/util/LinkedHashMap;

    .line 198
    .line 199
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    move-object v11, v10

    .line 204
    check-cast v11, Ljava/lang/Iterable;

    .line 205
    .line 206
    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    invoke-static {v10, v9}, Lorg/jsoup/helper/Validate;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    move-object v10, v9

    .line 215
    check-cast v10, Ljava/util/Collection;

    .line 216
    .line 217
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    if-nez v10, :cond_9

    .line 222
    .line 223
    const-string v10, "..Stopping PushController for accounts: %s"

    .line 224
    .line 225
    new-array v12, v6, [Ljava/lang/Object;

    .line 226
    .line 227
    aput-object v9, v12, v2

    .line 228
    .line 229
    invoke-static {v10, v12}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    :cond_8
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    .line 238
    .line 239
    move-result v10

    .line 240
    if-eqz v10, :cond_9

    .line 241
    .line 242
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    check-cast v10, Ljava/lang/String;

    .line 247
    .line 248
    iget-object v12, v0, Lcom/fsck/k9/controller/push/PushController;->pushers:Ljava/util/LinkedHashMap;

    .line 249
    .line 250
    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v10

    .line 254
    check-cast v10, Lcom/fsck/k9/controller/push/AccountPushController;

    .line 255
    .line 256
    if-eqz v10, :cond_8

    .line 257
    .line 258
    invoke-virtual {v10}, Lcom/fsck/k9/controller/push/AccountPushController;->stop()V

    .line 259
    .line 260
    .line 261
    goto :goto_6

    .line 262
    :catchall_0
    move-exception v0

    .line 263
    goto/16 :goto_8

    .line 264
    .line 265
    :cond_9
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 266
    .line 267
    .line 268
    move-result v9

    .line 269
    if-nez v9, :cond_a

    .line 270
    .line 271
    const-string v9, "..Starting PushController for accounts: %s"

    .line 272
    .line 273
    new-array v10, v6, [Ljava/lang/Object;

    .line 274
    .line 275
    aput-object v11, v10, v2

    .line 276
    .line 277
    invoke-static {v9, v10}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v10

    .line 288
    if-eqz v10, :cond_a

    .line 289
    .line 290
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    check-cast v10, Ljava/lang/String;

    .line 295
    .line 296
    sget-object v11, Lnet/thunderbird/feature/account/AccountIdFactory;->INSTANCE:Lnet/thunderbird/feature/account/AccountIdFactory;

    .line 297
    .line 298
    invoke-virtual {v11, v10}, Lnet/thunderbird/feature/account/AccountIdFactory;->of(Ljava/lang/String;)Lnet/thunderbird/feature/account/AccountId;

    .line 299
    .line 300
    .line 301
    move-result-object v16

    .line 302
    iget-object v11, v0, Lcom/fsck/k9/controller/push/PushController;->pushers:Ljava/util/LinkedHashMap;

    .line 303
    .line 304
    iget-object v12, v0, Lcom/fsck/k9/controller/push/PushController;->accountPushControllerFactory:Lcom/fsck/k9/controller/push/AccountPushControllerFactory;

    .line 305
    .line 306
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    new-instance v19, Lcom/fsck/k9/controller/push/AccountPushController;

    .line 310
    .line 311
    iget-object v13, v12, Lcom/fsck/k9/controller/push/AccountPushControllerFactory;->backendManager:Lcom/fsck/k9/backend/BackendManager;

    .line 312
    .line 313
    iget-object v15, v12, Lcom/fsck/k9/controller/push/AccountPushControllerFactory;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 314
    .line 315
    new-instance v14, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 316
    .line 317
    move-object/from16 v17, v13

    .line 318
    .line 319
    iget-object v13, v12, Lcom/fsck/k9/controller/push/AccountPushControllerFactory;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 320
    .line 321
    move-object/from16 v18, v14

    .line 322
    .line 323
    iget-object v14, v12, Lcom/fsck/k9/controller/push/AccountPushControllerFactory;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 324
    .line 325
    iget-object v12, v12, Lcom/fsck/k9/controller/push/AccountPushControllerFactory;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 326
    .line 327
    move-object/from16 v20, v17

    .line 328
    .line 329
    move-object/from16 v17, v12

    .line 330
    .line 331
    move-object/from16 v12, v18

    .line 332
    .line 333
    const/16 v18, 0xe

    .line 334
    .line 335
    invoke-direct/range {v12 .. v18}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 336
    .line 337
    .line 338
    move-object v14, v15

    .line 339
    move-object/from16 v13, v20

    .line 340
    .line 341
    move-object v15, v12

    .line 342
    move-object/from16 v12, v19

    .line 343
    .line 344
    invoke-direct/range {v12 .. v17}, Lcom/fsck/k9/controller/push/AccountPushController;-><init>(Lcom/fsck/k9/backend/BackendManager;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lcom/fsck/k9/mailstore/LocalStore$7;Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/core/logging/Logger;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v12}, Lcom/fsck/k9/controller/push/AccountPushController;->start()V

    .line 348
    .line 349
    .line 350
    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_a
    const-string v9, "..Running PushControllers: %s"

    .line 355
    .line 356
    iget-object v10, v0, Lcom/fsck/k9/controller/push/PushController;->pushers:Ljava/util/LinkedHashMap;

    .line 357
    .line 358
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 359
    .line 360
    .line 361
    move-result-object v10

    .line 362
    new-array v11, v6, [Ljava/lang/Object;

    .line 363
    .line 364
    aput-object v10, v11, v2

    .line 365
    .line 366
    invoke-static {v9, v11}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    iget-object v9, v0, Lcom/fsck/k9/controller/push/PushController;->pushers:Ljava/util/LinkedHashMap;

    .line 370
    .line 371
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    .line 372
    .line 373
    .line 374
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit v1

    .line 376
    iget-object v1, v0, Lcom/fsck/k9/controller/push/PushController;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 377
    .line 378
    check-cast v1, Lcom/fsck/k9/Preferences;

    .line 379
    .line 380
    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    new-instance v10, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 385
    .line 386
    invoke-direct {v10, v5, v1}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    new-instance v1, Lcom/fsck/k9/controller/push/PushController$$ExternalSyntheticLambda0;

    .line 390
    .line 391
    invoke-direct {v1, v0, v2}, Lcom/fsck/k9/controller/push/PushController$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/controller/push/PushController;I)V

    .line 392
    .line 393
    .line 394
    new-instance v2, Lkotlin/sequences/FilteringSequence;

    .line 395
    .line 396
    invoke-direct {v2, v10, v6, v1}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 397
    .line 398
    .line 399
    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/push/PushController;->updatePushEnabledListeners(Ljava/util/Set;)V

    .line 404
    .line 405
    .line 406
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-eqz v1, :cond_b

    .line 411
    .line 412
    invoke-virtual {v0}, Lcom/fsck/k9/controller/push/PushController;->stopServices()V

    .line 413
    .line 414
    .line 415
    return-void

    .line 416
    :cond_b
    if-eqz v4, :cond_c

    .line 417
    .line 418
    sget-object v1, Lcom/fsck/k9/notification/PushNotificationState;->WAIT_BACKGROUND_SYNC:Lcom/fsck/k9/notification/PushNotificationState;

    .line 419
    .line 420
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/push/PushController;->setPushNotificationState(Lcom/fsck/k9/notification/PushNotificationState;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Lcom/fsck/k9/controller/push/PushController;->startServices()V

    .line 424
    .line 425
    .line 426
    return-void

    .line 427
    :cond_c
    if-nez v7, :cond_d

    .line 428
    .line 429
    sget-object v1, Lcom/fsck/k9/notification/PushNotificationState;->WAIT_NETWORK:Lcom/fsck/k9/notification/PushNotificationState;

    .line 430
    .line 431
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/push/PushController;->setPushNotificationState(Lcom/fsck/k9/notification/PushNotificationState;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0}, Lcom/fsck/k9/controller/push/PushController;->startServices()V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    :cond_d
    if-nez v3, :cond_e

    .line 439
    .line 440
    sget-object v1, Lcom/fsck/k9/notification/PushNotificationState;->ALARM_PERMISSION_MISSING:Lcom/fsck/k9/notification/PushNotificationState;

    .line 441
    .line 442
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/push/PushController;->setPushNotificationState(Lcom/fsck/k9/notification/PushNotificationState;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0}, Lcom/fsck/k9/controller/push/PushController;->startServices()V

    .line 446
    .line 447
    .line 448
    return-void

    .line 449
    :cond_e
    if-nez v9, :cond_f

    .line 450
    .line 451
    sget-object v1, Lcom/fsck/k9/notification/PushNotificationState;->LISTENING:Lcom/fsck/k9/notification/PushNotificationState;

    .line 452
    .line 453
    invoke-virtual {v0, v1}, Lcom/fsck/k9/controller/push/PushController;->setPushNotificationState(Lcom/fsck/k9/notification/PushNotificationState;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Lcom/fsck/k9/controller/push/PushController;->startServices()V

    .line 457
    .line 458
    .line 459
    return-void

    .line 460
    :cond_f
    invoke-virtual {v0}, Lcom/fsck/k9/controller/push/PushController;->stopServices()V

    .line 461
    .line 462
    .line 463
    return-void

    .line 464
    :goto_8
    monitor-exit v1

    .line 465
    throw v0
.end method
