.class public final Landroidx/camera/camera2/pipe/compat/AndroidCameraState;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final _state:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final attemptNumber:I

.field public final attemptTimestampNanos:J

.field public final audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

.field public final camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

.field public final camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

.field public final cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

.field public final cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

.field public final cameraId:Ljava/lang/String;

.field public final debugId:I

.field public final interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field public final interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

.field public final lock:Ljava/lang/Object;

.field public final metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field public openTimestampNanos:Landroidx/camera/camera2/pipe/core/TimestampNs;

.field public opening:Z

.field public pendingClose:Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

.field public final requestTimestampNanos:J

.field public shouldDelayFinalizing:Z

.field public final threads:Landroidx/camera/camera2/pipe/core/Threads;

.field public final timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraMetadata;IJLandroidx/camera/camera2/pipe/core/SystemTimeSource;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroidx/cardview/widget/CardView$1;)V
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
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 31
    .line 32
    iput p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptNumber:I

    .line 33
    .line 34
    iput-wide p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptTimestampNanos:J

    .line 35
    .line 36
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 37
    .line 38
    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 39
    .line 40
    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 41
    .line 42
    iput-object p9, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 43
    .line 44
    iput-object p10, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 45
    .line 46
    iput-object p11, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 47
    .line 48
    iput-object p12, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 49
    .line 50
    iput-object p13, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

    .line 51
    .line 52
    sget-object p2, Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;->androidCameraDebugIds:Lkotlinx/atomicfu/AtomicInt;

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    sget-object p6, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 58
    .line 59
    invoke-virtual {p6, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    iput p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->debugId:I

    .line 64
    .line 65
    new-instance p2, Ljava/lang/Object;

    .line 66
    .line 67
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    .line 71
    .line 72
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    .line 73
    .line 74
    const/4 p6, 0x1

    .line 75
    invoke-direct {p2, p6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 76
    .line 77
    .line 78
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

    .line 79
    .line 80
    sget-object p2, Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;

    .line 81
    .line 82
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 87
    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string p7, "Opening "

    .line 91
    .line 92
    invoke-direct {p2, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string p2, "CXCP"

    .line 107
    .line 108
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    if-ne p3, p6, :cond_0

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 115
    .line 116
    .line 117
    move-result-wide p4

    .line 118
    :goto_0
    iput-wide p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->requestTimestampNanos:J

    .line 119
    .line 120
    return-void
.end method

.method public static shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v1, 0x18

    .line 15
    .line 16
    if-gt v1, v0, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x1d

    .line 19
    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->metadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    .line 25
    .line 26
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_0
    const/4 p0, 0x0

    .line 46
    return p0
.end method


# virtual methods
.method public final close()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraState;

    .line 8
    .line 9
    instance-of v1, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;->cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v2

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-class v1, Landroid/hardware/camera2/CameraDevice;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/hardware/camera2/CameraDevice;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object v0, v2

    .line 36
    :goto_1
    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    .line 37
    .line 38
    sget-object v3, Landroidx/camera/camera2/pipe/compat/ClosedReason;->APP_CLOSED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 39
    .line 40
    const/16 v4, 0xe

    .line 41
    .line 42
    invoke-direct {v1, v3, v2, v2, v4}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;-><init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;Landroidx/camera/camera2/pipe/CameraError;Ljava/lang/Exception;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, v1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraState;

    .line 8
    .line 9
    instance-of v1, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;->cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 17
    .line 18
    move-object v4, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v4, v2

    .line 21
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->pendingClose:Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->pendingClose:Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    .line 29
    .line 30
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->opening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    move-object p0, v0

    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_1
    move-object p2, v2

    .line 40
    :goto_1
    monitor-exit v1

    .line 41
    if-eqz p2, :cond_6

    .line 42
    .line 43
    iget-object v0, p2, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v3, p2, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->reason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 49
    .line 50
    sget-object v5, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_EXCEPTION:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 51
    .line 52
    if-eq v3, v5, :cond_2

    .line 53
    .line 54
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 55
    .line 56
    iget-object v5, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 57
    .line 58
    iget v0, v0, Landroidx/camera/camera2/pipe/CameraError;->value:I

    .line 59
    .line 60
    invoke-virtual {v3, v0, v5, v1}, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->onCameraError-3M5Xam4(ILjava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 64
    .line 65
    new-instance v3, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    .line 66
    .line 67
    iget-object v5, p2, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 68
    .line 69
    invoke-direct {v3, v5}, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;-><init>(Landroidx/camera/camera2/pipe/CameraError;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    iget-object v0, p2, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->reason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 79
    .line 80
    sget-object v3, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_CLOSED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 81
    .line 82
    if-eq v0, v3, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 85
    .line 86
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v5, p2, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 89
    .line 90
    invoke-static {v0, v3, v5}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    const/4 v6, 0x1

    .line 95
    if-eqz v5, :cond_3

    .line 96
    .line 97
    invoke-virtual {v0, v3}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->shouldCloseCameraBeforeCreatingCaptureSession-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    move v8, v6

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    move v8, v1

    .line 106
    :goto_2
    if-eqz v8, :cond_4

    .line 107
    .line 108
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    .line 109
    .line 110
    monitor-enter v1

    .line 111
    :try_start_1
    iput-boolean v6, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldDelayFinalizing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    .line 113
    monitor-exit v1

    .line 114
    goto :goto_3

    .line 115
    :catchall_1
    move-exception v0

    .line 116
    move-object p0, v0

    .line 117
    monitor-exit v1

    .line 118
    throw p0

    .line 119
    :cond_4
    :goto_3
    iget-object v3, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 120
    .line 121
    iget-object v7, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 122
    .line 123
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 124
    .line 125
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v5, p2, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 128
    .line 129
    invoke-static {v0, v1, v5}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    move-object v6, p0

    .line 134
    move-object v5, p1

    .line 135
    invoke-virtual/range {v3 .. v9}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->closeCamera(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;ZZ)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_5
    move-object v6, p0

    .line 140
    :goto_4
    iget-object p0, v6, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 141
    .line 142
    invoke-virtual {v6, p2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->computeClosedState(Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :cond_6
    return-void

    .line 153
    :goto_5
    monitor-exit v1

    .line 154
    throw p0
.end method

.method public final computeClosedState(Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)Landroidx/camera/camera2/pipe/compat/CameraStateClosed;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    iget-object v4, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->openTimestampNanos:Landroidx/camera/camera2/pipe/core/TimestampNs;

    .line 15
    .line 16
    iget-wide v5, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->closingTimestamp:J

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    iget-wide v8, v4, Landroidx/camera/camera2/pipe/core/TimestampNs;->value:J

    .line 22
    .line 23
    iget-wide v10, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptTimestampNanos:J

    .line 24
    .line 25
    sub-long/2addr v8, v10

    .line 26
    new-instance v10, Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 27
    .line 28
    invoke-direct {v10, v8, v9}, Landroidx/camera/camera2/pipe/core/DurationNs;-><init>(J)V

    .line 29
    .line 30
    .line 31
    move-object v15, v10

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v15, v7

    .line 34
    :goto_0
    if-eqz v4, :cond_1

    .line 35
    .line 36
    iget-wide v8, v4, Landroidx/camera/camera2/pipe/core/TimestampNs;->value:J

    .line 37
    .line 38
    iget-wide v10, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->requestTimestampNanos:J

    .line 39
    .line 40
    sub-long/2addr v8, v10

    .line 41
    new-instance v10, Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 42
    .line 43
    invoke-direct {v10, v8, v9}, Landroidx/camera/camera2/pipe/core/DurationNs;-><init>(J)V

    .line 44
    .line 45
    .line 46
    move-object/from16 v17, v10

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object/from16 v17, v7

    .line 50
    .line 51
    :goto_1
    if-nez v4, :cond_2

    .line 52
    .line 53
    move-object/from16 v18, v7

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    iget-wide v7, v4, Landroidx/camera/camera2/pipe/core/TimestampNs;->value:J

    .line 57
    .line 58
    sub-long v7, v5, v7

    .line 59
    .line 60
    new-instance v4, Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 61
    .line 62
    invoke-direct {v4, v7, v8}, Landroidx/camera/camera2/pipe/core/DurationNs;-><init>(J)V

    .line 63
    .line 64
    .line 65
    move-object/from16 v18, v4

    .line 66
    .line 67
    :goto_2
    sub-long/2addr v2, v5

    .line 68
    iget-object v13, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->reason:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 69
    .line 70
    iget v4, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptNumber:I

    .line 71
    .line 72
    add-int/lit8 v4, v4, -0x1

    .line 73
    .line 74
    iget-object v5, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 75
    .line 76
    iget-object v1, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->exception:Ljava/lang/Throwable;

    .line 77
    .line 78
    new-instance v11, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    .line 79
    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v14

    .line 84
    new-instance v4, Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 85
    .line 86
    invoke-direct {v4, v2, v3}, Landroidx/camera/camera2/pipe/core/DurationNs;-><init>(J)V

    .line 87
    .line 88
    .line 89
    iget-object v12, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 90
    .line 91
    move-object/from16 v16, v1

    .line 92
    .line 93
    move-object/from16 v19, v4

    .line 94
    .line 95
    move-object/from16 v20, v5

    .line 96
    .line 97
    invoke-direct/range {v11 .. v20}, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;-><init>(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/ClosedReason;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/core/DurationNs;Ljava/lang/Throwable;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/core/DurationNs;Landroidx/camera/camera2/pipe/CameraError;)V

    .line 98
    .line 99
    .line 100
    return-object v11
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v0, "CXCP"

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ": onClosed"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldDelayFinalizing:Z

    .line 53
    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    const-string p1, "CXCP"

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p0, "#onClosed: Delaying finalizing."

    .line 67
    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    monitor-exit v0

    .line 83
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->onFinalized$camera_camera2_pipe(Landroid/hardware/camera2/CameraDevice;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :goto_0
    monitor-exit v0

    .line 88
    throw p0

    .line 89
    :cond_1
    const-string p0, "Check failed."

    .line 90
    .line 91
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, "#onDisconnected"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, ": onDisconnected"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "CXCP"

    .line 62
    .line 63
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 69
    .line 70
    .line 71
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    .line 72
    .line 73
    new-instance v1, Landroidx/camera/camera2/pipe/CameraError;

    .line 74
    .line 75
    const/4 v2, 0x6

    .line 76
    invoke-direct {v1, v2}, Landroidx/camera/camera2/pipe/CameraError;-><init>(I)V

    .line 77
    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    const/16 v3, 0xa

    .line 81
    .line 82
    sget-object v4, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_DISCONNECTED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 83
    .line 84
    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;-><init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;Landroidx/camera/camera2/pipe/CameraError;Ljava/lang/Exception;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 91
    .line 92
    if-eqz p0, :cond_0

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    .line 95
    .line 96
    .line 97
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_1
    const-string p0, "Check failed."

    .line 102
    .line 103
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, "#onError-"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ": onError "

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "CXCP"

    .line 68
    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraDeviceClosed:Ljava/util/concurrent/CountDownLatch;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 75
    .line 76
    .line 77
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    if-eq p2, v1, :cond_1

    .line 81
    .line 82
    const/4 v1, 0x2

    .line 83
    if-eq p2, v1, :cond_1

    .line 84
    .line 85
    const/4 v1, 0x3

    .line 86
    if-eq p2, v1, :cond_1

    .line 87
    .line 88
    const/4 v1, 0x4

    .line 89
    if-eq p2, v1, :cond_1

    .line 90
    .line 91
    const/4 v1, 0x5

    .line 92
    if-ne p2, v1, :cond_0

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    const-string p0, "Unexpected StateCallback error code: "

    .line 96
    .line 97
    invoke-static {p0, p2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_1
    :goto_0
    new-instance v2, Landroidx/camera/camera2/pipe/CameraError;

    .line 106
    .line 107
    invoke-direct {v2, v1}, Landroidx/camera/camera2/pipe/CameraError;-><init>(I)V

    .line 108
    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    const/16 v3, 0xa

    .line 112
    .line 113
    sget-object v4, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_ERROR:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 114
    .line 115
    invoke-direct {v0, v4, v2, v1, v3}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;-><init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;Landroidx/camera/camera2/pipe/CameraError;Ljava/lang/Exception;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 122
    .line 123
    if-eqz p0, :cond_2

    .line 124
    .line 125
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    .line 126
    .line 127
    .line 128
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_3
    const-string p0, "Check failed."

    .line 133
    .line 134
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public final onFinalized$camera_camera2_pipe(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "#onFinalized"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ": onFinalized"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "CXCP"

    .line 45
    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    const/16 v2, 0xe

    .line 53
    .line 54
    sget-object v3, Landroidx/camera/camera2/pipe/compat/ClosedReason;->CAMERA2_CLOSED:Landroidx/camera/camera2/pipe/compat/ClosedReason;

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;-><init>(Landroidx/camera/camera2/pipe/compat/ClosedReason;Landroidx/camera/camera2/pipe/CameraError;Ljava/lang/Exception;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->closeWith(Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 63
    .line 64
    if-eqz p0, :cond_0

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 20

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_7

    .line 17
    .line 18
    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->timeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    new-instance v2, Landroidx/camera/camera2/pipe/core/TimestampNs;

    .line 28
    .line 29
    invoke-direct {v2, v0, v1}, Landroidx/camera/camera2/pipe/core/TimestampNs;-><init>(J)V

    .line 30
    .line 31
    .line 32
    iput-object v2, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->openTimestampNanos:Landroidx/camera/camera2/pipe/core/TimestampNs;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v4, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v4}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v4, "#onOpened"

    .line 49
    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v2, "CXCP"

    .line 61
    .line 62
    iget-wide v4, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->requestTimestampNanos:J

    .line 63
    .line 64
    sub-long v4, v0, v4

    .line 65
    .line 66
    iget-wide v6, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptTimestampNanos:J

    .line 67
    .line 68
    sub-long/2addr v0, v6

    .line 69
    iget v6, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptNumber:I

    .line 70
    .line 71
    iget-object v7, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    const-wide v9, 0x412e848000000000L    # 1000000.0

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    const/4 v11, 0x1

    .line 80
    const/4 v12, 0x0

    .line 81
    if-ne v6, v11, :cond_0

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v1, "Opened "

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v7}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, " in "

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v1, "%.3f ms"

    .line 103
    .line 104
    long-to-double v4, v4

    .line 105
    div-double/2addr v4, v9

    .line 106
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    new-array v5, v11, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object v4, v5, v8

    .line 113
    .line 114
    invoke-static {v5, v11, v12, v1, v0}, Landroidx/camera/core/impl/Config$-CC;->m([Ljava/lang/Object;ILjava/util/Locale;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v13, "Opened "

    .line 122
    .line 123
    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v7}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v7, " in "

    .line 134
    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v7, "%.3f ms"

    .line 139
    .line 140
    long-to-double v4, v4

    .line 141
    div-double/2addr v4, v9

    .line 142
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    new-array v5, v11, [Ljava/lang/Object;

    .line 147
    .line 148
    aput-object v4, v5, v8

    .line 149
    .line 150
    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-static {v12, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v4, " ("

    .line 162
    .line 163
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v4, "%.3f ms"

    .line 167
    .line 168
    long-to-double v0, v0

    .line 169
    div-double/2addr v0, v9

    .line 170
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    new-array v1, v11, [Ljava/lang/Object;

    .line 175
    .line 176
    aput-object v0, v1, v8

    .line 177
    .line 178
    invoke-static {v1, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v12, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v0, " total) after "

    .line 190
    .line 191
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget v0, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->attemptNumber:I

    .line 195
    .line 196
    const-string v1, " attempts."

    .line 197
    .line 198
    invoke-static {v6, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    iget-object v1, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    .line 206
    .line 207
    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->pendingClose:Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;

    .line 209
    .line 210
    if-nez v0, :cond_1

    .line 211
    .line 212
    iput-boolean v11, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->opening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :catchall_0
    move-exception v0

    .line 216
    goto/16 :goto_4

    .line 217
    .line 218
    :cond_1
    :goto_1
    monitor-exit v1

    .line 219
    iget-object v1, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 220
    .line 221
    move-object/from16 v2, p1

    .line 222
    .line 223
    if-eqz v1, :cond_2

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    .line 226
    .line 227
    .line 228
    :cond_2
    if-eqz v0, :cond_4

    .line 229
    .line 230
    iget-object v1, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 231
    .line 232
    iget-object v4, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 233
    .line 234
    iget-object v5, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 235
    .line 236
    iget-object v6, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 237
    .line 238
    iget-object v7, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 239
    .line 240
    invoke-static {v5, v6, v7}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    if-eqz v7, :cond_3

    .line 245
    .line 246
    invoke-virtual {v5, v6}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->shouldCloseCameraBeforeCreatingCaptureSession-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    if-eqz v5, :cond_3

    .line 251
    .line 252
    move v5, v11

    .line 253
    goto :goto_2

    .line 254
    :cond_3
    move v5, v8

    .line 255
    :goto_2
    iget-object v6, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 256
    .line 257
    iget-object v7, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 258
    .line 259
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 260
    .line 261
    invoke-static {v6, v7, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    move-object v0, v1

    .line 266
    const/4 v1, 0x0

    .line 267
    invoke-virtual/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->closeCamera(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;ZZ)V

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :cond_4
    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 272
    .line 273
    iget-object v14, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 274
    .line 275
    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 276
    .line 277
    iget-object v2, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 278
    .line 279
    iget-object v4, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

    .line 280
    .line 281
    iget-object v5, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 282
    .line 283
    move-object/from16 v15, p1

    .line 284
    .line 285
    move-object/from16 v16, v0

    .line 286
    .line 287
    move-object v13, v1

    .line 288
    move-object/from16 v17, v2

    .line 289
    .line 290
    move-object/from16 v18, v4

    .line 291
    .line 292
    move-object/from16 v19, v5

    .line 293
    .line 294
    invoke-direct/range {v13 .. v19}, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/cardview/widget/CardView$1;Landroidx/camera/camera2/pipe/core/Threads;)V

    .line 295
    .line 296
    .line 297
    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;->addListener(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)V

    .line 300
    .line 301
    .line 302
    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 303
    .line 304
    new-instance v2, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    .line 305
    .line 306
    invoke-direct {v2, v1}, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v12, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    iget-object v2, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->lock:Ljava/lang/Object;

    .line 316
    .line 317
    monitor-enter v2

    .line 318
    :try_start_1
    iput-boolean v8, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->opening:Z

    .line 319
    .line 320
    iget-object v7, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->pendingClose:Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 321
    .line 322
    monitor-exit v2

    .line 323
    if-eqz v7, :cond_6

    .line 324
    .line 325
    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 326
    .line 327
    new-instance v2, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    .line 328
    .line 329
    iget-object v4, v7, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 330
    .line 331
    invoke-direct {v2, v4}, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;-><init>(Landroidx/camera/camera2/pipe/CameraError;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v12, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2DeviceCloser:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;

    .line 341
    .line 342
    iget-object v4, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->audioRestrictionController:Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 343
    .line 344
    iget-object v2, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 345
    .line 346
    iget-object v5, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 347
    .line 348
    iget-object v6, v7, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 349
    .line 350
    invoke-static {v2, v5, v6}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    if-eqz v6, :cond_5

    .line 355
    .line 356
    invoke-virtual {v2, v5}, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->shouldCloseCameraBeforeCreatingCaptureSession-EfqyGwQ$camera_camera2_pipe(Ljava/lang/String;)Z

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    if-eqz v2, :cond_5

    .line 361
    .line 362
    move v5, v11

    .line 363
    goto :goto_3

    .line 364
    :cond_5
    move v5, v8

    .line 365
    :goto_3
    iget-object v2, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->camera2Quirks:Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 366
    .line 367
    iget-object v6, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 368
    .line 369
    iget-object v8, v7, Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 370
    .line 371
    invoke-static {v2, v6, v8}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->shouldCreateEmptyCaptureSessionBeforeClosing-_z0IXec(Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraError;)Z

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    move-object/from16 v2, p1

    .line 376
    .line 377
    invoke-virtual/range {v0 .. v6}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCloserImpl;->closeCamera(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraDevice;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;ZZ)V

    .line 378
    .line 379
    .line 380
    iget-object v0, v3, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 381
    .line 382
    invoke-virtual {v3, v7}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->computeClosedState(Landroidx/camera/camera2/pipe/compat/AndroidCameraState$ClosingInfo;)Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v12, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 393
    .line 394
    .line 395
    return-void

    .line 396
    :catchall_1
    move-exception v0

    .line 397
    monitor-exit v2

    .line 398
    throw v0

    .line 399
    :goto_4
    monitor-exit v1

    .line 400
    throw v0

    .line 401
    :cond_7
    const-string v0, "Check failed."

    .line 402
    .line 403
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CameraState-"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->debugId:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
