.class public final Landroidx/camera/camera2/pipe/compat/ActiveCamera;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final allCameraIds:Ljava/util/Set;

.field public final androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

.field public current:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

.field public final wakelock:Landroidx/compose/ui/node/NodeChain$Differ;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Ljava/util/Set;Lkotlinx/coroutines/CoroutineScope;Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->allCameraIds:Ljava/util/Set;

    .line 13
    .line 14
    new-instance p1, Landroidx/compose/ui/node/NodeChain$Differ;

    .line 15
    .line 16
    new-instance p2, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    invoke-direct {p2, v0, p4, p0}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p3, p1, Landroidx/compose/ui/node/NodeChain$Differ;->node:Ljava/lang/Object;

    .line 29
    .line 30
    iput-object p2, p1, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance p2, Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p2, p1, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter p2

    .line 40
    :try_start_0
    new-instance p4, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 41
    .line 42
    const/16 v0, 0xa

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-direct {p4, p1, v1, v0}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x3

    .line 49
    invoke-static {p3, v1, v1, p4, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    iput-object p4, p1, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    monitor-exit p2

    .line 56
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->wakelock:Landroidx/compose/ui/node/NodeChain$Differ;

    .line 57
    .line 58
    new-instance p1, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 59
    .line 60
    invoke-direct {p1, p0, v1, v0}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 61
    .line 62
    .line 63
    invoke-static {p3, v1, v1, p1, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit p2

    .line 69
    throw p0
.end method


# virtual methods
.method public final acquire()Landroidx/camera/camera2/pipe/core/MutexToken;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->wakelock:Landroidx/compose/ui/node/NodeChain$Differ;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v2

    .line 13
    :cond_0
    :try_start_1
    iget v1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    add-int/2addr v1, v3

    .line 17
    iput v1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    .line 18
    .line 19
    if-ne v1, v3, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lkotlinx/coroutines/StandaloneCoroutine;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    iput-object v2, p0, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    :cond_2
    monitor-exit v0

    .line 36
    new-instance v0, Landroidx/camera/camera2/pipe/core/MutexToken;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/core/MutexToken;-><init>(Landroidx/compose/ui/node/NodeChain$Differ;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :goto_1
    monitor-exit v0

    .line 43
    throw p0
.end method

.method public final awaitClosed(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/runtime/Recomposer$join$2;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-direct {v0, v2, v1, v2}, Landroidx/compose/runtime/Recomposer$join$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 19
    .line 20
    if-ne p0, v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p0, p1

    .line 24
    :goto_0
    if-ne p0, v0, :cond_1

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    return-object p1
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->wakelock:Landroidx/compose/ui/node/NodeChain$Differ;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain$Differ;->release()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->close()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final connectTo(Landroidx/camera/camera2/pipe/compat/VirtualCameraState;Landroidx/camera/camera2/pipe/core/MutexToken;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->current:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->current:Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->disconnect-TPqeGZw(Landroidx/camera/camera2/pipe/CameraError;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 16
    .line 17
    iget-object v1, p1, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->lock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    iget-boolean v3, p1, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->closed:Z

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/MutexToken;->release()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    :goto_0
    monitor-exit v1

    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    :try_start_1
    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 32
    .line 33
    new-instance v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 34
    .line 35
    const/16 v5, 0x9

    .line 36
    .line 37
    invoke-direct {v4, p0, p1, v2, v5}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x3

    .line 41
    invoke-static {v3, v2, v2, v4, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iput-object p0, p1, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 46
    .line 47
    iput-object p2, p1, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->wakelockToken:Landroidx/camera/camera2/pipe/core/MutexToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :goto_1
    return-object v0

    .line 51
    :goto_2
    monitor-exit v1

    .line 52
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ActiveCamera(cameraId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->cameraId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ")@"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/16 v1, 0x10

    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/text/CharsKt__CharKt;->checkRadix(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method
