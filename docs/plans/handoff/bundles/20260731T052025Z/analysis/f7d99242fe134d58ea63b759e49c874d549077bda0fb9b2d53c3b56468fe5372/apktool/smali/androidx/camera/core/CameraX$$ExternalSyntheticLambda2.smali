.class public final synthetic Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final run$androidx$camera$core$impl$CameraPresenceProvider$$ExternalSyntheticLambda2()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/Set;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->listener:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 10
    .line 11
    invoke-static {}, Lorg/jsoup/helper/Validate;->checkMainThread()V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroidx/camera/core/CameraIdentifier;

    .line 32
    .line 33
    iget-object v3, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/Iterable;

    .line 42
    .line 43
    new-instance v4, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    move-object v6, v5

    .line 63
    check-cast v6, Landroidx/camera/core/CameraIdentifier;

    .line 64
    .line 65
    iget-object v6, v6, Landroidx/camera/core/CameraIdentifier;->cameraIds:Ljava/util/ArrayList;

    .line 66
    .line 67
    iget-object v7, v2, Landroidx/camera/core/CameraIdentifier;->cameraIds:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_0

    .line 90
    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Landroidx/camera/core/CameraIdentifier;

    .line 96
    .line 97
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v4, Ljava/util/HashMap;

    .line 100
    .line 101
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    monitor-exit v1

    .line 106
    return-void

    .line 107
    :goto_2
    monitor-exit v1

    .line 108
    throw p0
.end method

