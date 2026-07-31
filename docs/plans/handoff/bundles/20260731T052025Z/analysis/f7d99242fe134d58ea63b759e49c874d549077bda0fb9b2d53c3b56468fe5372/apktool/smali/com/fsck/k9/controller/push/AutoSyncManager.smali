.class public final Lcom/fsck/k9/controller/push/AutoSyncManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final context:Landroid/content/Context;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final intentFilter:Landroid/content/IntentFilter;

.field public isRegistered:Z

.field public listener:Lcom/fsck/k9/controller/push/PushController$autoSyncListener$1;

.field public final receiver:Lcom/fsck/k9/backends/AndroidAlarmManager$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/controller/push/AutoSyncManager;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/controller/push/AutoSyncManager;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 7
    .line 8
    new-instance p1, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string p2, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/fsck/k9/controller/push/AutoSyncManager;->intentFilter:Landroid/content/IntentFilter;

    .line 19
    .line 20
    new-instance p1, Lcom/fsck/k9/backends/AndroidAlarmManager$1;

    .line 21
    .line 22
    const/4 p2, 0x6

    .line 23
    invoke-direct {p1, p2, p0}, Lcom/fsck/k9/backends/AndroidAlarmManager$1;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/fsck/k9/controller/push/AutoSyncManager;->receiver:Lcom/fsck/k9/backends/AndroidAlarmManager$1;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final declared-synchronized unregisterListener()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/controller/push/AutoSyncManager;->isRegistered:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "Unregistering auto sync listener"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/fsck/k9/controller/push/AutoSyncManager;->isRegistered:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/fsck/k9/controller/push/AutoSyncManager;->context:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/fsck/k9/controller/push/AutoSyncManager;->receiver:Lcom/fsck/k9/backends/AndroidAlarmManager$1;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method
