.class public final Lus/shandian/giga/service/DownloadManagerService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lus/shandian/giga/service/DownloadManagerService$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lus/shandian/giga/service/DownloadManagerService$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iput p2, p0, Lus/shandian/giga/service/DownloadManagerService$1;->$r8$classId:I

    iput-object p1, p0, Lus/shandian/giga/service/DownloadManagerService$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget v0, p0, Lus/shandian/giga/service/DownloadManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService$1;->this$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lus/shandian/giga/service/DownloadManagerService;

    .line 13
    .line 14
    sget p1, Lus/shandian/giga/service/DownloadManagerService;->$r8$clinit:I

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lus/shandian/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 7

    .line 1
    iget v0, p0, Lus/shandian/giga/service/DownloadManagerService$1;->$r8$classId:I

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
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService$1;->this$0:Ljava/lang/Object;

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
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService$1;->this$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;

    .line 55
    .line 56
    iget-object v0, p1, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

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
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService$1;->this$0:Ljava/lang/Object;

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
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService$1;->this$0:Ljava/lang/Object;

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
    invoke-virtual {p0, v1}, Lorg/commonmark/node/Node;->setState(Ljava/lang/Object;)V

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
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    .line 1
    iget v0, p0, Lus/shandian/giga/service/DownloadManagerService$1;->$r8$classId:I

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
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService$1;->this$0:Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lorg/commonmark/node/Node;->setState(Ljava/lang/Object;)V

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
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService$1;->this$0:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;

    .line 75
    .line 76
    sget-object p1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;->INSTANCE:Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 6

    .line 1
    iget v0, p0, Lus/shandian/giga/service/DownloadManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "Network connection lost"

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;

    .line 23
    .line 24
    new-instance v0, Landroidx/work/impl/constraints/NetworkState;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/constraints/NetworkState;-><init>(ZZZZZ)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lorg/commonmark/node/Node;->setState(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget-object v0, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    const-string v1, "NetworkRequestConstraintController onLost callback"

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    check-cast p0, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;

    .line 53
    .line 54
    new-instance p1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    .line 55
    .line 56
    const/4 v0, 0x7

    .line 57
    invoke-direct {p1, v0}, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_1
    check-cast p0, Lus/shandian/giga/service/DownloadManagerService;

    .line 65
    .line 66
    sget p1, Lus/shandian/giga/service/DownloadManagerService;->$r8$clinit:I

    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lus/shandian/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
