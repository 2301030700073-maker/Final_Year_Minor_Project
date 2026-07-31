.class public final Lnet/newpipe/app/viewmodel/about/AboutViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final _libraries:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final json:Lkotlinx/serialization/json/Json;

.field public final libraries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final resourceHandler:Lnet/newpipe/app/platform/ResourceHandler;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lnet/newpipe/app/platform/ResourceHandler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/newpipe/app/viewmodel/about/AboutViewModel;->json:Lkotlinx/serialization/json/Json;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/newpipe/app/viewmodel/about/AboutViewModel;->resourceHandler:Lnet/newpipe/app/platform/ResourceHandler;

    .line 7
    .line 8
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 9
    .line 10
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lnet/newpipe/app/viewmodel/about/AboutViewModel;->_libraries:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 15
    .line 16
    new-instance p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p2, p1, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;Lkotlinx/coroutines/StandaloneCoroutine;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lnet/newpipe/app/viewmodel/about/AboutViewModel;->libraries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 23
    .line 24
    sget-object p1, Landroidx/lifecycle/ViewModelKt;->VIEW_MODEL_SCOPE_LOCK:Landroidx/lifecycle/viewmodel/internal/SynchronizedObject;

    .line 25
    .line 26
    monitor-enter p1

    .line 27
    :try_start_0
    const-string p2, "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY"

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Landroidx/lifecycle/ViewModel;->getCloseable(Ljava/lang/String;)Ljava/lang/AutoCloseable;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 34
    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    sget-object p2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    :try_start_1
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 40
    .line 41
    sget-object v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 42
    .line 43
    iget-object p2, v1, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;
    :try_end_1
    .catch Lkotlin/NotImplementedError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    :catch_0
    :try_start_2
    new-instance v1, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 46
    .line 47
    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {p2, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {v1, p2}, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 56
    .line 57
    .line 58
    const-string p2, "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY"

    .line 59
    .line 60
    invoke-virtual {p0, p2, v1}, Landroidx/lifecycle/ViewModel;->addCloseable(Ljava/lang/String;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .line 62
    .line 63
    move-object p2, v1

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    :goto_0
    monitor-exit p1

    .line 68
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 69
    .line 70
    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 71
    .line 72
    new-instance v1, Lnet/newpipe/app/viewmodel/about/AboutViewModel$1;

    .line 73
    .line 74
    invoke-direct {v1, p0, v0}, Lnet/newpipe/app/viewmodel/about/AboutViewModel$1;-><init>(Lnet/newpipe/app/viewmodel/about/AboutViewModel;Lkotlin/coroutines/Continuation;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x2

    .line 78
    invoke-static {p2, p1, v0, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :goto_1
    monitor-exit p1

    .line 83
    throw p0
.end method
