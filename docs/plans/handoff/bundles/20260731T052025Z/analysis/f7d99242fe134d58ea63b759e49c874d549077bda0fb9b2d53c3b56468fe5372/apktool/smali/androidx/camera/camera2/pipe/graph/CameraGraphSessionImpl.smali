.class public final Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

.field public final debugId:I

.field public final graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

.field public final listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

.field public final parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

.field public final token:Landroidx/camera/camera2/pipe/core/MutexToken;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/MutexToken;Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;)V
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
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/MutexToken;

    .line 23
    .line 24
    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 25
    .line 26
    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    .line 27
    .line 28
    iput-object p5, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    .line 29
    .line 30
    iput-object p6, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    .line 31
    .line 32
    sget-object p1, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImplKt;->cameraGraphSessionIds:Lkotlinx/atomicfu/AtomicInt;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    sget-object p2, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->debugId:I

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;->lock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    monitor-exit v0

    .line 7
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->fetchUpdatedListeners$camera_camera2_pipe()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/MutexToken;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/core/MutexToken;->release()Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setTorchOn()Lkotlinx/coroutines/CompletableDeferredImpl;
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/MutexToken;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/MutexToken;->getReleased()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    .line 11
    .line 12
    iget-object p0, v2, Landroidx/camera/camera2/pipe/graph/Controller3A;->graphState3A:Landroidx/camera/camera2/pipe/graph/GraphState3A;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphState3A;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 15
    .line 16
    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Landroidx/camera/camera2/pipe/graph/State3A;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/State3A;->aeMode:Landroidx/camera/camera2/pipe/AeMode;

    .line 21
    .line 22
    sget-object v0, Landroidx/camera/camera2/pipe/AeMode;->values:Ljava/util/List;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget v3, p0, Landroidx/camera/camera2/pipe/AeMode;->value:I

    .line 29
    .line 30
    if-ne v3, v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    if-nez p0, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    iget p0, p0, Landroidx/camera/camera2/pipe/AeMode;->value:I

    .line 37
    .line 38
    if-nez p0, :cond_3

    .line 39
    .line 40
    :goto_1
    move-object v3, v1

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    :goto_2
    new-instance v1, Landroidx/camera/camera2/pipe/AeMode;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Landroidx/camera/camera2/pipe/AeMode;-><init>(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :goto_3
    new-instance v6, Landroidx/camera/camera2/pipe/FlashMode;

    .line 49
    .line 50
    const/4 p0, 0x2

    .line 51
    invoke-direct {v6, p0}, Landroidx/camera/camera2/pipe/FlashMode;-><init>(I)V

    .line 52
    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    const/16 v10, 0x76

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    invoke-static/range {v2 .. v10}, Landroidx/camera/camera2/pipe/graph/Controller3A;->update3A-169HPGg$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_4
    const-string v0, "Cannot call setTorchOn on "

    .line 67
    .line 68
    const-string v2, " after close."

    .line 69
    .line 70
    invoke-static {p0, v2, v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CameraGraph.Session-"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->debugId:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
