.class public final Landroidx/camera/core/impl/AdapterCameraInternal;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/impl/CameraInternal;


# instance fields
.field public final mAdapterCameraControl:Landroidx/camera/core/impl/AdapterCameraControl;

.field public final mAdapterCameraInfo:Landroidx/camera/core/impl/AdapterCameraInfo;

.field public final mCameraInternal:Landroidx/camera/core/impl/CameraInternal;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/AdapterCameraInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mAdapterCameraInfo:Landroidx/camera/core/impl/AdapterCameraInfo;

    .line 7
    .line 8
    iget-object p2, p2, Landroidx/camera/core/impl/AdapterCameraInfo;->mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 9
    .line 10
    new-instance v0, Landroidx/camera/core/impl/AdapterCameraControl;

    .line 11
    .line 12
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p2, Landroidx/biometric/BiometricPrompt;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroidx/biometric/BiometricPrompt;->getSessionProcessor()V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1}, Landroidx/camera/core/impl/AdapterCameraControl;-><init>(Landroidx/camera/core/impl/CameraControlInternal;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mAdapterCameraControl:Landroidx/camera/core/impl/AdapterCameraControl;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final attachUseCases(Ljava/util/Collection;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/camera/core/impl/CameraInternal;->attachUseCases(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final detachUseCases(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/camera/core/impl/CameraInternal;->detachUseCases(Ljava/util/ArrayList;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mAdapterCameraControl:Landroidx/camera/core/impl/AdapterCameraControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCameraInfo()Landroidx/camera/core/CameraInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mAdapterCameraInfo:Landroidx/camera/core/impl/AdapterCameraInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mAdapterCameraInfo:Landroidx/camera/core/impl/AdapterCameraInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCameraState()Landroidx/camera/core/impl/Observable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

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
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getExtendedConfig()Landroidx/camera/core/impl/CameraConfig;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getHasTransform()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getHasTransform()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isFrontFacing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->isFrontFacing()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isRemoved()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->isRemoved()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
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
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseActive(Landroidx/camera/core/UseCase;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUseCaseInactive(Landroidx/camera/core/UseCase;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseInactive(Landroidx/camera/core/UseCase;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUseCaseReset(Landroidx/camera/core/UseCase;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseReset(Landroidx/camera/core/UseCase;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUseCaseUpdated(Landroidx/camera/core/UseCase;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseUpdated(Landroidx/camera/core/UseCase;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final release()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->release()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final setActiveResumingMode(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/camera/core/impl/CameraInternal;->setActiveResumingMode(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/camera/core/impl/CameraInternal;->setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setPrimary(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraInternal;->mCameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/camera/core/impl/CameraInternal;->setPrimary(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
