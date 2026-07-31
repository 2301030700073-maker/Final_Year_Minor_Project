.class public final Landroidx/camera/camera2/impl/UseCaseThreads;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final isSequentialThread:Ljava/lang/ThreadLocal;

.field public final scope:Lkotlinx/coroutines/internal/ContextScope;

.field public final sequentialExecutor:Landroidx/camera/camera2/impl/UseCaseThreads$$ExternalSyntheticLambda0;

.field public final sequentialExecutorDelegate:Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

.field public final sequentialScope:Lkotlinx/coroutines/internal/ContextScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/ContextScope;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 8
    .line 9
    new-instance p3, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    new-instance p3, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    .line 19
    .line 20
    invoke-direct {p3, p2}, Landroidx/camera/core/impl/utils/executor/SequentialExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 21
    .line 22
    .line 23
    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialExecutorDelegate:Landroidx/camera/core/impl/utils/executor/SequentialExecutor;

    .line 24
    .line 25
    new-instance p2, Ljava/lang/ThreadLocal;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/lang/ThreadLocal;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->isSequentialThread:Ljava/lang/ThreadLocal;

    .line 31
    .line 32
    new-instance p2, Landroidx/camera/camera2/impl/UseCaseThreads$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 p3, 0x0

    .line 35
    invoke-direct {p2, p3, p0}, Landroidx/camera/camera2/impl/UseCaseThreads$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialExecutor:Landroidx/camera/camera2/impl/UseCaseThreads$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-static {p2}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iget-object p1, p1, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 45
    .line 46
    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-interface {p1, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 63
    .line 64
    return-void
.end method
