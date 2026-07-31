.class public final Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final _lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

.field public final callbackHandler:Landroid/os/Handler;

.field public final cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

.field public final captureSession:Lkotlinx/atomicfu/AtomicRef;

.field public final device:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

.field public final interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

.field public final stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/cardview/widget/CardView$1;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 14
    .line 15
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 16
    .line 17
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 18
    .line 19
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

    .line 20
    .line 21
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->callbackHandler:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-static {p3}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->captureSession:Lkotlinx/atomicfu/AtomicRef;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->captureSession:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    .line 3
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->callbackHandler:Landroid/os/Handler;

    .line 11
    .line 12
    instance-of v1, p1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraConstrainedHighSpeedCaptureSession;

    .line 19
    .line 20
    check-cast p1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 21
    .line 22
    invoke-direct {v1, v2, p1, p2, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraConstrainedHighSpeedCaptureSession;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroid/os/Handler;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-instance v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;

    .line 27
    .line 28
    invoke-direct {v1, v2, p1, p2, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession;-><init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroid/os/Handler;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->captureSession:Lkotlinx/atomicfu/AtomicRef;

    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p2, v1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_2
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->captureSession:Lkotlinx/atomicfu/AtomicRef;

    .line 42
    .line 43
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    check-cast p0, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 49
    .line 50
    return-object p0
.end method

.method public final onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 12
    .line 13
    invoke-virtual {p0, p1, v1}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;->onActive(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object p0, p1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lkotlinx/atomicfu/AtomicRef;

    .line 34
    .line 35
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 54
    .line 55
    iget-object v1, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method public final onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v1, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;->onCaptureQueueEmpty(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v0, 0x1a

    .line 32
    .line 33
    if-lt p0, v0, :cond_0

    .line 34
    .line 35
    iget-object p0, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;

    .line 38
    .line 39
    iget-object p1, p1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lkotlinx/atomicfu/AtomicRef;

    .line 42
    .line 43
    invoke-static {p0, p1}, Landroidx/datastore/core/Api26Impl;->onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;Lkotlinx/atomicfu/AtomicRef;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isErrorEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    const-string p0, "onCaptureQueueEmpty called for unsupported OS version."

    .line 54
    .line 55
    const-string p1, "CXCP"

    .line 56
    .line 57
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;->onClosed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object v1, Lkotlinx/atomicfu/AtomicRef;->FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 45
    .line 46
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Landroidx/cardview/widget/CardView$1;->onClosed-rphkYDA(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;->onConfigureFailed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v1, Lkotlinx/atomicfu/AtomicRef;->FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 42
    .line 43
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Landroidx/cardview/widget/CardView$1;->onConfigureFailed-rphkYDA(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;->onConfigured(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v0, Lkotlinx/atomicfu/AtomicRef;->FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 39
    .line 40
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Landroidx/cardview/widget/CardView$1;->onConfigured-rphkYDA(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 12
    .line 13
    invoke-virtual {p0, p1, v1}, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraCaptureSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;->onReady(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object p0, p1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lkotlinx/atomicfu/AtomicRef;

    .line 34
    .line 35
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 54
    .line 55
    iget-object v1, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method
