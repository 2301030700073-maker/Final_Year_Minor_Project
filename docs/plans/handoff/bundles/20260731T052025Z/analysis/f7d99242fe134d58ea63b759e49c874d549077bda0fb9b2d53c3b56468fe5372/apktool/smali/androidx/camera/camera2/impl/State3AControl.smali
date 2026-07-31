.class public final Landroidx/camera/camera2/impl/State3AControl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;
.implements Landroidx/camera/camera2/impl/UseCaseManager$RunningUseCasesChangeListener;


# instance fields
.field public _flashMode:I

.field public _preferredAeMode:Ljava/lang/Integer;

.field public _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field public _template:I

.field public _tryExternalFlashAeMode:Z

.field public final aeModeDisabler:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

.field public final cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

.field public currentRevision:J

.field public final lock:Ljava/lang/Object;

.field public final pendingSignals:Ljava/util/ArrayList;

.field public final threads:Landroidx/camera/camera2/impl/UseCaseThreads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;Landroidx/camera/camera2/impl/UseCaseThreads;)V
    .locals 0

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
    iput-object p1, p0, Landroidx/camera/camera2/impl/State3AControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/camera/camera2/impl/State3AControl;->aeModeDisabler:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    .line 13
    .line 14
    iput-object p3, p0, Landroidx/camera/camera2/impl/State3AControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 15
    .line 16
    new-instance p1, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/camera/camera2/impl/State3AControl;->pendingSignals:Ljava/util/ArrayList;

    .line 29
    .line 30
    const/4 p1, 0x2

    .line 31
    iput p1, p0, Landroidx/camera/camera2/impl/State3AControl;->_flashMode:I

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput p1, p0, Landroidx/camera/camera2/impl/State3AControl;->_template:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final failAllPendingSignals(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/State3AControl;->pendingSignals:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl;->pendingSignals:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CompletableDeferredImpl;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0

    .line 39
    throw p0
.end method

.method public final getFinalPreferredAeMode(IZLjava/lang/Integer;)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-eqz p1, :cond_2

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    :pswitch_0
    move p1, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p1, 0x3

    .line 16
    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p0, Landroidx/camera/camera2/impl/State3AControl;->aeModeDisabler:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    .line 18
    .line 19
    iget p1, p1, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;->$r8$classId:I

    .line 20
    .line 21
    packed-switch p1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x2

    .line 25
    :goto_0
    const-string p3, "CXCP"

    .line 26
    .line 27
    if-eqz p2, :cond_5

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/camera/camera2/impl/State3AControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 30
    .line 31
    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v1, 0x1c

    .line 39
    .line 40
    const/4 v2, 0x5

    .line 41
    if-lt p2, v1, :cond_3

    .line 42
    .line 43
    invoke-static {p0, v2}, Lkotlin/math/MathKt;->getSupportedAeMode(Landroidx/camera/camera2/pipe/CameraMetadata;I)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-ne p0, v2, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/4 v0, 0x0

    .line 51
    :goto_1
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-static {p3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    const-string p0, "State3AControl.invalidate: trying external flash AE mode."

    .line 60
    .line 61
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_4
    move p1, v2

    .line 65
    :cond_5
    invoke-static {p3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_6

    .line 70
    .line 71
    const-string p0, "State3AControl.getFinalPreferredAeMode: preferAeMode = "

    .line 72
    .line 73
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_6
    return p1

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final getFinalSupportedAeMode()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/State3AControl;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 5
    .line 6
    iget-object v1, v1, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 7
    .line 8
    iget v2, p0, Landroidx/camera/camera2/impl/State3AControl;->_flashMode:I

    .line 9
    .line 10
    iget-boolean v3, p0, Landroidx/camera/camera2/impl/State3AControl;->_tryExternalFlashAeMode:Z

    .line 11
    .line 12
    iget-object v4, p0, Landroidx/camera/camera2/impl/State3AControl;->_preferredAeMode:Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p0, v2, v3, v4}, Landroidx/camera/camera2/impl/State3AControl;->getFinalPreferredAeMode(IZLjava/lang/Integer;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-static {v1, p0}, Lkotlin/math/MathKt;->getSupportedAeMode(Landroidx/camera/camera2/pipe/CameraMetadata;I)I

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0

    .line 26
    throw p0
.end method

.method public final onRunningUseCasesChanged(Ljava/util/LinkedHashSet;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 8
    .line 9
    new-instance v1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x3

    .line 13
    invoke-direct {v1, v2, p1, p0, v3}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Landroidx/camera/camera2/impl/State3AControl;->_tryExternalFlashAeMode:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Landroidx/camera/camera2/impl/State3AControl;->_preferredAeMode:Ljava/lang/Integer;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    iput v1, p0, Landroidx/camera/camera2/impl/State3AControl;->_flashMode:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput v1, p0, Landroidx/camera/camera2/impl/State3AControl;->_template:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/State3AControl;->update()Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0

    .line 23
    throw p0
.end method

.method public final setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/impl/State3AControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/State3AControl;->update()Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final update()Lkotlinx/coroutines/CompletableDeferredImpl;
    .locals 7

    .line 1
    new-instance v0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lkotlin/jvm/internal/Ref$LongRef;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/camera/camera2/impl/State3AControl;->lock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget-object v3, p0, Landroidx/camera/camera2/impl/State3AControl;->pendingSignals:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-wide v3, p0, Landroidx/camera/camera2/impl/State3AControl;->currentRevision:J

    .line 20
    .line 21
    const-wide/16 v5, 0x1

    .line 22
    .line 23
    add-long/2addr v3, v5

    .line 24
    iput-wide v3, p0, Landroidx/camera/camera2/impl/State3AControl;->currentRevision:J

    .line 25
    .line 26
    iput-wide v3, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit v2

    .line 29
    iget-object v2, p0, Landroidx/camera/camera2/impl/State3AControl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 30
    .line 31
    iget-object v2, v2, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 32
    .line 33
    new-instance v3, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-direct {v3, v5, p0, v1, v4}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x3

    .line 41
    invoke-static {v2, v5, v5, v3, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v2

    .line 47
    throw p0
.end method
