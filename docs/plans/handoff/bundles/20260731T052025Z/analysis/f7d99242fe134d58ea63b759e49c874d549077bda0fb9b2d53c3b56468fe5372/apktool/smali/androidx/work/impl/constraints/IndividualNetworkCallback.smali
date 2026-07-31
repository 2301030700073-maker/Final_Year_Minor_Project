.class public final Landroidx/work/impl/constraints/IndividualNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic $r8$classId:I

.field public final onConstraintState:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 10
    iput p1, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->$r8$classId:I

    iput-object p2, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->onConstraintState:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public constructor <init>(Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->onConstraintState:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public notifyIfActiveNetworkOrConnectivityHasChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->onConstraintState:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;

    .line 4
    .line 5
    iget-object v0, v0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->systemConnectivityManager:Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->onConstraintState:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;

    .line 14
    .line 15
    invoke-virtual {v1}, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->isNetworkAvailable()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object p0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->onConstraintState:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;

    .line 22
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v2, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->lastActiveNetwork:Landroid/net/Network;

    .line 25
    .line 26
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->wasConnected:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_2

    .line 47
    :cond_0
    :goto_0
    iput-object v0, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->lastActiveNetwork:Landroid/net/Network;

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi23;->wasConnected:Ljava/lang/Boolean;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0}, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;->notifyOnConnectivityChanged()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p0}, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;->notifyOnConnectivityLost()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :goto_2
    monitor-exit p0

    .line 67
    throw v0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Network available: "

    .line 17
    .line 18
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-array v0, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->onConstraintState:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi24;

    .line 36
    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    .line 40
    iput-object p1, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi24;->isNetworkAvailable:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {p0}, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;->notifyOnConnectivityChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit p0

    .line 49
    throw p1

    .line 50
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "Network available: "

    .line 56
    .line 57
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-array v0, v1, [Ljava/lang/Object;

    .line 68
    .line 69
    invoke-static {p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/work/impl/constraints/IndividualNetworkCallback;->notifyIfActiveNetworkOrConnectivityHasChanged()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_2
    new-instance p1, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    invoke-direct {p1, v0, p0, v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(ILjava/lang/Object;Z)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/bumptech/glide/util/Util;->getUiThreadHandler()Landroid/os/Handler;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onBlockedStatusChanged(Landroid/net/Network;Z)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->onConstraintState:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object v0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "Network blocked status changed: "

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->onConstraintState:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;

    .line 55
    .line 56
    iget-object v0, p1, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    .line 57
    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;->readSystemState()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :cond_0
    check-cast v0, Landroidx/work/impl/constraints/NetworkState;

    .line 65
    .line 66
    iget-object p1, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->onConstraintState:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;

    .line 69
    .line 70
    iget-object v1, p1, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;->lock:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter v1

    .line 73
    :try_start_0
    iget-boolean v2, p1, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;->isBlocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    if-ne v2, p2, :cond_1

    .line 76
    .line 77
    monitor-exit v1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    :try_start_1
    iput-boolean p2, p1, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;->isBlocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    monitor-exit v1

    .line 82
    iget-object p0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->onConstraintState:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;

    .line 85
    .line 86
    iget-boolean v2, v0, Landroidx/work/impl/constraints/NetworkState;->isConnected:Z

    .line 87
    .line 88
    iget-boolean v3, v0, Landroidx/work/impl/constraints/NetworkState;->isValidated:Z

    .line 89
    .line 90
    iget-boolean v4, v0, Landroidx/work/impl/constraints/NetworkState;->isMetered:Z

    .line 91
    .line 92
    iget-boolean v5, v0, Landroidx/work/impl/constraints/NetworkState;->isNotRoaming:Z

    .line 93
    .line 94
    new-instance v1, Landroidx/work/impl/constraints/NetworkState;

    .line 95
    .line 96
    move v6, p2

    .line 97
    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/constraints/NetworkState;-><init>(ZZZZZ)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    move-object p0, v0

    .line 106
    monitor-exit v1

    .line 107
    throw p0

    .line 108
    :cond_2
    :goto_0
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Network capabilities changed: "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, v0, p2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->onConstraintState:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;

    .line 42
    .line 43
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 44
    .line 45
    iget-boolean p2, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;->isBlocked:Z

    .line 46
    .line 47
    invoke-static {p1, p2}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->getActiveNetworkState(Landroid/net/ConnectivityManager;Z)Landroidx/work/impl/constraints/NetworkState;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object p2, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string v0, "NetworkRequestConstraintController onCapabilitiesChanged callback"

    .line 68
    .line 69
    invoke-virtual {p1, p2, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->onConstraintState:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    sget-object p1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;->INSTANCE:Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Network lost: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-array v0, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->onConstraintState:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi24;

    .line 32
    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    .line 36
    iput-object p1, p0, Lnet/thunderbird/core/android/network/ConnectivityManagerApi24;->isNetworkAvailable:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p0}, Lnet/thunderbird/core/android/network/ConnectivityManagerBase;->notifyOnConnectivityLost()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    move-object p1, v0

    .line 45
    monitor-exit p0

    .line 46
    throw p1

    .line 47
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "Network lost: "

    .line 53
    .line 54
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-array v0, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-static {p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/work/impl/constraints/IndividualNetworkCallback;->notifyIfActiveNetworkOrConnectivityHasChanged()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_1
    new-instance p1, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    invoke-direct {p1, v0, p0, v1}, Lcom/takisoft/datetimepicker/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(ILjava/lang/Object;Z)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/bumptech/glide/util/Util;->getUiThreadHandler()Landroid/os/Handler;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    sget-object v0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    .line 95
    .line 96
    const-string v1, "Network connection lost"

    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->onConstraintState:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;

    .line 104
    .line 105
    new-instance v0, Landroidx/work/impl/constraints/NetworkState;

    .line 106
    .line 107
    const/4 v4, 0x0

    .line 108
    const/4 v5, 0x0

    .line 109
    const/4 v1, 0x0

    .line 110
    const/4 v2, 0x0

    .line 111
    const/4 v3, 0x0

    .line 112
    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/constraints/NetworkState;-><init>(ZZZZZ)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->setState(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    sget-object v0, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    .line 127
    .line 128
    const-string v1, "NetworkRequestConstraintController onLost callback"

    .line 129
    .line 130
    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Landroidx/work/impl/constraints/IndividualNetworkCallback;->onConstraintState:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p0, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 136
    .line 137
    new-instance p1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    .line 138
    .line 139
    const/4 v0, 0x7

    .line 140
    invoke-direct {p1, v0}, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;-><init>(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
