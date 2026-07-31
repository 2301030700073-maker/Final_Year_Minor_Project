.class public final Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;
.super Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final _lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

.field public final callbackExecutor:Landroidx/camera/camera2/pipe/core/HandlerExecutor;

.field public final cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

.field public final device:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

.field public final extensionSession:Lkotlinx/atomicfu/AtomicRef;

.field public final interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

.field public final stateCallback:Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/cardview/widget/CardView$1;Landroidx/camera/camera2/pipe/core/HandlerExecutor;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 12
    .line 13
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

    .line 14
    .line 15
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->callbackExecutor:Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 16
    .line 17
    invoke-static {p3}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->extensionSession:Lkotlinx/atomicfu/AtomicRef;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final getWrapped(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->extensionSession:Lkotlinx/atomicfu/AtomicRef;

    .line 2
    .line 3
    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->callbackExecutor:Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 15
    .line 16
    invoke-direct {v0, v1, p1, p2, v2}, Landroidx/camera/camera2/pipe/compat/AndroidCameraExtensionSession;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;Landroidx/camera/camera2/pipe/core/HandlerExecutor;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->extensionSession:Lkotlinx/atomicfu/AtomicRef;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-virtual {p1, p2, v0}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->extensionSession:Lkotlinx/atomicfu/AtomicRef;

    .line 30
    .line 31
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    check-cast p0, Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    .line 37
    .line 38
    return-object p0
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraExtensionSession;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onClosed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v1, Lkotlinx/atomicfu/AtomicRef;->FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->onSessionFinalized()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 50
    .line 51
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Landroidx/cardview/widget/CardView$1;->onClosed-rphkYDA(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final onConfigureFailed(Landroid/hardware/camera2/CameraExtensionSession;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onConfigureFailed(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    sget-object v1, Lkotlinx/atomicfu/AtomicRef;->FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->onSessionFinalized()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 47
    .line 48
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Landroidx/cardview/widget/CardView$1;->onConfigureFailed-rphkYDA(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraExtensionSession;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->cameraErrorListener:Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;

    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->getWrapped(Landroid/hardware/camera2/CameraExtensionSession;Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;)Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->stateCallback:Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;->captureSessionState:Landroidx/camera/camera2/pipe/compat/CaptureSessionState;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onConfigured(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->_lastStateCallback:Lkotlinx/atomicfu/AtomicRef;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    sget-object v0, Lkotlinx/atomicfu/AtomicRef;->FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/compat/SessionStateCallback;->onSessionFinalized()V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->interopCaptureSessionListener:Landroidx/cardview/widget/CardView$1;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionStateCallback;->device:Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;->cameraId:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Landroidx/cardview/widget/CardView$1;->onConfigured-rphkYDA(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method
