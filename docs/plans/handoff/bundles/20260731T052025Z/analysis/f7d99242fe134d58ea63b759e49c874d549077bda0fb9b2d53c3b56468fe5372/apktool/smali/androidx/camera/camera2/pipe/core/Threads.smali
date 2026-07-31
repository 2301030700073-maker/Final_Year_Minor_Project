.class public final Landroidx/camera/camera2/pipe/core/Threads;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final _camera2Executor:Lkotlin/SynchronizedLazyImpl;

.field public final _camera2Handler:Lkotlin/SynchronizedLazyImpl;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final blockingDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final cameraPipeDispatchScope:Lkotlinx/coroutines/CoroutineScope;

.field public final cameraPipeScope:Lkotlinx/coroutines/CoroutineScope;

.field public final lightweightDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final lightweightExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Landroidx/camera/camera2/pipe/config/ThreadConfigModule$$ExternalSyntheticLambda1;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/Threads;->cameraPipeScope:Lkotlinx/coroutines/CoroutineScope;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/camera/camera2/pipe/core/Threads;->cameraPipeDispatchScope:Lkotlinx/coroutines/CoroutineScope;

    .line 13
    .line 14
    iput-object p4, p0, Landroidx/camera/camera2/pipe/core/Threads;->blockingDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 15
    .line 16
    iput-object p6, p0, Landroidx/camera/camera2/pipe/core/Threads;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 17
    .line 18
    iput-object p7, p0, Landroidx/camera/camera2/pipe/core/Threads;->lightweightExecutor:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    iput-object p8, p0, Landroidx/camera/camera2/pipe/core/Threads;->lightweightDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 21
    .line 22
    new-instance p1, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-direct {p1, p2, p9}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 29
    .line 30
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Landroidx/camera/camera2/pipe/core/Threads;->_camera2Handler:Lkotlin/SynchronizedLazyImpl;

    .line 34
    .line 35
    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/16 p2, 0xa

    .line 38
    .line 39
    invoke-direct {p1, p2, p10}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 43
    .line 44
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Landroidx/camera/camera2/pipe/core/Threads;->_camera2Executor:Lkotlin/SynchronizedLazyImpl;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final getCamera2Handler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/Threads;->_camera2Handler:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/Handler;

    .line 8
    .line 9
    return-object p0
.end method

.method public final runBlockingCheckedOrNull(JLkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/Threads;->blockingDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    move-object v5, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v6, p3

    .line 10
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/gestures/DraggableNode$onDragStarted$1;-><init>(IJLjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlinx/coroutines/JobKt;->runBlockingK(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    move-object p0, v0

    .line 20
    const-string p1, "CXCP"

    .line 21
    .line 22
    const-string p2, "runBlockingCheckedOrNull cancelled by thread interruption"

    .line 23
    .line 24
    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method
