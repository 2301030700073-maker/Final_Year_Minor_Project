.class public abstract Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zza;,
        Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zzb;,
        Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;,
        Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;
    }
.end annotation


# static fields
.field private static final zzQW:Lcom/google/android/gms/cast/internal/zzl;

.field private static final zzQX:I

.field private static final zzQY:Ljava/lang/Object;

.field private static zzQZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static zzRn:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mNotification:Landroid/app/Notification;

.field private zzQv:Ljava/lang/String;

.field private zzRa:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private zzRb:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

.field private zzRc:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

.field private zzRd:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zzb;

.field private zzRe:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

.field private zzRf:Ljava/lang/Boolean;

.field private zzRg:Landroid/app/PendingIntent;

.field private zzRh:Lcom/google/android/gms/cast/CastDevice;

.field private zzRi:Landroid/view/Display;

.field private zzRj:Landroid/content/Context;

.field private zzRk:Landroid/content/ServiceConnection;

.field private zzRl:Landroid/support/v7/media/MediaRouter;

.field private final zzRm:Landroid/support/v7/media/MediaRouter$Callback;

.field private final zzRo:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "CastRemoteDisplayLocalService"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/zzl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    sget v0, Lcom/google/android/gms/R$id;->cast_notification_id:I

    sput v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQX:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQY:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRm:Landroid/support/v7/media/MediaRouter$Callback;

    new-instance v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zza;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRo:Landroid/os/IBinder;

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;
    .locals 2

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQY:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRn:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static setDebugEnabled()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/zzl;->zzS(Z)V

    return-void
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/CastDevice;",
            "Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;",
            "Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "Starting Service"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzb(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "activityContext is required."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "serviceClass is required."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "applicationId is required."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device is required."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "notificationSettings is required."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callbacks is required."

    invoke-static {p5, v0}, Lcom/google/android/gms/common/internal/zzu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p4}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzd(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "notificationSettings: Either the notification or the notificationPendingIntent must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "Service is already being started, startService has been called twice"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v7, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$2;

    move-object v1, v7

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$2;-><init>(Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Landroid/content/Context;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)V

    const/16 v1, 0x40

    invoke-virtual {p0, v0, v7, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static stopService()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzM(Z)V

    return-void
.end method

.method private static zzM(Z)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "Stopping Service"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQY:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRn:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    if-nez v1, :cond_0

    sget-object p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "Service is already being stopped"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRn:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    const/4 v3, 0x0

    sput-object v3, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRn:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    iget-object p0, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRl:Landroid/support/v7/media/MediaRouter;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v0, "Setting default route"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRl:Landroid/support/v7/media/MediaRouter;

    iget-object v0, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRl:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    :cond_1
    iget-object p0, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRd:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zzb;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v0, "Unregistering notification receiver"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRd:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zzb;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    invoke-direct {v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzlk()V

    invoke-direct {v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzll()V

    invoke-direct {v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzlg()V

    iget-object p0, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRj:Landroid/content/Context;

    if-eqz p0, :cond_3

    iget-object p0, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRk:Landroid/content/ServiceConnection;

    if-eqz p0, :cond_3

    iget-object p0, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRj:Landroid/content/Context;

    iget-object v0, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRk:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v3, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRk:Landroid/content/ServiceConnection;

    iput-object v3, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRj:Landroid/content/Context;

    :cond_3
    iput-object v3, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRc:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    iput-object v3, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQv:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRa:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object v3, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRh:Lcom/google/android/gms/cast/CastDevice;

    iput-object v3, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRe:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    iput-object v3, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    iput-object v3, v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRi:Landroid/view/Display;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private zzN(Z)Landroid/app/Notification;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRe:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-static {v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRe:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-static {v2}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzc(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    sget p1, Lcom/google/android/gms/R$string;->cast_notification_connected_message:I

    sget v3, Lcom/google/android/gms/R$drawable;->cast_ic_notification_on:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/google/android/gms/R$string;->cast_notification_connecting_message:I

    sget v3, Lcom/google/android/gms/R$drawable;->cast_ic_notification_connecting:I

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRh:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v5}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance p1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRe:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzd(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x1080038

    sget v1, Lcom/google/android/gms/R$string;->cast_notification_disconnect:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzlm()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    sget v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQX:I

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->startForeground(ILandroid/app/Notification;)V

    return-object p1
.end method

.method static synthetic zzO(Z)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzM(Z)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRj:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRk:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)Lcom/google/android/gms/cast/CastDevice;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRh:Lcom/google/android/gms/cast/CastDevice;

    return-object p0
.end method

.method private zza(Lcom/google/android/gms/cast/CastDevice;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 3

    new-instance v0, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions$Builder;

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRb:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions$Builder;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;)V

    new-instance p1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$6;

    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$6;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    new-instance v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$7;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$7;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    new-instance v2, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    sget-object p1, Lcom/google/android/gms/cast/CastRemoteDisplay;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions$Builder;->build()Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    return-object p1
.end method

.method private zza(Landroid/view/Display;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRi:Landroid/view/Display;

    iget-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRf:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzN(Z)Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRc:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRc:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    invoke-interface {p1, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;->onRemoteDisplaySessionStarted(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRc:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRi:Landroid/view/Display;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->onCreatePresentation(Landroid/view/Display;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Landroid/view/Display;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)V

    return-void
.end method

.method private zza(Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "startRemoteDisplaySession"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Starting the Cast Remote Display must be done on the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzu;->zzbY(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQY:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRn:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {v3}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzM(Z)V

    sget-object v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v4, "An existing service had not been stopped before starting one"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/cast/internal/zzl;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sput-object p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRn:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p6, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRc:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQv:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRh:Lcom/google/android/gms/cast/CastDevice;

    iput-object p4, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRj:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRk:Landroid/content/ServiceConnection;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRl:Landroid/support/v7/media/MediaRouter;

    new-instance p1, Landroid/support/v7/media/MediaRouteSelector$Builder;

    invoke-direct {p1}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>()V

    iget-object p4, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQv:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object p1

    iget-object p4, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRl:Landroid/support/v7/media/MediaRouter;

    iget-object p5, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRm:Landroid/support/v7/media/MediaRouter$Callback;

    const/4 p6, 0x4

    invoke-virtual {p4, p1, p5, p6}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p1, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    new-instance p1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zzb;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zzb;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRd:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zzb;

    iget-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRd:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$zzb;

    new-instance p5, Landroid/content/IntentFilter;

    const-string p6, "com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT"

    invoke-direct {p5, p6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p5}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-direct {p1, p3, p4}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$1;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRe:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    iget-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRe:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/Notification;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRf:Ljava/lang/Boolean;

    invoke-direct {p0, v2}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzN(Z)Landroid/app/Notification;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRf:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRe:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/Notification;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zza(Lcom/google/android/gms/cast/CastDevice;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRa:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRa:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Landroid/view/Display;)Landroid/view/Display;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRi:Landroid/view/Display;

    return-object p1
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x80

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The service must not be exported, verify the manifest configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Service not found, did you forget to configure it in the manifest?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzlj()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRj:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRk:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzlh()V

    return-void
.end method

.method private zzlg()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRl:Landroid/support/v7/media/MediaRouter;

    if-eqz v0, :cond_0

    const-string v0, "CastRemoteDisplayLocalService calls must be done on the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzu;->zzbY(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRl:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRm:Landroid/support/v7/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    :cond_0
    return-void
.end method

.method private zzlh()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "startRemoteDisplay"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRa:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRa:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplay;->CastRemoteDisplayApi:Lcom/google/android/gms/cast/CastRemoteDisplayApi;

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRa:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/CastRemoteDisplayApi;->startRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$4;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "Unable to start the remote display as the API client is not ready"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private zzli()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "stopRemoteDisplay"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRa:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRa:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplay;->CastRemoteDisplayApi:Lcom/google/android/gms/cast/CastRemoteDisplayApi;

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRa:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayApi;->stopRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$5;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "Unable to stop the remote display as the API client is not ready"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private zzlj()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRc:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRc:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x898

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;->onRemoteDisplaySessionError(Lcom/google/android/gms/common/api/Status;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRc:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Callbacks;

    :cond_0
    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->stopService()V

    return-void
.end method

.method private zzlk()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "stopRemoteDisplaySession"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzli()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->onDismissPresentation()V

    return-void
.end method

.method private zzll()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "Stopping the remote display Service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->stopForeground(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->stopSelf()V

    return-void
.end method

.method private zzlm()Landroid/app/PendingIntent;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRg:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRg:Landroid/app/PendingIntent;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRg:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic zzln()Lcom/google/android/gms/cast/internal/zzl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    return-object v0
.end method

.method static synthetic zzlo()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method protected getDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRi:Landroid/view/Display;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRo:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$3;-><init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRb:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    return-void
.end method

.method public abstract onCreatePresentation(Landroid/view/Display;)V
.end method

.method public abstract onDismissPresentation()V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    sget-object v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "onStartCommand"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    return v0
.end method

.method public updateNotificationSettings(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)V
    .locals 2

    const-string v0, "notificationSettings is required."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRf:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current mode is default notification, notification attribute must not be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzd(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRe:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzd(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRe:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzc(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRe:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzc(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzN(Z)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/Notification;

    move-result-object v0

    const-string v1, "notification is required."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzRe:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$NotificationSettings;Landroid/app/Notification;)Landroid/app/Notification;

    :goto_0
    sget v0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzQX:I

    iget-object v1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method
