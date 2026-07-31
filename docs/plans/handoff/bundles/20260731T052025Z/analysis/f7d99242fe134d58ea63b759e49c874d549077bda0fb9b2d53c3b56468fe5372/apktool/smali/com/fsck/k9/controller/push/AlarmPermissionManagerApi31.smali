.class public final Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/controller/push/AlarmPermissionManager;


# instance fields
.field public final alarmManager:Landroid/app/AlarmManager;

.field public final context:Landroid/content/Context;

.field public final intentFilter:Landroid/content/IntentFilter;

.field public isRegistered:Z

.field public listener:Lcom/fsck/k9/controller/push/PushController$alarmPermissionListener$1;

.field public final receiver:Lcom/fsck/k9/backends/AndroidAlarmManager$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->alarmManager:Landroid/app/AlarmManager;

    .line 7
    .line 8
    new-instance p1, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string p2, "android.app.action.SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->intentFilter:Landroid/content/IntentFilter;

    .line 19
    .line 20
    new-instance p1, Lcom/fsck/k9/backends/AndroidAlarmManager$1;

    .line 21
    .line 22
    const/4 p2, 0x5

    .line 23
    invoke-direct {p1, p2, p0}, Lcom/fsck/k9/backends/AndroidAlarmManager$1;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->receiver:Lcom/fsck/k9/backends/AndroidAlarmManager$1;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final canScheduleExactAlarms()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->alarmManager:Landroid/app/AlarmManager;

    .line 8
    .line 9
    invoke-static {p0}, Landroidx/core/app/AlarmManagerCompat$Api31Impl;->canScheduleExactAlarms(Landroid/app/AlarmManager;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final declared-synchronized registerListener(Lcom/fsck/k9/controller/push/PushController$alarmPermissionListener$1;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->isRegistered:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Registering alarm permission listener"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->isRegistered:Z

    .line 19
    .line 20
    iput-object p1, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->listener:Lcom/fsck/k9/controller/push/PushController$alarmPermissionListener$1;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->context:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->receiver:Lcom/fsck/k9/backends/AndroidAlarmManager$1;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->intentFilter:Landroid/content/IntentFilter;

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    invoke-static {p1, v0, v1, v2}, Landroidx/tracing/TraceApi29Impl;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p1
.end method

.method public final declared-synchronized unregisterListener()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->isRegistered:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "Unregistering alarm permission listener"

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
    iput-boolean v1, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->isRegistered:Z

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->listener:Lcom/fsck/k9/controller/push/PushController$alarmPermissionListener$1;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->context:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->receiver:Lcom/fsck/k9/backends/AndroidAlarmManager$1;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v0
.end method
