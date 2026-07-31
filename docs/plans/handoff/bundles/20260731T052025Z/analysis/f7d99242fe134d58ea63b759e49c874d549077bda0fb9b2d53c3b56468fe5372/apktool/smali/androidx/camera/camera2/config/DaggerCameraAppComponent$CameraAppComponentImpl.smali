.class public final Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

.field public final cameraAppConfig:Lcom/eygraber/uri/Uri$Builder;


# direct methods
.method public constructor <init>(Lcom/eygraber/uri/Uri$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->cameraAppComponentImpl:Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->cameraAppConfig:Lcom/eygraber/uri/Uri$Builder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getCameraDevices()Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->cameraAppConfig:Lcom/eygraber/uri/Uri$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->cameras()Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method
