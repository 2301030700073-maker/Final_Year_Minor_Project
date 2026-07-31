.class public final Landroidx/camera/core/streamsharing/VirtualCamera;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/impl/CameraInternal;


# instance fields
.field public final mParentCamera:Landroidx/camera/core/impl/CameraInternal;

.field public final mStateChangeCallback:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

.field public final mVirtualCameraControl:Landroidx/camera/core/impl/AdapterCameraControl;

.field public final mVirtualCameraInfo:Landroidx/camera/core/streamsharing/VirtualCameraInfo;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/streamsharing/VirtualCameraAdapter;Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mParentCamera:Landroidx/camera/core/impl/CameraInternal;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mStateChangeCallback:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 7
    .line 8
    new-instance p2, Landroidx/camera/core/impl/AdapterCameraControl;

    .line 9
    .line 10
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-direct {p2, p3}, Landroidx/camera/core/impl/AdapterCameraControl;-><init>(Landroidx/camera/core/impl/CameraControlInternal;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mVirtualCameraControl:Landroidx/camera/core/impl/AdapterCameraControl;

    .line 18
    .line 19
    new-instance p2, Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p2, p1}, Landroidx/camera/core/streamsharing/VirtualCameraInfo;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mVirtualCameraInfo:Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final attachUseCases(Ljava/util/Collection;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "Operation not supported by VirtualCamera."

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final detachUseCases(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "Operation not supported by VirtualCamera."

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mVirtualCameraControl:Landroidx/camera/core/impl/AdapterCameraControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCameraInfo()Landroidx/camera/core/CameraInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/streamsharing/VirtualCamera;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mVirtualCameraInfo:Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCameraState()Landroidx/camera/core/impl/Observable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mParentCamera:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getCameraState()Landroidx/camera/core/impl/Observable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getExtendedConfig()Landroidx/camera/core/impl/CameraConfig;
    .locals 0

    .line 1
    sget-object p0, Landroidx/camera/core/impl/CameraConfigs;->DEFAULT_CAMERA_CONFIG:Landroidx/biometric/BiometricPrompt;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHasTransform()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isFrontFacing()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/streamsharing/VirtualCamera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/camera/core/impl/ForwardingCameraInfo;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/camera/core/impl/ForwardingCameraInfo;->getLensFacing()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final synthetic isRemoved()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final synthetic onRemoved()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUseCaseActive(Landroidx/camera/core/UseCase;)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/jsoup/helper/Validate;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mStateChangeCallback:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->onUseCaseActive(Landroidx/camera/core/UseCase;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onUseCaseInactive(Landroidx/camera/core/UseCase;)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/jsoup/helper/Validate;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mStateChangeCallback:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->onUseCaseInactive(Landroidx/camera/core/UseCase;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onUseCaseReset(Landroidx/camera/core/UseCase;)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/jsoup/helper/Validate;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mStateChangeCallback:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->onUseCaseReset(Landroidx/camera/core/UseCase;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onUseCaseUpdated(Landroidx/camera/core/UseCase;)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/jsoup/helper/Validate;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mStateChangeCallback:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->onUseCaseUpdated(Landroidx/camera/core/UseCase;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final release()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Operation not supported by VirtualCamera."

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final synthetic setActiveResumingMode(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic setPrimary(Z)V
    .locals 0

    .line 1
    return-void
.end method
