.class public final Landroidx/camera/camera2/impl/ZoomControl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# instance fields
.field public _requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field public final _zoomState$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final defaultZoomState$delegate:Lkotlin/SynchronizedLazyImpl;

.field public isInitialized:Z

.field public final maxZoomRatio:F

.field public final minZoomRatio:F

.field public updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

.field public final zoomCompat:Landroidx/camera/camera2/compat/ZoomCompat;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/compat/ZoomCompat;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/impl/ZoomControl;->zoomCompat:Landroidx/camera/camera2/compat/ZoomCompat;

    .line 5
    .line 6
    invoke-interface {p1}, Landroidx/camera/camera2/compat/ZoomCompat;->getMinZoomRatio()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Landroidx/camera/camera2/impl/ZoomControl;->minZoomRatio:F

    .line 11
    .line 12
    invoke-interface {p1}, Landroidx/camera/camera2/compat/ZoomCompat;->getMaxZoomRatio()F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Landroidx/camera/camera2/impl/ZoomControl;->maxZoomRatio:F

    .line 17
    .line 18
    new-instance p1, Landroidx/camera/camera2/impl/ZoomControl$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {p1, p0, v0}, Landroidx/camera/camera2/impl/ZoomControl$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/impl/ZoomControl;I)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Landroidx/camera/camera2/impl/ZoomControl;->defaultZoomState$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 30
    .line 31
    new-instance p1, Landroidx/camera/camera2/impl/ZoomControl$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-direct {p1, p0, v0}, Landroidx/camera/camera2/impl/ZoomControl$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/impl/ZoomControl;I)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Landroidx/camera/camera2/impl/ZoomControl;->_zoomState$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final applyZoomState(Landroidx/camera/camera2/adapter/ZoomValue;ZZ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    const-string v0, "Job.asListenableFuture"

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 7
    .line 8
    invoke-direct {v1}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/camera/camera2/impl/ZoomControl;->updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const-string p2, "Cancelled due to another zoom value being set."

    .line 18
    .line 19
    invoke-static {p2, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v1, v2}, Landroidx/room/util/DBUtil;->propagateTo(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    iput-object v1, p0, Landroidx/camera/camera2/impl/ZoomControl;->updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 27
    .line 28
    invoke-static {}, Lorg/jsoup/helper/Validate;->isMainThread()Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iget-object v2, p0, Landroidx/camera/camera2/impl/ZoomControl;->_zoomState$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    iget-object p1, p0, Landroidx/camera/camera2/impl/ZoomControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    iget-object p0, p0, Landroidx/camera/camera2/impl/ZoomControl;->zoomCompat:Landroidx/camera/camera2/compat/ZoomCompat;

    .line 60
    .line 61
    if-eqz p3, :cond_3

    .line 62
    .line 63
    invoke-interface {p0, p1}, Landroidx/camera/camera2/compat/ZoomCompat;->applyAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)Lkotlinx/coroutines/Deferred;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-interface {p0, p1}, Landroidx/camera/camera2/compat/ZoomCompat;->resetAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)Lkotlinx/coroutines/Deferred;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    :goto_2
    invoke-static {p0, v1}, Landroidx/room/util/DBUtil;->propagateTo(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    const-string p0, "Camera is not active."

    .line 77
    .line 78
    invoke-static {p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 79
    .line 80
    .line 81
    :goto_3
    new-instance p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 82
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance p1, Landroidx/concurrent/futures/ResolvableFuture;

    .line 87
    .line 88
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->cancellationFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 92
    .line 93
    new-instance p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 94
    .line 95
    invoke-direct {p1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->future:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 99
    .line 100
    const-class p2, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 101
    .line 102
    iput-object p2, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;

    .line 103
    .line 104
    :try_start_0
    new-instance p2, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 105
    .line 106
    const/4 p3, 0x1

    .line 107
    invoke-direct {p2, p3, p0}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p2}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->tag:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :catch_0
    move-exception p0

    .line 117
    invoke-virtual {p1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->setException(Ljava/lang/Throwable;)Z

    .line 118
    .line 119
    .line 120
    :goto_4
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/ZoomControl;->defaultZoomState$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/camera/camera2/adapter/ZoomValue;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v0, v1, v1}, Landroidx/camera/camera2/impl/ZoomControl;->applyZoomState(Landroidx/camera/camera2/adapter/ZoomValue;ZZ)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/impl/ZoomControl;->_requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/camera/camera2/impl/ZoomControl;->_zoomState$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 4
    .line 5
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/camera/camera2/adapter/ZoomValue;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/camera/camera2/impl/ZoomControl;->defaultZoomState$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 20
    .line 21
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroidx/camera/camera2/adapter/ZoomValue;

    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/ZoomControl;->isInitialized:Z

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    const/4 v2, 0x0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move v0, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v0, v1

    .line 39
    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Landroidx/camera/camera2/impl/ZoomControl;->applyZoomState(Landroidx/camera/camera2/adapter/ZoomValue;ZZ)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 40
    .line 41
    .line 42
    iput-boolean v1, p0, Landroidx/camera/camera2/impl/ZoomControl;->isInitialized:Z

    .line 43
    .line 44
    return-void
.end method
