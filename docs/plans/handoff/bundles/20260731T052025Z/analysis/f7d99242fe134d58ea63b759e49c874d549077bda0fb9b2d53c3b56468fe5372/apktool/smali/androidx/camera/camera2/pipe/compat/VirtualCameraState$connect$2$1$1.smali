.class public final Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1$1;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->_cameraAvailability:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 13
    .line 14
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    instance-of v2, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraAvailable;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of v2, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraUnavailable;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    instance-of p1, p1, Landroidx/camera/camera2/pipe/internal/CameraStatusMonitor$CameraStatus$CameraPrioritiesChanged;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->_cameraPriorities:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 37
    .line 38
    invoke-virtual {p0, v1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 43
    .line 44
    if-ne p0, p1, :cond_2

    .line 45
    .line 46
    move-object v1, p0

    .line 47
    :cond_2
    :goto_0
    return-object v1

    .line 48
    :pswitch_0
    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraState;

    .line 49
    .line 50
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1$1;->this$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 53
    .line 54
    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->lock:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter p2

    .line 57
    :try_start_0
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    new-instance v0, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;

    .line 62
    .line 63
    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    .line 64
    .line 65
    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;->cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 66
    .line 67
    check-cast p1, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 68
    .line 69
    invoke-direct {v0, p1}, Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->currentVirtualAndroidCamera:Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;

    .line 73
    .line 74
    new-instance p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    .line 75
    .line 76
    invoke-direct {p1, v0}, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->emitState(Landroidx/camera/camera2/pipe/compat/CameraState;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->emitState(Landroidx/camera/camera2/pipe/compat/CameraState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    :goto_1
    monitor-exit p2

    .line 89
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p0

    .line 92
    :goto_2
    monitor-exit p2

    .line 93
    throw p0

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
