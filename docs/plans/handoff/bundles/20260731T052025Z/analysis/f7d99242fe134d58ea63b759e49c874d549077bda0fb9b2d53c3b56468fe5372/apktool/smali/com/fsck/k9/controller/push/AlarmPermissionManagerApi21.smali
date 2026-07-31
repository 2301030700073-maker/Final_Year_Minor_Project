.class public final Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi21;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/controller/push/AlarmPermissionManager;


# virtual methods
.method public final canScheduleExactAlarms()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final registerListener(Lcom/fsck/k9/controller/push/PushController$alarmPermissionListener$1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final unregisterListener()V
    .locals 0

    .line 1
    return-void
.end method