.method private final run$androidx$camera$core$impl$CameraRepository$$ExternalSyntheticLambda1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/camera/core/impl/CameraRepository;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/camera/core/impl/CameraInternal;

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/camera/core/impl/CameraRepository;->mCamerasLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, v0, Landroidx/camera/core/impl/CameraRepository;->mReleasingCameras:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object p0, v0, Landroidx/camera/core/impl/CameraRepository;->mReleasingCameras:Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    iget-object p0, v0, Landroidx/camera/core/impl/CameraRepository;->mDeinitCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object p0, v0, Landroidx/camera/core/impl/CameraRepository;->mDeinitCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iput-object v2, v0, Landroidx/camera/core/impl/CameraRepository;->mDeinitCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 37
    .line 38
    iput-object v2, v0, Landroidx/camera/core/impl/CameraRepository;->mDeinitFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit v1

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method private final run$androidx$camera$core$impl$DeferrableSurface$$ExternalSyntheticLambda2()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/camera/core/impl/DeferrableSurface;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    :try_start_0
    iget-object v1, v0, Landroidx/camera/core/impl/DeferrableSurface;->mTerminationFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const-string v1, "Surface terminated"

    .line 15
    .line 16
    sget-object v2, Landroidx/camera/core/impl/DeferrableSurface;->TOTAL_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sget-object v3, Landroidx/camera/core/impl/DeferrableSurface;->USED_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v0, v2, v1, v3}, Landroidx/camera/core/impl/DeferrableSurface;->printGlobalDebugCounts(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception v1

    .line 33
    const-string v2, "DeferrableSurface"

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v4, "Unexpected surface termination for "

    .line 38
    .line 39
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v4, "\nStack Trace:\n"

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v2, p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, v0, Landroidx/camera/core/impl/DeferrableSurface;->mLock:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter p0

    .line 63
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string v3, "DeferrableSurface %s [closed: %b, use_count: %s] terminated with unexpected exception."

    .line 66
    .line 67
    iget-boolean v4, v0, Landroidx/camera/core/impl/DeferrableSurface;->mClosed:Z

    .line 68
    .line 69
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iget v5, v0, Landroidx/camera/core/impl/DeferrableSurface;->mUseCount:I

    .line 74
    .line 75
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    const/4 v6, 0x3

    .line 80
    new-array v6, v6, [Ljava/lang/Object;

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    aput-object v0, v6, v7

    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    aput-object v4, v6, v0

    .line 87
    .line 88
    const/4 v0, 0x2

    .line 89
    aput-object v5, v6, v0

    .line 90
    .line 91
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    throw v2

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroid/util/LongSparseArray;

    .line 15
    .line 16
    invoke-static {v0, p0}, Landroidx/core/view/DisplayCompat;->doTranslation(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Landroid/util/LongSparseArray;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroidx/camera/view/TextureViewImplementation;

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Landroidx/camera/core/SurfaceRequest;

    .line 27
    .line 28
    iget-object v2, v0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    if-ne v2, p0, :cond_0

    .line 33
    .line 34
    iput-object v1, v0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceRequest:Landroidx/camera/core/SurfaceRequest;

    .line 35
    .line 36
    iput-object v1, v0, Landroidx/camera/view/TextureViewImplementation;->mSurfaceReleaseFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 37
    .line 38
    :cond_0
    iget-object p0, v0, Landroidx/camera/view/TextureViewImplementation;->mOnSurfaceNotInUseListener:Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;->onSurfaceNotInUse()V

    .line 43
    .line 44
    .line 45
    iput-object v1, v0, Landroidx/camera/view/TextureViewImplementation;->mOnSurfaceNotInUseListener:Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;

    .line 46
    .line 47
    :cond_1
    return-void

    .line 48
    :pswitch_1
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Landroidx/camera/view/PreviewView$1;

    .line 51
    .line 52
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Landroidx/camera/core/SurfaceRequest;

    .line 55
    .line 56
    iget-object v0, v0, Landroidx/camera/view/PreviewView$1;->this$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Landroidx/camera/view/PreviewView;

    .line 59
    .line 60
    iget-object v0, v0, Landroidx/camera/view/PreviewView;->mSurfaceProvider:Landroidx/camera/view/PreviewView$1;

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Landroidx/camera/view/PreviewView$1;->onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_2
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;

    .line 69
    .line 70
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p0, Landroidx/camera/core/LegacySessionConfig;

    .line 73
    .line 74
    new-instance v1, Ljava/util/HashSet;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 77
    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iget-object v0, v0, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;->features:Ljava/util/LinkedHashSet;

    .line 82
    .line 83
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object p0, p0, Landroidx/camera/core/LegacySessionConfig;->featureSelectionListener:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Landroidx/camera/core/SessionConfig$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_3
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    .line 97
    .line 98
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p0, Landroidx/camera/core/processing/SurfaceOutputImpl;

    .line 101
    .line 102
    iget-object v1, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->mGlExecutor:Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 103
    .line 104
    new-instance v2, Landroidx/camera/core/internal/CameraUseCaseAdapter$$ExternalSyntheticLambda1;

    .line 105
    .line 106
    const/4 v3, 0x2

    .line 107
    invoke-direct {v2, v3, v0, p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/processing/SurfaceOutputImpl;->getSurface(Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;Landroidx/core/util/Consumer;)Landroid/view/Surface;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget-object v2, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;

    .line 115
    .line 116
    invoke-virtual {v2, v1}, Landroidx/camera/core/processing/OpenGlRenderer;->registerOutputSurface(Landroid/view/Surface;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->mOutputSurfaces:Ljava/util/LinkedHashMap;

    .line 120
    .line 121
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_4
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    .line 128
    .line 129
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p0, Landroidx/camera/core/SurfaceRequest;

    .line 132
    .line 133
    iget v1, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->mInputSurfaceCount:I

    .line 134
    .line 135
    add-int/2addr v1, v2

    .line 136
    iput v1, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->mInputSurfaceCount:I

    .line 137
    .line 138
    new-instance v1, Landroid/graphics/SurfaceTexture;

    .line 139
    .line 140
    iget-object v3, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;

    .line 141
    .line 142
    iget-boolean v4, p0, Landroidx/camera/core/SurfaceRequest;->mIsPrimary:Z

    .line 143
    .line 144
    iget-object v5, p0, Landroidx/camera/core/SurfaceRequest;->mResolution:Landroid/util/Size;

    .line 145
    .line 146
    iget-object v6, v3, Landroidx/camera/core/processing/OpenGlRenderer;->mInitialized:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 149
    .line 150
    invoke-static {v6, v2}, Landroidx/camera/core/processing/util/GLUtils;->checkInitializedOrThrow(Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    .line 151
    .line 152
    .line 153
    iget-object v2, v3, Landroidx/camera/core/processing/OpenGlRenderer;->mGlThread:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v2, Ljava/lang/Thread;

    .line 156
    .line 157
    invoke-static {v2}, Landroidx/camera/core/processing/util/GLUtils;->checkGlThreadOrThrow(Ljava/lang/Thread;)V

    .line 158
    .line 159
    .line 160
    if-eqz v4, :cond_3

    .line 161
    .line 162
    iget v2, v3, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->mPrimaryExternalTextureId:I

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_3
    iget v2, v3, Landroidx/camera/core/processing/concurrent/DualOpenGlRenderer;->mSecondaryExternalTextureId:I

    .line 166
    .line 167
    :goto_0
    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 179
    .line 180
    .line 181
    new-instance v2, Landroid/view/Surface;

    .line 182
    .line 183
    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 184
    .line 185
    .line 186
    iget-object v3, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->mGlExecutor:Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 187
    .line 188
    new-instance v5, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor$$ExternalSyntheticLambda6;

    .line 189
    .line 190
    invoke-direct {v5, v0, v1, v2}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor$$ExternalSyntheticLambda6;-><init>(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v2, v3, v5}, Landroidx/camera/core/SurfaceRequest;->provideSurface(Landroid/view/Surface;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 194
    .line 195
    .line 196
    if-eqz v4, :cond_4

    .line 197
    .line 198
    iput-object v1, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->mPrimarySurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_4
    iput-object v1, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->mSecondarySurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 202
    .line 203
    iget-object p0, v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->mGlHandler:Landroid/os/Handler;

    .line 204
    .line 205
    invoke-virtual {v1, v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 206
    .line 207
    .line 208
    :goto_1
    return-void

    .line 209
    :pswitch_5
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v0, Landroidx/camera/core/processing/SurfaceOutputImpl;

    .line 212
    .line 213
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 216
    .line 217
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    check-cast p0, Landroidx/core/util/Consumer;

    .line 222
    .line 223
    new-instance v1, Landroidx/camera/core/AutoValue_SurfaceOutput_Event;

    .line 224
    .line 225
    invoke-direct {v1, v0}, Landroidx/camera/core/AutoValue_SurfaceOutput_Event;-><init>(Landroidx/camera/core/processing/SurfaceOutputImpl;)V

    .line 226
    .line 227
    .line 228
    invoke-interface {p0, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :pswitch_6
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    .line 235
    .line 236
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast p0, Landroidx/camera/core/SurfaceRequest;

    .line 239
    .line 240
    iget v1, v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mInputSurfaceCount:I

    .line 241
    .line 242
    add-int/2addr v1, v2

    .line 243
    iput v1, v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mInputSurfaceCount:I

    .line 244
    .line 245
    new-instance v1, Landroid/graphics/SurfaceTexture;

    .line 246
    .line 247
    iget-object v3, v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    .line 248
    .line 249
    iget-object v4, v3, Landroidx/camera/core/processing/OpenGlRenderer;->mInitialized:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 252
    .line 253
    invoke-static {v4, v2}, Landroidx/camera/core/processing/util/GLUtils;->checkInitializedOrThrow(Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    .line 254
    .line 255
    .line 256
    iget-object v2, v3, Landroidx/camera/core/processing/OpenGlRenderer;->mGlThread:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v2, Ljava/lang/Thread;

    .line 259
    .line 260
    invoke-static {v2}, Landroidx/camera/core/processing/util/GLUtils;->checkGlThreadOrThrow(Ljava/lang/Thread;)V

    .line 261
    .line 262
    .line 263
    iget v2, v3, Landroidx/camera/core/processing/OpenGlRenderer;->mExternalTextureId:I

    .line 264
    .line 265
    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 266
    .line 267
    .line 268
    iget-object v2, p0, Landroidx/camera/core/SurfaceRequest;->mResolution:Landroid/util/Size;

    .line 269
    .line 270
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    invoke-virtual {v1, v3, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 279
    .line 280
    .line 281
    new-instance v2, Landroid/view/Surface;

    .line 282
    .line 283
    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 284
    .line 285
    .line 286
    iget-object v3, v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlExecutor:Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 287
    .line 288
    new-instance v4, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;

    .line 289
    .line 290
    const/4 v5, 0x4

    .line 291
    invoke-direct {v4, v5, v0, p0}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0, v3, v4}, Landroidx/camera/core/SurfaceRequest;->setTransformationInfoListener(Ljava/util/concurrent/Executor;Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;)V

    .line 295
    .line 296
    .line 297
    new-instance v4, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda7;

    .line 298
    .line 299
    invoke-direct {v4, v0, p0, v1, v2}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda7;-><init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/SurfaceRequest;Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0, v2, v3, v4}, Landroidx/camera/core/SurfaceRequest;->provideSurface(Landroid/view/Surface;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 303
    .line 304
    .line 305
    iget-object p0, v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlHandler:Landroid/os/Handler;

    .line 306
    .line 307
    invoke-virtual {v1, v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :pswitch_7
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    .line 314
    .line 315
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast p0, Landroidx/camera/core/processing/SurfaceOutputImpl;

    .line 318
    .line 319
    iget-object v1, v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlExecutor:Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 320
    .line 321
    new-instance v3, Landroidx/camera/core/internal/CameraUseCaseAdapter$$ExternalSyntheticLambda1;

    .line 322
    .line 323
    invoke-direct {v3, v2, v0, p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, v1, v3}, Landroidx/camera/core/processing/SurfaceOutputImpl;->getSurface(Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;Landroidx/core/util/Consumer;)Landroid/view/Surface;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    iget-object v2, v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    .line 331
    .line 332
    invoke-virtual {v2, v1}, Landroidx/camera/core/processing/OpenGlRenderer;->registerOutputSurface(Landroid/view/Surface;)V

    .line 333
    .line 334
    .line 335
    iget-object v0, v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mOutputSurfaces:Ljava/util/LinkedHashMap;

    .line 336
    .line 337
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :pswitch_8
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;

    .line 344
    .line 345
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 348
    .line 349
    :try_start_0
    invoke-virtual {v0}, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    :catchall_0
    move-exception v0

    .line 357
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 358
    .line 359
    .line 360
    throw v0

    .line 361
    :pswitch_9
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v0, Ljava/util/Map$Entry;

    .line 364
    .line 365
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast p0, Landroidx/camera/core/impl/LiveDataObservable$Result;

    .line 368
    .line 369
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    check-cast v0, Landroidx/camera/core/impl/Observable$Observer;

    .line 374
    .line 375
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    iget-object p0, p0, Landroidx/camera/core/impl/LiveDataObservable$Result;->mValue:Ljava/lang/Object;

    .line 379
    .line 380
    invoke-interface {v0, p0}, Landroidx/camera/core/impl/Observable$Observer;->onNewData(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :pswitch_a
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 385
    .line 386
    check-cast v0, Landroidx/core/view/MenuHostHelper;

    .line 387
    .line 388
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 389
    .line 390
    check-cast p0, Landroidx/camera/core/impl/Observable$Observer;

    .line 391
    .line 392
    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 395
    .line 396
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    check-cast v0, Landroidx/camera/core/impl/LiveDataObservable$Result;

    .line 401
    .line 402
    if-nez v0, :cond_5

    .line 403
    .line 404
    goto :goto_2

    .line 405
    :cond_5
    iget-object v0, v0, Landroidx/camera/core/impl/LiveDataObservable$Result;->mValue:Ljava/lang/Object;

    .line 406
    .line 407
    invoke-interface {p0, v0}, Landroidx/camera/core/impl/Observable$Observer;->onNewData(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    :goto_2
    return-void

    .line 411
    :pswitch_b
    invoke-direct {p0}, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->run$androidx$camera$core$impl$DeferrableSurface$$ExternalSyntheticLambda2()V

    .line 412
    .line 413
    .line 414
    return-void

    .line 415
    :pswitch_c
    invoke-direct {p0}, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->run$androidx$camera$core$impl$CameraRepository$$ExternalSyntheticLambda1()V

    .line 416
    .line 417
    .line 418
    return-void

    .line 419
    :pswitch_d
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast v0, Landroidx/camera/core/impl/CameraInfoInternal;

    .line 422
    .line 423
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast p0, Landroidx/camera/core/impl/CameraPresenceProvider$$ExternalSyntheticLambda6;

    .line 426
    .line 427
    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getCameraState()Landroidx/lifecycle/LiveData;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :pswitch_e
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 436
    .line 437
    check-cast v0, Landroidx/camera/core/impl/CameraInternal;

    .line 438
    .line 439
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast p0, Landroidx/lifecycle/Observer;

    .line 442
    .line 443
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getCameraState()Landroidx/lifecycle/LiveData;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :pswitch_f
    invoke-direct {p0}, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->run$androidx$camera$core$impl$CameraPresenceProvider$$ExternalSyntheticLambda2()V

    .line 456
    .line 457
    .line 458
    return-void

    .line 459
    :pswitch_10
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 460
    .line 461
    check-cast v0, Landroidx/camera/core/Preview$SurfaceProvider;

    .line 462
    .line 463
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast p0, Landroidx/camera/core/SurfaceRequest;

    .line 466
    .line 467
    invoke-interface {v0, p0}, Landroidx/camera/core/Preview$SurfaceProvider;->onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V

    .line 468
    .line 469
    .line 470
    return-void

    .line 471
    :pswitch_11
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 472
    .line 473
    check-cast v0, Landroidx/camera/core/MetadataImageReader;

    .line 474
    .line 475
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast p0, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 478
    .line 479
    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;->onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 480
    .line 481
    .line 482
    return-void

    .line 483
    :pswitch_12
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 484
    .line 485
    check-cast v0, Lokhttp3/internal/connection/RouteSelector;

    .line 486
    .line 487
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 488
    .line 489
    check-cast p0, Lokhttp3/internal/connection/RouteSelector;

    .line 490
    .line 491
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->safeClose()V

    .line 492
    .line 493
    .line 494
    if-eqz p0, :cond_6

    .line 495
    .line 496
    invoke-virtual {p0}, Lokhttp3/internal/connection/RouteSelector;->safeClose()V

    .line 497
    .line 498
    .line 499
    :cond_6
    return-void

    .line 500
    :pswitch_13
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 501
    .line 502
    check-cast v0, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 503
    .line 504
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast p0, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 507
    .line 508
    invoke-interface {p0, v0}, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;->onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 509
    .line 510
    .line 511
    return-void

    .line 512
    :pswitch_14
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 515
    .line 516
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 517
    .line 518
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 519
    .line 520
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 523
    .line 524
    invoke-static {v0, v1}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 525
    .line 526
    .line 527
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 528
    .line 529
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 530
    .line 531
    invoke-static {p0, v1}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 532
    .line 533
    .line 534
    return-void

    .line 535
    :pswitch_15
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v0, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 538
    .line 539
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 540
    .line 541
    check-cast p0, Ljava/lang/Runnable;

    .line 542
    .line 543
    iget-object v0, v0, Landroidx/camera/camera2/impl/UseCaseThreads;->isSequentialThread:Ljava/lang/ThreadLocal;

    .line 544
    .line 545
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 546
    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 548
    .line 549
    .line 550
    :try_start_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 554
    .line 555
    .line 556
    return-void

    .line 557
    :catchall_1
    move-exception p0

    .line 558
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 559
    .line 560
    .line 561
    throw p0

    .line 562
    :pswitch_16
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 563
    .line 564
    check-cast v0, Landroid/view/Surface;

    .line 565
    .line 566
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 567
    .line 568
    check-cast p0, Landroid/graphics/SurfaceTexture;

    .line 569
    .line 570
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 571
    .line 572
    .line 573
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 574
    .line 575
    .line 576
    return-void

    .line 577
    :pswitch_17
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 578
    .line 579
    check-cast v0, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 580
    .line 581
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 582
    .line 583
    check-cast p0, Landroidx/camera/camera2/pipe/Request;

    .line 584
    .line 585
    invoke-interface {v0, p0}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    .line 586
    .line 587
    .line 588
    return-void

    .line 589
    :pswitch_18
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    .line 592
    .line 593
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 594
    .line 595
    check-cast p0, Landroid/hardware/camera2/CameraCaptureSession;

    .line 596
    .line 597
    iget-object v0, v0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 598
    .line 599
    const/4 v1, -0x1

    .line 600
    invoke-virtual {v0, p0, v1}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    .line 601
    .line 602
    .line 603
    return-void

    .line 604
    :pswitch_19
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 605
    .line 606
    check-cast v0, Landroidx/core/util/Consumer;

    .line 607
    .line 608
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 609
    .line 610
    check-cast p0, Landroidx/camera/core/AutoValue_CameraState;

    .line 611
    .line 612
    invoke-interface {v0, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    return-void

    .line 616
    :pswitch_1a
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 617
    .line 618
    check-cast v0, Landroidx/room/TransactionExecutor;

    .line 619
    .line 620
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 621
    .line 622
    check-cast p0, Ljava/lang/Runnable;

    .line 623
    .line 624
    :try_start_2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 625
    .line 626
    .line 627
    invoke-virtual {v0}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 628
    .line 629
    .line 630
    return-void

    .line 631
    :catchall_2
    move-exception p0

    .line 632
    invoke-virtual {v0}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 633
    .line 634
    .line 635
    throw p0

    .line 636
    :pswitch_1b
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 637
    .line 638
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 639
    .line 640
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 641
    .line 642
    check-cast p0, Landroidx/activity/OnBackPressedDispatcher;

    .line 643
    .line 644
    iget-object v1, v0, Landroidx/core/app/ComponentActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 645
    .line 646
    new-instance v3, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;

    .line 647
    .line 648
    invoke-direct {v3, v2, p0, v0}, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v1, v3}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 652
    .line 653
    .line 654
    return-void

    .line 655
    :pswitch_1c
    iget-object v0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 656
    .line 657
    check-cast v0, Landroidx/camera/core/CameraX;

    .line 658
    .line 659
    iget-object p0, p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 660
    .line 661
    check-cast p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 662
    .line 663
    iget-object v3, v0, Landroidx/camera/core/CameraX;->mCameraFactory:Landroidx/compose/ui/node/NodeChain;

    .line 664
    .line 665
    iget-object v4, v3, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 666
    .line 667
    check-cast v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 668
    .line 669
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 670
    .line 671
    .line 672
    move-result v4

    .line 673
    if-eqz v4, :cond_7

    .line 674
    .line 675
    goto :goto_4

    .line 676
    :cond_7
    iget-object v4, v3, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 677
    .line 678
    check-cast v4, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    .line 679
    .line 680
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 681
    .line 682
    .line 683
    const/4 v5, 0x0

    .line 684
    iput-boolean v5, v4, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentModeOn:Z

    .line 685
    .line 686
    iget-object v6, v4, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    .line 687
    .line 688
    monitor-enter v6

    .line 689
    :try_start_3
    iput-object v1, v4, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 690
    .line 691
    iput v5, v4, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentMode:I

    .line 692
    .line 693
    iget-object v4, v4, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/ArrayList;

    .line 694
    .line 695
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 696
    .line 697
    .line 698
    monitor-exit v6

    .line 699
    iget-object v4, v3, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 700
    .line 701
    check-cast v4, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 702
    .line 703
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 704
    .line 705
    .line 706
    const-string v6, "PipePresenceSrc"

    .line 707
    .line 708
    const-string v7, "Stopping camera ID flow collection."

    .line 709
    .line 710
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    .line 712
    .line 713
    iget-object v6, v4, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedTextFormat:Ljava/io/Serializable;

    .line 714
    .line 715
    check-cast v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 716
    .line 717
    invoke-virtual {v6, v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 718
    .line 719
    .line 720
    move-result v2

    .line 721
    if-nez v2, :cond_8

    .line 722
    .line 723
    goto :goto_3

    .line 724
    :cond_8
    iget-object v2, v4, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Ljava/lang/Object;

    .line 725
    .line 726
    check-cast v2, Lkotlinx/coroutines/StandaloneCoroutine;

    .line 727
    .line 728
    if-eqz v2, :cond_9

    .line 729
    .line 730
    invoke-virtual {v2, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 731
    .line 732
    .line 733
    :cond_9
    iput-object v1, v4, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->quotedHtmlContent:Ljava/lang/Object;

    .line 734
    .line 735
    :goto_3
    iget-object v2, v3, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 736
    .line 737
    check-cast v2, Lkotlin/SynchronizedLazyImpl;

    .line 738
    .line 739
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->isInitialized()Z

    .line 740
    .line 741
    .line 742
    move-result v2

    .line 743
    if-eqz v2, :cond_a

    .line 744
    .line 745
    iget-object v2, v3, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 746
    .line 747
    check-cast v2, Lkotlin/SynchronizedLazyImpl;

    .line 748
    .line 749
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v2

    .line 753
    check-cast v2, Landroidx/camera/camera2/pipe/CameraPipeImpl;

    .line 754
    .line 755
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown()V

    .line 756
    .line 757
    .line 758
    :cond_a
    :goto_4
    iget-object v2, v0, Landroidx/camera/core/CameraX;->mSchedulerThread:Landroid/os/HandlerThread;

    .line 759
    .line 760
    if-eqz v2, :cond_c

    .line 761
    .line 762
    iget-object v2, v0, Landroidx/camera/core/CameraX;->mCameraExecutor:Ljava/util/concurrent/Executor;

    .line 763
    .line 764
    instance-of v3, v2, Landroidx/camera/core/CameraExecutor;

    .line 765
    .line 766
    if-eqz v3, :cond_b

    .line 767
    .line 768
    check-cast v2, Landroidx/camera/core/CameraExecutor;

    .line 769
    .line 770
    invoke-virtual {v2}, Landroidx/camera/core/CameraExecutor;->deinit()V

    .line 771
    .line 772
    .line 773
    :cond_b
    iget-object v0, v0, Landroidx/camera/core/CameraX;->mSchedulerThread:Landroid/os/HandlerThread;

    .line 774
    .line 775
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 776
    .line 777
    .line 778
    :cond_c
    invoke-virtual {p0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    return-void

    .line 782
    :catchall_3
    move-exception p0

    .line 783
    monitor-exit v6

    .line 784
    throw p0

    .line 785
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
