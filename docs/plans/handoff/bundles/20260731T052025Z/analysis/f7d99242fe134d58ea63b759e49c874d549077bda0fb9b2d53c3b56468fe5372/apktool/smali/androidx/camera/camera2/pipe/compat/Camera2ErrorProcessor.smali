.class public final Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final lock:Ljava/lang/Object;

.field public final virtualCameraStateMap:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->lock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->virtualCameraStateMap:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onCameraError-3M5Xam4(ILjava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->lock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->virtualCameraStateMap:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    new-instance v1, Landroidx/camera/camera2/pipe/CameraId;

    .line 10
    .line 11
    invoke-direct {v1, p2}, Landroidx/camera/camera2/pipe/CameraId;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 25
    .line 26
    new-instance p2, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    .line 27
    .line 28
    invoke-direct {p2, p1, p3}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;-><init>(IZ)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p2}, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;->onGraphError(Landroidx/camera/camera2/pipe/GraphState$GraphStateError;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0

    .line 37
    throw p0
.end method
