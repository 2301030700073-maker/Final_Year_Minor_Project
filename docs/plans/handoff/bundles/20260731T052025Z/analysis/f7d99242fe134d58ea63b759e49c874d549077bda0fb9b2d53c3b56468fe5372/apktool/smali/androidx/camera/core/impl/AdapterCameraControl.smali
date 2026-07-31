.class public final Landroidx/camera/core/impl/AdapterCameraControl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/impl/CameraControlInternal;


# instance fields
.field public final mCameraControlInternal:Landroidx/camera/core/impl/CameraControlInternal;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraControlInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/core/impl/AdapterCameraControl;->mCameraControlInternal:Landroidx/camera/core/impl/CameraControlInternal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addInteropConfig(Landroidx/camera/core/impl/Config;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraControl;->mCameraControlInternal:Landroidx/camera/core/impl/CameraControlInternal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/camera/core/impl/CameraControlInternal;->addInteropConfig(Landroidx/camera/core/impl/Config;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraControl;->mCameraControlInternal:Landroidx/camera/core/impl/CameraControlInternal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/camera/core/impl/CameraControlInternal;->addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearInteropConfig()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraControl;->mCameraControlInternal:Landroidx/camera/core/impl/CameraControlInternal;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraControlInternal;->clearInteropConfig()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearZslConfig()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraControl;->mCameraControlInternal:Landroidx/camera/core/impl/CameraControlInternal;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraControlInternal;->clearZslConfig()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getInteropConfig()Landroidx/camera/core/impl/Config;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraControl;->mCameraControlInternal:Landroidx/camera/core/impl/CameraControlInternal;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraControlInternal;->getInteropConfig()Landroidx/camera/core/impl/Config;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final setFlashMode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraControl;->mCameraControlInternal:Landroidx/camera/core/impl/CameraControlInternal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/camera/core/impl/CameraControlInternal;->setFlashMode(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setScreenFlash(Landroidx/camera/core/ImageCapture$ScreenFlash;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/AdapterCameraControl;->mCameraControlInternal:Landroidx/camera/core/impl/CameraControlInternal;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/camera/core/impl/CameraControlInternal;->setScreenFlash(Landroidx/camera/core/ImageCapture$ScreenFlash;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
