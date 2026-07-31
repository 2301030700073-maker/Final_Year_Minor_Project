.class public final Landroidx/camera/camera2/pipe/compat/Camera2CameraController;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public _isForeground:Z

.field public final camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;

.field public final camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

.field public cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

.field public cameraAvailabilityJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

.field public cameraPrioritiesJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final cameraStatusMonitor:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

.field public final cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

.field public final captureSequenceProcessorFactory:Lcom/fsck/k9/mailstore/LocalStore$7;

.field public final captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

.field public final closedDeferred:Lkotlinx/coroutines/CompletableDeferredImpl;

.field public controllerState:Landroidx/compose/ui/unit/IntRectKt;

.field public currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

.field public currentCameraStateJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

.field public currentSurfaceMap:Ljava/util/Map;

.field public final graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

.field public final graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

.field public lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

.field public lastCameraPrioritiesChangedTs:Landroidx/camera/camera2/pipe/core/TimestampNs;

.field public final lock:Ljava/lang/Object;

.field public restartJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final shutdownListener:Landroidx/camera/camera2/pipe/compat/Camera2Backend;

.field public final streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

.field public final strictMode:Landroidx/camera/camera2/pipe/StrictMode;

.field public final surfaceTracker:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

.field public final threads:Landroidx/camera/camera2/pipe/core/Threads;

