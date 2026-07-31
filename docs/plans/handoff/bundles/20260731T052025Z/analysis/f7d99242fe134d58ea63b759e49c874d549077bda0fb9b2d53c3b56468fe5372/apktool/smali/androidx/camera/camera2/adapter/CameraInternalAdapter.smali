.class public final Landroidx/camera/camera2/adapter/CameraInternalAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/impl/CameraInternal;


# instance fields
.field public final cameraController:Landroidx/camera/core/impl/CameraControlInternal;

.field public final cameraId:Ljava/lang/String;

.field public final cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

.field public final cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

.field public coreCameraConfig:Landroidx/camera/core/impl/CameraConfig;

.field public final debugId:I

.field public final isRemoved:Lkotlinx/atomicfu/AtomicBoolean;

.field public final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field public final useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStore$8;Landroidx/camera/camera2/impl/UseCaseManager;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraControlInternal;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/adapter/CameraStateAdapter;)V
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
    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    .line 23
    .line 24
    iput-object p3, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 25
    .line 26
    iput-object p4, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraController:Landroidx/camera/core/impl/CameraControlInternal;

    .line 27
    .line 28
    iput-object p5, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 29
    .line 30
    iput-object p6, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/fsck/k9/mailstore/LocalStore$8;->val$attachmentId:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraId:Ljava/lang/String;

    .line 35
    .line 36
    sget-object p2, Landroidx/camera/core/impl/CameraConfigs;->DEFAULT_CAMERA_CONFIG:Landroidx/biometric/BiometricPrompt;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->coreCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 42
    .line 43
    sget-object p2, Landroidx/camera/camera2/adapter/CameraInternalAdapterKt;->cameraAdapterIds:Lkotlinx/atomicfu/AtomicInt;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget-object p3, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 49
    .line 50
    invoke-virtual {p3, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    iput p2, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->debugId:I

    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    invoke-static {p2}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->isRemoved:Lkotlinx/atomicfu/AtomicBoolean;

    .line 62
    .line 63
    const-string p2, "CXCP"

    .line 64
    .line 65
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    if-eqz p3, :cond_0

    .line 70
    .line 71
    new-instance p3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string p4, "Created "

    .line 74
    .line 75
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p0, " for "

    .line 82
    .line 83
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public final attachUseCases(Ljava/util/Collection;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Ljava/lang/Iterable;

    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->attach(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final detachUseCases(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->detach(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraController:Landroidx/camera/core/impl/CameraControlInternal;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCameraInfo()Landroidx/camera/core/CameraInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

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
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCameraState()Landroidx/camera/core/impl/Observable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraStateAdapter;->cameraInternalState:Landroidx/core/view/MenuHostHelper;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getExtendedConfig()Landroidx/camera/core/impl/CameraConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->coreCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method public final synthetic getHasTransform()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isFrontFacing()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroidx/camera/core/CameraInfo;->getLensFacing()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final isRemoved()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->isRemoved:Lkotlinx/atomicfu/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onRemoved()V
    .locals 4

    .line 1
    const-string v0, "CXCP"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " received removed signal. Cleaning up."

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->isRemoved:Lkotlinx/atomicfu/AtomicBoolean;

    .line 30
    .line 31
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/camera/camera2/impl/UseCaseThreads;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 40
    .line 41
    new-instance v1, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-direct {v1, p0, v3, v2}, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;-><init>(Landroidx/camera/camera2/adapter/CameraInternalAdapter;Lkotlin/coroutines/Continuation;I)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x3

    .line 49
    invoke-static {v0, v3, v3, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public final onUseCaseActive(Landroidx/camera/core/UseCase;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->activate(Landroidx/camera/core/UseCase;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUseCaseInactive(Landroidx/camera/core/UseCase;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeUseCases:Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->refreshRunningUseCases()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0

    .line 26
    throw p0
.end method

.method public final onUseCaseReset(Landroidx/camera/core/UseCase;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->refreshAttachedUseCases(Ljava/util/LinkedHashSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit v0

    .line 28
    throw p0
.end method

.method public final onUseCaseUpdated(Landroidx/camera/core/UseCase;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->refreshRunningUseCases()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0

    .line 26
    throw p0
.end method

.method public final release()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/camera/camera2/impl/UseCaseThreads;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 4
    .line 5
    new-instance v1, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v1, p0, v3, v2}, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;-><init>(Landroidx/camera/camera2/adapter/CameraInternalAdapter;Lkotlin/coroutines/Continuation;I)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x3

    .line 13
    invoke-static {v0, v3, v3, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, v1, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/fsck/k9/sasl/OAuthBearer;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final setActiveResumingMode(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iput-boolean p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeResumeEnabled:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCamera()Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 15
    .line 16
    iget-object v1, v1, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 17
    .line 18
    new-instance v2, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, v3, p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;-><init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/UseCaseCameraImpl;Z)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x3

    .line 25
    invoke-static {v1, v3, v3, v2, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0

    .line 32
    throw p0
.end method

.method public final setCameraGraphCreationMode$camera_camera2(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iput-boolean p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->shouldCreateCameraGraphImmediately:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0

    .line 12
    throw p0
.end method

.method public final setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Landroidx/camera/core/impl/CameraConfigs;->DEFAULT_CAMERA_CONFIG:Landroidx/biometric/BiometricPrompt;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v0, p1

    .line 10
    :goto_0
    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->coreCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    check-cast p1, Landroidx/biometric/BiometricPrompt;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt;->getSessionProcessor()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter p0

    .line 24
    monitor-exit p0

    .line 25
    return-void
.end method

.method public final setPrimary(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iput-boolean p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->isPrimary:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0

    .line 12
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CameraInternalAdapter<"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x28

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->debugId:I

    .line 23
    .line 24
    const-string v1, ")>"

    .line 25
    .line 26
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
