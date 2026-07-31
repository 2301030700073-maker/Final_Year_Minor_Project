.class public final Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public cameraGraph:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

.field public final cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/adapter/CameraStateAdapter;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getCameraGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;->cameraGraph:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "cameraGraph"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method