.field public final timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Landroidx/camera/camera2/pipe/graph/SurfaceGraph;Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Lcom/fsck/k9/mailstore/LocalStore$7;Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/SystemTimeSource;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/compat/Camera2Backend;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 38
    .line 39
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 40
    .line 41
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    .line 42
    .line 43
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 44
    .line 45
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 46
    .line 47
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->surfaceTracker:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    .line 48
    .line 49
    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraStatusMonitor:Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    .line 50
    .line 51
    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    .line 52
    .line 53
    iput-object p9, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->captureSequenceProcessorFactory:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 54
    .line 55
    iput-object p10, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;

    .line 56
    .line 57
    iput-object p11, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    .line 58
    .line 59
    iput-object p12, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 60
    .line 61
    iput-object p13, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 62
    .line 63
    iput-object p14, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    .line 64
    .line 65
    iput-object p15, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->shutdownListener:Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    .line 66
    .line 67
    move-object/from16 p2, p16

    .line 68
    .line 69
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 70
    .line 71
    new-instance p2, Ljava/lang/Object;

    .line 72
    .line 73
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    .line 77
    .line 78
    const/4 p2, 0x1

    .line 79
    iput-boolean p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->_isForeground:Z

    .line 80
    .line 81
    sget-object p3, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE$5:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 82
    .line 83
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 84
    .line 85
    new-instance p3, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;

    .line 86
    .line 87
    iget-object p4, p4, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 88
    .line 89
    invoke-direct {p3, p4}, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    .line 93
    .line 94
    new-instance p3, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 95
    .line 96
    invoke-direct {p3}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->closedDeferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 100
    .line 101
    new-instance p3, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;

    .line 102
    .line 103
    const/4 p4, 0x0

    .line 104
    const/4 p5, 0x0

    .line 105
    invoke-direct {p3, p0, p5, p4}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/coroutines/Continuation;I)V

    .line 106
    .line 107
    .line 108
    const/4 p4, 0x3

    .line 109
    invoke-static {p1, p5, p5, p3, p4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailabilityJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 114
    .line 115
    new-instance p3, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;

    .line 116
    .line 117
    invoke-direct {p3, p0, p5, p2}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/coroutines/Continuation;I)V

    .line 118
    .line 119
    .line 120
    invoke-static {p1, p5, p5, p3, p4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraPrioritiesJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 125
    .line 126
    return-void
.end method

.method public static final access$onCameraStatusChanged(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;)V
    .locals 3

    .line 1
    const-string v0, "CXCP"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, " ("

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 17
    .line 18
    iget-object v2, v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ") camera status changed: "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    .line 46
    .line 47
    .line 48
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :cond_0
    :try_start_1
    instance-of v1, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraAvailable;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    instance-of v1, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    instance-of p1, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraPrioritiesChanged;

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    new-instance p1, Landroidx/camera/camera2/pipe/core/TimestampNs;

    .line 83
    .line 84
    invoke-direct {p1, v1, v2}, Landroidx/camera/camera2/pipe/core/TimestampNs;-><init>(J)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraPrioritiesChangedTs:Landroidx/camera/camera2/pipe/core/TimestampNs;

    .line 88
    .line 89
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->tryRestart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 94
    :goto_1
    monitor-exit v0

    .line 95
    throw p0
.end method

.method public static final access$onStateClosed(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Landroidx/camera/camera2/pipe/compat/CameraStateClosed;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    iget-object v1, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 13
    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    .line 17
    .line 18
    iget v1, v1, Landroidx/camera/camera2/pipe/CameraError;->value:I

    .line 19
    .line 20
    const/4 v2, 0x6

    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v2, 0x1

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v2, 0x2

    .line 29
    if-ne v1, v2, :cond_3

    .line 30
    .line 31
    :goto_0
    sget-object p1, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE$3:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 34
    .line 35
    const-string p1, "CXCP"

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, " is disconnected"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    sget-object v1, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 61
    .line 62
    iput-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 63
    .line 64
    const-string v1, "CXCP"

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v3, " encountered error: "

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 80
    .line 81
    iget p1, p1, Landroidx/camera/camera2/pipe/CameraError;->value:I

    .line 82
    .line 83
    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraError;->toString-impl(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    sget-object p1, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE$5:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 99
    .line 100
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 101
    .line 102
    :goto_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->surfaceTracker:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->unregisterAllSurfaces()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->tryRestart()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .line 109
    .line 110
    monitor-exit v0

    .line 111
    return-void

    .line 112
    :goto_2
    monitor-exit v0

    .line 113
    throw p0
.end method

.method public static final access$stopLocked(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Ignoring stop(): "

    .line 6
    .line 7
    const-string v2, "CXCP"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, " is already closed"

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 33
    .line 34
    sget-object v3, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE$6:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 43
    .line 44
    sget-object v4, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE$5:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    iput-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 59
    .line 60
    iput-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 61
    .line 62
    iput-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 63
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v4, "Stopping "

    .line 67
    .line 68
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1, v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->detachSessionAndCamera(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCameraState;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p0, " already stopping or stopped"

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public final awaitClosed(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0

    .line 48
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const-string p1, "CXCP"

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v4, "#awaitClosed"

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter p1

    .line 76
    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 77
    .line 78
    sget-object v4, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE$1:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 79
    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    const-string v0, "CXCP"

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p0, "#awaitClosed: Controller is already closed."

    .line 97
    .line 98
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    monitor-exit p1

    .line 111
    return-object p0

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    goto :goto_2

    .line 114
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 115
    .line 116
    sget-object v4, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE$2:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 117
    .line 118
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-nez v2, :cond_4

    .line 123
    .line 124
    const-string v0, "CXCP"

    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string p0, "#awaitClosed: Controller isn\'t closing!"

    .line 135
    .line 136
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .line 148
    monitor-exit p1

    .line 149
    return-object p0

    .line 150
    :cond_4
    monitor-exit p1

    .line 151
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->closedDeferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 152
    .line 153
    iput v3, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$awaitClosed$1;->label:I

    .line 154
    .line 155
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    if-ne p0, v1, :cond_5

    .line 160
    .line 161
    return-object v1

    .line 162
    :cond_5
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 163
    .line 164
    return-object p0

    .line 165
    :goto_2
    monitor-exit p1

    .line 166
    throw p0
.end method

.method public final detachSessionAndCamera(Landroidx/camera/camera2/pipe/compat/CaptureSessionState;Landroidx/camera/camera2/pipe/compat/VirtualCameraState;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, p1, p2, v2, v1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 11
    .line 12
    invoke-static {p2, v2, v2, v0, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 17
    .line 18
    sget-object v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE$2:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    new-instance p2, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda2;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-direct {p2, p0, v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final isClosed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE$2:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 12
    .line 13
    sget-object v0, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE$1:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final startLocked()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "Ignoring start(): "

    .line 8
    .line 9
    const-string v3, "CXCP"

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, " is already closed"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 35
    .line 36
    sget-object v4, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE$4:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 37
    .line 38
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, " is already started"

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    const/4 v1, 0x0

    .line 66
    iput-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    .line 67
    .line 68
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 69
    .line 70
    iget-object v5, v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v6, Landroidx/camera/camera2/pipe/CameraId;

    .line 73
    .line 74
    invoke-direct {v6, v5}, Landroidx/camera/camera2/pipe/CameraId;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v6}, Lorg/jsoup/helper/Validate;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    new-instance v7, Landroidx/camera/camera2/pipe/CameraId;

    .line 82
    .line 83
    invoke-direct {v7, v5}, Landroidx/camera/camera2/pipe/CameraId;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v6, v7}, Lorg/jsoup/helper/Validate;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    new-instance v7, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda2;

    .line 95
    .line 96
    const/4 v8, 0x1

    .line 97
    invoke-direct {v7, v0, v8}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;I)V

    .line 98
    .line 99
    .line 100
    iget-object v8, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->camera2DeviceManager:Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;

    .line 101
    .line 102
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    new-instance v9, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 109
    .line 110
    iget-object v10, v8, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 111
    .line 112
    iget-object v12, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 113
    .line 114
    invoke-direct {v9, v5, v12, v10}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Lkotlinx/coroutines/CoroutineScope;)V

    .line 115
    .line 116
    .line 117
    iget-object v8, v8, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->queue:Lcom/eygraber/uri/Uri$Builder;

    .line 118
    .line 119
    new-instance v10, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 120
    .line 121
    invoke-direct {v10, v9, v6, v12, v7}, Landroidx/camera/camera2/pipe/compat/RequestOpen;-><init>(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Ljava/util/List;Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Landroidx/camera/camera2/pipe/compat/Camera2CameraController$$ExternalSyntheticLambda2;)V

    .line 122
    .line 123
    .line 124
    iget-object v6, v8, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v6, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 127
    .line 128
    invoke-interface {v6, v10}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    instance-of v6, v6, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 133
    .line 134
    if-eqz v6, :cond_2

    .line 135
    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v7, "Camera open request failed for "

    .line 139
    .line 140
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v5}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const/16 v5, 0x21

    .line 151
    .line 152
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    new-instance v5, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    .line 163
    .line 164
    const/16 v6, 0xc

    .line 165
    .line 166
    const/4 v7, 0x0

    .line 167
    invoke-direct {v5, v6, v7}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;-><init>(IZ)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v12, v5}, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->onGraphError(Landroidx/camera/camera2/pipe/GraphState$GraphStateError;)V

    .line 171
    .line 172
    .line 173
    move-object v9, v1

    .line 174
    :cond_2
    if-nez v9, :cond_3

    .line 175
    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v2, "Failed to start "

    .line 179
    .line 180
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v0, ": Open request submission failed"

    .line 187
    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_3
    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 200
    .line 201
    const-string v6, "Check failed."

    .line 202
    .line 203
    if-nez v5, :cond_7

    .line 204
    .line 205
    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 206
    .line 207
    if-nez v5, :cond_6

    .line 208
    .line 209
    iput-object v9, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCamera:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 210
    .line 211
    new-instance v11, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 212
    .line 213
    iget-object v2, v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;->flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    .line 214
    .line 215
    iget-object v5, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 216
    .line 217
    iget-object v6, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 218
    .line 219
    iget-object v13, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->captureSessionFactory:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    .line 220
    .line 221
    iget-object v14, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->captureSequenceProcessorFactory:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 222
    .line 223
    iget-object v15, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraSurfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    .line 224
    .line 225
    iget-object v7, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 226
    .line 227
    const/16 v18, 0x0

    .line 228
    .line 229
    iget-object v8, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 230
    .line 231
    iget-object v9, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    .line 232
    .line 233
    move-object/from16 v17, v2

    .line 234
    .line 235
    move-object/from16 v21, v5

    .line 236
    .line 237
    move-object/from16 v22, v6

    .line 238
    .line 239
    move-object/from16 v16, v7

    .line 240
    .line 241
    move-object/from16 v19, v8

    .line 242
    .line 243
    move-object/from16 v20, v9

    .line 244
    .line 245
    invoke-direct/range {v11 .. v22}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;-><init>(Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Lcom/fsck/k9/mailstore/LocalStore$7;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/core/SystemTimeSource;Landroidx/camera/camera2/pipe/CameraGraph$Flags;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/core/Threads;Lkotlinx/coroutines/CoroutineScope;)V

    .line 246
    .line 247
    .line 248
    iput-object v11, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 249
    .line 250
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSurfaceMap:Ljava/util/Map;

    .line 251
    .line 252
    if-eqz v2, :cond_4

    .line 253
    .line 254
    invoke-virtual {v11, v2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->configureSurfaceMap(Ljava/util/Map;)V

    .line 255
    .line 256
    .line 257
    :cond_4
    iput-object v4, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 258
    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string v4, "Started "

    .line 262
    .line 263
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCameraStateJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 277
    .line 278
    if-eqz v2, :cond_5

    .line 279
    .line 280
    invoke-virtual {v2, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 281
    .line 282
    .line 283
    :cond_5
    new-instance v2, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;

    .line 284
    .line 285
    const/4 v3, 0x2

    .line 286
    invoke-direct {v2, v0, v1, v3}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Lkotlin/coroutines/Continuation;I)V

    .line 287
    .line 288
    .line 289
    const/4 v3, 0x3

    .line 290
    iget-object v4, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 291
    .line 292
    invoke-static {v4, v1, v1, v2, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    iput-object v1, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentCameraStateJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 297
    .line 298
    return-void

    .line 299
    :cond_6
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :cond_7
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Camera2CameraController("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x29

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final tryRestart()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    .line 13
    .line 14
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    .line 15
    .line 16
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraPrioritiesChangedTs:Landroidx/camera/camera2/pipe/core/TimestampNs;

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    instance-of v4, v4, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraAvailable;

    .line 22
    .line 23
    const/4 v6, 0x3

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x1

    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v4, v3, Landroidx/camera/camera2/pipe/CameraError;->value:I

    .line 32
    .line 33
    if-ne v4, v6, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move v4, v8

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    move v4, v7

    .line 39
    :goto_2
    if-nez v5, :cond_3

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    iget-wide v9, v5, Landroidx/camera/camera2/pipe/core/TimestampNs;->value:J

    .line 43
    .line 44
    sub-long v9, v0, v9

    .line 45
    .line 46
    const-wide/32 v11, 0xbebc200

    .line 47
    .line 48
    .line 49
    invoke-static {v9, v10, v11, v12}, Landroidx/camera/camera2/pipe/core/DurationNs;->compareTo-zYRVrok(JJ)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-gtz v5, :cond_4

    .line 54
    .line 55
    move v7, v8

    .line 56
    :cond_4
    :goto_3
    sget-object v5, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE$3:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 57
    .line 58
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const-string v8, "CXCP"

    .line 63
    .line 64
    if-eqz v5, :cond_7

    .line 65
    .line 66
    if-nez v4, :cond_b

    .line 67
    .line 68
    if-eqz v7, :cond_5

    .line 69
    .line 70
    goto :goto_6

    .line 71
    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    .line 73
    const/16 v3, 0x1d

    .line 74
    .line 75
    if-gt v3, v2, :cond_6

    .line 76
    .line 77
    const/16 v3, 0x21

    .line 78
    .line 79
    if-ge v2, v3, :cond_6

    .line 80
    .line 81
    const-string v0, "Quirk for multi-resume activated: Kicking off restart."

    .line 82
    .line 83
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    goto :goto_6

    .line 87
    :cond_6
    :goto_4
    move-object v10, p0

    .line 88
    goto :goto_9

    .line 89
    :cond_7
    sget-object v5, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 90
    .line 91
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_6

    .line 96
    .line 97
    if-eqz v4, :cond_6

    .line 98
    .line 99
    if-nez v3, :cond_8

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_8
    iget v2, v3, Landroidx/camera/camera2/pipe/CameraError;->value:I

    .line 103
    .line 104
    const/16 v4, 0x9

    .line 105
    .line 106
    if-ne v2, v4, :cond_9

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_9
    :goto_5
    if-nez v3, :cond_a

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_a
    iget v2, v3, Landroidx/camera/camera2/pipe/CameraError;->value:I

    .line 113
    .line 114
    const/16 v3, 0x8

    .line 115
    .line 116
    if-ne v2, v3, :cond_b

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_b
    :goto_6
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 120
    .line 121
    iget-object v0, v0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    .line 122
    .line 123
    iget-boolean v0, v0, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->enableRestartDelays:Z

    .line 124
    .line 125
    if-eqz v0, :cond_c

    .line 126
    .line 127
    const-wide/16 v0, 0x2bc

    .line 128
    .line 129
    :goto_7
    move-wide v8, v0

    .line 130
    goto :goto_8

    .line 131
    :cond_c
    const-wide/16 v0, 0x0

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :goto_8
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->restartJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 135
    .line 136
    const/4 v11, 0x0

    .line 137
    if-eqz v0, :cond_d

    .line 138
    .line 139
    invoke-virtual {v0, v11}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 140
    .line 141
    .line 142
    :cond_d
    new-instance v7, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;

    .line 143
    .line 144
    const/4 v12, 0x1

    .line 145
    move-object v10, p0

    .line 146
    invoke-direct/range {v7 .. v12}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;-><init>(JLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 147
    .line 148
    .line 149
    iget-object p0, v10, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 150
    .line 151
    invoke-static {p0, v11, v11, v7, v6}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    iput-object p0, v10, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->restartJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 156
    .line 157
    return-void

    .line 158
    :goto_9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v2, ": Not restarting. Controller state = "

    .line 167
    .line 168
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v2, v10, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 172
    .line 173
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v2, ", last camera error = "

    .line 177
    .line 178
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v2, v10, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    .line 182
    .line 183
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v2, ", camera availability = "

    .line 187
    .line 188
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-object v2, v10, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->cameraAvailability:Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    .line 192
    .line 193
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v2, ", last camera priorities changed = "

    .line 197
    .line 198
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-object v2, v10, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lastCameraPrioritiesChangedTs:Landroidx/camera/camera2/pipe/core/TimestampNs;

    .line 202
    .line 203
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v2, ", current timestamp = "

    .line 207
    .line 208
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/core/TimestampNs;->toString-impl(J)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const/16 v0, 0x2e

    .line 219
    .line 220
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public final updateSurfaceMap(Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSurfaceMap:Ljava/util/Map;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->currentSession:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->configureSurfaceMap(Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0

    .line 25
    throw p0
.end method
