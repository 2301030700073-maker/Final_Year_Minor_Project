.class public final Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

.field public final request:Landroidx/camera/camera2/pipe/compat/RequestOpen;

.field public final token:Landroidx/camera/camera2/pipe/core/MutexToken;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/RequestOpen;Landroidx/camera/camera2/pipe/compat/ActiveCamera;Landroidx/camera/camera2/pipe/core/MutexToken;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->request:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->token:Landroidx/camera/camera2/pipe/core/MutexToken;

    .line 9
    .line 10
    return-void
.end method
