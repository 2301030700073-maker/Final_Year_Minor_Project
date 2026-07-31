.class public final Landroidx/camera/camera2/impl/FlashControl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# instance fields
.field public volatile _flashMode:I

.field public _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field public _updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

.field public final state3AControl:Landroidx/camera/camera2/impl/State3AControl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Landroidx/camera/camera2/impl/FlashControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    iput p1, p0, Landroidx/camera/camera2/impl/FlashControl;->_flashMode:I

    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    .line 23
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final awaitFlashModeUpdate(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;->label:I

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
    iput v1, v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;-><init>(Landroidx/camera/camera2/impl/FlashControl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const-string v4, "CXCP"

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget p0, v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;->I$0:I

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    const-string p1, "FlashControl: Waiting for any ongoing update to be completed"

    .line 61
    .line 62
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_3
    iget p1, p0, Landroidx/camera/camera2/impl/FlashControl;->_flashMode:I

    .line 66
    .line 67
    iget-object p0, p0, Landroidx/camera/camera2/impl/FlashControl;->_updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 68
    .line 69
    if-eqz p0, :cond_4

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 73
    .line 74
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :goto_1
    iput p1, v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;->I$0:I

    .line 79
    .line 80
    iput v3, v0, Landroidx/camera/camera2/impl/FlashControl$awaitFlashModeUpdate$1;->label:I

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->join(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-ne p0, v1, :cond_5

    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_5
    move p0, p1

    .line 90
    :goto_2
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    const-string p1, "awaitFlashModeUpdate: initialFlashMode = "

    .line 97
    .line 98
    invoke-static {p0, p1, v4}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_6
    new-instance p1, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 104
    .line 105
    .line 106
    return-object p1
.end method

.method public final reset()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroidx/camera/camera2/impl/FlashControl;->_flashMode:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/camera/camera2/impl/FlashControl;->_updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v2, "There is a new flash mode being set or camera was closed"

    .line 9
    .line 10
    invoke-static {v2, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Landroidx/camera/camera2/impl/FlashControl;->_updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v0, v1}, Landroidx/camera/camera2/impl/FlashControl;->setFlashAsync(IZ)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setFlashAsync(IZ)Lkotlinx/coroutines/CompletableDeferredImpl;
    .locals 3

    .line 1
    const-string v0, "CXCP"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "CXCP"

    .line 10
    .line 11
    const-string v1, "setFlashAsync: flashMode = "

    .line 12
    .line 13
    const-string v2, ", requestControl = "

    .line 14
    .line 15
    invoke-static {p1, v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Landroidx/camera/camera2/impl/FlashControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    new-instance v0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 32
    .line 33
    invoke-direct {v0}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Landroidx/camera/camera2/impl/FlashControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 37
    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    iput p1, p0, Landroidx/camera/camera2/impl/FlashControl;->_flashMode:I

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/camera/camera2/impl/FlashControl;->_updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    const-string p2, "There is a new flash mode being set or camera was closed"

    .line 49
    .line 50
    invoke-static {p2, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    const/4 p2, 0x0

    .line 54
    iput-object p2, p0, Landroidx/camera/camera2/impl/FlashControl;->_updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    if-eqz v1, :cond_3

    .line 58
    .line 59
    invoke-static {v0, v1}, Landroidx/room/util/DBUtil;->propagateTo(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_0
    iput-object v0, p0, Landroidx/camera/camera2/impl/FlashControl;->_updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 63
    .line 64
    iget-object p0, p0, Landroidx/camera/camera2/impl/FlashControl;->state3AControl:Landroidx/camera/camera2/impl/State3AControl;

    .line 65
    .line 66
    iget-object p2, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter p2

    .line 69
    :try_start_0
    iput p1, p0, Landroidx/camera/camera2/impl/State3AControl;->_flashMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    monitor-exit p2

    .line 72
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/State3AControl;->update()Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0, v0}, Landroidx/room/util/DBUtil;->propagateTo(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    monitor-exit p2

    .line 82
    throw p0

    .line 83
    :cond_4
    const-string p0, "Camera is not active."

    .line 84
    .line 85
    invoke-static {p0, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 86
    .line 87
    .line 88
    return-object v0
.end method

.method public final setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/impl/FlashControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 2
    .line 3
    iget p1, p0, Landroidx/camera/camera2/impl/FlashControl;->_flashMode:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/impl/FlashControl;->setFlashAsync(IZ)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 7
    .line 8
    .line 9
    return-void
.end method
